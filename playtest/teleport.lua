-- Teleport player from scene x to scene y
-- given scene number will teleport player
-- to the designate scene
function teleport(destination)

    -- teleport to clean playtest
    if(destination == 1) then
        p.y = 112
        p.x = 1
        map_start = 0
        map_end = 360
    end

    -- teleport to buggy playtest
    if(destination == 2) then
        p.y = 112
        p.x = 369
        map_start = 368
        map_end = 752
    end

end