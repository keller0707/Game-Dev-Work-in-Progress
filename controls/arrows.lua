function init_arrows()

    for i = 1,20 do 

        local rand = rnd(4)

        arrow = {
            x = 0,
            y = 104,
            spr = 0,
            active = false,
            color = ""
        }

        if rand < 1 then
            arrow.x = 12
            arrow.spr = 72
            arrow.color = "red"
        elseif rand >= 1 and rand < 2 then
            arrow.x = 30
            arrow.spr = 74
            arrow.color = "orange"
        elseif rand >= 2 and rand < 3 then
            arrow.x = 48
            arrow.spr = 76
            arrow.color = "green"
        else
            arrow.x = 66
            arrow.spr = 78
            arrow.color = "blue"
        end

        add(arrows,arrow)
    end

    line_animation = 0

    line_1 = {
        x = 29,
        y = 36,
    }

    line_2 = {
        x = 46,
        y = 108,
    }

    line_3 = {
        x = 65,
        y = 36,
    }


end


function update_arrows()

    for i = 1, #arrows do

        if arrows[i].active then
            -- arrow speed based on current score
            arrows[i].y -= 1 + (0.2 * combo)

            -- arrow is in range
            if arrows[i].y <= 26 and arrows[i].y >= 19 then
                if arrows[i].color == "red" and btnp(0) then
                    arrow_hit(i)
                    dancer.sprite = 130
                    dancer.flip = false
                end
                if arrows[i].color == "orange" and btnp(3) then
                    arrow_hit(i)
                    dancer.sprite = 132
                    dancer.flip = false
                end
                if arrows[i].color == "green" and btnp(1) then
                    arrow_hit(i)
                    dancer.sprite = 130
                    dancer.flip = true
                end
                if arrows[i].color == "blue" and btnp(2) then
                    arrow_hit(i)
                    dancer.sprite = 132
                    dancer.flip = true
                end
            end

            -- arrow runs past bound
            if arrows[i].y < 18 then
                arrows[i].active = false
                accuracy.total += 1

                if combo > 0 then
                    combo -= 1
                end

                if i < #arrows then
                    arrows[i+1].active = true
                end

                dancer.sprite = 128

            end
        end

    end

end

-- arrow was pressed on time
function arrow_hit(i)
    
    arrows[i].active = false
    overall_score += 10 * (1 + combo)
    accuracy.total += 1
    accuracy.count += 1

    if combo < 8 then
        combo += 1
    end

    if i < #arrows then
        arrows[i+1].active = true
    end

end

function draw_arrows()

    --line(10,23,83,23,7)
    --line(10,24,10,116,7)

    if time() - line_animation > 0.1 then
        line_animation = time()
        line_1.y += 1
        line_2.y -= 1
        line_3.y += 1
        if line_1.y == 108 then
            line_1.y = 36
        end
        if line_2.y == 36 then
            line_2.y = 108
        end
        if line_3.y == 108 then
            line_3.y = 36
        end
    end

    --line(line_1.x,line_1.y,line_1.x,line_1.y + 8,7)
    --line(line_2.x,line_2.y,line_2.x,line_2.y + 8,7)
    --line(line_3.x,line_3.y,line_3.x,line_3.y + 8,7)


    --line(29,24,29,116,7)
    --line(46,24,46,116,7)
    --line(65,24,65,116,7)
    --line(83,24,83,116,7)
    --line(10,116,83,116,7)

    -- draws box of acceptable arrows in range
    --rect(0,19,146,26,13)

    -- red arrow sillhoute
    spr(64, 12, 25, 2,2)
    -- yellow arrow sillhoute
    spr(66, 30, 25, 2,2)
    -- green arrow sillhoute
    spr(68, 48, 25, 2,2)
    -- blue arrow sillhoute
    spr(70, 66, 25, 2,2)

    for i = 1, #arrows do
        if arrows[i].active then
            spr(arrows[i].spr,arrows[i].x,arrows[i].y,2,2)
        end
    end

end