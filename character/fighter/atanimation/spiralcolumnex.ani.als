#PVF_File

[use animation]
	`../Effect/Animation/ATSpiralColumnEx/push_front_dodge.ani`
	`pu_fr_d`

[use animation]
	`../Effect/Animation/ATSpiralColumnEx/push_floor_reverse_dodge.ani`
	`pu_fl_d`

[use animation]
	`../Effect/Animation/ATSpiralColumnEx/sp_cast_dodge.ani`
	`sp_cast_d`

[none effect add]
	0	10001
	`pu_fr_d`

[none effect add]
	0	10000
	`sp_cast_d`

[create draw only object]
	0
	`pu_fl_d`	68	1	0
