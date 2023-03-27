function _init() 

	sheep_list = {}

    init_player()
	init_sheep(678,112)
	init_sheep(824,112)

	init_sheep(302,112)
	init_sheep(443,112)

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

	if p.x > 510 then
		-- check on buggy sheep
		for i = 1, #sheep_list/2 do
			move_buggy(i)
			if collide(p,sheep_list[i]) then
				teleport(2)
			end
		end
	else
		-- check on clean sheep
		for i = #sheep_list/2 + 1, #sheep_list do
			move_clean(i)
			if collide(p,sheep_list[i]) then
				teleport(1)
			end
		end
	end
	
end

function _draw()

	-- clear screen
	cls(1)

	-- updates map
	map(0,0)

	spr(p.sp,p.x,p.y, 1, 1, p.flipx)
	--rect(p.x+4,p.y+4,p.x+4,p.y+4,11)

	draw_sheep()
	
end