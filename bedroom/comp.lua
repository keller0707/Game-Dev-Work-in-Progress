function init_comp()

    display_playtest = false
    display_debug = false

end

function update_comp()

    -- playtest display
    if player.x + 8 > 12 * 8 and player.x + 8 < 110
    and player.y + 8 > 3 * 8 and player.y + 8 < 36 then

        display_playtest = true

        -- load playtest
        if btnp(5) then
            load("playtest.p8")
        end

    else

        display_playtest = false
        
    end

    -- debug display
    if player.x + 8 > 110 and player.x + 8 < 15*8
    and player.y + 8 > 30 and player.y + 8 < 44 then

        display_debug = true

        -- load debug menu
        if btnp(5) then
            load("debugmenu.p8")
        end

    else

        display_debug = false

    end

end

function draw_comp()


    if display_playtest then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,10)
        print("go to playtest",37,88,10)
    end

    if display_debug then
        rectfill(25,80,103,100,1)
        rect(25,80,103,100,14)
        print("go to debug",43,88,14)
    end

end