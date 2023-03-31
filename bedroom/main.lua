// calls at start of execution
// init var, data, ect.
function _init()
	cd("/carts")
    -- initialize player
	init_player_bedroom()

	music(0, 1000, 0)

	-- debug variables
	xr1 = 0
	xr2 = 0
	yr1 = 0
	yr2 = 0

end


// calls every frame
function _update()

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
			load('playtest.p8')
		end
		if (collide_map(player,"right",3)) then
			load("debugmenu.p8")
			run()
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