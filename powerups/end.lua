function init_end() 

    cursor = {
        x = 28,
        y = 45,
        spr = 16
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

        if mistakes <= 4 then
            poke(0x430C,1)
            poke(0x430D,1)
        elseif mistakes >= 8 then
            poke(0x430C,0)
            poke(0x430D,0)
        else
            poke(0x430C,1)
            poke(0x430D,0)
        end

        if cursor.y == 45 then
            load("powerups.p8")
        elseif cursor.y == 59 then
            load("debugmenu.p8")
        end

    end

end

function draw_end()

    rectfill(25,23,98,116,1)

    if mistakes <= 4 then
        print("condragulations!",31,30,14)
    elseif mistakes > 4 and mistakes < 8 then
        print("good job!",45,30,14)
    else
        print("you suck!",44,30,14)
    end

    rect(25,23,98,116)

    line(25,38,98,38)

    print("play again",38,46)

    print("exit",38,60)

    spr(cursor.spr,cursor.x,cursor.y,1,1)

end