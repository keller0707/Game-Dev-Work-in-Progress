function init_player()

    p = {
        x = 35,
        y = 38
    }

end

function update_player()

    if btnp(0) and p.x > 3 then
        p.x -= 32
        p.flip = true
    end

    if btnp(1) and p.x < 99 then
        p.x += 32
        p.flip = false
    end

    if btnp(2) and p.y > 38 then
        p.y -= 30
    end

    if btnp(3) and p.y < 98 then
        p.y += 30
    end

end

function draw_player()

    rect(p.x,p.y,p.x+24,p.y+24,12)
    rect(p.x+1,p.y+1,p.x+23,p.y+23,12)

end