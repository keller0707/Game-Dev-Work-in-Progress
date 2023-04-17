function init_dancer()

    dancer = {
        x = 92,
        y = 45,
        sprite = 128,
        animation = 0,
        direction = "",
        flip = false
    }

    disco = {
        x = 92,
        y = 13,
        sprite = 192,
        animation = 0
    }

end

function draw_dancer()

    -- draw pole behind dancer
    line(100,35,100,61,7)

    -- draw dancer
    spr(dancer.sprite,dancer.x,dancer.y,2,2,dancer.flip)

    -- draw floor beneath dancer
    line (88,61,112,61,7)

    -- draw disco ball
    spr(disco.sprite,disco.x,disco.y,2,2)

    -- animate disco ball
    if time() - disco.animation + (combo/16) > 0.53 then
        disco.animation = time()
        disco.sprite += 2
        if disco.sprite > 198 then
            disco.sprite = 192
        end
    end

end
