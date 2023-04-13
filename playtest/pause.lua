function init_pause()

    cursor = {
        x = 0,
        y = 0,
        spr = 35
    }

end

function pause_controls()

    -- move up
    if cursor.y > 48 then

        if btnp(2) then
            cursor.y -= 16
        end

    end

    -- move down
    if cursor.y < 80 then

        if btnp(3) then
            cursor.y += 16
        end

    end

    -- player selects an option
    if btnp(5) then

        if cursor.y == 48 then
            load("playtest.p8","",stat(6))
        elseif cursor.y == 64 then
            load("debugmenu.p8")
        elseif cursor.y == 80 then
            load("game-dev.p8","","comp")
        end

    end

    -- unpause
    if btnp(4) then
        pause = false
    end

end

function draw_pause()
    rectfill(camera_x+27,27,camera_x+100,97,15)
    rect(camera_x+27,27,camera_x+100,97,1)
    line(camera_x+27,40,camera_x+100,40)
    print("game paused!",camera_x+41,32)
    print("restart level",camera_x+39,50)
    print("go to debug",camera_x+42,66)
    print("go to bedroom",camera_x+39,82)
    --rect(camera_x,0,camera_x+127,127)

    spr(35,cursor.x,cursor.y)

end