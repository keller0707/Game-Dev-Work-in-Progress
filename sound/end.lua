function init_end() 

    cursor = {
        x = 13,
        y = 45,
        spr = 7
    }

end

function update_end()

    if btnp(3) and cursor.y < 59 then
        cursor.y += 14
    end
    if btnp(2) and cursor.y > 45 then
        cursor.y -= 14
    end

    if btnp(5) then
        if cursor.y == 45 then
            load("sound.p8")
        elseif cursor.y == 59 then
            load("debugmenu.p8")
        end
    end

    -- write to memory minigame results
    if overall_score >= 1000 then
        poke(0x4311,1)
    else
        poke(0x4311,0)
    end
    if ceil(accuracy.score*100) >= 80 then
        poke(0x4312,1)
    else
        poke(0x4312,0)
    end

end

function draw_end()

    rectfill(10,23,83,116,1)

    print("condragulations!",16,30,14)

    rect(10,23,83,116)

    line(10,38,83,38)

    print("play again",23,46)

    print("exit",23,60)

    spr(cursor.spr,cursor.x,cursor.y,1,1)

end