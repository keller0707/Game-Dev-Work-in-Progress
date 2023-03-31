
function init_player()
  -- player info
  p = {
    -- sprite number
    sp = 1,

    -- location
    x = 521, -- 521
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
    falling = false

  }

end

-- playtest controls
function player_playtest()

  p.dy += gravity
  p.dx *= friction

  -- move left
  if btn(0) then
    p.dx -= p.acceleration
    p.running = true
    p.flipx = true
  end

  -- move right
  if btn(1) then
    p.dx += p.acceleration
    p.running = true
    p.flipx = false
  end

  -- slide
  if p.running
  and not btn(0)
  and not btn(1)
  and not p.falling
  and not p.jumping then
    p.running = false
    p.sliding = true
  end

  -- jump
  if btnp(2)
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
  if (p.x >= 456 and p.x <= 512 ) then
    load('game-dev.p8')
  elseif (p.x >= 840) then
    teleport(1)
  end

  -- player falls out of the world
  if (p.y >= 136 and p.x >= 520) then
    teleport (2)
  end

end

-- collsion between player and map
function collide_map(obj,aim,flag)
  --obj = table needs x,y,w,h
  --aim = left,right,up,down
   
  local x=obj.x  
  local y=obj.y
  local w=obj.w  
  local h=obj.h
   
  local x1=0	 
  local y1=0
  local x2=0  
  local y2=0
   
  if aim=="left" then
    x1=x-1  
    y1=y
    x2=x    
    y2=y+h-1
   
  elseif aim=="right" then
    x1=x+w-1    
    y1=y
    x2=x+w  
    y2=y+h-1
   
  elseif aim=="up" then
    x1=x+2    
    y1=y-1
    x2=x+w-3  
    y2=y
   
  elseif aim=="down" then
    x1=x+2     
    y1=y+h
    x2=x+w-3    
    y2=y+h
  end

  --pixels to tiles
  x1/=8    
  y1/=8
  x2/=8    
  y2/=8
   
  if fget(mget(x1,y1), flag)
  or fget(mget(x1,y2), flag)
  or fget(mget(x2,y1), flag)
  or fget(mget(x2,y2), flag) then
    return true
  else
    return false
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