function _init()
    clock = 0
    score = {
        time = 0,
        total = 0
    }

    blockcolor = {
        red = 64,
        orange = 65,
        yellow = 66,
        green = 67,
        pink = 68
    }
    music(0)
    init_block(64, 8, blockcolor.pink)
    --init_block(50, 8, blockcolor.pink)
end
function _update()
    if (btnp(5)) then
        load("debugmenu.p8")
    end
    update_block()
end

function _draw()
    cls(1)
    map(0,0)
    
    print('score', 10, 10, 2)
    
    draw_block()
end
