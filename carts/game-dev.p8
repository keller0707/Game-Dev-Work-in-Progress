pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--- pico-8 game:
--- game dev: work in progress

-- Main file
#include ../bedroom/main.lua

#include ../bedroom/player_bedroom.lua
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111555555550000000040044455555554444444444444444441555555551111111111111111444444444444444111111111111111110000000000000000
111111115555555500000000450445ccccccc5444444444444444441555555551111666666661111444444444444444144444444444444440000000000000000
111111115555555500000000450445cccccc954444444444444444415555555511777222222777114dddddddddddddd141111114411111140000000000000000
111111114444444400000000400445cacc99c5444444444444444441555555551177222ff22277114dddccddddccddd141111114411111140000000000000000
111111115555555500000000450445c8ccccc5444444444444444441555555551172222ff22227114ddddddd6dddddd144444444444444440000000000000000
111111115555555500000000400445bbbbbbb5444444444440000041555555551172222ff22227114ddd66dddd66ddd166666666666666660000000000000000
11111111555555550000000044444455555554444444444445000041555555551172222ff22227114ddd66dd6d66ddd166dddddddddddd660000000000000000
11111111555555550000000044444444000444464444444440000041111111111172222ff22227114d3dddddddddded166d6666666666d660000000000000000
000000001555555555555551444444444444447764444444450000415555555711722227722227114dbd6d6d6d66d8d166d6666666666d666666666600000000
00000000155555555555555144444444444444776444444440000041555555571172222ff22227114dddddddddddddd166dddddddddddd666666666600000000
0000000015555555555555514444444444444466644444444444444155555557117222fff2222711444444444444444166666666666666666666666600000000
0000000014444444444444414444444444444444444444444444444144444447117222bbbbb22711444444444444444166666666666666666666666600000000
000000001555555555555551544455555555555555555544444444415555555711722bbbbbb22711544555555555544166666666666666666666666600000000
00000000155555555555555154445555555555555555554444544441555555571172277777722711544555555555544166666666666666666666666600000000
00000000155555555555555154445555555555555555554444544441555555571111211111121111555555555555555166666666666666666666666600000000
00000000155555555555555155555555555555555555554444554441555555571111111111111111555555555555555166666666666666666666666600000000
55555555155555555555555100000000000000005555554440554441000000000000000000000000000000000000000066666666666666660000000000000000
55555555155555555555555100000000000000005555554440554441000000000000000000000000000000000000000066666666666666660000000000000000
55555555155555555555555100000000000000005555554440554441000000000000000000000000000000000000000044444444444444440000000000000000
11111111111111111111111100000000000000004444444440554441000000000000000000000000000000000000000046666666666666640000000000000000
11111111111111111111111100000000000000005555554444554441000000000000000000000000000000000000000044444444444444440000000000000000
11111111111111111111111100000000000000005555554444544441000000000000000000000000000000000000000044444444444444440000000000000000
11111111111111111111111100000000000000005555554444544441000000000000000000000000000000000000000045555555555555540000000000000000
11111111111111111111111100000000000000005555554444444441000000000000000000000000000000000000000045555555555555540000000000000000
000000000000000000000000000000000000000055555544dd644441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005555554477764441000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000055555544dd644441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000004444444444444441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005555544444444441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005555544444444441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005555544444444441000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005555554444444441000000000000000000000000000000000000000000000000000000000000000000000000
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
00000003070303000000030303030000000000000400030000000000030303000000000000000b0000000000030300000000000000000300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
8080808088898080808889808080808090404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040404040404040404040000000000000000000000000000000
808c8d8098998080809899808080808090404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040404040404040404040000000000000000000000000000000
919c9d8181818181818181818384858690404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040404040404040404040000000000000000000000000000000
919e9e8181818181818181819394959690404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040404040404040404040000000000000000000000000000000
91acad8181818181818181818181a5a690404040404040404040404040404040404040404040404040404040404040404040404040404040454040404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040454040404040404040000000000000000000000000000000
9181818181818181818181818181b5b690404040404040404040404040404040404040404040404040404040404040404040404040404040565758404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040565758404040404040000000000000000000000000000000
9181818181818181818181818181819290404040404040404040404040404040404040404040404040404040404040404040404040404040666768404040404040404040404040404041404040404040404040404041404040404040404040404040404040404040666768404040404040000000000000000000000000000000
9181818181818181818181818181819290404040404051505240404040404040404040404040515052404040404040404040404040404040414040404040404040404040404040405150524040404040404040405150524040404040404040404040404040404040414040404040404040000000000000000000000000000000
9181818181818181818181818181819790404040404061416140404040404040404040404040614161404040404040404040404040404040414040404040404040404040404040406140614040404040404040406140614040404040404040404040404040404040414040404040404040000000000000000000000000000000
9181818181818181818181818181819790404040404040414040404040404040404046404040404140404040404040404040404040404040414040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040414040404040404040000000000000000000000000000000
9181818181818181818181818181819290404040404040414040404040404040404040404040404140404040404040404040404040404040414040404040404040404040404040404040404040404047404046404040404040404040404040404040404040404040414040404040404040000000000000000000000000000000
9181818181818181818181818181819290404040404040414040404040404040404040404040404140404040404040404040404040404040414040474047404740404040404040404040404040404040474046474040404740404040404040404040404040404040414040474047404740000000000000000000000000000000
9181818181818181818181818181819290404040404040414040404640404040474746474740404140404040404047404040404040404040414040474747474740404040404040405540404040404040404040404040404740404040404040404047404040404040414040474747474740000000000000000000000000000000
91818181818181818181818181818a8b90404040404040414040404040404040404040404040404140404040474047404740404040404040414040474700474740404040404040404040404040404040404040404040404740404053534040404040404040404040414040474762474740000000000000000000000000000000
91818181818181818181818181819a9b90404040404040414040404040404040404040404040404140404740474047404740474040404040414040474700474740404040404040404040404040404040474740404040404053404047474040404040404040404040414040474762474740000000000000000000000000000000
a1a087a0a0a0a0a0a0a0a0a0a0a0a0a290444344434443444343444344444443444444434344444443444344434444444444444444444444444444444444444444444444545454444444444444444444444444444444545454444444445454544444444444444444444444444444444444000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1b1000000c0430c700180430c7000c0430c70013700137000c0431170013700187000c0431870000000000000c0430000018045000000c0432404500000000000c0430000000000000000c043000001804500000
d1050000244450f70637245117000c7000e70010700117000c7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000140014500000001450000000000000430000000000000000004300000000000000000043000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100003a6103a620376303364000640306402764029640276402763024630116201f6200c5101b6101661013610116100f6100f6100c6100a6100a6100a6100760007600056000360003600036000000000000
00010000111000f1101111013120161301613016140181501b1401d140037401d730037301e73004730267301373005730317200972020720267103371005710277001c7000e700037001c70002700007001f710
311000182472224722247222472228722287222872228742297422974229742297422a7422a7422b7422b7422b7422b7422974229742287422874226742277420070200702007020070200702007020070200702
011000000c0500000000000000000e050000000000000000000000f05000000000000000000000000000c0500000000000000000f0500000000000000000c05000000000000000000000000000e0500000000000
__music__
00 01420344
00 01424344
00 41424344
00 41424344
03 41474344

