function _init() 

    code_list = {}

    -- create code messages
    init_code("while not press_play do")
    init_code("dead_inside = true")
    init_code("if his.size > 7 then")
    init_code("head = \'not bad\'")
    init_code("kenny_death_count += 1")
    init_code("while anxious do")
    init_code("add(triggers,milk_man)")
    init_code("opinion = \'based\'")
    init_code("for i = 1, #step_bro do")
    init_code("stuck = true")

    binary_list = {}

    -- create binary for left and right sides
    for y = 0, 16 do
        init_binary(0,y*8,true)
        init_binary(121,y*8,true)
    end

    -- create binary for top and bottom sides
    for x = 0, 16 do
        init_binary(x*8,0,false)
        init_binary(x*8,120,false)
    end

    code_speed = 1

    -- play transition animation
    transition = false
    transition_done = false
    transition_animation = 0
    transition_num = 1

    -- 
    binary_animation = 0
    binary_flick = false
    binary_x = 9
    binary_y = 6

    button_sprite = 128

end

function _update()

    -- move code across screen
    update_code()

    -- move binary code on border
    update_binary()

    -- play transition animation
    if btnp(5) then
        transition = true
    end

    -- animation done load cart
    if transition_done then
        load("game-dev.p8")
    end

end

function _draw()

    cls()

    -- draw code moving across screen
    draw_code()

    map(0,0)

    -- add on red bits to title
    -- W 
    line(23,19,23,21,8)
    -- I
    line(79,19,79,21,8)
    line(79,28,79,29,8)
    -- P
    line(23,35,23,45,8)
    -- blue bit on P
    line(31,58,31,68,1)

    -- draw binary outside border
    draw_binary()

    if not transition then
        binary_read()
    end

    -- draw border
    rect(8,8,120,120,3)

    -- draw whit circle
    spr(button_sprite,2*8,7*8,2,2)

    -- draw transition
    if transition then
        draw_transition()
    end

end