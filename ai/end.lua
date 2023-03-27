function game_end(time,alive_count)

    cam_x = 256
    cam_y = 0

    camera(cam_x,cam_y)

    if collide_map(p,"left",1) and btnp(5) then
        load("ai.p8")
    end
    if collide_map(p,"right",1) and btnp(5) then
        load("ai.p8")
    end
    if collide_map(p,"up",1) and btnp(5) then
        load("ai.p8")
    end
    if collide_map(p,"down",1) and btnp(5) then
        load("ai.p8")
    end

    if collide_map(p,"left",2) and btnp(5) then
        load("placeholder.p8")
    end
    if collide_map(p,"right",2) and btnp(5) then
        load("placeholder.p8")
    end
    if collide_map(p,"up",2) and btnp(5) then
        load("placeholder.p8")
    end
    if collide_map(p,"down",2) and btnp(5) then
        load("placeholder.p8")
    end

end