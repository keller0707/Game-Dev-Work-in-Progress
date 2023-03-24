-- Teleport player from scene x to scene y
-- given scene number will teleport player
-- to the designate scene
function teleport(destination)

    -- teleport to clean playtest
    if(destination == 1) then
        p.y = 112
        p.x = 145
        map_start = 144
        map_end = 520
    end

    -- teleport to buggy playtest
    if(destination == 2) then
        p.y = 112
        p.x = 521
        map_start = 520
        map_end = 904
    end

end