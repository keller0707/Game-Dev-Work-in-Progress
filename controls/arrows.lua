function init_arrows()

    -- create 101 arrows
    for i = 1,101 do 

        -- random number from 0 - 4
        local rand = rnd(4)

        -- create arrow object
        arrow = {
            x = 0,
            y = 104,
            spr = 0,
            active = false,
            color = ""
        }

        -- set arrow color based on random number
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

        -- add arrow object to list of arrows
        add(arrows,arrow)
    end

    -- animation time for border rainbows
    line_animation = 0

    -- variables for arrow spawn rate
    arrow_num = 1
    arrow_spawn = 1

end


function update_arrows()

    -- spawn arrows based on current combo score
    if combo >= 6 then
        arrow_spawn = 0.25
    elseif combo >= 3 then
        arrow_spawn = 0.5
    else
        arrow_spawn = 1
    end

    -- spawn new arrow
    if time() % arrow_spawn == 0 then
        if arrow_num <= #arrows then

            if arrow_num % 5 == 0 then
                arrows[arrow_num].active = true
                arrow_num += 1
            end

            arrows[arrow_num].active = true
            arrow_num += 1
        end
    end

    for i = 1, #arrows do

        if arrows[i].active then
            -- arrow speed based on current score
            arrows[i].y -= 1 + (0.2 * combo)

            -- arrow is in range
            if arrows[i].y + 6 >= 26 and arrows[i].y + 9 <= 38 then
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

end

function draw_arrows()

    -- red arrow sillhoute
    spr(64, 12, 25, 2,2)
    -- yellow arrow sillhoute
    spr(66, 30, 25, 2,2)
    -- green arrow sillhoute
    spr(68, 48, 25, 2,2)
    -- blue arrow sillhoute
    spr(70, 66, 25, 2,2)

    -- draw active arrows
    for i = 1, #arrows do
        if arrows[i].active then
            spr(arrows[i].spr,arrows[i].x,arrows[i].y,2,2)
        end
    end

end