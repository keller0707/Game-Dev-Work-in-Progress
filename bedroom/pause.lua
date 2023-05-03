function init_pause()

    cursor = {
        x = 30,
        y = 48,
        spr = 1
    }

end

function pause_controls()

    -- player selects an option
    if btnp(5) then

        load("start.p8")

    end

    -- unpause
    if btnp(4) then
        pause_screen = false
    end

end

function draw_pause()
    rectfill(27,27,100,97,1)
    rect(27,27,100,97,10)
    line(27,40,100,40)
    print("game paused!",41,32)
    print("exit to menu",40,50)
    --rect(camera_x,0,camera_x+127,127)

    spr(cursor.spr,cursor.x,cursor.y)

end