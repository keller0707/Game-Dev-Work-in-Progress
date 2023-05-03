function init_player()

    p = {
        x = 16,
        y = 16,
        spr = 64,
        animation = 0,

        flip = false,
        moving = false
    }

end

function update_player()

    local old_x = p.x
    local old_y = p.y

    if btn(0) then
        p.x -= 2
        p.flip = true
    end

    if btn(1) then
        p.x += 2
        p.flip = false
    end

    if btn(2) then
        p.y -= 2
    end

    if btn(3) then
        p.y += 2
    end

    -- boundary checking
    if p.x <= -2 then
        p.x += 2
    end

    if p.x >= 122 then
        p.x -= 2
    end

    if p.y <= -2 then
        p.y += 2
    end

    if p.y >= 122 then
        p.y -= 2
    end

    if old_x == p.x and old_y == p.y then
        p.moving = false
    else
        p.moving = true
    end

end

function draw_player()

    if p.moving then

        if time() - p.animation > 0.1 then
            p.animation = time()
            p.spr += 1
            if p.spr > 68 then
                p.spr = 65
            end
        end

    else

        p.spr = 64

    end

    spr(p.spr,p.x,p.y,1,1,p.flip)

end