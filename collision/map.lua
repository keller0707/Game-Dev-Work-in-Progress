function _init()
    -- Init Music
    music(0)

    -- Init shape
    init_shape()

    init_end()

    init_pause()

    -- Create Score
    score = 0
end
function _update()
    
    -- Update the shape
    update_shape()

    -- Create a shape with
    -- a random type
    create_shape(rand(1,5))
    --create_shape(1)

    if score >= 20 then
        update_end()
    elseif pause_screen then
        pause_controls()
    else
        if btnp(4) then
            pause_screen = true
        end
    end
end

function _draw()
    -- Clear Screen
    cls(1)

    -- Update map
    map(0,0)
    
    -- Print score
    print('score', 10, 10, 2)
    print(score,35, 10, scoreColor())
    
    draw_shape()
    check_row()
    if score >= 20 then
        draw_end()
    end
    if pause_screen then
        draw_pause()
    end
end

-- EXTRA FUNCTION --
function rand(first, last)
    return flr(rnd(last)) + first
end

function scoreColor()
    if score >= 20 then
        return 11
    elseif score >= 15 then
        return 10
    else 
        return 8
    end
end

