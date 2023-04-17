-- global variables to hold the minigame results

-- global variables for AI
ai_sheep = @0x4300
ai_time = $0x4304

-- global variables for collision
collision_1 = @0x4301
collision_2 = @0x4302

-- global variables for level
level_1 = @0x4308
level_2 = @0x4309

-- global variables for controls
controls_1 = @0x430A
controls_2 = @0x430B

-- global variables for powerups
powerup_1 = @0x430C
powerup_2 = @0x430D

-- global variables for sound
sound_1 = @0x4311
sound_2 = @0x4312

-- numbers in pico 8 are store in 32 bit format
-- 16.16 16 bits before decimal and 16 after decimal
-- @ read 8 bits % reads 16 bits and $ reads 32 bits
