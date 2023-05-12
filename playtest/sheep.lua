function init_sheep(x_pos,y_pos)

    -- create sheep object
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

    -- add sheep object ti list
    add(sheep_list,sheep)

end

function draw_sheep()

    for i = 1, #sheep_list do

        -- if game is not paused
        if not pause then
            -- animate sheep
            if time() - sheep_list[i].animation > 0.1 then
                sheep_list[i].animation = time()
                sheep_list[i].sprite += 1
                if sheep_list[i].sprite > 19 then
                    sheep_list[i].sprite = 16
                end
            end
        end

        -- draw sheep
        spr(sheep_list[i].sprite,sheep_list[i].x,sheep_list[i].y,1,1,sheep_list[i].flip)

    end

end

function move(number)

    -- subject sheep to the natural forces
    sheep_list[number].dy += gravity

    -- have to save all 5 sheep in AI minigame to make sheep movement correct
    if ai_sheep == 5 then
        sheep_list[number].dx *= friction
    end

    -- moving right
    if sheep_list[number].flip then

        -- constantly moving right
        sheep_list[number].dx += 0.2

        -- sheep runs into a pole and turns around
        if collide_map(sheep_list[number],"right",2) then
            sheep_list[number].flip = false
            sheep_list[number].dx = 0
        end

        -- sheep runs into a solid object
        if collide_map(sheep_list[number],"right",0) then

            sheep_list[number].dx = 0

            -- jumps over object
            -- sheep jumps correctly
            if ai_time > 0 and ai_time < 25 then
                if sheep_list[number].landed then
                    sheep_list[number].dy -= 4
                    sheep_list[number].landed = false
                end
            -- sheep jumps incorrectly
            else
                if sheep_list[number].landed then
                    sheep_list[number].dy -= 6
                    sheep_list[number].landed = false
                end
            end

        end

    -- moving left
    else

        -- constantly moving left
        sheep_list[number].dx -= 0.2

        -- sheep hits a pole and turns around
        if collide_map(sheep_list[number],"left",2) then
            sheep_list[number].flip = true
            sheep_list[number].dx = 0
        end

        -- sheep runs into a solid object
        if collide_map(sheep_list[number],"left",0) then

            sheep_list[number].dx = 0

            -- jumps over object
            -- sheep jumps correctly
            if ai_time > 0 and ai_time < 25 then
                if sheep_list[number].landed then
                    sheep_list[number].dy -= 4
                    sheep_list[number].landed = false
                end
            -- sheep jumps incorrectly
            else
                if sheep_list[number].landed then
                    sheep_list[number].dy -= 6
                    sheep_list[number].landed = false
                end
            end

        end

    end

    -- sheep is jumping
    if sheep_list[number].dy > 0 then

        -- check for its collion on the ground
        if collide_map(sheep_list[number],"down",0) then
            sheep_list[number].dy = 0
            sheep_list[number].landed = true
        end

    end

    -- update sheep position
    sheep_list[number].x += sheep_list[number].dx
    sheep_list[number].y += sheep_list[number].dy

    -- sheep falls out of world
    if sheep_list[number].y > 128 then
        sheep_list[number].x = sheep_list[number].start_x
        sheep_list[number].y = sheep_list[number].start_y
        sheep_list[number].flip = false
    end

    -- sheep runs past edge of world
    if sheep_list[number].x < map_start then
        sheep_list[number].flip = true
        sheep_list[number].dx = 0
        sheep_list[number].x += 2
    end

    -- sheep runs past edge of world
    if sheep_list[number].x > map_end then
        sheep_list[number].flip = false
        sheep_list[number].dx = 0
        sheep_list[number].x -= 2
    end

end