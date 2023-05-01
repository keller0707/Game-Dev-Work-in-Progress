function init_binary(x_pos,y_pos,direction)

    binary = {
        x = x_pos,
        y = y_pos,
        spr = 0,
        vertical = direction
    }

    -- randomly choose 0 or 1
    if rnd(1) >= 0.5 then
        binary.spr = 32
    else
        binary.spr = 33
    end

    add(binary_list,binary)

end

function update_binary()

    for i = 1, #binary_list do

        -- binary moving vertically
        if binary_list[i].vertical then

            -- rightside moves down
            if binary_list[i].x > 60 then

                if binary_list[i].y < 128 then
                    binary_list[i].y += code_speed
                else
                    binary_list[i].y = -8
                end

            -- leftside moves up
            else

                if binary_list[i].y > -8 then
                    binary_list[i].y -= code_speed
                else
                    binary_list[i].y = 128
                end

            end

        -- binary moving horizontally
        else

            -- topside moves right
            if binary_list[i].y < 60 then
                if binary_list[i].x < 128 then
                    binary_list[i].x += code_speed
                else
                    binary_list[i].x = -8
                end
            -- bottom side moves left
            else
                if binary_list[i].x > -8 then
                    binary_list[i].x -= code_speed
                else
                    binary_list[i].x = 128
                end
            end
            
        end

    end

end

function draw_binary() 

    for i = 1, #binary_list do

        spr(binary_list[i].spr,binary_list[i].x,binary_list[i].y)

    end

end

function draw_transition()

    if transition_num == 1 then
        for y = 6, 9 do
            for x = 9,12 do
                if mget(x,y) > 19 then
                    mset(x,y,mget(x,y)-4)
                end
            end
        end
    end

    if time() - transition_animation > 0.15 then

        transition_animation = time()

        for x = 9,12 do 
            local sprite = mget(x,5+transition_num)
            mset(x,5+transition_num,sprite+4)
        end

        if transition_num <= 4 then
            transition_num += 1
        else
            transition_done = true
        end

    end

end

function binary_read()

    if time() - binary_animation > 0.4 then

        binary_animation = time()

        if binary_x > 9 then
            mset(binary_x-1,binary_y,mget(binary_x-1,binary_y)-4)
        end
        if binary_x < 13 then
            mset(binary_x,binary_y,mget(binary_x,binary_y)+4)
        end

        if binary_x < 13 then

            binary_x += 1

        else

            binary_x = 9
            binary_y += 1

        end

        if binary_y > 9 then
            binary_y = 6
        end

    end

end