#PVF_File

[use animation]
	`Dash02_01.ani`
	`01`

[use animation]
	`Dash02_02.ani`
	`02`

[use animation]
	`DashEff02Smoke.ani`
	`smoke`

[use animation]
	`DashEff01Line.ani`
	`line`

[none effect add]
	0	10001
	`02`

[none effect add]
	0	10002
	`01`

[create draw only object random]
	0
	`line`	-30	1	0	-50	1	150	1

[create draw only object random]
	1
	`line`	-50	1	0	-70	1	150	1

[create draw only object random]
	2
	`line`	-70	1	0	-90	1	150	1

[create draw only object]
	0
	`smoke`	-120	1	0
