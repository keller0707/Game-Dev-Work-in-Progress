function _init()

    arrows = {}
    long_beats = {}

    init_arrows()

    init_score()

    init_end()

    init_pause()

    init_border()

    init_dancer()

    score_screen = false

    game_over = false

end

function _update()

    -- update accuracy
    accuracy.score = accuracy.count/accuracy.total

    -- game over
    if accuracy.total == #arrows or game_over then
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
        end
    
    end

end

function _draw()

    cls()

    map(0,0)

    draw_border()

    draw_arrows()

    draw_score()

    --draw_dancer()

    if pause_screen then
        draw_pause()
    end

    if score_screen then
        draw_end()
    end

end