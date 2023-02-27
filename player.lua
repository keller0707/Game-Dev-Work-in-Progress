// players inital values
function init_player()
    p={}         -- player's table
    p.x=10       -- player's X
    p.y=10       -- player's y
    p.state=1    -- player's animation state
    p.dirt=0     -- player's direction 
    p.defstate=1 -- player's default state
end

// updates the player
function player_update()
    -- intit value
	move = -1

    -- Check for button inputs
    -- Left Arrow
    if btn(0) then 
        p.x-=1
        move = 0 
        p.defstate=1
    end 

    -- Right Arrow
 	if btn(1) then 
        p.x+=1 
        move = 0 
        p.defstate=1
    end 

    -- Up Arrow
 	if btn(2) then 
        p.y-=1 
        move = 15 
        p.defstate=16
    end
    
    -- Down Arrow
 	if btn(3) then 
        p.y+=1 
        move = 15
        p.defstate=16
    end 

    -- return if no input detected
    if move == -1 then return end

    -- update the direction the player
    -- is facing
    if p.dirt != move then
        p.dirt = move
        p.state = move
    end

    -- update the state
    p.state +=1

    -- check if its the last state
    if p.state > 2 + p.defstate then
        p.state = p.defstate
    end
end

function player_draw()
    -- draw sprite
    spr(p.state, p.x, p.y)
end