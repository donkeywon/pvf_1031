#PVF_File

[use animation]
	`../Effect/Animation/ATGroundKick/jump_spin_dust_back_normal.ani`
	`spin_dust_back`

[use animation]
	`../Effect/Animation/ATGroundKick/jump_spin_dust_front_normal.ani`
	`spin_dust_front`

[use animation]
	`../Effect/Animation/ATGroundKick/dust_big_normal.ani`
	`dust_big`

[use animation]
	`../Effect/Animation/ATGroundKick/dust_foot_normal.ani`
	`dust_foot`

[none effect add]
	0	-1
	`spin_dust_back`

[none effect add]
	0	10000
	`spin_dust_front`

[none effect add]
	0	10001
	`dust_foot`

[create draw only object]
	3
	`dust_big`	0	-1	0
