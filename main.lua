// calls at start of execution
// init var, data, ect.
function _init()
    -- initialize player
	init_player()
end

// calls every frame
function _update()
	playerkeypress()
end

// class every frame
// draw out object
function _draw()
	cls(1)

	-- updates map
	map(0,0,0,0,16,16)

	-- updates sprite
	player_draw()
end