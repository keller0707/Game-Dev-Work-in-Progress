function _init()

    -- create list for cards
    card_list = {}

    -- add cards to list
    init_card()

    -- create player
    init_player()

    -- create pause screen
    init_pause()

    -- create end screen
    init_end()

    -- create sheep
    init_host()

    -- hold nubmber of player mistakes
    mistakes = 0

    -- hold number of card matches
    matches = 0 

end

function _update()

    -- game over, all cards matched
    if matches == 6 then 
        update_end()

    -- game paused
    elseif pause_screen then
        pause_controls()

    -- game is unpaused and running
    else

        -- pause screen
        if btnp(4) then
            pause_screen = true
        end

        -- controls for player
        update_player()

        -- logic for card matching and flipping
        update_card()

    end
    
end

function _draw()

    -- clear screen with green background
    cls(3)

    -- draw box border for mistakes
    rectfill(25,5,75,20,0)
    rect(25,5,75,20,7)

    -- draw cards
    draw_card()

    -- draw player
    draw_player()

    -- draw sheep
    draw_host()

    -- draw pause screen
    if pause_screen then
        draw_pause()
    end

    -- color for mistakes printing
    local mis_color = 11

    -- set color for mistakes printing
    if mistakes > 4 and mistakes < 8 then
        mis_color = 10
    elseif mistakes >= 8 then
        mis_color = 8
    end

    -- print mistakes number
    print("mistakes:", 30,10,mis_color)
    print(mistakes,67,10,mis_color)

    -- draw end screen
    if matches == 6 then
        draw_end()
    end

end