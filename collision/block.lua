function add_block(list, block_x, block_y, block_color)
    add(list, {
        -- Set Position
        x = block_x,
        y = block_y,

        -- Set Color
        color = block_color,

        update_x = function(self, set_speed)
            self.x += set_speed
        end,

        update_y = function(self, set_speed)
            self.y += set_speed
        end,

        -- Draw Function
        draw = function(self)
            palt(0, false)
            spr(self.color, self.x, self.y)
        end,

        
        -- Kill Function
        kill = function(self, list)
            -- Draw obj on map
            mset(self.x/ 8, self.y /8, self.color)

            -- Remove from list
            del(list, self)
        end,

        -- Getters
        get_x = function(self)
            return self.x
        end,

        get_y = function(self)
            return self.y
        end,

        set_x = function(self, new_x)
            self.x = new_x
        end,

        set_y = function(self, new_y)
            self.y = new_y
        end
    })
end