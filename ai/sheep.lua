function init_sheep(x_pos,y_pos)

    -- create sheep object
    sheep = {
        x = x_pos,
        y = y_pos,

        active = false,

        w = 8,
        h = 8,

        safe = false,
        alive = true,
        flip = false,

        animation = 0,
        sprite = 16,

        moving = false,
        death_animation = false

    }

    -- add sheep object to list of sheep objects
    add(sheep_list,sheep)

end

function draw_sheep()

    -- for each sheep
    for i = 1, #sheep_list do

        -- sheep moving
        if (sheep_list[i].alive and sheep_list[i].moving) then

            if time() - sheep_list[i].animation > 0.4 then
                sheep_list[i].animation = time()
                sheep_list[i].sprite += 1
                if sheep_list[i].sprite > 19 then
                    sheep_list[i].sprite = 16
                end
            end

        -- sheep caught play death animation
        elseif not sheep_list[i].alive and not sheep_list[i].death_animation then
            if time() - sheep_list[i].animation > 0.1 then
                sheep_list[i].animation = time()
                sheep_list[i].sprite += 1
                if sheep_list[i].sprite > 37 then
                    sheep_list[i].death_animation = true
                end
            end

        -- sheep dead
        elseif sheep_list[i].death_animation then
            sheep_list[i].sprite = 37
        end

        -- draw sheep
        spr(sheep_list[i].sprite,sheep_list[i].x,sheep_list[i].y,1,1,sheep_list[i].flip)

    end

end

-- obj2 will run in a straight line towards obj1
function follow(obj1, obj2, speed, dist)

    -- cordinates for player
    local x1 = obj1.x
    local y1 = obj1.y

    -- cordinates for sheep or wolf
    local x2 = obj2.x
    local y2 = obj2.y

    -- check for difference in x
    if (x1 > x2 + dist) then
        -- bondary cecking
        if not (collide_map(obj2,'right',0)) then
            obj2.x += speed
            obj2.flip = true
        end
    elseif (x1 < x2 - dist) then 
        if not (collide_map(obj2,"left",0)) then
            obj2.x -= speed
            obj2.flip = false
        end
    end

    -- check for difference in y
    if (y1 > y2 + dist) then 
        if not (collide_map(obj2,"down",0)) then
            obj2.y += speed
        end
    elseif (y1 < y2 - dist) then 
        if not (collide_map(obj2,"up",0)) then
            obj2.y -= speed
        end
    end

end
