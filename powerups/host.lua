function init_host()

    host = {
        spr = 64,
        animation = 0
    }

    puff = {
        x = 87,
        y = 13,
        animation = 0,
        flip = false,
        radi = 0
    }

end

function update_host()
end

function draw_host()

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

    if puff.flip then
        --circ(puff.x + 1,puff.y,0,7)
        --circ(puff.x,puff.y - 1,0,7)
        --circ(puff.x + 1,puff.y - 2,0,7)
    else
        --circ(puff.x,puff.y,0,7)
        --circ(puff.x + 1,puff.y - 1,0,7)
        --circ(puff.x,puff.y - 2,0,7)
    end

    circ(puff.x,puff.y,puff.radi,7)

    spr(128,90,2,4,4)

end