function _init()

    -- create list for beats
    arrows = {}

    -- add beats to list
    init_arrows()

    -- create score objects
    init_score()

    -- create end screen
    init_end()

    -- create pause screen
    init_pause()

    -- create border strings
    init_border()

    -- check if game is over and score screen
    score_screen = false
    game_over = false

    music(00)

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

    -- clear screen
    cls()

    -- draw map
    map(0,0)

    -- draw border strings
    draw_border()

    -- draw beats
    draw_arrows()

    -- draw rock score
    draw_score()

    -- draw pause screen
    if pause_screen then
        draw_pause()
    end

    -- draw score screen
    if score_screen then
        draw_end()
    end

end