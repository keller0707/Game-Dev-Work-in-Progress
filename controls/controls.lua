function _init()

    arrows = {}

    init_arrows()

    for i = 1,1 do
        --arrows[i].active = true
    end

    init_score()

    init_end()

    init_pause()

    init_border()

    init_dancer()

    score_screen = false

    music(0)

end

function _update()

    

    -- update accuracy
    accuracy.score = accuracy.count/accuracy.total

    update_border(rainbow_1)
    update_border(rainbow_2)

    -- game over
    if accuracy.total == #arrows then
        score_screen = true
        update_end()
    end

    -- pausing screen
    if pause_screen then
        pause_controls()
    elseif not score_screen then
        update_arrows()

        -- pause screen
        if btnp(4) then
            pause_screen = true
            music(-1)
        end
    
    end

end

function _draw()

    cls()

    map(0,0)

    draw_border(rainbow_1)
    draw_border(rainbow_2)

    draw_arrows()

    draw_score()

    draw_dancer()

    if pause_screen then
        draw_pause()
    end

    if score_screen then
        draw_end()
    end

end