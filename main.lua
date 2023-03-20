// calls at start of execution
// init var, data, ect.
function _init()
    -- initialize player
	init_player() 
	init_player_bedroom()

	music(0, 1000, 0)

	-- movement variables for player
	gravity=0.3
    friction=0.85
  
	--map limits
	map_start = 0
	map_end = 0

	-- what scene we are in
	scene = 0

	-- debug variables
	xr1 = 0
	xr2 = 0
	yr1 = 0
	yr2 = 0

end


// calls every frame
function _update()

	-- bed room
	if (scene == 0) then
		player_update_bedroom()
		camera(0,0)

		-- boundary checking
		if player.x <= -2 then player.x = -2 end
		if player.x >= 115 then player.x = 115 end
		if player.y >= 107 then player.y = 107 end
		if player.y <= 3 then player.y = 3 end

		-- collision with objects
		if (btn(0)) then
			if (collide_map(player,"left",1)) then
				player.x += 1
			end
		end

		if (btn(1)) then 
			if (collide_map(player,"right",1)) then
				player.x -= 1
			end
		end

		if (btn(2)) then
			if (collide_map(player,"up",1)) then
				player.y += 1
			end
		end

		if (btn(3)) then
			if (collide_map(player,"down",1)) then
				player.y -= 1
			end
		end

		-- interaction with objects
		if (btnp(5)) then
			if (collide_map(player,"up",2)) then
				teleport(2)
				player.y += 8
			end
		end

	end

	-- playtest
	if scene == 1 then
		player_playtest()
		player_animate()

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
	
		camera(camera_x,0)

	end
	
end

// class every frame
// draw out object
function _draw()

	-- clear screen
	cls(1)

	-- updates map
	map(0,0)

	-- bed room
	if (scene == 0) then
		-- updates sprite
		player_draw_bedroom()
	end

	-- playtest
	if (scene == 1) then
		spr(p.sp,p.x,p.y, 1, 1, p.flipx)
	end

	--rect(xr1, yr1, xr2, yr2, 7)
	
end