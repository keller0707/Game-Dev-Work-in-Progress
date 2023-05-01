function init_door()

    door_transition = false
    door_animation = 0
    d_x = 0
    d_y = 0
    door_flip = false

    door = {
    
        active = false,
        text_flip = false,
        text_1 = {},
        text_2 = {},
        exit_msg = "well it wasn't"

    }

    -- text for door
    add(door.text_1,"maybe today")
    add(door.text_1,"will be the day")
    add(door.text_1,"something ends me")

    add(door.text_2,"maybe today")
    add(door.text_2,"will be better")

    map_sprites = {}
    map_index = 1

    for y = 0, 15 do
        for x = 0, 15 do
            add(map_sprites,mget(x,y))
        end
    end


end

function update_door()

    -- door
    if player.x + 8 > 2*8 and player.x + 8 < 28
    and player.y + 16 > 15*8 and player.y + 16 < 16*8 then

        if btnp(5) and not door_transition then

            text_index = 1

            if door.text_flip then

                if door.active and text_msg < #door.text_2 then

                    text_msg += 1

                elseif door.active then

                    door.active = false
                    --stop_player = false
                    text_msg = 1
                    door.text_flip = false
                    door_transition = true

                else
                    door.active = true
                    stop_player = true
                end

            else

                if door.active and text_msg < #door.text_1 then

                    text_msg += 1

                elseif door.active then

                    door.active = false
                    --stop_player = false
                    text_msg = 1
                    door.text_flip = true
                    door_transition = true

                else
                    door.active = true
                    stop_player = true
                end

            end

        end

    end

end

function draw_door()

    if door.active then
        rectfill(25,40,103,60,1)
        rect(25,40,103,60,10)
        if door.text_flip then
            animate_text(door.text_2[text_msg],29,48)
        else
            animate_text(door.text_1[text_msg],29,48)
        end
    end

    if door_transition then

        for x = 0,15 do
            rectfill(0,0,128,d_y*8,0)
        end

        if d_y == 1 and not door_flip then
            player.x = 14
            player.y = 107
        end
        
        if not door_flip and d_y <= 15 then
            d_y += 1
        end

        if door_flip and d_y >= 0 then
            d_y -= 1
        end

        if not door_flip then
            player.y += 1 
        else
            player.y -= 1
        end  

        if player.y < 107 then
            rectfill(25,40,103,60,1)
            rect(25,40,103,60,10)
            animate_text("well it wasn't",29,48)
            player.y = 107

            if btnp(5) then
                door_flip = false
                door_transition = false
                stop_player = false
            end

        end

        if player.y > 144 then
            door_flip = true
        end

    end

end
