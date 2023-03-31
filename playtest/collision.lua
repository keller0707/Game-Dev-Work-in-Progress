function collide(obj1, obj2)

    local x1 = obj1.x
    local y1 = obj1.y

    local x2 = obj2.x
    local y2 = obj2.y

    if x1+4 > x2 and x1+4 < x2 + 7
    and y1+4 > y2 and y1+4 < y2 + 8 then

        return true

    end

    return false

end