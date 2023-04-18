function init_pause()

    pause = {
        x = 0,
        y = 0,
        spr = 24
    }

    pause_screen = false

end

function pause_controls()

    -- move up
    if pause.y > cam_y + 48 then

        if btnp(2) then
            pause.y -= 16
        end

    end

    -- move down
    if pause.y < cam_y + 64 then

        if btnp(3) then
            pause.y += 16
        end

    end

    -- player selects an option
    if btnp(5) then

        if pause.y == cam_y + 48 then
            load("ai.p8")
        elseif pause.y == cam_y + 64 then
            load("debugmenu.p8")
        end

    end

    -- unpause
    if btnp(4) then
        pause_screen = false
    end

end

function draw_pause()

    rectfill(cam_x+27,cam_y+27,cam_x+100,cam_y+97,1)
    rect(cam_x+27,cam_y+27,cam_x+100,cam_y+97,10)
    line(cam_x+27,cam_y+40,cam_x+100,cam_y+40,10)
    print("game paused!",cam_x+41,cam_y+32,10)
    print("restart level",cam_x+40,cam_y+50,10)
    print("go to debug",cam_x+40,cam_y+66,10)
    --rect(camera_x,0,camera_x+127,127)

    spr(24,pause.x,pause.y)

end