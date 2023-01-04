#PVF_File

[use animation]
	`circle/8_ring_front_normal.ani`
	`0`

[use animation]
	`circle/9_1_ring_front_dodge.ani`
	`1`

[use animation]
	`circle/9_2_ring_front_dodge.ani`
	`2`

[use animation]
	`circle/magic_circle_dodge.ani`
	`3`

[use animation]
	`circle/magic_circle_normal.ani`
	`4`

[none effect add]
	0	0
	`0`

[none effect add]
	0	1
	`1`

[none effect add]
	0	2
	`2`

[create draw only object follow parent]
	0
	`3`	0	0	-1000

[create draw only object follow parent]
	0
	`4`	0	0	-1001
