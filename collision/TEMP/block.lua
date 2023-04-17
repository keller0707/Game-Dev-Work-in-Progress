blocks = {}

function init_block(block_x, block_y, block_color)
    block = {
        -- starting position
        x = block_x,
        y = block_y, -- 8 - 112

        -- size of blocks
        --size = block_size,

        color = block_color,
        
        -- speed
        speed = 8,

        pressed = false,

        clock = 0,

        collision = 0,

        -- gravity
        gravity = 8
    }
    add(blocks, block)
end

function update_block()
    -- Get current Cell Bellow
    cellx = (block.x/8)
    celly = (block.y/8)

    -- Get Sprites around the block
    cellsprlft = mget(cellx-1, celly)
    cellsprrht = mget(cellx+1, celly)
    cellsprdwn = mget(cellx, celly+1)

    if not block.pressed then
          
        -- Left Arrow Input
        if btn(0) then
            if not fget(cellsprlft, 0) then
                block.x -= block.speed
            end  
        end

        if btn(1) then
            if not fget(cellsprrht, 0) then
                block.x += block.speed
            end
        end

        block.pressed = true
    else
        block.pressed = false
    end

    -- apply gravity
    if time() - clock <= 1 then return end
    
    if fget(cellsprdwn, 0) then
        mset(block.x/ 8, block.y /8, block.color)

        reset_block()
    else
        block.y += block.gravity
    end
    clock = time()
end

function map_collide()

end

function draw_block()
    palt(0, false)
    spr(block.color, block.x, block.y)
end

-- Block Types
-- 1 : I-Block
-- 2 : L-Block 
-- 3 : S-Block
-- 4 : J-BLock
-- 5 : O-Block
-- 6 : T-Block
-- 7 : Z-Block

function reset_block()
    block.x = 64
    block.y = 8
end