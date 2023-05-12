
function init_player(x_pos)
  -- player info
  p = {
    -- sprite number
    sp = 1,

    -- location
    x = x_pos, -- 528
    y = 112,

    -- mesaure width and height in pixels
    w = 8,
    h= 8,

    -- direction player is facing
    flipx = false,

    -- change in x and y
    dx = 0,
    dy = 0,

    -- maximum change in x and y
    max_dx = 2,
    max_dy = 3,

    -- velocity for running and jumping
    acceleration = 0.5,
    boost = 4,

    animation = 0,

    running = false,
    jumping = false,
    sliding = false,
    landed = false,
    falling = false,
    --specify sound quality (0 is bad and 1 is good, 2 is fantastic)
	  SoundQuality = 0, --Sound Quality 
    apple = false,
    banana = false

  }

end

-- playtest controls
function player_playtest()

  if p.apple == true then
    good_apple()
  end

  if p.banana == true then
    good_banana()
  end

  p.dy += gravity
  p.dx *= friction

  -- move left
  if btn(left) then
    p.dx -= p.acceleration
    p.running = true
    p.flipx = true
  end

  -- move right
  if btn(right) then
    p.dx += p.acceleration
    p.running = true
    p.flipx = false
  end

  -- slide
  if p.running
  and not btn(left)
  and not btn(right)
  and not p.falling
  and not p.jumping then
    p.running = false
    p.sliding = true
  end

  -- jump
  if btnp(jump)
  and p.landed then
    p.dy -= p.boost
    p.landed = false
  end

  -- check collision up and down
  if p.dy > 0 then
    p.falling = true
    p.landed = false
    p.jumping = false

    p.dy = limit_speed(p.dy,p.max_dy)

    if collide_map(p,"down",0) then
      p.landed = true
      p.falling = false
      p.dy = 0
      p.y -= ((p.y+p.h+1)%8)-1
    end

  elseif p.dy < 0 then
    p.jumping = true
    if collide_map(p,"up",1) then
      p.dy = 0
    end

    -- hit a powerup block
    if collide_map(p,"up",2) then

      if mget((p.x+4)/8,(p.y/8)-1) == 70 then
        -- change powerup block sprite
        mset((p.x+4)/8,(p.y/8)-1,72)

      end

    end

  end

  -- check collision left
  if p.dx < 0 then

    p.dx = limit_speed(p.dx,p.max_dx)

    if collide_map(p,"left",1) then
      p.dx = 0
    end

  -- check collision right
  elseif p.dx > 0 then

    p.dx = limit_speed(p.dx,p.max_dx)

    if collide_map(p,"right",1) then
      p.dx = 0
    end

    if collide_map(p,"right",2) then
      --teleport(1)
    end

  end

  -- stop sliding
  if p.sliding then
    if abs(p.dx) < .2 or p.running then 
      p.dx = 0
      p.sliding = false
    end
  end

  -- update player's position
  p.x += p.dx
  p.y += p.dy

  -- limit player to map
  if p.x < map_start then
    p.x = map_start
  end

  if p.x > map_end - p.w then
    p.x = map_end - p.w
  end

  -- teleport back to next stage and back to bedroom
  if (p.x >= 300 and p.x <= 320 ) then
    if stat(6) == "play" then
      load('debugmenu.p8')
    else
      load('game-dev.p8',"","comp")
    end
  elseif (p.x >= 678 and p.x <= 696) then
    if stat(6) == "play" then
      load('debugmenu.p8')
    else
      load('game-dev.p8',"","comp")
    end
  end

  -- player falls out of the world
  if (p.y >= 136) then
    load("playtest.p8","",stat(6))
  end

end

function player_animate()

  if p.jumping then
    p.sp = 7

  elseif p.falling then
    p.sp = 8

  elseif p.sliding then
    p.sp = 9

  elseif p.running then
    -- loop through sprites based
    if time() - p.animation > 0.1 then
      p.animation = time()
      p.sp +=1
      if p.sp > 6 then
        p.sp = 3
      end
    end

  else
    -- loop through sprites
    if time() - p.animation > 0.3 then
      p.animation = time()
      p.sp += 1
      if p.sp > 2 then
        p.sp = 1
      end
     end
  end

end

-- controls player speed
function limit_speed(num,maximum)
  return mid(-maximum,num,maximum)
end

function player_draw()
  spr(1, p.x, p.y)
end