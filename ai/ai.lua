function _init()

    simiple_player()

    init_pause()

    -- list for NPCs
    sheep_list = {}
    wolf_list = {}

    -- create sheep
    init_sheep(36,213)
    init_sheep(24,36)
    init_sheep(200,36)
    init_sheep(228,210)
    init_sheep(126,204)

    -- create wolves
    init_wolf(165,78)
    init_wolf(75,78)
    init_wolf(180,165)
    init_wolf(50,147)

    objective = {}

    xr1 = 0
    yr1 = 0
    xr2 = 0
    yr2 = 0

    speed = 3

    cam_x = 0
    cam_y = 0

    dead_count = 0
    score_screen = false
    recorded_time = 0

end

function _update()

    -- keep camera in appropriate x range
    if (p.x - 60 < 0) then
        cam_x = 0
    elseif (p.x + 60 > 250) then 
        cam_x = 128
    else
        cam_x = p.x - 60
    end

    -- appropraite y range
    if (p.y - 60 < 0) then
        cam_y = 0
    elseif (p.y + 60 > 250) then 
        cam_y = 128
    else
        cam_y = p.y - 60
    end
    
    camera(cam_x,cam_y)

    if pause_screen then
        pause_controls()
    else

        if btnp(4) and not score_screen then
            pause_screen = true
            pause.x = cam_x+30
            pause.y = cam_y+48
        end

        -- player movement
        simple_mvt()

         -- checking on sheep
        for i = 1, #sheep_list do

            -- check if player is in range
            if (in_range(p,sheep_list[i],8)) then
                sheep_list[i].active = true
                if (stat(47) == -1) then
                    sfx(00, 1)
                end
            end
            -- sheep set to follow player
            if (sheep_list[i].active == true and not sheep_list[i].safe and sheep_list[i].alive) then
                follow(p,sheep_list[i],2,6)
                sheep_list[i].moving = true
            end

            -- sheep enter safe zone
        if sheep_list[i].x >= 96 and sheep_list[i].x <= 144 and
            sheep_list[i].y >= 96 and sheep_list[i].y <= 144 and not
            sheep_list[i].safe then
                sheep_list[i].safe = true
                add(objective,true)
            end

            -- sheep is safe
            if (sheep_list[i].safe) then
                -- sheep randomly moves between 96 and 144 range
                if rnd(100) <= 3 then
                    sheep_list[i].x -= 1
                elseif rnd(100) >= 97 then
                    sheep_list[i].x += 1
                end

                if rnd(100) <= 3 then
                    sheep_list[i].y -= 1
                elseif rnd(100) >= 97 then
                    sheep_list[i].y += 1
                end

                if sheep_list[i].x < 96 then
                    sheep_list[i].x += 2
                elseif sheep_list[i].x > 144 then
                    sheep_list[i].x -= 2
                end

                if sheep_list[i].y < 96 then
                    sheep_list[i].y += 2
                elseif sheep_list[i].y > 144 then
                    sheep_list[i].y -= 2
                end

            end

            -- game end, all sheep are safe and/or dead
            if #objective >= #sheep_list then

                -- jump player to score screen
                if not score_screen then
                    sfx(3,3)
                    p.y = 97
                    p.x = 315
                    score_screen = true
                    recorded_time = time()

                end

                -- variable to count number of living sheep
                local count = 0

                -- count number of living sheep
                for i = 1, #sheep_list do
                    if sheep_list[i].alive then
                        count += 1
                    end
                end

                -- end game, enter score screen
                game_end(time(),count)

            end
        
        end

        -- checking on wolves
        for i = 1, #wolf_list do

            -- check if any sheep is in range
            for l = 1, #sheep_list do

                -- wolf is hunting sheep
                if (in_range(sheep_list[l],wolf_list[i],40)) and not sheep_list[l].safe  and sheep_list[l].alive then
                    follow(sheep_list[l],wolf_list[i],1,2)
                    if (stat(46) == -1) then 
                        sfx(1)
                    end
                end

                -- wolf has caught sheep
                if (in_range(sheep_list[l],wolf_list[i],4)) and not sheep_list[l].safe and sheep_list[l].alive then
                    --death_animiation(l)
                    sheep_list[l].sprite = 34
                    sheep_list[l].alive = false
                    add(objective,true)
                    dead_count += 1
                    sfx(2)
                end

            end

        end

    end

end

function _draw()

    cls()

    map(0,0)

    draw_player()
    
    draw_sheep()

    draw_wolves()

    if pause_screen then
        draw_pause()
    end

    -- game is live
    if not score_screen then

        local print_x = p.x - 60
        local print_y = p.y - 60

        -- keep timer in appropriate x range
        if (print_x < 0) then
            print_x = 2
        elseif (print_x > 189) then 
            print_x = 126
        end

        -- keep timer in appropraite y range
        if (p.y - 56 < 0) then
            print_y = 2
        elseif (p.y + 56 > 250) then 
            print_y = 126
        end
        
        -- display timer top left
        print("time: "..flr(time()),print_x,print_y)
        
    end

    if score_screen then

        -- display info for score screen
        print("condragulations!",287,30,8)
        print("you saved:",299,40,9)
        print(#sheep_list - dead_count .. "/" .. #sheep_list .. " sheep!",300,50,10)
        print("play\nagain",275,94,7)
        print("in: ".. recorded_time .. " seconds!",281,60,11)
        print("exit",349,97,7)

    end

    -- THIS IS ALL HITBOX DRAWING FOR DEBUG STUFF
    -- player circle
    --circ(p.x+4,p.y+4,64,8)

    -- see wolf hunting range
    --for i = 1, #wolf_list do
        --rect(wolf_list[i].x - 28, wolf_list[i].y - 28, wolf_list[i].x + 36, wolf_list[i].y + 36,8)
        --circ(wolf_list[i].x + 4, wolf_list[i].y + 4, 32,12)
    --end

    -- see sheeps pickup hitbox
    --for i = 1, #sheep_list do
        --rect(sheep_list[i].x - 4, sheep_list[i].y - 4, sheep_list[i].x + 12, sheep_list[i].y + 12,12)
    --end

end