function init_shape()
    shape = {
        -- Overall Position
        lxindex = 128, -- Leftmost block index
        rxindex = 0,   -- Rightmost block index
        center  = 0,   -- Center of the shape
        
        -- Meta Data
        size    = 0,        -- Size of the shape
        color   = 0,        -- Color of the shape
        speed   = 8,        -- Speed of blocks
        clock   = 0,        -- Current clock time
        active  = false,    -- If shape is present
        pressed = false,    -- If button has been pressed

        -- List to hold the shape
        shape_list = {}
    }

    -- Initalize Color
    blockcolor = {
        red    = 64,
        orange = 65,
        yellow = 66,
        green  = 67,
        pink   = 68
    }
end

function create_shape(type)
    -- Check if shape already active
    if shape.active then return end

    -- Get Shape List
    list = shape.shape_list

    if type == 1 then
        --shape.size = 4
        shape.color = blockcolor.pink
        
        add_block(list, 48, 8, shape.color)
        add_block(list, 56, 8, shape.color)
        add_block(list, 64, 8, shape.color)
        add_block(list, 72, 8, shape.color)

        shape.lxindex = 1
        shape.rxindex = 4
        shape.center  = 2 
    elseif type == 2 then
        --shape.size = 3
        shape.color = blockcolor.red
        
        add_block(list, 48, 8, shape.color)
        add_block(list, 56, 8, shape.color)
        add_block(list, 56, 16, shape.color)
        add_block(list, 64, 8, shape.color)

        shape.lxindex = 1
        shape.rxindex = 4
        shape.center  = 2 
    elseif type == 3 then
        shape.color = blockcolor.orange
        
        add_block(list, 48, 8, shape.color)
        add_block(list, 48, 16, shape.color)
        add_block(list, 56, 8, shape.color)
        add_block(list, 56, 16, shape.color)

        shape.lxindex = 1
        shape.rxindex = 4
        shape.center  = 2 
    elseif type == 4 then
        shape.color = blockcolor.yellow
        
        add_block(list, 48, 8, shape.color)
        add_block(list, 48, 16, shape.color)
        add_block(list, 56, 16, shape.color)
        add_block(list, 56, 24, shape.color)

        shape.lxindex = 1
        shape.rxindex = 4
        shape.center  = 2 
    elseif type == 5 then
        shape.color = blockcolor.green
        
        add_block(list, 48, 8, shape.color)
        add_block(list, 48, 16, shape.color)
        add_block(list, 48, 24, shape.color)
        add_block(list, 56, 24, shape.color)
        
        shape.lxindex = 1
        shape.rxindex = 4
        shape.center  = 2 
    else
        return
    end

    -- Update Active
    shape.active = true
end

function update_shape()
    -- If no shapes are active, then return
    if not shape.active then return end

    -- Get list
    list = shape.shape_list

    -- Get the block x & y
    leftx  = list[shape.lxindex]
    rightx = list[shape.rxindex]
    

    -- Get cell position
    cellxleft  = (leftx:get_x()/8)
    cellyleft  = (leftx:get_y()/8)
    cellxright = (rightx:get_x()/8)
    cellyright = (rightx:get_y()/8)
    

    -- Get sprite number from sides
    cellsprlft = mget(cellxleft-1, cellyleft)
    cellsprrht = mget(cellxright+1, cellyright)
    

    -- Left Button Pressed
    if not shape.pressed then
        if btn(0) then
            -- Check if next to left wall
            if not fget(cellsprlft, 0) then
                move_x(-shape.speed)
            end

        -- Right Button Pressed
        elseif btn(1) then
            -- Check if next to right wall
            if not fget(cellsprrht, 0) then
                move_x(shape.speed)
            end
        end

        -- Rotate Block
        if not fget(cellsprlft, 0) and not fget(cellsprrht, 0) then
            if (btn(4)) then
                rotate(list)
            end
        end

        shape.pressed = true
    else
        shape.pressed = false
    end

    -- Check potental collision
    if check_y_collision(list) then
        -- Kill current shape
        kill_shape(list)
    else
        -- Update Y position
        if btn(3) then
            -- Move shape
            move_y(shape.speed)
        else 
            -- Check to update every second
            if time() - shape.clock <= 1 then return end
            
            -- Move shape
            move_y(shape.speed)
            
            -- Update clock
            shape.clock = time() 
        end
    end
    
end

-- Draw the current shape
function draw_shape()
    -- Get list
    list = shape.shape_list

    -- Loop through shape
    for b in all(list) do
        -- Draw each block
        b:draw()
    end
end

-- EXTRA FUNCTIONS --

-- Move the shape in the x
-- direction
function move_x(speed)
    -- Get list
    list = shape.shape_list

    -- Loop through list
    for b in all(list) do
        -- Update Position
        b:update_x(speed)
    end
end

-- Move the shape in the y
-- direction
function move_y(speed)
    -- Get list
    list = shape.shape_list

    -- Loop through list
    for b in all(list) do
        -- Update Position
        b:update_y(speed)
    end
end

-- Kill function that will remove
-- the shape from play and draw
-- the blocks on the map
function kill_shape(list)
    -- Get list
    --list = shape.shape_list
    for b in all(list) do
        -- Kill block
        b:kill()
    end
    -- Clears list
    clear_list(list)

    check_row()

    -- Set active to false
    shape.active = false
end

-- Clear the shape list
function clear_list(list)
    -- Loop through list
    for b in all(list) do
        -- Delete block from shape
        del(list, b)
    end
end

-- Check collision with anything
-- below the current shape
function check_y_collision(list)
    -- Loop through the list
    for b in all(list)do
        -- Get cell position
        cellxdown  = (b:get_x()/8)
        cellydown  = (b:get_y()/8)

        -- Get sprite number
        cellsprdwn = mget(cellxdown, cellydown+1)

        -- Check if flag is 0
        if fget(cellsprdwn, 0) then return true end
    end
    
    -- Return false if not found
    return false
end

-- This function will rotate  
-- the current block clock-wise 
function rotate(list)
    -- Get the center of the shape
    point   = list[shape.center]
    point_x = point:get_x()
    point_y = point:get_y()

    -- Loop through the list of shapes
    for b in all(list)do

        -- If its not the center point
        -- Update its postition
        if b ~= point then
            -- Get their current position
            block_x = b:get_x()
            block_y = b:get_y()

            -- Calculate Distance
            distx = point_x - block_x
            disty = point_y - block_y
            
            -- Rotate Block
            b:set_x(point_x + disty)
            b:set_y(point_y - distx)   
        end
    end
    set_bounds(list)
end

function check_row()
    -- TOP LEFT  (1,1)
    -- TOP RIGHT (14,1)
    -- BOT LEFT  (1,14)
    -- BOT RIGHT (14,14)
    
    for y=1,14 do
        line = true
        for x=1,14 do
            cell = mget(x, y)
            if not fget(cell, 0) then
                line = false
                break
            end
        end
        if line then
            adjust_map(y)
        end
    end
end

function adjust_map(celly)
    for y=celly,2,-1 do
        for x=1,14 do
            top_cell = mget(x,y-1)
            mset(x, y, top_cell)
        end
    end
end

function set_bounds(list)
    -- Store temp 
    temp_left_index  = 1
    temp_right_index = 1

    -- Loop through list
    for i=2,#list,1 do
        temp_x_left  = list[temp_left_index]
        temp_x_right = list[temp_right_index]
        current_x = list[i]

        -- Find leftmost index
        if temp_x_left:get_x() > current_x:get_x() then
            temp_left_index = i
        end

        -- Find rightmost index
        if temp_x_right:get_x() < current_x:get_x() then
            temp_right_index = i
        end
    end
    -- Update new index
    shape.lxindex = temp_left_index
    shape.rxindex = temp_right_index
end