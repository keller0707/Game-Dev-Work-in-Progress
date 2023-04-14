function _init()
    cursor = {
        x = @0x430F,
        y = @0x4310,
        speed = 3,
        w = 12,
        h = 16
    }
    --cursor.x = @0x430F
    --cursor.x = @0x4310
    

    -- setting color for AI button
    -- green color
    if ai_sheep == 5 and (ai_time > 0 and ai_time < 25) then
        for y = 4,5 do 
            for x = 1,5 do
                if y == 4 then
                    mset(x,y,102)
                else
                    mset(x,y,103)
                end
            end
        end
    -- yellow color
    elseif ai_sheep == 5 or (ai_time > 0 and ai_time < 25) then
        for y = 4,5 do 
            for x = 1,5 do
                if y == 4 then
                    mset(x,y,100)
                else
                    mset(x,y,101)
                end
            end
        end
    -- red color
    else
        for y = 4,5 do 
            for x = 1,5 do
                if y == 4 then
                    mset(x,y,98)
                else
                    mset(x,y,99)
                end
            end
        end
    end

    -- setting color for Controls button
    -- green color
    if controls_1 == 1 and controls_2 == 1 then
        for y = 4,5 do 
            for x = 10,14 do
                if y == 4 then
                    mset(x,y,102)
                else
                    mset(x,y,103)
                end
            end
        end
    -- yellow color
    elseif controls_1 == 1 or controls_2 == 1 then
        for y = 4,5 do 
            for x = 10,14 do
                if y == 4 then
                    mset(x,y,100)
                else
                    mset(x,y,101)
                end
            end
        end
    -- red color
    else
        for y = 4,5 do 
            for x = 10,14 do
                if y == 4 then
                    mset(x,y,98)
                else
                    mset(x,y,99)
                end
            end
        end
    end

    -- setting color for Collision button
    -- green color
    if collision_1 == 1 and collision_2 == 1 then
        for y = 8,9 do 
            for x = 1,5 do
                if y == 8 then
                    mset(x,y,102)
                else
                    mset(x,y,103)
                end
            end
        end
    -- yellow color
    elseif collision_1 == 1 or collision_2 == 1 then
        for y = 8,9 do 
            for x = 1,5 do
                if y == 8 then
                    mset(x,y,100)
                else
                    mset(x,y,101)
                end
            end
        end
    -- red color
    else
        for y = 8,9 do 
            for x = 1,5 do
                if y == 8 then
                    mset(x,y,98)
                else
                    mset(x,y,99)
                end
            end
        end
    end

    -- setting color for Powerup button
    -- green color
    if powerup_1 == 1 and powerup_2 == 1 then
        for y = 8,9 do 
            for x = 10,14 do
                if y == 8 then
                    mset(x,y,102)
                else
                    mset(x,y,103)
                end
            end
        end
    -- yellow color
    elseif powerup_1 == 1 or powerup_2 == 1 then
        for y = 8,9 do 
            for x = 10,14 do
                if y == 8 then
                    mset(x,y,100)
                else
                    mset(x,y,101)
                end
            end
        end
    -- red color
    else
        for y = 8,9 do 
            for x = 10,14 do
                if y == 8 then
                    mset(x,y,98)
                else
                    mset(x,y,99)
                end
            end
        end
    end

    -- setting color for Level button
    -- green color
    if level_1 == 1 and level_2 == 1 then
        for y = 12,13 do 
            for x = 1,5 do
                if y == 13 then
                    mset(x,y,103)
                else
                    mset(x,y,102)
                end
            end
        end
    -- yellow color
    elseif level_1 == 1 or level_2 == 1 then
        for y = 12,13 do 
            for x = 1,5 do
                if y == 13 then
                    mset(x,y,101)
                else
                    mset(x,y,100)
                end
            end
        end
    -- red color
    else
        for y = 12,13 do 
            for x = 1,5 do
                if y == 13 then
                    mset(x,y,99)
                else
                    mset(x,y,98)
                end
            end
        end
    end
end

function _update()
    -- Move Left
    if btn(0) then
        cursor.x -= cursor.speed
    end
    -- Move Right
    if btn(1) then
        cursor.x += cursor.speed
    end
    -- Move Up
    if btn(2) then
        cursor.y -= cursor.speed
    end
    -- Move Down
    if btn(3) then
        cursor.y += cursor.speed
    end
    checkhover()
end

function _draw()
    cls(1)
    map(0,0)

    print('exit', 25, 14, 1)
    print('playtest',72,14,1)
    print('ai', 24, 38 , 1)
    print('controls', 84, 38 , 1)
    print('collision', 10, 70 , 1)
    print('powerups', 84, 70 , 1)
    print('level', 18, 102 , 1)
    print('sound', 90, 102 , 1)
    --print('X:', 25,25,1)
    --print(cursor.x, 30,25,1) -- 8-17
    --print('Y:', 25, 30,1)
    --print(cursor.y, 30,30,1) -- 11-19
    spr(4, cursor.x, cursor.y, 2,2)


    --print(@0x4300,cursor.x,cursor.y,8)

end

function checkhover()
    -- Exit button Range: x:8-16 y:11-18
    if(9 <= cursor.x and cursor.x <= 16 and 
      12 <= cursor.y and cursor.y <= 17) then
        mset(1,1,8)
        mset(1,2,24)
        mset(2,1,9)
        mset(2,2,25)
        
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
			load("game-dev.p8","","comp")
		end
        
        return
    end

    -- Playtest button Range: x:8-16 y:11-18
    if(105 <= cursor.x and cursor.x <= 113 and 
      12 <= cursor.y and cursor.y <= 17) then
        mset(13,1,8)
        mset(13,2,24)
        mset(14,1,9)
        mset(14,2,25)
        
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
			load("playtest.p8","","play")
		end
        
        return
    end

    -- teleport to ai minigame
    if(5 <= cursor.x and cursor.x <= 44 and 
      32 <= cursor.y and cursor.y <= 47) then
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
            load("ai.p8")
        end
    end

    -- increment collision global variables
    if(5 <= cursor.x and cursor.x <= 44 and 
      65 <= cursor.y and cursor.y <= 79) then
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
            if collision_1 == 0 then
                poke(0x4301,1)
                load("debugmenu.p8")
            elseif collision_2 == 0 then
                poke(0x4302,1)
                load("debugmenu.p8")
            else
                poke(0x4301,0)
                poke(0x4302,0)
                load("debugmenu.p8")
            end
        end
    end

    -- increment level global variables
    if(5 <= cursor.x and cursor.x <= 44 and 
      96 <= cursor.y and cursor.y <= 110) then
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
            if level_1 == 0 then
                poke(0x4308,1)
                load("debugmenu.p8")
            elseif level_2 == 0 then
                poke(0x4309,1)
                load("debugmenu.p8")
            else
                poke(0x4308,0)
                poke(0x4309,0)
                load("debugmenu.p8")
            end
        end
    end

    -- increment control global variables
    if(77 <= cursor.x and cursor.x <= 116 and 
      32 <= cursor.y and cursor.y <= 47) then
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
            if controls_1 == 0 then
                poke(0x430A,1)
                load("debugmenu.p8")
            elseif controls_2 == 0 then
                poke(0x430B,1)
                load("debugmenu.p8")
            else
                poke(0x430A,0)
                poke(0x430B,0)
                load("debugmenu.p8")
            end
        end
    end

    -- increment powerups global variables
    if(77 <= cursor.x and cursor.x <= 116 and 
      65 <= cursor.y and cursor.y <= 79) then
        if (btnp(5)) then
            poke(0x430F,cursor.x)
            poke(0x4310,cursor.y)
            if powerup_1 == 0 then
                poke(0x430C,1)
                load("debugmenu.p8")
            elseif powerup_2 == 0 then
                poke(0x430D,1)
                load("debugmenu.p8")
            else
                poke(0x430C,0)
                poke(0x430D,0)
                load("debugmenu.p8")
            end
        end
    end

    

    -- default for exit
    mset(1,1,6)
    mset(1,2,22)
    mset(2,1,7)
    mset(2,2,23)

    -- default for playtest
    mset(13,1,6)
    mset(13,2,22)
    mset(14,1,7)
    mset(14,2,23)

end