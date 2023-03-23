function _init() 

    init_player()

    -- movement variables for player
	gravity=0.3
    friction=0.85
  
	--map limits
	map_start = 520
	map_end = 904

end

function _update()

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

function _draw()

	-- clear screen
	cls(1)

	-- updates map
	map(0,0)

	spr(p.sp,p.x,p.y, 1, 1, p.flipx)
	
end