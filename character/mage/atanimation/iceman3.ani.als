#PVF_File

[use animation]
	`../Effect/Animation/ATIceMan/02/04_run_dodge_0.ani`
	`04_run_dodge_0`

[use animation]
	`../Effect/Animation/ATIceMan/02/04_run_dodge_1.ani`
	`04_run_dodge_1`

[use animation]
	`../Effect/Animation/ATIceMan/02/dust.ani`
	`dust`

[create draw only object follow parent]
	0
	`04_run_dodge_0`	0	2	0

[create draw only object]
	0
	`dust`	0	2	0

[none effect add]
	0	10001
	`04_run_dodge_1`
