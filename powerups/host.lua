function init_host()

    -- create sheep pbject
    host = {
        spr = 64,
        animation = 0
    }

    -- create smoke puff object
    puff = {
        x = 87,
        y = 13,
        animation = 0,
        flip = false,
        radi = 0
    }

end

function draw_host()

    -- animate smoke puff
    if time() - puff.animation > 0.2 then
        puff.animation = time()
        puff.y -= 1
        if puff.radi < 3 then
            puff.radi += 1
            puff.y -= 1
        end
        if puff.y < -4 then
            puff.y = 13
            puff.radi = 0
        end
        if puff.flip then
            puff.flip = false
        else
            puff.flip = true
        end
    end

    -- draw smoke puff
    circ(puff.x,puff.y,puff.radi,7)

    -- draw sheep
    spr(128,90,2,4,4)

end