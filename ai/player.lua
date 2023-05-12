function simiple_player()
    -- create player object
    p = {
        x = 120,
        y = 120,

        flip = false,

        w = 8,
        h = 8,

        sprite = 1,
        animation = 0,

        moving = false
    }
end

function simple_mvt()

    -- temp vairbles for player's previous position
    local old_x = p.x
    local old_y = p.y

    -- move left
    if (btn(0)) then
        p.x -= speed
        p.flip = true

        if (collide_map(p,'left',0)) then
            p.x += speed
        end

    end

    -- move right
    if (btn(1)) then
        p.x += speed
        p.flip = false

        if (collide_map(p,'right',0)) then
            p.x -= speed
        end

    end

    -- move up
    if (btn(2)) then
        p.y -= speed

        if (collide_map(p,'up',0)) then
            p.y += speed
        end

    end

    -- move down
    if (btn(3)) then
        p.y += speed

        if (collide_map(p,'down',0)) then
            p.y -= speed
        end

    end

    -- check if player has moved
    if old_x == p.x and old_y == p.y then
        p.moving = false
    else
        p.moving = true
    end

end

function draw_player()
    
    -- player is moving
    if p.moving then

        -- animate player movement
        if time() - p.animation > 0.1 then
            p.animation = time()
            p.sprite += 1
            if p.sprite > 5 then
                p.sprite = 2
            end
        end

    else

        p.sprite = 1

    end

    -- draw player
    spr(p.sprite,p.x,p.y,1,1,p.flip)

end