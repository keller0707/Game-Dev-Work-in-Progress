function init_score()

    combo = 0
    overall_score = 0
    accuracy = {
        count = 0,
        total = 0,
        score = 0
    }

end

function draw_score()

    -- adjust line for audience meter
    if combo < 3 then
        -- point to red section
        line(93,31,103,44,15)
        line(94,31,104,44,15)

    elseif combo >= 3 and combo <= 7 then
        -- point to yellow section
        line(103,29,103,44,15)
        line(104,29,104,44,15)
    else
        -- point to green section
        line(114,31,103,44,15)
        line(115,31,104,44,15)
    end

    print("rock:",96,67,7)
    print(combo,96,77)

end