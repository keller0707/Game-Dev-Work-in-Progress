function _init()

    animation = 0

    arrows = {}

    init_arrows()

    for i = 1,1 do
        arrows[i].active = true
    end

    init_score()

    init_end()

    init_pause()

    score_screen = false

end

function _update()

    -- update accuracy
    accuracy.score = accuracy.count/accuracy.total

    -- game over
    if accuracy.total == #arrows then
        score_screen = true
        update_end()
    end

    -- pausing screen
    if pause_screen then
        pause_controls()
    elseif not score_screen then
        --update_border()
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

    draw_arrows()

    draw_score()

    if pause_screen then
        draw_pause()
    end

    if score_screen then
        draw_end()
    end

end