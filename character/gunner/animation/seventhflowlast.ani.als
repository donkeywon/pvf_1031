#PVF_File

[use animation]
	`../Effect/Animation/SeventhFlow/Last/18_exp_dust_normal.ani`
	`18_exp_dust_normal`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/Dust_2.ani`
	`Dust_2`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/Shoot_2.ani`
	`Shoot_2`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/Shoot_3.ani`
	`Shoot_3`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/dust(normal).ani`
	`dust(normal)`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/Shoot_normal_2.ani`
	`Shoot_normal_2`

[use animation]
	`../Effect/Animation/SeventhFlow/Last/Feather_2.ani`
	`Feather_2`

[none effect add]
	6	-2
	`Shoot_normal_2`

[none effect add]
	3	-1
	`dust(normal)`

[none effect add]
	6	10001
	`Shoot_3`

[none effect add]
	6	10002
	`Shoot_2`

[none effect add]
	0	10003
	`Dust_2`

[none effect add]
	6	10004
	`18_exp_dust_normal`

[create draw only object]
	6
	`Feather_2`	0	-1	0
