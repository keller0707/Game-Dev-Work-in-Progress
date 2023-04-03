function _init()
    cursor = {
        x = 80,
        y = 8,
        speed = 3,
        w = 12,
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
    --print('X:', 25,25,1)
    --print(cursor.x, 30,25,1) -- 8-17
    --print('Y:', 25, 30,1)
    --print(cursor.y, 30,30,1) -- 11-19
    spr(4, cursor.x, cursor.y, 2,2)
end

function checkhover()
    -- Exit button Range: x:8-16 y:11-18
    if(9 <= cursor.x and cursor.x <= 16 and 
      12 <= cursor.y and cursor.y <= 17) then
        mset(1,1,8)
        mset(1,2,24)
        mset(2,1,9)
        mset(2,2,25)
        
        if (btnp(5)) then
			load("game-dev.p8")
		end
        
        return
    end
    if(9 <= cursor.x and cursor.x <= 36 and 
      41 <= cursor.y and cursor.y <= 52) then
        if (btnp(5)) then
            load("ai.p8")
        end
    end
    mset(1,1,6)
    mset(1,2,22)
    mset(2,1,7)
    mset(2,2,23)
end