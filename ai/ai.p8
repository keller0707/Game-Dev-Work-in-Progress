pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include ai.lua

#include collision.lua

#include player.lua

#include sheep.lua

#include wolf.lua

#include end.lua
__gfx__
00000000004449440004444900044449000444490004444900000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000044ffff400a44fff00a44fff00a44fff00a44fff00000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000847cfc400a847cf00a847cf00a847cf00a847cf00000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000afffff000affffe0aaffffe00affffe0aaffffe00000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000aa88aa00f888aa00f888a000f888aa00f888a0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700008888000008800000088000000880000008800000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000f0820f00880200000820000022080000028000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008002000000200000820000000080000028000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777000077770000777700007777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f1f70000f1f70000f1f70000f1f7000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0ff777700ff777700ff777700ff77770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07777770077777700777777007777770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00777770007777700077777000777770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0077777004777774007777700f77777f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
004f04f0000f00f000f40f4000040040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000100000001000800000000000000000000000000000000000000000000000000000000000000000000000000000000000
0050000000d0000007777000077700000000000008e7870000000000000000000000000000000000000000000000000000000000000000000000000000000000
055555000ddddd000f1f70000818800008e787000e88888800000000000000000000000000000000000000000000000000000000000000000000000000000000
0855555008ddddd00ff7777000888870008888708888887800000000000000000000000000000000000000000000000000000000000000000000000000000000
55555555dddddddd0778877007888700078887088778887800000000000000000000000000000000000000000000000000000000000000000000000000000000
55555555dddddddd0078887008788888087888888888888800000000000000000000000000000000000000000000000000000000000000000000000000000000
055555500dddddd00077877000878770008787408878874000000000000000000000000000000000000000000000000000000000000000000000000000000000
055005500d0d00d0004f04f0004004f0004080000040888800000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3333333311111111444444444444444433333c3333333c3311111111111111111111111100000000000000000000000000000000000000000000000000000000
333333331111111144944244449442443333cbc33333cbc311111111111111111111111100000000000000000000000000000000000000000000000000000000
333333331111111149b9eb2449b92b243e333c3333333c3311111111111111111111111100000000000000000000000000000000000000000000000000000000
3333333311111111449eb244449a3244ebe333333333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
333333331111111144c3e84444aba8443e3339333333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
33333333111111114cbc8b844cbc8b8433339b933323333311111111111111111111111100000000000000000000000000000000000000000000000000000000
333333331111111144c4484444c448443333393332b2333311111111111111111111111100000000000000000000000000000000000000000000000000000000
33333333111111114444444444444444333333333323333311111111111111111111111100000000000000000000000000000000000000000000000000000000
4444444444a34433444444a333443344333333e33333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
4444444444ba4433444444ba9344334433333ebe3333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
a33442b244334433443344a3b944333a333333e33333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
ba344323444444ba44334433334433ab333333333333a33311111111111111111111111100000000000000000000000000000000000000000000000000000000
44444444444444a3443344383344444433333333333aba3311111111111111111111111100000000000000000000000000000000000000000000000000000000
44444444443e44334433448b33444444383333333333a33311111111111111111111111100000000000000000000000000000000000000000000000000000000
333eb33344eb44334444443833e333338b8333333333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
3333e33344334433444444333ebe3333383333333333333311111111111111111111111100000000000000000000000000000000000000000000000000000000
4444444444ab44333333ebe33344e344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444443a443333333e333344be44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44339b4444334433444444333344e344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4433394444334433444444333a444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4444444444444433ba334433ab444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444eba333449b3a443a44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33233333339333be444444393344ab44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
32b2333339b333334444443333443a44000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
333e333333332b2333333b93be444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33ebe33333333233e333393383444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4444444444444444be444444b8443344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4444444444444444e344444483443344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
323443ab449333443344333333443344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
2b24433a44b933443344333333443344000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444443344a34433444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44444444444444443344ba4433444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccccccccccccccccccccccccc3333cccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeeccccccccccccccccccccccccccccccc33ccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccccccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccccccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccccccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccccccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccc3cccccccccccccc3cccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
eeeeeeeecccccccc33cccccccccccc33cccccccccccccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222333322222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222233222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222222222222222222222222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222223222222222222223222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000222222223322222222222233222222222222222200000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010101000001010100000000000000010101010000010101000000000000000101010100000000000000000000000001010101000000000000000000000000
0102020202020000000000000000000000040404040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
727170717071707170717071707170717071707170717071707170717071706272707170717071707170717071707162ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404140404040404040404040404040404040404040404040405163454454455545445455444555544451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040404040404140404040404141414141414140404040404040404040405273544040404040404040404040404552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040414140404040404040404040404040404040404140404140404140405163554040404040404040404040405551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040404140404040404040404040404040404040404140404040404140405273444040404040404040404040405452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404140404141414140404141414141414140404140404040404140405163544040404040404040404040404451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040414140404040404040404040404040404040404141414141414140405273454040404040404040404040405552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404040404040404040404040404040404040404040404040405163544040404040404040404040405451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040404040404040414141414040414040414140404040404040404040405273554040404040404040404040404452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040414141414040404040414040414040414140404141414141414140405163444040404040404040404040405551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040404040404040404040414040414040414140404040404040404140405273544040404040404040404040404552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404040404042424040424040434340404040404040404140405163558581844040404040409591945451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040414141404041414143445445544555444241414141414140404140405273458181814040404040409191914452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040414141404040404040454455445554454040404040404140404140405163548281834040404040409291935551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040414141404040404040555544544554554040404040404140404140405273445445554454455545544455455452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404041414142445455544455444341414140404140404140405153506050605060506050605060506061ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040414040405444555444554540404041404041404041404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404141414040414040404555545555444540404041404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404140404040404040434454454445554443404041404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404140404040404040424240404340404243404041414140404140404151ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404140404140404040404140404140404140404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404140404140404040404140404140404140404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404140404140404040404040404040404040404140404140404140404152ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404040404140404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040404140404040414141414140404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404141414140404140404146414040404140404140404140404140404151ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404140404140404040404040404040404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404140404140404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404140404140404140404146414040464140404140404140404140404152ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404040404040404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040404040404040404040404040404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
5360506050605060506050605060506050605060506050605060506050605061ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
