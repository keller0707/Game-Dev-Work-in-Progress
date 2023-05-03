-- main.lua
-- This file holds the the main function
-- for the bedroom

// calls at start of execution
// init var, data, ect.
function _init()
	-- set the file view to /cart/
	-- this is so the load command
	-- can call the other .p8 files
	cd("carts/")

    -- initialize player
	init_player_bedroom()

	-- set up music
	music(0)

	-- debug variables
	xr1 = 0
	xr2 = 0
	yr1 = 0
	yr2 = 0

	-- setting cursor position in debug menu
	poke(0x430F,54)
	poke(0x4310,21)

	-- pause screen 
	pause_screen = false
	init_pause()

	-- computer displays
	init_comp()

	-- other displays
	init_display()

	init_door()

end


// calls every frame
function _update()

	
	camera(0,0)

	-- boundary checking
	if not door_transition then
		player_boundry()
	end

	-- game paused
	if pause_screen then

		pause_controls()

	-- unpaused game
	else

		if btnp(4) and not stop_player then
			pause_screen = true
		end
--
		-- Update player movement
		if not stop_player then
			player_update_bedroom()
		end

		animate_player()

		-- popups and jump for computers
		update_comp()

		-- other displays
		update_display()

		update_door()
	
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

	end
	
end

// class every frame
// draw out object
function _draw()

	-- clear screen
	cls(0)

	-- updates map
	map(0,0)

	-- draw table in empty room
	--rectfill(116,100,126,122,4)
	--rectfill(98,114,126,122,4)
	--rectfill(114,101,115,103,4)

	-- updates sprite
	player_draw_bedroom()

	-- pop ups for computers
	draw_comp()

	-- other displays
	draw_display()

	-- draw pause screen
	if pause_screen then
		draw_pause()
	end

	draw_door()
	
end