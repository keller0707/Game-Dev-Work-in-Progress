function init_arrows()

    for i = 1,20 do 

        -- random number between 0 - 4
        local rand = rnd(4)

        -- create beat object
        arrow = {
            x = 0,
            y = -17,
            spr = 0,
            active = false,
            color = "",
            note = 20
        }

        -- set color for beat
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

        -- add beat to list
        add(arrows,arrow)
    end

    -- variable for beat spawn rate
    beat_num = 1
    beat_speed = 1

end


function update_arrows()

    -- set beat speed based on combo
    if combo >= 8 then
        beat_speed = 0.5
    elseif combo >= 4 then
        beat_speed = 0.75
    else
        beat_speed = 1
    end

    -- spawn beat
    if time() % beat_speed == 0 then
        if beat_num <= #arrows then
            arrows[beat_num].active = true
            beat_num += 1
        end
    end

    for i = 1, #arrows do

        if arrows[i].active then
            -- arrow speed based on current score
            arrows[i].y += 1 + (0.2 * combo)

            -- arrow is in range
            if arrows[i].y + 6 >= 105 and arrows[i].y + 9 <= 118 then
                if arrows[i].color == "red" and btnp(0) then
                    arrow_hit(i)
                end
                if arrows[i].color == "orange" and btnp(3) then
                    arrow_hit(i)
                end
                if arrows[i].color == "green" and btnp(1) then
                    arrow_hit(i)
                end
                if arrows[i].color == "blue" and btnp(2) then
                    arrow_hit(i)
                end
            end

            -- arrow runs past bound
            if arrows[i].y + 9 > 118 then
                arrows[i].active = false
                accuracy.total += 1

                if combo >= 8 then
                    combo -= 3
                elseif combo > 2 then
                    combo -= 2
                elseif combo >= 1 then
                    combo -= 1
                else
                    game_over = true
                end

            end
        end

    end

end

-- arrow was pressed on time
function arrow_hit(i)
    sfx(arrow.note, 3)
    arrow.note += 1
    if (arrow.note > 26) arrow.note = 20
    arrows[i].active = false
    overall_score += 10 * (1 + combo)
    accuracy.total += 1
    accuracy.count += 1

    if combo < 10 then
        combo += 1
    end

end

function draw_arrows()

    -- draw lines on board
    spr(96,12,2,2,2)
    spr(98,30,2,2,2)
    spr(100,48,2,2,2)
    spr(102,66,2,2,2)

    -- red beat sillhoute
    spr(64, 12, 104, 2,2)
    -- yellow beat sillhoute
    spr(66, 30, 104, 2,2)
    -- green beat sillhoute
    spr(68, 48, 104, 2,2)
    -- blue beat sillhoute
    spr(70, 66, 104, 2,2)

    -- draw beats
    for i = 1, #arrows do
        if arrows[i].active then
            spr(arrows[i].spr,arrows[i].x,arrows[i].y,2,2)
        end
    end

end