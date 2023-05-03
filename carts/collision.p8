pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include ../collision/map.lua

#include ../collision/block.lua

#include ../collision/shape.lua

__gfx__
0000000000000000cccccccc88888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005555550cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005555550cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005555550cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005555550cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000055555d0cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000005555dd0cccccccc8cccccc8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000cccccccc88888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880099999900aaaaaa00bbbbbb00eeeeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020202020202020202020100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0113000011050000001100000000110000000015050000001005000000000000000000000000000e0501005011050000000000000000000000000015050000001005000000000000000000000000000000000000
1b1300001105000000000000000000000000001505000000160500000000000000000000000000130500000015050150501505015050000000000000000000001505014050130501205011050100500f0500e050
2f1300000020000200000000000011750000000000000000000000000000000000001075000000000000000000000000000000000000117500000000000000000000000000000000000000000000000000000000
271300000070000700000000000011750000000000000000000000000000000000001675000000000000000000000000000000000000000000000000000000001575014750137501275011750107500f7500e750
9313000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c63500000
1b130000110500000000000000000000000000000000000010050000000000000000000000000000000000001105000000000000000000000000000e050000001005000000000000000000000000000000000000
1b1300001105000702007020070211050000000e050000001005000000000000000010050000000c050000000e0500e0500e0500e0500e0500e0500e0500000010050000000c0500000011050000000e05000000
011300000c0500000000000000000e050000000000000000000000f05000000000000000000000000000c0500000000000000000f0500000000000000000c05000000000000000000000000000e0500000000000
271300000000000000000000000011750000000000000000000000000000000000001075000000000000000000000000000000000000110500000000000000000000000000000000000010750000000000000000
271300000000000000000000000011750000000000000000000000000000000000001075000000000000000000000000000e0000e0000e0500e0500e0500e0500e05000000000000000011750000000000000000
271300001105000000000000000000000000001505000000160500000000000000000000000000130500000015050150501505015050000000000000000000000e0500f050100501105012050130501405015050
1b1300000070000700000000000011750000000000000000000000000000000000001675000000000000000000000000000000000000000000000000000000000e7500f750107501175012750137501475015750
1b130000110500000000000000001105000000000000000010050000000000000000100500000000000000001105000000000000000011050000000e050000001005000000000000000010050000000000000000
1b13000010050000000000000000100500000000000000000e0500000000000000000c0500000000000000000e0500e0500e0500e050000000000000000000000000000000000000000000000000000000000000
4b1300003c635000003c6050000000000000003c635000003c635000003c0050000000000000003c635000003c635000003c6050000000000000003c605000003c63500000000003c6053c6353c6053c63500000
__music__
01 00424344
00 01424344
00 00024344
00 01034344
00 00020444
00 0b0a0444
00 00020444
00 01030444
00 05444344
00 06444344
00 0c044344
00 060e4344
00 00024444
00 0b0a0444
00 05080444
02 06090e44

