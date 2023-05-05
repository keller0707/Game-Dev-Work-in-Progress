function _init()

    card_list = {}

    init_card()

    init_player()

    init_pause()

    init_end()

    init_host()

    mistakes = 0
    matches = 0 

end

function _update()

    if matches == 6 then 
        update_end()
    elseif pause_screen then
        pause_controls()
    else

        if btnp(4) then
            pause_screen = true
        end

        update_player()

        update_card()

    end
    
end

function _draw()

    cls(3)

    draw_card()

    draw_player()

    draw_host()

    if pause_screen then
        draw_pause()
    end

    local mis_color = 11

    if mistakes > 4 and mistakes < 8 then
        mis_color = 10
    elseif mistakes >= 8 then
        mis_color = 8
    end

    print("mistakes:", 30,8,mis_color)
    print(mistakes,67,8,mis_color)

    if matches == 6 then
        draw_end()
    end

end