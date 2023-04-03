-- global variables to hold the minigame results
global_var = {
    -- global variables for sheep
    ai_sheep = @0x4300,
    ai_time = $0x4304
}

-- numbers in pico 8 are store in 32 bit format
-- 16.16 16 bits before decimal and 16 after decimal
-- @ read 8 bits % reads 16 bits and $ reads 32 bits
