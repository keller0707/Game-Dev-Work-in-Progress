function init_arrows()

    for i = 1,20 do 

        local rand = rnd(4)

        arrow = {
            x = 0,
            y = 9,
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
            arrows[i].y += 1 + (0.2 * combo)

            -- arrow is in range
            if arrows[i].y >= 102 and arrows[i].y <= 112 then
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
            if arrows[i].y > 112 then
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


    rect(19,24,20,104,5)
    rect(37,24,38,104)
    rect(55,24,56,104)
    rect(73,24,74,104)

    -- draws box of acceptable arrows in range
    --rect(0,19,146,26,13)

    spr(96,12,12,2,2)
    spr(98,30,12,2,2)
    spr(100,48,12,2,2)
    spr(102,66,12,2,2)

    -- red beat sillhoute
    spr(64, 12, 104, 2,2)
    -- yellow beat sillhoute
    spr(66, 30, 104, 2,2)
    -- green beat sillhoute
    spr(68, 48, 104, 2,2)
    -- blue beat sillhoute
    spr(70, 66, 104, 2,2)

    for i = 1, #arrows do
        if arrows[i].active then
            spr(arrows[i].spr,arrows[i].x,arrows[i].y,2,2)
        end
    end

end