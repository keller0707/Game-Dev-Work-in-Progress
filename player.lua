
function init_player()
    p={}
    p.x=5
    p.y=5
end

function playerkeypress()
    -- Key Presses
	if btn(0) then p.x-=2 end -- Left Arrow
 	if btn(1) then p.x+=1 end -- Right Arrow
 	if btn(2) then 
        p.y-=1 end -- Up Arrow
 	if btn(3) then p.y+=1 end -- Down Arrow 
    if btn(2) then
        sfx(5, -1, 0, 31)
        end
end

function player_draw()
    spr(1, p.x, p.y)
end