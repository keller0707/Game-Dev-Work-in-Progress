function init_score()

    -- combo score
    combo = 0

    -- overall score
    overall_score = 0

    -- create accuracy object
    accuracy = {
        count = 0,
        total = 0,
        score = 0
    }

end

function draw_score()

    -- color for socre printing
    local rock_color = 11

    -- adjust line for score meter
    if combo < 3 then
        -- point to red section
        line(93,31,103,44,15)
        line(94,31,104,44,15)
        rock_color = 8

    elseif combo >= 3 and combo <= 7 then
        -- point to yellow section
        line(103,29,103,44,15)
        line(104,29,104,44,15)
        rock_color = 10
    else
        -- point to green section
        line(114,31,103,44,15)
        line(115,31,104,44,15)
    end

    -- print rock score
    print("rock:",96,67,rock_color)
    print(combo,96,77)

end