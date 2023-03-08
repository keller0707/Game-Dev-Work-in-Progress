// players inital values
function init_player()
    player={}                 -- player's table
    player.x=10               -- player's X
    player.y=10               -- player's y
    player.anim_time=0        -- player's animation time
    player.speed=1            -- player's speed
    player.runstate ={08,14}  -- player run state
    player.upstate   ={32,42} -- player up walk state
    player.downstate ={67,77} -- player down walk state
    player.idlestate ={00,06} -- player idle state
    player.flipsprite=false   -- player flip sprite animiation
    player.currentstate={}    -- player's animation state
    player.state=0
end

// updates the player
function player_update()
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

function player_draw()
    -- draw sprite
    spr(player.state, player.x, player.y, 2,2, player.flipsprite)
end