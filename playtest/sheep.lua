function init_sheep(x_pos,y_pos)

    sheep = {

        start_x = x_pos,
        start_y = y_pos,

        x = x_pos,
        y = y_pos,

        dx = 0,
        dy = 0,

        active = false,

        w = 8,
        h = 8,

        safe = false,
        alive = true,
        flip = false,

        animation = 0,
        sprite = 16,

        landed = true,

        

    }

    add(sheep_list,sheep)

end

function draw_sheep()

    for i = 1, #sheep_list do

        -- loop through sprites based
        if time() - sheep_list[i].animation > 0.1 then
            sheep_list[i].animation = time()
            sheep_list[i].sprite += 1
            if sheep_list[i].sprite > 19 then
                sheep_list[i].sprite = 16
            end
        end

        spr(sheep_list[i].sprite,sheep_list[i].x,sheep_list[i].y,1,1,sheep_list[i].flip)
        --rect(sheep_list[i].x,sheep_list[i].y,sheep_list[i].x+7,sheep_list[i].y+8,8)
    end

end

function move_clean(number)

    -- subject sheep to the natural forces
    sheep_list[number].dy += gravity

    -- have to save all 5 sheep in AI minigame to make sheep movement correct
    if global_var.ai_sheep == 5 then
        sheep_list[number].dx *= friction
    end

    -- moving right
    if sheep_list[number].flip then

        sheep_list[number].dx += 0.2

        if collide_map(sheep_list[number],"right",2) then
            sheep_list[number].flip = false
            sheep_list[number].dx = 0
        end

        if collide_map(sheep_list[number],"right",0) then

            sheep_list[number].dx = 0

            if sheep_list[number].landed then
                sheep_list[number].dy -= 4
                sheep_list[number].landed = false
            end

        end

    -- moving left
    else

        sheep_list[number].dx -= 0.2

        if collide_map(sheep_list[number],"left",2) then
            sheep_list[number].flip = true
            sheep_list[number].dx = 0
        end

        if collide_map(sheep_list[number],"left",0) then

            sheep_list[number].dx = 0

            if sheep_list[number].landed then
                sheep_list[number].dy -= 4
                sheep_list[number].landed = false
            end

        end

    end

    if sheep_list[number].dy > 0 then

        if collide_map(sheep_list[number],"down",0) then
            sheep_list[number].dy = 0
            sheep_list[number].landed = true
            --sheep_list[number].y = 112
        end

    end

    sheep_list[number].x += sheep_list[number].dx
    sheep_list[number].y += sheep_list[number].dy

    -- sheep falls out of world
    if sheep_list[number].y > 128 then
        sheep_list[number].x = sheep_list[number].start_x
        sheep_list[number].y = sheep_list[number].start_y
        sheep_list[number].flip = false
    end

    -- sheep runs past edge of world
    if sheep_list[number].x < 518 then
        sheep_list[number].flip = true
        sheep_list[number].dx = 0
        sheep_list[number].x += 2
    end

    if sheep_list[number].x > map_end then
        sheep_list[number].flip = false
        sheep_list[number].dx = 0
        sheep_list[number].x -= 2
    end

end