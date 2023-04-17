function _init()
    score = {
        time = 0,
        total = 0
    }

    -- Sprite # for the blocks
    blockcolor = {
        red = 64,
        orange = 65,
        yellow = 66,
        green = 67,
        pink = 68
    }

    music(0)
   
    -- Create Blocks
    blocks = {}
    blocks_meta ={
        size = 0,
        color = 0
    }
    active = false -- Keeps track of activly moving blocks
    stop = false
    --add_block(64, 8, blockcolor.pink)
    --add_block(56, 8, blockcolor.pink)

end
function _update()
    if (btnp(5)) then
        load("debugmenu.p8")
    end

    createshape(1)

    for b in all(blocks) do
        stop = b:check_collision() or stop
    end

    if stop then
        killall()
        return
    end

    for b in all(blocks) do
        b:update()
    end
    --update_block()

end

function _draw()
    cls(1)
    map(0,0)
    
    print('score', 10, 10, 2)
    
    for b in all(blocks) do
        b:draw()
    end
    --draw_block()
end

-- EXTRA FUNCTION --

function createshape(type)
    if active then return end

    if type == 1 then
        blocks_meta.size = 4
        blocks_meta.color = blockcolor.pink
        add_block(48, 8, blocks_meta.color)
        add_block(56, 8, blocks_meta.color)
        add_block(64, 8, blocks_meta.color)
        add_block(72, 8, blocks_meta.color)
    end
    active = true
end

function blockCollision()
end 

function killall()
    -- Loop through list
    for b = #blocks, 1, -1 do
        blocks[b]:kill()
    end

    -- Turn off 
    active = false

    stop = false
end
