function init_ghost(number) 

    ghost_list = {}

    for i = 1, number do
        add(ghost_list,create_ghost(i))
    end

end

function create_ghost(number)

    ghost = {
        x = 70 - (10 * (number - 1)),
        y = 70 - (10 * (number - 1)),

        active = false,

        w = 8,
        h = 8
    }

    return ghost

end

function draw_ghost(number)

    for i = 1, number do
        spr(16,ghost_list[i].x,ghost_list[i].y,1,1)
    end

end

function ghost_movement(number)

    --if not collide_map(ghost_list[number],'left',0)
        
        if rnd(2) <= 1 then
            ghost_list[number].x -= 1
        else
            ghost_list[number].x += 1
        end

        if rnd(2) <= 1 then
            ghost_list[number].y -= 1
        else
            ghost_list[number].y += 1
        end

    --end

    if collide_map(ghost_list[number],'left',0) then
        ghost_list[number].x += 1
    end
    if collide_map(ghost_list[number],'right',0) then
        ghost_list[number].x -= 1
    end
    if collide_map(ghost_list[number],'up',0) then
        ghost_list[number].y += 1
    end
    if collide_map(ghost_list[number],'down',0) then
        ghost_list[number].y -= 1
    end

end

-- given two objects, check if obj1 is in range of obj2
function in_range(obj1,obj2,range)

    local x1 = obj1.x + 4
    local y1 = obj1.y + 4

    local x2 = obj2.x + 4
    local y2 = obj2.y + 4

    --xr1 = x2 - range
    --yr1 = x2 + range
    --xr2 = y2 - range
    --yr2 = y2 + range

    if (x1 >= x2 - range) and (x1 <= x2 + range)
    and (y1 >= y2 - range) and (y1 <= y2 + range) then
        return true
    else
       return false
    end

end