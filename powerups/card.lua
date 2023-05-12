function init_card()

    -- hold number of colors
    local pink = 0
    local orange = 0
    local red = 0
    local blue = 0
    local green = 0

    -- create cards
    for i = 0, 3 do 

        for j = 1, 3 do

            if not (i == 0 and j == 0) 
            and not (i == 3 and j == 0) then

                -- create card object
                local card = {
                    x = 3 + i*32,
                    y = 8 + j*30,
                    num = 0,
                    flip = true,
                    spr = 0,
                    solved = false,
                    animation = 0,
                    bad_match = 0
                }

                -- set card color
                if pink < 2 then
                    card.num = 1
                    pink += 1
                elseif orange < 2 then
                    card.num = 3
                    orange += 1
                elseif red < 2 then
                    card.num = 5
                    red += 1
                elseif blue < 2 then
                    card.num = 7
                    blue += 1
                elseif green < 2 then
                    card.num = 9
                    green += 1
                else
                    card.num = 11
                end

                -- add card to list
                add(card_list,card)

            end

        end

    end

    -- randomize position of cards
    randomize_cards()

    -- variable to hold player chosenc cards
    card_1 = 0
    card_2 = 0

end

function update_card()

    for i = 1, #card_list do

        -- player highlights a card
        if p.x + 4 > card_list[i].x and p.x + 4 < card_list[i].x +24
        and p.y + 4 > card_list[i].y and p.y + 4 < card_list[i].y + 24 then

            -- player chooses card
            if btnp(5) then
                -- 1st card flipped
                if card_1 == 0 and card_list[i].flip then
                    card_list[i].flip = false
                    card_1 = i
                -- 2nd card flipped
                elseif card_2 == 0 and card_list[i].flip then
                    card_list[i].flip = false
                    card_2 = i
                end

            end

        end

    end

    -- two cards flipped
    if card_1 > 0 and card_2 > 0 then
        -- cards match
        if card_list[card_1].num == card_list[card_2].num then
            card_list[card_1].solved = true
            card_list[card_2].solved = true
            card_1 = 0
            card_2 = 0
            matches += 1
        -- cards do not match
        else
            card_list[card_1].bad_match = 30
            card_list[card_2].bad_match = 30
            card_1 = 0
            card_2 = 0
            mistakes += 1
        end
    end

end

function draw_card()

    -- for each object in card list
    for i = 1, #card_list do

        -- cards are matched
        if card_list[i].solved then

            -- draw white card background
            rectfill(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,7)
            -- draw green border
            rect(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,11)
            rect(card_list[i].x+1,card_list[i].y+1,card_list[i].x+23,card_list[i].y+23,11)
            -- draw picture onto card
            spr(card_list[i].num,card_list[i].x + 4, card_list[i].y + 4,2,2)

        -- cards mismatched
        elseif card_list[i].bad_match > 0 then

            -- draw white card background
            rectfill(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,7)

            -- draw colored border
            rect(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,8)
            rect(card_list[i].x+1,card_list[i].y+1,card_list[i].x+23,card_list[i].y+23,8)

            -- draw picture onto card
            spr(card_list[i].num,card_list[i].x + 4, card_list[i].y + 4,2,2)

            card_list[i].bad_match -= 1

            if card_list[i].bad_match == 0 then
                card_list[i].flip = true
            end

        -- flip card
        elseif card_list[i].flip then

            -- draw white card background
            rectfill(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,7)

            -- draw red card filling
            rectfill(card_list[i].x+2,card_list[i].y+2,card_list[i].x+22,card_list[i].y+22,8)

        -- card is facing down
        else

            -- draw white card background
            rectfill(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,7)
            -- draw black border
            rect(card_list[i].x,card_list[i].y,card_list[i].x+24,card_list[i].y+24,10)
            rect(card_list[i].x+1,card_list[i].y+1,card_list[i].x+23,card_list[i].y+23,10)
            -- draw picture onto card
            spr(card_list[i].num,card_list[i].x + 4, card_list[i].y + 4,2,2)

        end

    end

end

-- randomize position of cards
function randomize_cards()

    local rand = 0

    for j = 1, 10 do

        -- random nunber from 0 - 1
        rand = rnd(1)

        -- 50% chance move card up position
        if rand < 0.5 then
            for i = 1, #card_list do
                if i % 2 == 0 then
                    card_list[i].num += 2
                    if card_list[i].num > 11 then
                        card_list[i].num = 1
                    end
                end
            end
        -- 50% chance move card back a position
        else
            for i = 1, #card_list do
                if i % 2 == 1 then
                    card_list[i].num += 2
                    if card_list[i].num > 11 then
                        card_list[i].num = 1
                    end
                end
            end

        end

    end

end