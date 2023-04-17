function init_border()

    border = {
        top_axis = 0,
        right_axis = 0,
        left_axis = 0,
        bottom_axis = 0
    }

    top_string = {
        animation = 0
    }

    bottom_string = {
        animation = 0
    }

    border_animation = 0

end

function update_border()

end

function draw_border()

    -- draw border container
    rect(0,0,127,127,7)

    -- draw guitar board
    rect(8,8,84,120,5)

    if time() - border_animation > 0.15 then

        border_animation = time()

        for x = 0,15 do

            local block = mget(x,0)

            if block > 36 then
                mset(x,0,32)
                mset(x,15,32)
            else
                mset(x,0,block+1)
                mset(x,15,block+1)
            end

        end

    end

end
