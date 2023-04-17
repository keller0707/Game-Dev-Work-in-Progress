pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include ../playtest/playtest.lua

#include ../playtest/player.lua

#include ../playtest/teleport.lua

#include ../playtest/sheep.lua

#include ../playtest/collision.lua

#include ../global_variables.lua

#include ../playtest/powerup.lua

#include ../playtest/pause.lua
__gfx__
0000000000aaaaa000aaaaa0000aaaaa000aaaaa000aaaaa000aaaaa000aaaaaaaaaaaaa00000000000000000000000000000000000000000000000000000000
000000000aaffff00aaffff000aaffff00aaffff00aaffff00aaffff00aaffff0aaaffffaaaaaa00000000000000000000000000000000000000000000000000
0070070008f7cfc008f7cfc000a8f7cf00a8f7cf00a8f7cf00a8f7cf00a8f7cf00a8f7cfafffff00000000000000000000000000000000000000000000000000
000770000afffff00afffef000affffe0aaffffe00affffe0aaffffe0aaffffe000ffffe8f7cfc00000000000000000000000000000000000000000000000000
000770000aa88aa00a8888a00f888aa00f888a000f888aa00f888a000a88800000008880afffef00000000000000000000000000000000000000000000000000
00700700008888000f0880f0000880000008800000088000000880000f0880000000880faa8888f0000000000000000000000000000000000000000000000000
000000000f0820f0000820000880200000820000022080000028000000280000000008200f088200000000000000000000000000000000000000000000000000
00000000008002000080020000002000008200000000800000280000028000000000008200008822000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0aaaa0000aaaa0000aaaa0000aaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f1fa0000f1fa0000f1fa0000f1fa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0ffa8aa00ffa8aa00ffa8aa00ffa8aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0aa8aaa00aa8aaa00aa8aaa00aa8aaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
008aaaa0008aaaa0008aaaa0008aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaaa00faaaaa400aaaaa004aaaaaf000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00f40f4000040f00004f04f0000f0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000007000000070000999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000400000074700000707009999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000900000079700000707099999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00009900000799700007007099999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00099900077999700770007099999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04999000749997007000070099999999000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000077770000777700009999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000070000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00004000007747000077070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00848800078488700700007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880788888877000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880788888877000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880788888877000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888800078888700700007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000007777000077770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
cccccccccccddcccf4f4f4f45555555555555555ccccccccdaaaaaad44d44d44daaaaaaddaaaaaadcccc1111c11c1ccccc111cccccccccccccc1cccc00000000
cccccccccccddcccf4f4f4f47777777777777777ccccccccaaaddaaa44d44d44aaaaaaaaaaaaaaaaccc1111cc111111cc11111cccc1c1cc1ccc1cccc00000000
cccccccccccddcccf48888f45555555555555555ccccccccaaaddaaaddddddddaaaaaaaaaaaaaaaac1111111c1111111c1111111c111111ccc1ccccc00000000
cccccccccccddcccf48888f45555555555555555ccccccccaaaddaaa444dd444aaaaaaaaaaaaaaaac11c1111c1111111c1111111c111111ccc111ccc00000000
cccccccccccddcccf48888f43333333333333333cccddcccaaaaaaaa444dd444aaaaaaaaaaaaaaaacc1111c111c111c1111111c111111111c1ccc1cc00000000
cccccccccccddcccf48888f43333333333333333ccddddccaaaddaaaddddddddaaaaaaaaaaaaaaaac111cccccc1111ccc111ccccc111c11cc1ccc1cc00000000
cccccccccccddcccf4f4f4f44444444444444444ccddddccaaaddaaa44d44d44aaaaaaaaaaaaaaaa11c11ccc1ccc1c11c1c11cccc1c11cc1c1ccc1cc00000000
cccccccccccddcccf4f4f4f44444444444444444cccddcccdaaaaaad44d44d44daaaaaaddaaaaaad11111ccc11ccccc1cccccccccccccccccc111ccc00000000
ddddddddccddddddddddddcc888888888888888888888888cccdd888888ccccccccccccc00000000cccc1111ccc11cccc1cc1cc1cccccccccccccc1c00000000
ddddddddccddddddddddddcc84d44d48877777788aaddaa8cccdd8888888cccccccccccc00000000ccc11111ccc11cccc1cc1111cccccccccccc1c1100000000
cccddccccccddccccccddccc8dddddd8855555588aaddaa8cccdd8888888888888cccccc00000000c111111111111111cc1cc1ccccc1ccccccc1cc1c00000000
cccddcccc2cddc2cc2cddc2c844dd448855555588aaddaa8cccdd8888aaa8888888888cc00000000c111111111111111ccc1cc1cccc1ccccc1c111c100000000
cccddccc2777777227777772844dd448833333388aaaaaa8cccdd888aaaa8888888888cc00000000cc1111c1ccc11ccccccc1cc1111111cc1cc1c1cc00000000
cccddcccc788887cc788887c8dddddd8833333388aaddaa8cccdd888aaa88888888888cc00000000c111ccccc1c11c1cc1111cc1c11111cc111c11cc00000000
cccddccc278878722788787c84d44d48844444488aaddaa8cccdd888aa8a888a888888cc0000000011111ccc1cc11cc1c1cc1cc1c11111cc1c1ccccc00000000
cccddcccc787887cc787887c888888888888888888888888cccdd8888888a888a88888cc0000000011111cccccc11cccc1ccccc1ccc11cccc11ccccc00000000
000000002788787200000000000000000000000000000000cccdd88888888a88a88888cc00000000000000000000000000000000000000000000000000000000
00000000c787887c00000000000000000000000000000000cccdd888888888a8a88888cc00000000000000000000000000000000000000000000000000000000
000000002788787200000000000000000000000000000000cccdd8888aaa888a888888cc00000000000000000000000000000000000000000000000000000000
00000000c788887c00000000000000000000000000000000cccdd8888aa8aaa8a88888cc00000000000000000000000000000000000000000000000000000000
000000002777777200000000000000000000000000000000cccdd88888888888888888cc00000000000000000000000000000000000000000000000000000000
00000000c2c22c2c00000000000000000000000000000000cccdd88888888888888888cc00000000000000000000000000000000000000000000000000000000
00000000cccccccc00000000000000000000000000000000cccddccccccc8888888888cc00000000000000000000000000000000000000000000000000000000
00000000cccccccc00000000000000000000000000000000cccddcccccccc888888888cc00000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8088aa888080aa080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08aaaaa00800a0800800a08000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
8aa8c8ca80a000080080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888000888000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888808808000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
80888808808080080080800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08088080080000800800008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
80888808808888080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
cccdd888888ccccccccccccc8888888ccccccccc888888888ccccccc88888888888888cc8cccccccc88888cc8ccccccccccccccc888888cccccccccc00000000
cccdd8888888cccccccccccc8888888888cccccc88888888888888cc88888888888888cc88888888888888cc88888888888ccccc8888888888cccccc00000000
cccdd8888888888888cccccc888888888888cccc88888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc00000000
cccdd8888aaa8888888888cc8aaa8888888888cc8aaa8888888888cc8aaa8888888888cc8aaa8888888888cc8aaa8888888888cc8aaa8888888888cc00000000
cccdd888aaaa8888888888ccaaaa8888888888ccaaaa8888888888ccaaaa8888888888ccaaaa8888888888ccaaaa8888888888ccaaaa8888888888cc00000000
cccdd888aaa88888888888ccaaa88888888888ccaaa88888888888ccaaa88888888888ccaaa88888888888ccaaa88888888888ccaaa88888888888cc00000000
cccdd888aa8a888a888888ccaa8a888a888888ccaa8a888a888888ccaa8a888a888888ccaa8a888a888888ccaa8a888a888888ccaa8a888a888888cc00000000
cccdd8888888a888a88888cc8888a888a88888cc8888a888a88888cc8888a888a88888cc8888a888a88888cc8888a888a88888cc8888a888a88888cc00000000
cccdd88888888a88a88888cc88888a88a88888cc88888a88a88888cc88888a88a88888cc88888a88a88888cc88888a88a88888cc88888a88a88888cc00000000
cccdd888888888a8a88888cc888888a8a88888cc888888a8a88888cc888888a8a88888cc888888a8a88888cc888888a8a88888cc888888a8a88888cc00000000
cccdd8888aaa888a888888cc8aaa888a888888cc8aaa888a888888cc8aaa888a888888cc8aaa888a888888cc8aaa888a888888cc8aaa888a888888cc00000000
cccdd8888aa8aaa8a88888cc8aa8aaa8a88888cc8aa8aaa8a88888cc8aa8aaa8a88888cc8aa8aaa8a88888cc8aa8aaa8a88888cc8aa8aaa8a88888cc00000000
cccdd88888888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc00000000
cccdd88888888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc88888888888888cc00000000
cccddccccccc8888888888cccccccc88888888ccccccccc8888888ccccccccccccccccccc888888888ccccccc8888888888888ccccccc888888888cc00000000
cccddcccccccc888888888cccccccccccc8888ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc888cccccccccccc8888cc00000000
cccdd111111ccccccccccccc111111cccccccccc111111888ccccccc11111188888888cc1cccccccc88888cc1ccccccccccccccc111111cccccccccc00000000
cccdd17171711188cccccccc7171717777cccccc71717177788888cc71717177777777cc71111188877777cc71111188888ccccc7171718888cccccc00000000
cccdd1111111717788cccccc111111888877cccc11111188877777cc11111188888888cc11717177788888cc11717177777888cc11111177778888cc00000000
cccdd17171711188778888cc71717177778877cc71717177788888cc71717177777777cc71111188877777cc71111188888777cc71717188887777cc00000000
cccdd11111117177887777cc11111188887788cc11111188877777cc11111188888888cc11717177788888cc11717177777888cc11111177778888cc00000000
cccdd17171711188778888cc71717177778877cc71717177788888cc71717177777777cc71111188877777cc71111188888777cc71717188887777cc00000000
cccdd11111117177887777cc11111188887788cc11111188877777cc11111188888888cc11717177788888cc11717177777888cc11111177778888cc00000000
cccdd88888811188778888cc88888877778877cc88888877788888cc88888888888888cc81111188888888cc81111188888777cc77777788887777cc00000000
cccdd77777778777887777cc77777788887788cc77777788877777cc77777777777777cc78888888877777cc78888888888888cc88888877778888cc00000000
cccdd88888887888778888cc88888877778877cc88888877788888cc88888888888888cc87777777788888cc87777777777888cc77777788887777cc00000000
cccdd77777778777887777cc77777788887788cc77777788877777cc77777777777777cc78888888877777cc78888888888777cc88888877778888cc00000000
cccdd88888887888778888cc88888877778877cc88888877788888cc88888888888888cc87777777788888cc87777777777888cc77777788887777cc00000000
cccdd77777778777887777cc77777788887788cc77777788877777cc77777777777777cc78888888877777cc78888888888777cc88888877778888cc00000000
cccdd88888887888778888cc88888877778877cc88888877788888cc88888888888888cc87777777788888cc87777777777888cc88888888887777cc00000000
cccddccccccc8777887777cccccccc88887788cccccccc88877777ccccccccccccccccccc88888888cccccccc8888888888777cccccccc88888888cc00000000
cccddcccccccc888888888cccccccccccc8877ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc888cccccccccccc8888cc00000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040003030007030303000000000000030303000000000000000000000000000003000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
4040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040404540404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404045404040404040404000404040404140404040404040404040404040404041404040404040404040404040404040405657584040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404040404040404040404040404040404040404040404040404040404040404040404056c1c240404040404000404040404140404040404040404040404040404041404040404040404040404040404040406667684040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040405150524040404040404040404040404051505240404040404040404040404040404066d1d240404040404000404040515052404040404040404040404040405150524040404040404040404040404040404140404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040406141614040404040404040404040404061416140404040404040404040404040404041404040404040404000404040614061404040404040404040404040406140614040404040474040404040404040404140404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040404040404640404040414040404040404040404040404040404041404040404040404000404040404040404040404040404040404040404040404040404040474040404040404040404140404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040404040404040404040414040404040404040404040404040404041404040404040404000404040404040404040404040464040404040404040404040404040474040404040404040404140404040404040400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040404040404040404040414040404040404040404040404040404041404047404740474000404040404040404040404040474040404040404040404040404040404040404040404040404140404740474047400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040464040404047474647474040414040404040404740404040404040404041404047474747474000404040404040404040404040474740404640404040404040474040404040474040404040404140404747474747400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040404040404040404040414040404047404740474040404040404041404047476047474000404040404040404040404040404040404740404040404047404040404040404740404040404140404747604747400000000000000000000000000000000000000000000000000000000000000000000000
4040404041404040404040404040404040404040414040474047404740474047404040404041404047476047474000404040404040464040404040404047404040404040404047404040404040404740404040404140404747604747400000000000000000000000000000000000000000000000000000000000000000000000
4343434343434343434343434343434343434344434443444343444344444443444444434344444443444344434400434343434343434343434343434343434343434343434343434443434344444444444444444444434343434444440000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000ffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0001000031620306202b6302f6400f6502e6602f67030670216503364035630376303a650106502a170146102b6500f65027650056500e65016650236501c6500e6501c650240002400000000000000000000000
000100002e3202d3302b3302b3302b3402c3402d3402e3402f3403134032340343403534036340373403a3501365034650326500e65030650076502f6502e6500c6502d6500b650256502b6502a6502965026650
010100000b5200f520135301554019540105502156014560295702b5702f570325703457037570395603855000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001a3501a3501a3501a3501a050193501705014050130501835011050173500e0501635015350143501335011350103500f3500d3500c3500b350093500835006350043500135000350000000000000000
0001000019650196500000019650000001965000000186500000015650146500000000000116500f650000000c650000000865000000066500000003650016500065000650000000000000000000000000000000
00010000000000c6500b6500a6500a6500a6500965008650076500665005650056500465003650026500265001650016500663006620066200661005610056100561004600036000360006600000000000000000
0001000002610036100562007620096300b6300c6400d6400e6500e6500d6500c6600b6600b6600a6600a66009660086600765005640036300262000610000000000000000000000000000000000000000000000
271500000c2140c2230f2340f21313224132340f2240f22411234112440e2340e2240f2340e2440c2340b2240c2140c2230f2340f22313234132440f2340f22411214112240e2340e2240f2340e2440c2340e225
3315000018254182531b2541b2531f2541f2141b2241b2141d2141d2141a2141a2541b2541a254182541725418214182131b2141b2131f2141f2141b2541b2541d2541d2141a2141a2541b2541a214182141a215
33150000243542435327354273532b3542b35427354273542935429314263142631427314263142431423314243142431327314273132b3542b35427354273542935429314263142631427314263142431426315
612a00000c7400c7300c7220c7100c7120c7100e7420e7300f7400f7320e7400e73211740117320f7400f7300e7400e7300e7220e7100e7120e7100e7120e7100c7400c7300c7200c7100c7100c7100c7100c710
012a0000117421173213742137321474214732147221471213742137320f7420f7321374213732137221371211742117321172211712117121171211712117120000000000000000000000000000000000000000
__music__
01 41424307
00 41424308
02 41424309
02 49424309
00 4142430a
00 4142430b

