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
	music(0, 1000, 0)

	-- debug variables
	xr1 = 0
	xr2 = 0
	yr1 = 0
	yr2 = 0

end


// calls every frame
function _update()

	-- Update player movement
	player_update_bedroom()
	camera(0,0)

	-- boundary checking
	player_boundry()

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
			load('playtest.p8')
		end
		if (collide_map(player,"right",3)) then
			load("debugmenu.p8")
		end
	end
	
end

// class every frame
// draw out object
function _draw()

	-- clear screen
	cls(1)

	-- updates map
	map(0,0)

	-- updates sprite
	player_draw_bedroom()
	
end