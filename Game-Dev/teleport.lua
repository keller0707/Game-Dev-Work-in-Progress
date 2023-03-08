-- Teleport player from scene x to scene y
-- given scene number will teleport player
-- to the designate scene
function teleport(destination)

    -- teleport to bedroom
    if(destination == 0) then
        p.x = 59
        p.y = 59
        map_start = 0
        map_end = 120
        scene = 0
    end

    -- teleport to debug playtest
    if(destination == 1) then
        p.y = 112
        p.x = 145
        map_start = 144
        map_end = 520
        scene = 1
    end

    -- teleport to clean playtest
    if(destination == 2) then
        p.y = 112
        p.x = 521
        map_start = 520
        map_end = 904
        scene = 1
    end

end