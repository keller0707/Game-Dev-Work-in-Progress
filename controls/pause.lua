function init_pause()

    pause = {
        x = 30,
        y = 49,
        spr = 35
    }

    pause_screen = false

end

function pause_controls()

    -- move up
    if pause.y > 49 then

        if btnp(2) then
            pause.y -= 16
        end

    end

    -- move down
    if pause.y < 65 then

        if btnp(3) then
            pause.y += 16
        end

    end

    -- player selects an option
    if btnp(5) then

        if pause.y == 49 then
            load("controls.p8")
        elseif pause.y == 65 then
            load("debugmenu.p8")
        end

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
    print("restart level",40,50)
    print("go to debug",40,66)
    --rect(camera_x,0,camera_x+127,127)

    spr(7,pause.x,pause.y)

end