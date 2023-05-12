function init_border()

    -- border object
    border = {
        top_axis = 0,
        right_axis = 0,
        left_axis = 0,
        bottom_axis = 0
    }

    -- first rainbow object
    rainbow_1 = {
        x = 7 * 8,
        y = 0,
        spr = 16,
        animation = 0
    }

    -- second rainbow object
    rainbow_2 = {
        x = 7 * 8,
        y = 15 * 8,
        spr = 16,
        animation = 0
    }

end

function update_border(obj)

    -- rainbow is on top border
    if obj.x >= 0 and obj.x < 120 and obj.y == 0 then

        if time() - obj.animation > 0.1 then
            obj.x += 1 * (1+combo)
            obj.animation = time()
        end

    -- rainbow runs past bounds
    elseif obj.x > 120 then
        obj.x = 120

    -- rainbow is on right border
    elseif obj.x == 120 and not (obj.y >= 120) then

        if time() - obj.animation > 0.1 then
            obj.y += 1 * (1+combo)
            obj.animation = time()
        end

    -- rainbow runs past bounds
    elseif obj.y > 120 then
        obj.y = 120

    -- rainbow is on bottom border
    elseif obj.x > 0 and obj.x <= 120 and obj.y == 120 then

        if time() - obj.animation > 0.1 then
            obj.x -= 1 * (1+combo)
            obj.animation = time()
        end

    -- rainbow runs past bounds
    elseif obj.x < 0 then
        obj.x = 0

    -- rainbow is on left border
    elseif obj.x == 0 and obj.y > 0 then

        if time() - obj.animation > 0.1 then
            obj.y -= 1 * (1+combo)
            obj.animation = time()
        end

    -- rainbow runs past bounds
    elseif obj.y < 0 then
        obj.y = 0

    end

end

function draw_border(obj)

    -- draw rainbow on top border
    if obj.x >= 0 and obj.x < 120 and obj.y == 0 then

        for x = 0,5 do
            spr(obj.spr + x, obj.x - (x*8),obj.y)
        end

    -- rainbow is turning
    elseif obj.x > 120  and not (obj.y >= 120) then

        for x = 0,5 do
            spr(obj.spr + x, obj.x - (x*8),obj.y)
        end

    -- draw rainbow on right border
    elseif obj.x == 120 then

        for y = 0,5 do
            spr(obj.spr + y, obj.x,obj.y - (y*8))
        end

    -- draw rainbow on bottom border
    elseif obj.x > 0 and obj.x <= 120 and obj.y == 120 then

        for x = 0,5 do
            spr(obj.spr + x, obj.x + (x*8),obj.y)
        end

    --rainbow is turning
    elseif obj.x < 0 then
        for x = 0,5 do
            spr(obj.spr + x, obj.x + (x*8),obj.y)
        end

    -- draw rainbow on left border
    elseif obj.x == 0 and obj.y > 0 then

        for y = 0,5 do
            spr(obj.spr + y, obj.x,obj.y + (y*8))
        end

    -- rainbow is turning
    elseif obj.y < 0 then
        for y = 0,5 do
            spr(obj.spr + y, obj.x,obj.y + (y*8))
        end

    end

    -- draw border container
    rect(0,0,127,127,2)
    rect(1,1,126,126,6)
    rect(7,7,120,120,2)
    rect(6,6,121,121,6)
    line(80,9,80,22,2)

end
