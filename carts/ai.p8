pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include ../ai/ai.lua

#include ../ai/collision.lua

#include ../ai/player.lua

#include ../ai/sheep.lua

#include ../ai/wolf.lua

#include ../ai/end.lua

#include ../ai/pause.lua
__gfx__
00000000004449440004444900044449000444490004444900000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000044ffff400a44fff00a44fff00a44fff00a44fff00000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000847cfc400a847cf00a847cf00a847cf00a847cf00000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000afffff000affffe0aaffffe00affffe0aaffffe00000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000aa88aa00f888aa00f888a000f888aa00f888a0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700008888000008800000088000000880000008800000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000f0820f00880200000820000022080000028000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008002000000200000820000000080000028000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000099990000000000000000000000000000000000000000000000000000000000
07777000077770000777700007777000000000000000000000000000000000000999999000000000000000000000000000000000000000000000000000000000
0f1f70000f1f70000f1f70000f1f7000000000000000000000000000000000009999999900000000000000000000000000000000000000000000000000000000
0ff777700ff777700ff777700ff77770000000000000000000000000000000009999999900000000000000000000000000000000000000000000000000000000
07777770077777700777777007777770000000000000000000000000000000009999999900000000000000000000000000000000000000000000000000000000
00777770007777700077777000777770000000000000000000000000000000009999999900000000000000000000000000000000000000000000000000000000
0077777004777774007777700f77777f000000000000000000000000000000000999999000000000000000000000000000000000000000000000000000000000
004f04f0000f00f000f40f4000040040000000000000000000000000000000000099990000000000000000000000000000000000000000000000000000000000
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
3333333311111111444444444444444433333c3333333c3311111111111111111111111144444444444444444444444444444444444444444444444444444444
333333331111111144944244449442443333cbc33333cbc31111111111111111111111114444484444844444442448444e444447444448444484444444444844
333333331111111149b9eb2449b92b243e333c3333333c3311111111111111111111111144238b8448b83a3332b28b83ebe3337b73238b8448b83a3333238b84
3333333311111111449eb244449a3244ebe333333333333311111111111111111111111142b238444483aba3733338313e33233732b238444483aba332b23844
333333331111111144c3e84444aba8443e333933333333331111111111111111111111114423a34444323a37b7933c1b1332b2331f23a34444323a333f23a344
33333333111111114cbc8b844cbc8b8433339b9333233333111111111111111111111111443aba44442b233379b9cbc133332333fbfaba44442b2f33fbfaba44
333333331111111144c4484444c448443333393332b233331111111111111111111111114433a3444442444444944c44444444444f33a3444432fbf33f33a344
333333331111111144444444444444443333333333233333111111111111111111111111443733444444444444444444444444444437334444373f3333373344
4444444444a34433444444a333443344333333e333333333111111111111111111111111447b734444444444444444444444444444444444447b7333337b7344
4444444444ba4433444444ba9344334433333ebe333333331111111111111111111111114497324444844444442448444e444447444424444497323333973e44
a33442b244334433443344a3b944333a333333e33333333311111111111111111111111149b93b2448b83a3337b28b83ebe3337b7332b24449b92b2a39b9ebe4
ba344323444444ba44334433334433ab333333333333a333111111111111111111111111449332444483aba37b2338c33e33233733a32344449332aba3933e44
44444444444444a3443344383344444433333333333aba3311111111111111111111111144c3384444323a3737933cbc3332b2333aba384444c3383a33633844
44444444443e44334433448b33444444383333333333a3331111111111111111111111114cbc8b84442b233339b933c33333233333a38b844cbc8b8336b68b84
333eb33344eb44334444443833e333338b8333333333333311111111111111111111111144c138444442444444944444444444444444484444c1383333633844
3333e33344334433444444333ebe33333833333333333333111111111111111111111111441b134444444444444444444444444444444444441b133333333344
4444444444ab44333333ebe33344e3440000000000000000000000004444444444337344443133444444444444444444000000000000000044313333337b7344
44444444443a443333333e333344be4400000000000000000000000044844444443a33f44437334444e448444424484400000000000000004483323333973244
44339b4444334433444444333344e34400000000000000000000000048b83a3344abafbf447be3443ebe8b8332b28b83000000000000000048b82b2369b92b24
4433394444334433444444333a4444440000000000000000000000004483aba3443a32f14437be4473e3383373233833000000000000000044833236b6933244
4444444444444433ba334433ab44444400000000000000000000000044323a3744832b234433e844b7933633b7933c33000000000000000044c3393363c33844
44444444444444eba333449b3a443a44000000000000000000000000442b2f3348b8323744328b8479b96b6379b9cbc300000000000000004cbc9b933cbc8b84
33233333339333be444444393344ab440000000000000000000000004432fbf444844444442b28443393363333963c33000000000000000044c3393333c33844
32b2333339b333334444443333443a4400000000000000000000000044731f444444444444323344333a3333336b633300000000000000004433333333333344
333e333333332b2333333b93be4444440000000000000000000000000000000044f137444433734433aba3333336333300000000000000004433333333f33344
33ebe33333333233e333393383444444000000000000000000000000000000004fbf2344443a3344332a3833332339330000000000000000443a33f33fbf2344
4444444444444444be444444b84433440000000000000000000000000000000033f2b24444aba34432b28b8332b29b93000000000000000044abafbf33f2b244
4444444444444444e3444444834433440000000000000000000000000000000073a32344443a324473233831332339330000000000000000443a32f333a32344
323443ab449333443344333333443344000000000000000000000000000000003aba384444832b24b7933c1b13833c33000000000000000044832b233aba3844
2b24433a44b9334433443333334433440000000000000000000000000000000033a38b8448b8324479b9cbc138b8cbc3000000000000000048b8323333a38b84
44444444444444443344a3443344444400000000000000000000000000000000444448444484444444944c4444844c4400000000000000004484444444444844
44444444444444443344ba4433444444000000000000000000000000000000004444444444444444444444444444444400000000000000004444444444444444
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
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010101000001010101010101010101010101010000010101010101010101010101010100000001010101010000010101010101000000000101010100000101
0102020202020000000000000000000000040404040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
727170717071707170717071707170717071707170717071707170717071706272707170717071707170717071707162ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404940404040404e6b6a6b6a6b4f40404040404040404040405163454454455545445455444555544451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040404040407940404040407e7a7b7a7b7a7f40404040404040404040405273544040404040404040404040404552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340405a4d40404040404040404040404040404040404940404240404940405163554040404040404040404040405551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
634040405940404040404040404040404040404040405940404040405940405273444040404040404040404040405452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040406940404a4b4c5d40404a5b5c5b5c5c5d40405940404040406940405163544040404040404040404040404451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404a7840404040404040404040404040404040407e5b5c5b5c5b7f40405273454040404040404040404040405552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404040404040404040404040404040404040404040404040405163544040404040404040404040405451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040404a4b4c4d40404940404e4f40404040404040404040405273554040404040404040404040404452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340405a4b4c5d40404040405940405940405e5f40404a4c4b4c4b4c4d40405163444040404040404040404040405551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040404040406940406940406e6f40404040404040405940405273544040404040404040404040404552ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040404040404040404042424040424040434340404040404040406940405163558581844040404040409591945451ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404e6b4f40404a4b4c4344544554455544424b4c4b4c4b4d40405940405273458181814040404040409191914452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340406e445f404040404040454455445554454040404040405940406940405163548281834040404040409291935551ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340407e7b7f404040404040555544544554554040404040406940405940405273445445554454455545544455455452ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404040674b4c4244545554445544434b4c4d40405940406940405153506050605060506050605060506061ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040594040405444555444554540404059404079404079404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
734040674b5d4040794040404555545555444540404069404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340405940404040404040434454454445554443404059404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
73404069404040404040404242404043404042434040685b5d40404240404351ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340405940404940404040406940405940406940404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340406940405940404040407940407940407940404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340407940407940404040404040404040404040404340404240404340404252ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404040404940404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040405940404040674b4c5c4d40404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404a4b4c4d40406940404a4b784040407940404240404340404240404351ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040405940405940404040404040404040404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040406940406940404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404240407940407940405a4b5d40404a5d40404340404240404340404252ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
7340404040404040404040404040404040404040404040404040404040404051ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
6340404040404040404040404040404040404040404040404040404040404052ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
5360506050605060506050605060506050605060506050605060506050605061ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
__sfx__
010400002e2102e2402f2302b22032200342002b2302d2302d2302d2202b210002000020000200002000020000200002000020000200002000020000200002000020000000000000000000000000000000000000
000500000552005520025300153001530035300553005520045200351003500045000450003500035000350003500025000150000500005000350002500025000150001500005000550004500005000450003500
000200003451032510305203052030530315303353035530395403b5403f550055500555005550045500455003550035500355004550045500455002550025500155001550015500055002550015500055000550
010700001c2501c25018200182001f2001f2001f2501f2501a2501a2501a2501a2501a2501a25018200182001c2501c2501c2501c2501c2501c25018200182001820018200182001820000200002000020000200
