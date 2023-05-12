function init_wolf(x_pos,y_pos)
    
    -- create wolf object
    wolf = {

        x = x_pos,
        y = y_pos,

        active = false,

        w = 8,
        h = 8,

        safe = true,
        flip = false,

        moving = false

    }

    -- add wolf object to list of wolf objects
    add(wolf_list,wolf)

end

function draw_wolves()

    -- draw wolves
    for i = 1, #wolf_list do
        spr(32,wolf_list[i].x,wolf_list[i].y,1,1,wolf_list[i].flip)
    end

end
