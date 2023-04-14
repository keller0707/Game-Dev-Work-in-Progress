p = {
    x = 125,
    y = 125,

    dx = 0,
    dy = 0,

    flip = false,

    max_dx = 200,
    max_dy = 200,

    w = 8,
    h = 8
}

map_start = 0
map_end = 120

friction = 0.75

xr1 = 0
yr1 = 0
xr2 = 0
yr2 = 0

p.dx *= friction
p.dy *= friction

ghost_1.dx *= friction
ghost_1.dy *= friction

if (btn(0)) then
    p.dx -= 1
    p.flip = true
end
if (btn(1)) then 
    p.dx += 1
    p.flip = false
end
if (btn(2)) then p.dy -= 1 end
if (btn(3)) then p.dy += 1 end

p.dx = mid(-p.max_dx,p.dx,p.max_dx)
p.dy = mid(-p.max_dy,p.dy,p.max_dy)

if (p.dx > 0) then
    if (collide_map(p,"right",0)) then 
        p.dx = 0
    end
elseif (p.dx < 0) then
    if (collide_map(p,"left",0)) then 
        p.dx = 0
    end
end

if (p.dy > 0) then 
    if (collide_map(p,"down",0)) then 
        p.dy = 0
    end
elseif (p.dy < 0) then
    if (collide_map(p,"up",0)) then 
        p.dy = 0
    end
end


p.x += p.dx
p.y += p.dy

-- move ai in random directions
ghost_1.dx += rnd(1) - 0.5
ghost_1.dy += rnd(1) - 0.5

ghost_1.x += ghost_1.dx
ghost_1.y += ghost_1.dy