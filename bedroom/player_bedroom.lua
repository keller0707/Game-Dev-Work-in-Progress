// players inital values
function init_player_bedroom()
  player={}                 -- player's table
  player.x=24               -- player's X
  player.y=14               -- player's y
  player.anim_time=0        -- player's animation time
  player.speed=1            -- player's speed
  player.runstate ={196,202}  -- player run state
  player.upstate   ={224,234} -- player up walk state
  player.downstate ={236,238} -- player down walk state
  player.idlestate ={192,194} -- player idle state
  player.flipsprite=false   -- player flip sprite animiation
  player.currentstate={}    -- player's animation state
  player.state=192

  -- player's width and height in pixels
  player.w = 16
  player.h = 16

  if stat(6) == "comp" then
    player.x = 95
    player.y = 28
  end

end

// updates the player
function player_update_bedroom()
  
  newstate = nil
  -- Check for button inputs
  -- Left Arrow
  if btn(0) then 
    player.x-=player.speed
    newstate=player.runstate
    player.flipsprite=true
  end 

  -- Right Arrow
 	if btn(1) then 
    player.x+=player.speed
    newstate=player.runstate
    player.flipsprite=false
  end 

  -- Up Arrow
 	if btn(2) then 
    player.y-=player.speed
    newstate=player.downstate
  end
    
  -- Down Arrow
 	if btn(3) then 
    player.y+=player.speed
    newstate=player.upstate
  end 

  

end

function animate_player()

  -- return if no input detected
  if newstate == nil then 
    newstate=player.idlestate
  end

  -- Check if appropriate time to update animation
  if time() - player.anim_time <= 0.1 then return end
  -- update the direction the player
  -- is facing
  if newstate[1] != player.currentstate[1] then
    player.currentstate = newstate
    player.state = newstate[1]
    return
  end
  -- update the state
  player.state +=2

  -- update animation timer
  player.anim_time = time()

  -- check if its the last state
  if player.state > player.currentstate[2] then
    player.state = player.currentstate[1]
  end

end

function player_draw_bedroom()
  -- draw sprite
  spr(player.state, player.x, player.y, 2,2, player.flipsprite)
end

-- checks player's x y to make sure they are not out of bounds
function player_boundry()
  if player.x <= -2 then player.x = -2 end
	if player.x >= 115 then player.x = 115 end
	if player.y >= 107 then player.y = 107 end
	if player.y <= 3 then player.y = 3 end
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

  if aim == "left" then
    x1=x + 3
    y1=y + (h/2)
    x2=x + 3   
    y2=y+h-1

  elseif aim=="right" then
    x1=x+w-4    
    y1=y + (h/2)
    x2=x+w-4 
    y2=y+h-1

  elseif aim=="up" then
    x1=x+4    
    y1=y
    x2=x+w-5  
    y2=y
     
  elseif aim=="down" then
    x1=x + 4    
    y1=y+h
    x2=x+w - 5    
    y2=y+h
  end

  xr1 = x1
  xr2 = x2
  yr1 = y1
  yr2 = y2
   
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