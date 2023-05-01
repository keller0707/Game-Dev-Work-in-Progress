pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--- pico-8 game:
--- game dev: work in progress

-- Main file
#include ../bedroom/main.lua

#include ../bedroom/player_bedroom.lua

#include ../bedroom/pause.lua

#include ../bedroom/comp.lua

#include ../bedroom/display.lua

#include ../bedroom/door.lua
__gfx__
00000000008888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000088888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000aaaa0000000000000000000000000000aaaa000000000000aaaa0000000000000000000000000000aaaa00000000000000000000000000000000000000
00000aaaaaa00000000000aaaa00000000000aaaaaa0000000000aaaaaa00000000000aaaa00000000000aaaaaa0000000000000000000000000000000000000
00000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000000000000000000000000000000
00000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000000000000000000000000000000
000000aaaa00000000000aaaaaa00000000000aaaa000000000000aaaa00000000000aaaaaa00000000000aaaa00000000000000000000000000000000000000
0000000ff0000000000000aaaa0000000000000ff00000000000000ff0000000000000aaaa0000000000000ff000000000000000000000000000000000000000
00006666666600000000000ff0000000000066666666000000006666666600000000000ff0000000000066666666000000000000000000000000000000000000
00008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000000000000000000000000000000000
00006666666600000000888888880000000066666666000000006666666600000000888888880000000066666666000000000000000000000000000000000000
00008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000000000000000000000000000000000
0000ff6666ff000000008888888800000000ff6666ff00000000ff6666ff000000008888888800000000ff6666ff000000000000000000000000000000000000
0000ff88880000000000ff66660000000000ff8888ff00000000008888ff00000000006666ff00000000ff8888ff000000000000000000000000000000000000
000000cccc0000000000ff8888000000000000cccc000000000000cccc0000000000008888ff0000000000cccc00000000000000000000000000000000000000
000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc00000000000000000000000000000000000000
00000011cc00000000000011cc000000000000cccc000000000000cc11000000000000cc11000000000000cccc00000000000000000000000000000000000000
00000011110000000000001111000000000000111100000000000011110000000000001111000000000000111100000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
dddddddddddddddd177777ddddd77777ddd777777777777717777777000000000000000055555555000000000000000000000000000000000000000000000000
dddddddddddddddd177777ddddd77777ddd7777777777777177777770000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddddddddddd177777ddddd77777ddd7777777777777177777770000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddd77777777177777ddddd777777777777777777777177777770000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddd77777777177777ddddd777777777777777777777177777770000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddd77777777177777ddddd7777777777777dddddddd177777dd0000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddd77777777177777ddddd7777777777777dddddddd177777dd0000000000000000eeeeeeee000000000000000000000000000000000000000000000000
dddddddd77777777177777ddddd7777777777777dddddddd177777dd0000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
000000002222222200000000000000000000000000000000000000000000000000000000eeeeeeee000000000000000000000000000000000000000000000000
00000000222222220000000000000000000000000000000000000000000000000000000055555555000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111555555550000000040044455555554444444444444444441555555551111111111111111444444444444444411111111111111111144446666666666
111111115555555500000000450445ccccccc5444444444444444441555555551111666666661111444444444444444444444444444444441141146666666666
111111115555555500000000450445cccccc954444444444444444415555555511777222222777114dddddddddddddd441111114411111141141146dddd66666
111111114444444400000000400445cacc99c5444444444444444441555555551177222ff22277114dddccddddccddd441111114411111141141146d66d66666
111111115555555500000000450445c8ccccc5444444444444444441555555551172222ff22227114ddddddd6dddddd444444444444444441141146d66d66666
111111115555555500000000400445bbbbbbb5444444444440000041555555551172222ff22227114ddd66dddd66ddd466666666666666661141146d66d66666
11111111555555550000000044444455555554444444444445000041555555551172222ff22227114ddd66dd6d66ddd466dddddddddddd661141146d66d66666
11111111555555550000000044444444000444464444444440000041444444441172222ff22227114d3dddddddddded466d6666666666d661144446d66d66666
111111111555555555555551444444444444447764444444450000415555555711722227722227114dbd6d6d6d66d8d466d6666666666d661144446d66d66666
11111111155555555555555144444444444444776444444440000041555555571172222ff22227114dddddddddddddd466dddddddddddd661141146d66d66666
1111111115555555555555514444444444444466644444444444444155555557117222fff2222711444444444444444466666666666666661141146d66d66666
1111111114444444444444414444444444444444444444444444444144444447117222bbbbb22711444444444444444466666666666666661141146d66d66666
111111111555555555555551544455555555555555555544444444415555555711722bbbbbb22711544555555555544566666666666666661141146d66d66666
11111111155555555555555154445555555555555555554444544441555555571172277777722711544555555555544566666666666666661141146dddd66666
11111111155555555555555154445555555555555555554444544441555555571111211111121111555555555555555566666666666666661141146666666666
11111111155555555555555155555555555555555555554444554441555555571111111111111111555555555555555566666666666666661144446666666666
55555555155555555555555166666666666666615555554440554441555555554444444444446644444666664445555566666666666666666646445566444444
55555555155555555555555167777776677777715555554440554441555555554444444444446644444666664445555566666666666666666646445566464455
55555555155555555555555167666676676666715555554440554441555555554444444444444444664666666645555544444444444444446646445566464455
11111111111111111111111167666676676666714444444440554441555551115555555555555555664666666644444446666666666666646646444466464444
11111111111111111111111167666676676666715555554444554441555551115555555555555555444666664445555544444444444444446646445566464455
11111111111111111111111167666676676666715555554444544441555551115555555555555555444666664445555544444444444444446646445566464455
11111111111111111111111167777776677777715555554444544441555551115555555555555555444666664445555545555555555555546646445566464455
11111111111111111111111166666666666666615555554444444441444441115555555555555555444666664445555545555555555555546644444466464455
22222222622222260000000022dddd216666666155555544dd644441666666666e7777e600000000444666664445555566666666000000000000000000000000
22655622622222260000000022dddd216222222155555544777644416eeeeee66eeeeee600000000444666664445555566666666000000000000000000000000
62255226622222260000000022dddd2122d55d2155555544dd6444416e7777e66e7777e600000000444666664445555566666666000000000000000000000000
62255226672222760000000022dddd2122dddd2144444444444444416e7777e66e7777e600000000444666664444444466666666000000000000000000000000
62222226621111260000000022dddd2122dddd2155555444444444416e7777e66e7777e600000000444666664445555566666666000000000000000000000000
67666676621111260000000022dddd2122dddd2155555444444444416e7777e66e7777e600000000444666664445555566666666000000000000000000000000
6777777662111126000000006222222122dddd2155555444444444416eeeeee66eeeeee600000000444666664445555566666666000000000000000000000000
6666666666222266000000006666666122dddd2155555544444444416e7777e66666666600000000444666664445555566666666000000000000000000000000
000000aaaa00000000000000000000000000000000000000000000000000000000000000000000000000000aaa00000000000000000000000000000000000000
00000affffa00000000000aaaa0000000000000aaa00000000000000000000000000000aaa000000000000aaa400000000000000000000000000000000000000
00000a4f4fa0000000000affffa00000000000aaa40000000000000aaa000000000000aaa4000000000000aaaf00000000000000000000000000000000000000
00000affffa0000000000affffa00000000000aaaf000000000000aaa4000000000000aaaf000000000000aaaf00000000000000000000000000000000000000
000000f77f00000000000affffa00000000000aaaf000000000000aaaf000000000000aaaf0000000000000ff000000000000000000000000000000000000000
0000000ff0000000000000f77f0000000000000ff0000000000000aaaf0000000000000ff0000000000000666600000000000000000000000000000000000000
00006666666600000000000ff000000000000066660000000000000ff00000000000006666000000000000888800000000000000000000000000000000000000
00008888888800000000666666660000000000888800000000000066660000000000008888000000000000666600000000000000000000000000000000000000
000066666666000000008888888800000000006666000000000000888800000000000066660000000000008ff800000000000000000000000000000000000000
000088888888000000006666666600000000008ff800000000000066660000000000008ff80000000000006ff600000000000000000000000000000000000000
0000ff6666ff000000008888888800000000006ff60000000000008ff80000000000006ff60000000000000ccc00100000000000000000000000000000000000
0000ff8888ff00000000ff6666ff00000000000cc00000000000006ff60000000000000cc0000000000000cccccc100000000000000000000000000000000000
000000cccc0000000000ff8888ff00000000000cc00000000000000cc00000000000000cc000000000000ccc0ccc100000000000000000000000000000000000
000000cccc000000000000cccc000000000000c00c000000000000c00cc000000000000cc000000000001cc00000000000000000000000000000000000000000
000000cccc000000000000cccc00000000001c0000c0000000001cc000c000000000000cc0000000000010000000000000000000000000000000000000000000
00000011110000000000001111000000000010000011000000001000001100000000000111000000000000000000000000000000000000000000000000000000
000000aaaa0000000000000000000000000000aaaa000000000000aaaa0000000000000000000000000000aaaa000000000000aaaa000000000000aaaa000000
00000affffa00000000000aaaa00000000000affffa0000000000affffa00000000000aaaa00000000000affffa0000000000aaaaaa0000000000aaaaaa00000
00000a4f4fa0000000000affffa0000000000a4f4fa0000000000a4f4fa0000000000affffa0000000000a4f4fa0000000000aaaaaa0000000000aaaaaa00000
00000affffa0000000000affffa0000000000affffa0000000000affffa0000000000affffa0000000000affffa0000000000aaaaaa0000000000aaaaaa00000
000000f77f00000000000affffa00000000000f77f000000000000f77f00000000000affffa00000000000f77f000000000000aaaa000000000000aaaa000000
0000000ff0000000000000f77f0000000000000ff00000000000000ff0000000000000f77f0000000000000ff00000000000000ff00000000000000ff0000000
00006666666600000000000ff0000000000066666666000000006666666600000000000ff0000000000066666666000000006666666600000000666666660000
00008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000008888888800000000888888880000
00006666666600000000888888880000000066666666000000006666666600000000888888880000000066666666000000006666666600000000666666660000
0000ff88888800000000ff666666000000008888888800000000888888ff00000000666666ff0000000088888888000000008888888800000000888888880000
0000ff6666ff00000000ff88888800000000ff6666ff00000000ff6666ff00000000888888ff00000000ff6666ff00000000ff6666ff00000000ff6666ff0000
0000008888ff00000000006666ff00000000ff8888ff00000000ff88880000000000ff66660000000000ff8888ff00000000ff88880000000000008888ff0000
000000cccc0000000000008888ff0000000000cccc000000000000cccc0000000000ff8888000000000000cccc000000000000cccc000000000000cccc000000
000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000
000000cc11000000000000cc11000000000000cccc00000000000011cc00000000000011cc000000000000cccc00000000000011cc000000000000cc11000000
0000001100000000000000cc110000000000001111000000000000001100000000000011cc000000000000111100000000000011110000000000001111000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000303030300000003030303030303000000000003000000000003030303000000000000030003030300000000000000000000000300000003000300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
8080808088898080808889808080808000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000
808c8d8098998080809899808080808000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000
919c9d8181818181818181818384858600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000
91bcbc8181818181818181819394959600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000
91acad8181818181818181818181a5a600000000000000000000000000000000000000000000000000000000000000000000000000000000450000000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000450000000000000000000000000000000000000000000000
9181818181818181818181818181b5b600000000000000000000000000000000000000000000000000000000000000000000000000000000565758000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000565758000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000000000000000000000000000000000000000000000000666768000000000000000000000000000041000000000000000000000041000000000000000000000000000000000000666768000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000051505200000000000000000000000000510052000000000000000000000000000000000000000000000000000000000000005150520000000000000000005150520000000000000000000000000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000006100000000000000000000000000610061000000000000000000000000000000000000000000000000000000000000006100610000000000000000006100610000000000000000000000000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000046000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047000046000000000000000000000000000000000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000000000000000000000000000000000000000000000000000000470047004700000000000000000000000000000000470046470000004700000000000000000000000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000004600000000474746474700000000000000000047000000000000000000000000474747474700000000000000005500000000000000000000000000004700000000000000000047000000000000410000000000000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000000000000000000000000470047004700000000000000000000474700474700000000000000000000000000000000000000000000004700000053530000000000000000000000410000000062000000000000000000000000000000000000
9181818181818181818181818181819200000000000000000000000000000000000000000000000000004700470047004700470000000000000000474700474700000000000000000000000000000000474700000000000053000047470000000000000000000000410000000062000000000000000000000000000000000000
a1a087a7a0a0a0a0a0a0a0a0a0a0a0a200000000000000000000444300000043444444434344444443444344430000000000000000000000000000000000000000000000545454000000000000000000000000000000545454444444445454540000000000000000000000000000000000000000000000000000000000000000
__sfx__
010b000018550005000050000500165500050000500005001355000500005000050012550005000050000500115500050000500005000f5500050000500005000c5500050000500005000a550005000050000500
1b1600001805000000000000000000000000001505000000160500000000000000000000000000130500000015050150501505000000000000000000000000001502014030130401205011060100700f0700e070
2f1400000020000200000000000011750000000000000000000000000000000000001075000000000000000000000000000000000000117500000000000000000000000000000000000000000000000000000000
271400000070000700000000000011750000000000000000000000000000000000001675000000000000000000000000000000000000000000000000000000001575014750137501275011750107500f7500e750
a30b00003c624000043c6240000300003000033c6230000300003000033c6230000300003000033c623000043c624000043c6240000400003000033c6230000300003000033c6230000300003000033c62300003
00010000111000f1101111013120161301613016140181501b1401d140037401d730037301e73004730267301373005730317200972020720267103371005710277001c7000e700037001c70002700007001f710
311000182472224722247222472228722287222872228742297422974229742297422a7422a7422b7422b7422b7422b7422974229742287422874226742277420070200702007020070200702007020070200702
011000000c0500000000000000000e050000000000000000000000f05000000000000000000000000000c0500000000000000000f0500000000000000000c05000000000000000000000000000e0500000000000
2f1000081175000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
01 00444344
00 00044344
00 00044344
00 00044344
02 01044344

