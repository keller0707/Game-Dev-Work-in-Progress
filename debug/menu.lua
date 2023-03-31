function _init()
    cursor = {
        x = 8,
        y = 8,
        speed = 3,
        w = 16,
        h = 16
    }
end

function _update()
    -- Move Left
    if btn(0) then
        cursor.x -= cursor.speed
    end
    -- Move Right
    if btn(1) then
        cursor.x += cursor.speed
    end
    -- Move Up
    if btn(2) then
        cursor.y -= cursor.speed
    end
    -- Move Down
    if btn(3) then
        cursor.y += cursor.speed
    end
    checkhover()
end

function _draw()
    cls(1)
    map(0,0)

    print('exit', 25, 14, 1)
    print('ai', 22, 45 , 1)
    print('collision', 46, 45 , 1)
    print('controls', 87, 45 , 1)
    print('level', 16, 102 , 1)
    print('powerups', 49, 102 , 1)
    print('sound', 93, 102 , 1)
    spr(4, cursor.x, cursor.y, 2,2)
end

function checkhover()
    if fget(4 , 1) then
        --print('W ord', 25, 25, 1)
        printh('Hello World')
    end
end