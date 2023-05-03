function init_display()

    top_left_window = {

        active = false,
        text = {}

    }

    -- text for top left window
    add(top_left_window.text,"aggghhh!")
    add(top_left_window.text,".......")
    add(top_left_window.text,"too much sunlight")

    
    top_right_window = {

        active = false,
        text = {}

    }

    -- text for top right window
    add(top_right_window.text,"i love this wall")
    add(top_right_window.text,"you won't leave me")
    add(top_right_window.text,"i hope")


    other_bedroom = {
        active = false,
        text = {}
    }

    -- text for other bedroom
    add(other_bedroom.text,"a new roomate...")
    add(other_bedroom.text,"they won't last")

    bed = {
        active = false,
        text = {}
    }

    -- text for bed
    add(bed.text,"i wanna sleep")
    add(bed.text,"and never wake up")

    bathroom = false

    stop_player = false

    text_index = 1
    text_msg = 1

end

function update_display()

    -- top left window
    if player.x + 8 > 4*8 and player.x + 8 < 6*8
    and player.y + 8 > 0 and player.y + 8 < 2*8 then

        if btnp(5) then

            text_index = 1

            if top_left_window.active and text_msg < #top_left_window.text then

                text_msg += 1

            elseif top_left_window.active then

                top_left_window.active = false
                stop_player = false
                text_msg = 1
            else
                top_left_window.active = true
                stop_player = true
            end

        end

    end

    -- top right window
    if player.x + 8 > 9*8 and player.x + 8 < 11*8
    and player.y + 8 > 0 and player.y + 8 < 2*8 then

        if btnp(5) then

            text_index = 1

            if top_right_window.active and text_msg < #top_right_window.text then

                text_msg += 1

            elseif top_right_window.active then

                top_right_window.active = false
                stop_player = false
                text_msg = 1

            else
                top_right_window.active = true
                stop_player = true
            end
        end

    end

    -- other bedroom
    if player.x + 8 >= 65 and player.x + 8 <= 78
    and player.y + 15 >= 77 and player.y + 15 <= 80 then

        if btnp(5) then

            --text_index = 1

            if other_bedroom.active and text_msg < #other_bedroom.text then

                --text_msg += 1

            elseif other_bedroom.active then

                --other_bedroom.active = false
                --stop_player = false
                --text_msg = 1

            else
                --other_bedroom.active = true
                --stop_player = true
            end
        end

    end

    -- bathroom
    if player.x + 9 >= 83 and player.x + 9 <= 88
    and player.y + 8 >= 64 and player.y + 8 <= 79 then
        if btnp(5) then
            --text_index = 1
            if bathroom then
                --bathroom = false
                --stop_player = false
            else
                --bathroom = true
                --stop_player = true
            end
        end
    end

    -- bed
    if player.x + 4 > 24 and player.x + 4 < 28
    and player.y + 8 > 18 and player.y + 8 < 34 then

        if btnp(5) then

            text_index = 1

            if bed.active and text_msg < #bed.text then

                text_msg += 1

            elseif bed.active then

                bed.active = false
                stop_player = false
                text_msg = 1

            else
                bed.active = true
                stop_player = true
            end
        end

    end

end
--  
function draw_display()

    -- other bedroom
    --rect(65,77,78,80,14)

    -- bathroom
    --rect(83,64,88,79,8)

    -- bed
    --rect(24,18,28,34,14)

    -- top right window
    --rect(9*8,0,11*8,2*8,8)

    -- player bound
    --rect(player.x+4,player.y+8,player.x+4,player.y+8,11)

    if top_left_window.active then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        animate_text(top_left_window.text[text_msg],29,88)
    end

    if top_right_window.active then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        animate_text(top_right_window.text[text_msg],29,88)
    end

    if bathroom then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        animate_text("i can hold it",29,88)
    end

    if other_bedroom.active then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        animate_text(other_bedroom.text[text_msg],29,88)
    end

    if bed.active then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        animate_text(bed.text[text_msg],29,88)
    end

end

function animate_text(string,x,y)

    if text_index <= #string then
        text_index += 1
    end

    print(sub(string,1,text_index),x,y)

end