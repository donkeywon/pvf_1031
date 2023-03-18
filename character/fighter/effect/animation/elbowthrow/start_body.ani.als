#PVF_File

[use animation]
	`START_00_swing_up_d.ani`
	`00_swing_up_d`

[use animation]
	`START_speed_d.ani`
	`speed_d`

[use animation]
	`START_00_swing_down_d.ani`
	`00_swing_down_d`

[use animation]
	`START_dust01.ani`
	`dust01`

[use animation]
	`START_floor00_d.ani`
	`floor00_d`

[add]
	2	-3
	`floor00_d`

[add]
	2	-2
	`dust01`

[add]
	0	-1
	`00_swing_down_d`

[add]
	2	10001
	`speed_d`

[add]
	0	10002
	`00_swing_up_d`
