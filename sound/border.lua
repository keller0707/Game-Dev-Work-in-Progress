function init_border()

    -- create border
    border = {
        top_axis = 0,
        right_axis = 0,
        left_axis = 0,
        bottom_axis = 0
    }

    -- top screen zigzag
    top_string = {
        animation = 0
    }

    -- bottom screen zigzag
    bottom_string = {
        animation = 0
    }

    -- animation for zigzags
    border_animation = 0

end

function draw_border()

    -- animate zigzags
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

    -- draw border container
    rect(0,0,127,127,7)

    -- draw guitar board
    rect(8,0,84,120,5)
    rectfill(9,1,83,119,1)

    -- guitar strings
    rect(19,8,20,104,5)
    rect(37,8,38,104)
    rect(55,8,56,104)
    rect(73,8,74,104)

end
