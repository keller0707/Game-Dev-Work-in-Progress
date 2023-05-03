function init_arrows()

    for i = 1,20 do 

        local rand = rnd(4)

        arrow = {
            x = 0,
            y = -17,
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

    beat_num = 1
    beat_speed = 1

    for i = 1,5 do 

        local rand = rnd(4)

        long_beat = {
            x = 0,
            y = -17,
            head_spr = 0,
            body_spr = 0,
            tail_spr = 0,
            length = 2,
            active = false,
            color = "",
            play = false,
            tried = false
        }

        if rand < 1 then
            long_beat.x = 12
            long_beat.head_spr = 160
            long_beat.body_spr = 144
            long_beat.tail_spr = 128
            long_beat.color = "red"
        elseif rand >= 1 and rand < 2 then
            long_beat.x = 30
            long_beat.head_spr = 164
            long_beat.body_spr = 148
            long_beat.tail_spr = 132
            long_beat.color = "orange"
        elseif rand >= 2 and rand < 3 then
            long_beat.x = 48
            long_beat.head_spr = 168
            long_beat.body_spr = 152
            long_beat.tail_spr = 136
            long_beat.color = "green"
        else
            long_beat.x = 66
            long_beat.head_spr = 172
            long_beat.body_spr = 156
            long_beat.tail_spr = 140
            long_beat.color = "blue"
        end

        add(long_beats,long_beat)

    end

    --long_beats[1].active = true

end


function update_arrows()

    if combo >= 8 then
        beat_speed = 0.5
    elseif combo >= 4 then
        beat_speed = 0.75
    else
        beat_speed = 1
    end

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

                dancer.sprite = 128

            end
        end

    end

    for i = 1, #long_beats do

        if long_beats[i].active then

            long_beats[i].y += 1

            -- beat is in range
            if long_beats[i].y + 6 >= 105 and long_beats[i].y + 9 <= 118 then

                if btnp(0) and long_beats[i].color == "red" and not long_beats[i].tried then
                    long_beats[i].play = true
                    long_beats[i].tried = true

                    if combo < 10 then
                        combo += 1
                    end

                end

                if btnp(1) and long_beats[i].color == "green" and not long_beats[i].tried then
                    long_beats[i].play = true
                    long_beats[i].tried = true

                    if combo < 10 then
                        combo += 1
                    end

                end

                if btnp(2) and long_beats[i].color == "blue" and not long_beats[i].tried then
                    long_beats[i].play = true
                    long_beats[i].tried = true

                    if combo < 10 then
                        combo += 1
                    end

                end

                if btnp(3) and long_beats[i].color == "orange" and not long_beats[i].tried then
                    long_beats[i].play = true
                    long_beats[i].tried = true

                    if combo < 10 then
                        combo += 1
                    end

                end

            end

            if btn(0) and long_beats[i].color == "red" and long_beats[i].play then

                long_beats[i].body_spr = 146
                long_beats[i].tail_spr = 130

            else

                long_beats[i].body_spr = 144
                long_beats[i].tail_spr = 128
                long_beats[i].play = false

            end

            if btn(1) and long_beats[i].color == "green" and long_beats[i].play then

                long_beats[i].body_spr = 154
                long_beats[i].tail_spr = 138

            else

                long_beats[i].body_spr = 152
                long_beats[i].tail_spr = 136
                long_beats[i].play = false

            end

            if btn(2) and long_beats[i].color == "blue" and long_beats[i].play then

                long_beats[i].body_spr = 154
                long_beats[i].tail_spr = 138

            else

                long_beats[i].body_spr = 152
                long_beats[i].tail_spr = 136
                long_beats[i].play = false

            end

            if btn(3) and long_beats[i].color == "orange" and long_beats[i].play then

                long_beats[i].body_spr = 154
                long_beats[i].tail_spr = 148

            else

                long_beats[i].body_spr = 152
                long_beats[i].tail_spr = 136
                long_beats[i].play = false

            end

            -- beat out of bounds
            if long_beats[i].y - (8 * (long_beats[i].length+1)) + 1 > 105 then
                long_beats[i].active = false

                if long_beats[i].play then

                    if combo < 10 then
                        combo += 1 
                    end

                else

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

                if not long_beats[i].tried then
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

end

-- arrow was pressed on time
function arrow_hit(i)
    
    arrows[i].active = false
    overall_score += 10 * (1 + combo)
    accuracy.total += 1
    accuracy.count += 1

    if combo < 10 then
        combo += 1
    end

    --if i < #arrows then
        --arrows[i+1].active = true
    --end

end

function draw_arrows()

    -- draws box of acceptable arrows in range
    --rect(0,19,146,26,13)

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

    -- draw long beats
    for i = 1, #long_beats do
        if long_beats[i].active then

            -- end of beat
            --line(long_beats[i].x,long_beats[i].y - (8 * (long_beats[i].length+1))+1,long_beats[i].x+16,long_beats[i].y - (8 * (long_beats[i].length+1))+1,7)

            -- draw body
            for j = 1, long_beats[i].length do
                if long_beats[i].y - (8 * j) <= 105 then
                    spr(long_beats[i].body_spr,long_beats[i].x,long_beats[i].y - (8 * j),2,1)
                end
            end

            -- draw tail
            spr(long_beats[i].tail_spr,long_beats[i].x,long_beats[i].y - (8 * (long_beats[i].length+1)),2,1)

            if long_beats[i].play then
                -- draw playing beat
                spr(162,12,104,2,2)
                
            else
                if long_beats[i].y <= 105 then
                    -- draw head
                    spr(long_beats[i].head_spr,long_beats[i].x,long_beats[i].y,2,2)
                else
                    -- draw head
                    spr(long_beats[i].head_spr,12,104,2,2)
                end

            end

        end
    end

    -- upper bound is 105
    --line(13,105,80,105,7)
    -- lower bound is 118
    --line(13,118,80,118,7)

end