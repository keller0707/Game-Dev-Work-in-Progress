function game_end(time,alive_count)

    cam_x = 256
    cam_y = 0

    -- get the number of sheep alive
    local alive_count = #sheep_list - dead_count

    -- store alive count to memory addres in user data
    poke(0x4300, alive_count)
    -- store record time to memeory
    poke4(0x4304, recorded_time)

    -- camera set to score screen
    camera(cam_x,cam_y)

    -- these allow player to play minigame again
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

    -- these jump player back to selection screen
    if collide_map(p,"left",2) and btnp(5) then
        load("debugmenu.p8")
    end
    if collide_map(p,"right",2) and btnp(5) then
        load("debugmenu.p8")
    end
    if collide_map(p,"up",2) and btnp(5) then
        load("debugmenu.p8")
    end
    if collide_map(p,"down",2) and btnp(5) then
        load("debugmenu.p8")
    end

end