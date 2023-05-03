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

    -- defualt combo
    mset(1,1,8)
    mset(2,1,9)
    mset(1,2,24)
    mset(2,2,25)

    for x = 3,8 do
        mset(x,1,10)
        mset(x,2,26)
    end

    mset(9,1,11)
    mset(9,2,27)

    -- update combo bar
    for i = 1, combo do
        if i == 1 then
            mset(1,1,40)
            mset(2,1,41)
            mset(1,2,56)
            mset(2,2,57)
        elseif i == 8 then
            mset(i+1,1,43)
            mset(i+1,2,59)
        else
            mset(i+1,1,42)
            mset(i+1,2,58)
        end
    end


    print("accuracy:",85,70,14)
   
    if accuracy.total > 0 then
        if ceil(accuracy.score * 100) < 80 then
            print(ceil(accuracy.score*100) .. "%",88,78,8)
        else
            print(ceil(accuracy.score*100) .. "%",88,78,11)
        end
    else

        

    end

    print("overall\nscore:",85,90,14)

    if overall_score >= 6900 then
        print(overall_score,85,104,11)
    elseif overall_score > 0 then
        print(overall_score,85,104,8)
    end

end