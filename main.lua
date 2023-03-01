// calls at start of execution
// init var, data, ect.
function _init()
    -- initialize player
	init_player()
end

// calls every frame
function _update()
    -- update player 
	player_update()
end

// class every frame
// draw out object
function _draw()
    -- clear canvas
	cls(1)

	-- draw map
	map(0,0,0,0,16,16)

	-- draw sprite
	player_draw()
end