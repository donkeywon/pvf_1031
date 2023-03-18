#PVF_File

[use animation]
	`../Effect/Animation/ATFlameLegs/cast_dodge.ani`
	`cast_dodge`

[use animation]
	`../Effect/Animation/ATFlameLegs/boom_dodge.ani`
	`boom_dodge`

[use animation]
	`../Effect/Animation/ATFlameLegs/floor_dodge.ani`
	`floor_dodge`

[none effect add]
	0	10000
	`cast_dodge`

[create draw only object]
	14
	`boom_dodge`	0	1	0

[create draw only object]
	15
	`floor_dodge`	0	0	-1000
