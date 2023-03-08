pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--- pico-8 game:
--- game dev: work in progress

-- Main file
#include main.lua

--Player file
#include player.lua

__gfx__
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
000000aaaa0000000000000000000000000000aaaa000000000000aaaa0000000000000000000000000000aaaa00000000000000000000000000000000000000
00000affffa00000000000aaaa00000000000affffa0000000000affffa00000000000aaaa00000000000affffa0000000000000000000000000000000000000
00000a4f4fa0000000000affffa0000000000a4f4fa0000000000a4f4fa0000000000affffa0000000000a4f4fa0000000000000000000000000000000000000
00000affffa0000000000affffa0000000000affffa0000000000affffa0000000000affffa0000000000affffa0000000000000000000000000000000000000
000000f77f00000000000affffa00000000000f77f000000000000f77f00000000000affffa00000000000f77f00000000000000000000000000000000000000
0000000ff0000000000000f77f0000000000000ff00000000000000ff0000000000000f77f0000000000000ff000000000000000000000000000000000000000
00006666666600000000000ff0000000000066666666000000006666666600000000000ff0000000000066666666000000000000000000000000000000000000
00008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000000000000000000000000000000000
00006666666600000000888888880000000066666666000000006666666600000000888888880000000066666666000000000000000000000000000000000000
0000ff88888800000000ff666666000000008888888800000000888888ff00000000666666ff0000000088888888000000000000000000000000000000000000
0000ff6666ff00000000ff88888800000000ff6666ff00000000ff6666ff00000000888888ff00000000ff6666ff000000000000000000000000000000000000
0000008888ff00000000006666ff00000000ff8888ff00000000ff88880000000000ff66660000000000ff8888ff000000000000000000000000000000000000
000000cccc0000000000008888ff0000000000cccc000000000000cccc0000000000ff8888000000000000cccc00000000000000000000000000000000000000
000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc00000000000000000000000000000000000000
000000cc11000000000000cc11000000000000cccc00000000000011cc00000000000011cc000000000000cccc00000000000000000000000000000000000000
0000001100000000000000cc110000000000001111000000000000001100000000000011cc000000000000111100000000000000000000000000000000000000
15555515f4f4f4f4f4f4f4f4000000aaaa0000000000000000000000000000aaaa000000000000aaaa0000000000000000000000000000aaaa00000000000000
55155555f4f4f4f4f4f4f4f400000aaaaaa00000000000aaaa00000000000aaaaaa0000000000aaaaaa00000000000aaaa00000000000aaaaaa0000000000000
55555515f4f4f4f4f48888f400000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000000
55555555f4f4f4f4f48888f400000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000aaaaaa0000000000000
15551555f4f4f4f4f48888f4000000aaaa00000000000aaaaaa00000000000aaaa000000000000aaaa00000000000aaaaaa00000000000aaaa00000000000000
55555555f4f4f4f4f48888f40000000ff0000000000000aaaa0000000000000ff00000000000000ff0000000000000aaaa0000000000000ff000000000000000
55555515f4f4f4f4f4f4f4f400006666666600000000000ff0000000000066666666000000006666666600000000000ff0000000000066666666000000000000
55155555f4f4f4f4f4f4f4f400008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000000000
00000000000000000000000000006666666600000000888888880000000066666666000000006666666600000000888888880000000066666666000000000000
00000000000000000000000000008888888800000000666666660000000088888888000000008888888800000000666666660000000088888888000000000000
0000000000000000000000000000ff6666ff000000008888888800000000ff6666ff00000000ff6666ff000000008888888800000000ff6666ff000000000000
0000000000000000000000000000ff88880000000000ff66660000000000ff8888ff00000000008888ff00000000006666ff00000000ff8888ff000000000000
000000000000000000000000000000cccc0000000000ff8888000000000000cccc000000000000cccc0000000000008888ff0000000000cccc00000000000000
000000000000000000000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc000000000000cccc00000000000000
00000000000000000000000000000011cc00000000000011cc000000000000cccc000000000000cc11000000000000cc11000000000000cccc00000000000000
00000000000000000000000000000011110000000000001111000000000000111100000000000011110000000000001111000000000000111100000000000000
__map__
4141414141414141414141414141414141000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4141414141414141414141414141414141000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1b1000000c0430c700180430c7000c0430c70013700137000c0431170013700187000c0431870000000000000c0430000018045000000c0432404500000000000c0430000000000000000c043000001804500000
d1050000244450f70637245117000c7000e70010700117000c7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000140014500000001450000000000000430000000000000000004300000000000000000043000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100003a6103a620376303364000640306402764029640276402763024630116201f6200c5101b6101661013610116100f6100f6100c6100a6100a6100a6100760007600056000360003600036000000000000
00010000111000f1101111013120161301613016140181501b1401d140037401d730037301e73004730267301373005730317200972020720267103371005710277001c7000e700037001c70002700007001f710
311000182472224722247222472228722287222872228742297422974229742297422a7422a7422b7422b7422b7422b7422974229742287422874226742277420070200702007020070200702007020070200702
