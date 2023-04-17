function add_block(block_x, block_y, block_color)
    add(blocks, {
        -- Set Position
        x = block_x,
        y = block_y,

        -- Set Color
        color = block_color,

        -- Block Speed
        speed = 8,

        -- Clock 
        clock = 0,

        -- Key Press
        pressed = false,

        -- Update Function
        update = function(self)
            -- Get current Cell Bellow
            cellx = (self.x/8)
            celly = (self.y/8)

            -- Get Sprites around the block
            cellsprlft = mget(cellx-1, celly)
            cellsprrht = mget(cellx+1, celly)

            -- Create togle
            if not self.pressed then
                -- Left Arrow Input
                if btn(0) then
                    -- Check for walls/blocks
                    if not fget(cellsprlft, 0) then
                        -- Update Position
                        self.x -= self.speed
                    end  
                end

                -- Right Arrow Input
                if btn(1) then
                    -- Check for walls/blocks
                    if not fget(cellsprrht, 0) then
                        -- Update Position
                        self.x += self.speed
                    end
                end

                -- Update Press
                self.pressed = true
            else
                -- Update Press
                self.pressed = false
            end

            -- Check if time to update
            if time() - self.clock <= 1 then return end
            
           
            -- Update y position
            self.y += self.speed

            -- Update clock
            self.clock = time()
        end,

        -- Draw Function
        draw = function(self)
            palt(0, false)
            spr(self.color, self.x, self.y)
        end,

        
        -- Kill Function
        kill = function(self)
            -- Draw obj on map
            mset(self.x/ 8, self.y /8, self.color)
            
            -- Remove From List
            del(blocks, self)
        end,

        -- Collision Check
        check_collision = function(self)
            -- Get current Cell Bellow
            cellx = (self.x/8)
            celly = (self.y/8)

            -- Get Sprites around the block
            cellsprdwn = mget(cellx, celly+1)

            -- Check if object collide with obj
            return fget(cellsprdwn, 0)
        end
    })
end