pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include ../controls/controls.lua

#include ../controls/border.lua

#include ../controls/arrows.lua

#include ../controls/score.lua

#include ../controls/end.lua

#include ../controls/pause.lua

#include ../controls/dancer.lua
__gfx__
00000000000000001111111100000000000000000000000000000000008888001111111111111111111111111111111100000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000088888801111111111111111111111111111111100000000000000000000000000000000
00700700000000001111111100000000000000000000000000000000888888881111166666666666666666666666666600000000000000000000000000000000
00077000000000001111111100000000000000000000000000000000888888881111161111111111611111116111111600000000000000000000000000000000
00077000000000001111111100000000000000000000000000000000888888881118888111111111611111116111111600000000000000000000000000000000
00700700000000001111111100000000000000000000000000000000888888881188888811111111611111116111111600000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000088888801888888881111111611111116111111600000000000000000000000000000000
00000000000000001111111100000000000000000000000000000000008888001888888881111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1888888881111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1888888881111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1188888811111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1118888111111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1111161111111111611111116111111600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1111166666666666666666666666666600000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1111111111111111111111111111111100000000000000000000000000000000
8888888899999999aaaaaaaabbbbbbbbcccccccceeeeeeee00000000eeeeeeee1111111111111111111111111111111100000000000000000000000000000000
77777777777777777111111777777777000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000
71111111111111177111111711111111000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000
71111111111111177111111711111111000000000000000000000000000000001111166666666666666666666666666600000000000000000000000000000000
7111111111111117711111171111111100000000000000000000000000000000111116eeeeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
71111111111111177111111711111111000000000000000000000000000000001118888eeeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
711111111111111771111117111111110000000000000000000000000000000011888888eeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
7111111111111117711111171111111100000000000000000000000000000000188888888eeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
7111111771111117711111177777777700000000000000000000000000000000188888888eeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
7111111771111117000000000000000000000000000000000000000000000000188888888eeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
7111111111111117000000000000000000000000000000000000000000000000188888888eeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
711111111111111700000000000000000000000000000000000000000000000011888888eeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
71111111111111170000000000000000000000000000000000000000000000001118888eeeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
7111111111111117000000000000000000000000000000000000000000000000111116eeeeeeeeee6eeeeeee6eeeeee600000000000000000000000000000000
71111111111111170000000000000000000000000000000000000000000000001111166666666666666666666666666600000000000000000000000000000000
71111111111111170000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000
77777777777777770000000000000000000000000000000000000000000000001111111111111111111111111111111100000000000000000000000000000000
0000000000000000000009999990000000000000000000000000000cc00000000000000000000000000000000000000000000000000000000000000000000000
000000800000000000000900009000000000000003000000000000c00c0000000000000000000000000000999900000000000000000000000000000cc0000000
00000880000000000000090000900000000000000330000000000c0000c00000000000800000000000000099990000000000000003000000000000cccc000000
0000808000000000000009000090000000000000030300000000c000000c000000000880000000000000009999000000000000000330000000000cccccc00000
000800800000000000000900009000000000000003003000000c00000000c0000000888000000000000000999900000000000000033300000000cccccccc0000
00800008888888880000090000900000333333333000030000c0000000000c00000888800000000000000099990000000000000003333000000cccccccccc000
0800000000000008000009000090000030000000000000300cccc000000cccc000888888888888800000009999000000033333333333330000cccccccccccc00
80000000000000080000090000900000300000000000000300000c0000c00000088888888888888000000099990000000333333333333330000000cccc000000
80000000000000080000090000900000300000000000000300000c0000c00000088888888888888000000099990000000333333333333330000000cccc000000
08000000000000080999900000099990300000000000003000000c0000c00000008888888888888000999999999999000333333333333300000000cccc000000
00800008888888880090000000000900333333333000030000000c0000c00000000888800000000000099999999990000000000003333000000000cccc000000
00080080000000000009000000009000000000000300300000000c0000c00000000088800000000000009999999900000000000003330000000000cccc000000
00008080000000000000900000090000000000000303000000000c0000c00000000008800000000000000999999000000000000003300000000000cccc000000
00000880000000000000090000900000000000000330000000000c0000c00000000000800000000000000099990000000000000003000000000000cccc000000
00000080000000000000009009000000000000000300000000000c0000c00000000000000000000000000009900000000000000000000000000000cccc000000
00000000000000000000000990000000000000000000000000000cccccc000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000077777700000000000000000000000000007700000000000000000000000000000000000000000000000000000000000000000000000
0000007000000000000007999970000000000000070000000000007cc70000000000000000000000000000000000000000000000000000000000000000000000
000007700000000000000799997000000000000007700000000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
00007070000000000000079999700000000000000737000000007cccccc700000000000000000000000000000000000000000000000000000000000000000000
0007007000000000000007999970000000000000073370000007cccccccc70000000000000000000000000000000000000000000000000000000000000000000
007000077777777700000799997000007777777773333700007cccccccccc7000000000000000000000000000000000000000000000000000000000000000000
07000000000000070000079999700000733333333333337007777cccccc777700000000000000000000000000000000000000000000000000000000000000000
700000000000000700000799997000007333333333333337000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
700000000000000700000799997000007333333333333337000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
070000000000000707777999999777707333333333333370000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
007000077777777700799999999997007777777773333700000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
000700700000000000079999999970000000000007337000000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
000070700000000000007999999700000000000007370000000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
000007700000000000000799997000000000000007700000000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
000000700000000000000079970000000000000007000000000007cccc7000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000770000000000000000000000000000777777000000000000000000000000000000000000000000000000000000000000000000000
0000aaaaaaaaaa000000aaaaaaaaaa00000088002200000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000aaaaaaaaaa000000aaaaaaaaaa00000088002200000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaffffffff0000aaaaffffffff00000000882200000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaffffffff0000aaaaffffffff00000000882200000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0088ff77ccffcc000088ff77ccffcc000000aaaaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000
0088ff77ccffcc000088ff77ccffcc000000aaaaaaaaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaffffffffff0000aaffffffffff0000aaaaffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaffffffffff0000aaffffffffff0000aaaaffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaa8888aaaa0000aaaa8888aaaa000088ff77ccffcc0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaa8888aaaa0000aaaa8888aaaa000088ff77ccffcc0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00008888888800000000ff888888000000aaffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00008888888800000000ff888888000000aaffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00ff00882200ff00000000882200ff0000aaaa8888aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00ff00882200ff00000000882200ff0000aaaa8888aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000
000088000022000000000088002200000000ff0000ff000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000088000022000000000088002200000000ff0000ff000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
000008866aa00000000006688660000000000ee6688000000000066ee66000000000000000000000000000000000000000000000000000000000000000000000
000668866aa66000000ee668866aa00000066ee6688660000008866ee66880000000000000000000000000000000000000000000000000000000000000000000
00699669966bb6000096699669966b00006996699669960000b66996699669000000000000000000000000000000000000000000000000000000000000000000
06699669966bb6600996699669966bb006699669966996600bb66996699669900000000000000000000000000000000000000000000000000000000000000000
08866aa66cc66cc00668866aa66cc6600cc668866aa66cc0066cc668866aa6600000000000000000000000000000000000000000000000000000000000000000
68866aa66cc66cc6c668866aa66cc66c6cc668866aa66cc6966cc668866aa66c0000000000000000000000000000000000000000000000000000000000000000
e66bb66ee66aa66e6ee66bb66ee66aa6a66ee66bb66ee66a6aa66ee66bb66ee60000000000000000000000000000000000000000000000000000000000000000
e66bb66ee66aa66e6ee66bb66ee66aa6a66ee66bb66ee66a6aa66ee66bb66ee60000000000000000000000000000000000000000000000000000000000000000
6cc66cc668866886866cc66cc668866868866cc66cc66886b668866cc66cc6680000000000000000000000000000000000000000000000000000000000000000
6cc66cc668866886866cc66cc668866868866cc66cc66886b668866cc66cc6680000000000000000000000000000000000000000000000000000000000000000
b66bb66ee66996696bb66bb66ee66996e66bb66bb66ee6696ee66bb66bb66ee60000000000000000000000000000000000000000000000000000000000000000
066bb66ee66996600bb66bb66ee66990066bb66bb66ee6600ee66bb66bb66ee00000000000000000000000000000000000000000000000000000000000000000
0aa668866cc66aa0066aa668866cc66009966aa668866cc00669966aa66886600000000000000000000000000000000000000000000000000000000000000000
00a668866cc66a00006aa668866cc60000966aa668866c000069966aa66886000000000000000000000000000000000000000000000000000000000000000000
0009966ee66bb000000669966ee66000000bb669966ee00000066bb6699660000000000000000000000000000000000000000000000000000000000000000000
0000066ee6600000000009966ee00000000006699660000000000bb6699000000000000000000000000000000000000000000000000000000000000000000000
__map__
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0208090a0a0a0a0a0a0b02020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0218191a1a1a1a1a1a1b02020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010800001705100000000000000017050000000000000000170500000000000000000000000000170500000017052000000000000000170500000017050000001705200000180500000018050000000000000000
090800001705100000000000000017050000000000000000170500000000000000000000000000170500000017052170510000000000170500000017050000001705200000180500000018050000000000000000
110800001705100000000000000017050000000000000000170500000000000000000000000000170500000017052170510000300000170500000017050000001805200000180500000018050000000000000000
150800001c0510000000000000001c0500000000000000001a05000000000000000000000000001a0500000018050000000000000000180500000018050000001705000000170500000017050000000000000000
170800002805124000240002400028050240002400024000260502400024000240002400024000260502400024050240002400024000240502400024050240002305018000230501800023050240002400024000
170800003407130000300003000034070300003000030000320703000030000300003000030000320703000030070300003000030000300703000030070240002f070240002f070240002f070240002400024000
150800003b2510020100200002003b2500020000200002003b2500020000200002003b200002003b250002003b250002003b250002003b250002003b250002003b2500020000201002013b250286002660000201
310800000c0730c0000c0030c60224000183012460018403246000c2030c2031800318003180031800318003246530c2030c20300000000000000024600000000c6030c2030c203000000000000000000000c000
150800003b2510020100200002003b2500020000200002003b2500020000200002003b200002003b250002003b250002003b250002003b250002003b250002003b25000200002010020139250392522660000201
150800003b2510020100200002003b2500020000200002003b2500020000200002003b200002003b250002003b250002003b250002003b250002003b250002003b2500020000201002013c2503c2522660000201
350800000c0730c0000c0030c60224000183012460018403246000c2030c203180030c0730c0001800318003246530c2030c20300000000000000024600000000c6030c2030c203000000000000000000000c000
090800001705100000000000000017050000000000000000170500000000000000000000000000170500000017052000000000000000170500000017050000001505200000150500000015050000000000000000
__music__
01 01084344
00 0c084344
00 03084344
00 04424344
00 05424344
00 06424344
00 070b4344
00 090b4344
00 0a0b4344
00 060b4344
02 05084344

