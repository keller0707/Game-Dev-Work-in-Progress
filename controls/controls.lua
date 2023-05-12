function _init()

    -- create list to hold arrow objects
    arrows = {}

    -- add arrow objects to arrow list
    init_arrows()

    -- create score system
    init_score()

    -- create end screen
    init_end()

    -- create pause screen
    init_pause()

    -- create rainbow border objects
    init_border()

    -- create dancer object
    init_dancer()

    -- create variable to determine if game is over
    score_screen = false

    -- add music
    music(0)

end

function _update()

    -- update accuracy
    accuracy.score = accuracy.count/accuracy.total

    -- animate rainbows
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

    -- clear screen
    cls()

    -- draw map
    map(0,0)

    -- draw rainbows
    draw_border(rainbow_1)
    draw_border(rainbow_2)

    -- draw arrows
    draw_arrows()

    -- print score info
    draw_score()

    -- draw dancer
    draw_dancer()

    -- game is paused draw paused screen
    if pause_screen then
        draw_pause()
    end

    -- game is over draw end screen
    if score_screen then
        draw_end()
    end

end