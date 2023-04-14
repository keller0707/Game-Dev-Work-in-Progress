function create_powerup(x_pos,y_pos,blockX,blockY,spr)

    powerup = {
        x = x_pos,
        y = y_pos,
        dx = 0,
        dy = 0,
        w = 7,
        h = 7,
        sprite = spr,
        active = false,
        block_x = blockX,
        block_y = blockY
    }

    add(powerups,powerup)

    local length = #powerups

    return length

end

function powerups_move ()

    for i = 1, #powerups do

        -- powerup floats down
        powerups[i].dy += gravity

        -- powerup in air
        if powerups[i].dy > 0 then

            -- check for its collion on the ground
            if collide_map(powerups[i],"down",0) then
                powerups[i].dy = 0
                powerups[i].landed = true
            end

        end

        -- update powerup position
        powerups[i].y += powerups[i].dy
        
    end

end

function draw_powerups ()

    for i = 1, #powerups do

        -- draw powerup if it is active
        if powerups[i].active then
            spr(powerups[i].sprite,powerups[i].x,powerups[i].y,1,1)
        end
        --rect(sheep_list[i].x,sheep_list[i].y,sheep_list[i].x+7,sheep_list[i].y+8,8)
    end

end

-- powerup for good apple
function good_apple()
    if btnp(5) then

        smoke.x = p.x
        smoke.y = p.y

        -- fixed powerup
        if powerup_1 == 1 then
            if p.flipx == false then
                p.x += 40
                p.apple = false
            else
                p.x -= 40
                p.apple = false
            end
        -- buggy powerup
        else
            if p.flipx == true then
                p.x += 40
                p.apple = false
            else
                p.x -= 40
                p.apple = false
            end
        end
    end
end

-- powerup for good banana
function good_banana()
    if btnp(5) then

        smoke.x = p.x
        smoke.y = p.y

        -- fixed powerup
        if powerup_2 == 1 then
            p.y -= 40
            p.banana = false
        -- buggy powerup
        else
            teleport(scene)
            p.banana = false
        end
    end
end
