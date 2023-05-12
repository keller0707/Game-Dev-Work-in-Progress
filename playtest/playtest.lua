function _init() 

	-- list to hold sheep objects
	sheep_list = {}
	-- list to hold powerups
	powerups = {}

	-- create pause screen
	init_pause()

	-- create player
	init_player(1)

	-- variabel for map area
	map_start = 0
	map_end = 360

	-- create sheep objects
	init_sheep(152,112)
	init_sheep(285,112)

	-- create powerup objects
	create_powerup(64,96,8,12,32)
	create_powerup(120,72,15,9,48)
	create_powerup(120,96,15,12,32)

	-- set scene
	scene = 1

	-- level is fixed
	if level_1 == 1 and level_2 == 1 then
		-- nothing happens

	-- level is partially fixed
	elseif level_1 == 1 or level_2 == 1 then
		for y = 0, 14 do
			for x = 0, 36 do
				if x > 1 and y < 13 and rnd(1) > 0.9 then
					-- random number from 0 - 1
					local random_number = rnd(1)
					if random_number >= 0.9 then
						-- place power up block
						mset(x,y,70)
					elseif random_number <= 0.5 then
						-- place screen tear
						local rand = rnd(1)
						if rand <= 0.1 then
							mset(x,y,74)
						elseif rand <= 0.2 then
							mset(x,y,75)
						elseif rand <= 0.3 then
							mset(x,y,76)
						elseif rand <= 0.4 then
							mset(x,y,77)
						elseif rand <= 0.5 then
							mset(x,y,78)
						elseif rand <= 0.6 then
							mset(x,y,90)
						elseif rand <= 0.7 then
							mset(x,y,91)
						elseif rand <= 0.8 then
							mset(x,y,92)
						elseif rand <= 0.9 then
							mset(x,y,93)
						else
							mset(x,y,94)
						end

					else
						-- place brick
						mset(x,y,71)
					end
				end
			end
		end
	-- level is bugged
	else
		for y = 0, 14 do
			for x = 0, 36 do
				if x > 1 and y < 13 and rnd(1) > 0.80 then
					-- random number from 0 - 1
					local random_number = rnd(1)
					if random_number >= 0.9 then
						-- place powerup block
						mset(x,y,70)
					elseif random_number <= 0.5 then
						local rand = rnd(1)
						if rand <= 0.1 then
							mset(x,y,74)
						elseif rand <= 0.2 then
							mset(x,y,75)
						elseif rand <= 0.3 then
							mset(x,y,76)
						elseif rand <= 0.4 then
							mset(x,y,77)
						elseif rand <= 0.5 then
							mset(x,y,78)
						elseif rand <= 0.6 then
							mset(x,y,90)
						elseif rand <= 0.7 then
							mset(x,y,91)
						elseif rand <= 0.8 then
							mset(x,y,92)
						elseif rand <= 0.9 then
							mset(x,y,93)
						else
							mset(x,y,94)
						end
					else
						-- place brick
						mset(x,y,71)
					end
				end
			end
		end
	end

	-- collision is fixed
	if collision_1 == 1 and collision_2 == 1 then
		for x = 0, 45 do
			mset(x,15,67)
		end
	-- collision is partially fixed
	elseif collision_1 ==1 or collision_2 == 1 then
		-- the ground
		for x = 0, 36 do
			if x > 1 and rnd(1) > 0.75 then
				mset(x,15,84)
			else
				mset(x,15,67)
			end
		end

		-- bricks and powerup blocks
		for y = 0, 14 do
			for x = 0, 36 do
				if mget(x,y) == 70 then
					if rnd(1) > 0.5 then
						mset(x,y,85)
					end
				elseif mget(x,y) == 71 then
					if rnd(1) > 0.5 then
						mset(x,y,83)
					end
				end
			end
		end

	-- collision is bugged
	else
		-- the ground
		for x = 0, 36 do
			if x > 1 and rnd(1) > 0.5 then
				mset(x,15,84)
			else
				mset(x,15,67)
			end
		end
		-- bricks and powerup block
		for y = 0, 14 do
			for x = 0, 36 do
				if mget(x,y) == 70 then
					if rnd(1) > 0.25 then
						mset(x,y,85)
					end
				elseif mget(x,y) == 71 then
					if rnd(1) > 0.25 then
						mset(x,y,83)
					end
				end
			end
		end
	end

	-- controls are fixed
	if controls_1 == 1 and controls_2 == 1 then
		left = 0
		right = 1
		jump = 2
	-- controls partially fixed
	elseif controls_1 == 1 or controls_2 == 1 then
		local random_number = rnd(1)

		if random_number < 0.33 then
			left = 1
			right = 3
		else
			left = 3
			right = 0
		end

		jump = 2

	-- controls broken
	else
		-- random number from 0 - 1
		local random_number = rnd(1)

		if random_number < 0.33 then
			left = 1
			right = 3
			jump = 0
		elseif random_number > 0.66 then
			left = 3
			right = 2
			jump = 1
		else
			left = 2
			right = 0
			jump = 3
		end

	end

    -- movement variables for player
	gravity=0.3
    friction=0.85
  
	max_speed = 6 - ai_sheep

	debug = ""

	-- smoke object for teleportation
	smoke = {
		x = 0, 
		y = 0, 
		spr = 128,
		animation = 0
	}

	-- setting cursor position in debug menu
	poke(0x430F,54)
	poke(0x4310,21)

	-- check if screen is paused
	pause = false

	-- object for flag
	flag = {
		x = 38,
		y = 6,
		sprite = 193,
		animation = 0
	}

	-- level is fixed, set american flag
	if level_1 == 1 and level_2 == 1 then
		flag.sprite = 225
		mset(37,6,224)
		mset(37,7,240)
	end

end

function _update()

	-- simple camera
	camera_x = p.x-64

	-- camera can't go past left boundary
	if camera_x < map_start then
		camera_x = map_start
	end
	
	-- camer can't go past right boundary
	if camera_x > map_end-128 then
		camera_x = map_end-128
	end
	
	-- set camera
	camera(camera_x,0)

	-- pause screen
	if pause then

		pause_controls()

	-- unpause screen
	else
		player_playtest()
		player_animate()

		-- for debug printing
		if btnp(⬅️) then
			debug = "left arrow key"
		end
		if btnp(➡️) then
		debug = "right arrow key"
		end
		if btnp(⬆️) then
		debug = "up arrow key"
		end
		if btnp(⬇️) then
		debug = "down arrow key"
		end

		-- pause screen
		if btnp(4) then
			pause = true
			cursor.x = camera_x + 30
			cursor.y = 48
		end

		-- check on sheep
		for i = 1, #sheep_list do
			move(i)
			-- sheep hits player
			if collide(p,sheep_list[i]) then
				load("playtest.p8","",stat(6))
			end
		end

		-- check on powerups
		for i = 1, #powerups do

			-- block gets hit by player
			if mget(powerups[i].block_x,powerups[i].block_y) == 72 then
				mset(powerups[i].block_x,powerups[i].block_y,73)
				powerups[i].active = true
				powerups[i].dy -= 3
				
			end

			-- powerup is visible
			if powerups[i].active then

				-- powerup in the air
				powerups_move(i)

				-- player picks up powerup
				if collide(p,powerups[i]) then
					powerups[i].active = false
					-- player picked up good banana
					if powerups[i].sprite == 32 and p.apple == false then
						p.banana = true
					-- player picked up good apple
					elseif powerups[i].sprite == 48 and p.banana == false then
						p.apple = true
					elseif powerups[i].sprite == 32 and p.apple == true then
						p.banana = true
						p.apple = false
					elseif powerups[i].sprite == 48 and p.banana == true then
						p.apple = true
						p.banana = false
					end
				end
			end
		end
	end
	
end

function _draw()

	-- clear screen
	cls(1)

	-- updates map
	map(0,0)

	-- draw player
	spr(p.sp,p.x,p.y, 1, 1, p.flipx)

	-- draw sheep
	draw_sheep()

	-- draw powerups
	draw_powerups()

	-- play teleport animation
	if smoke.x > 0 and smoke.y > 0 then

		spr(smoke.spr,smoke.x,smoke.y,1,1)
		spr(smoke.spr,p.x,p.y,1,1)
		
	end

	-- banana display above player head
	if p.banana == true then
		spr(32, p.x, p.y - 8, 1, 1)
	end
	-- apple display above player head
	if p.apple == true then
		spr(48, p.x, p.y - 8, 1, 1)
	end

	-- game paused
	if pause then

		draw_pause()

	-- game unpaused
	else

		-- animate flag
		animate_flag()

		-- player teleports
		if smoke.x > 0 and smoke.y > 0 then

			-- spoof animiation for player teleporting
			if time() - smoke.animation > 0.1 then
				smoke.animation = time()
				smoke.spr += 1
				if smoke.spr > 130 then
					smoke.x = 0
					smoke.y = 0
					smoke.spr = 128
				end
			end

		end
	end
	
end

function animate_flag()

	-- animate flag
	if time() - flag.animation > 0.069 then
		flag.animation = time()

		-- set sprites for flag
		mset(flag.x,flag.y,flag.sprite)
		mset(flag.x+1,flag.y,flag.sprite+1)
		mset(flag.x,flag.y+1,flag.sprite+16)
		mset(flag.x+1,flag.y+1,flag.sprite+17)

		flag.sprite += 2

		-- level is fixed, american flag
		if level_1 == 1 and level_2 == 1 then
			
			if flag.sprite > 237 then
				flag.sprite = 225
			end

		-- level broken, sovient flag
		else

			if flag.sprite > 205 then
				flag.sprite = 193
			end
		end
		
	end

end