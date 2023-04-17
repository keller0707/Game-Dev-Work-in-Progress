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

    print("accuracy:",85,70,14)
   
    if accuracy.total > 0 then
        if ceil(accuracy.score * 100) <= 80 then
            print(ceil(accuracy.score*100) .. "%",88,78,8)
        else
            print(ceil(accuracy.score*100) .. "%",88,78,11)
        end
    else

    end

    print("overall\nscore:",85,90,14)

    if overall_score >= 1000 then
        print(overall_score,85,104,11)
    elseif overall_score > 0 then
        print(overall_score,85,104,8)
    end

end