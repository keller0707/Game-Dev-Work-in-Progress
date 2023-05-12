function init_score()

    -- variabel to hold combo
    combo = 0
    -- variabel to hold score
    overall_score = 0

    -- create accuracy object
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

    -- set combo bar sprite
    for x = 3,8 do
        mset(x,1,10)
        mset(x,2,26)
    end

    -- set combo bar sprite
    mset(9,1,11)
    mset(9,2,27)

    -- update combo bar sprites based on current combo
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

    -- display accuracy 
    print("accuracy:",85,70,14)
   
    -- change accuracy color
    if accuracy.total > 0 then
        if ceil(accuracy.score * 100) < 80 then
            print(ceil(accuracy.score*100) .. "%",88,78,8)
        else
            print(ceil(accuracy.score*100) .. "%",88,78,11)
        end
    end

    -- display score
    print("overall\nscore:",85,90,14)

    -- change score color
    if overall_score >= 6900 then
        print(overall_score,85,104,11)
    elseif overall_score > 0 then
        print(overall_score,85,104,8)
    end

end