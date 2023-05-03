function _init()
    -- Init Music
    music(0)

    -- Init shape
    init_shape()
end
function _update()
    -- Checks for keypress
    if (btnp(5)) then
        load("debugmenu.p8")
    end
    
    -- Update the shape
    update_shape()

    -- Create a shape with
    -- a random type
    create_shape(rand(1,5))
    --create_shape(1)
end

function _draw()
    -- Clear Screen
    cls(1)

    -- Update map
    map(0,0)
    
    -- Print score
    -- print('score', 10, 10, 2)
    
    draw_shape()
    check_row()
end

-- EXTRA FUNCTION --
function rand(first, last)
    return flr(rnd(last)) + first
end
