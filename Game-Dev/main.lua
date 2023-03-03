// calls at start of execution
// init var, data, ect.
function _init()
    -- initialize player
	init_player()

	-- movement variables for player
	gravity=0.3
    friction=0.85
  
	--map limits
	map_start= 136
	map_end= 392

	-- what scene we are in
	scene = 0
end


// calls every frame
function _update()

	-- bed room
	if (scene == 0) then
		playerkeypress()
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
		player_draw()
	end

	-- playtest
	if (scene == 1) then
		spr(p.sp,p.x,p.y, 1, 1, p.flipx)
	end
	
end