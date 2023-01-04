#PVF_File

[use animation]
	`floor_hit_sub_dodge1.ani`
	`sub1`

[use animation]
	`floor_hit_sub_dodge2.ani`
	`sub2`

[use animation]
	`sub_down_d.ani`
	`sub_down_back`

[use animation]
	`sub_up_d.ani`
	`sub_down_front`

[add]
	0	-1
	`sub_down_back`

[add]
	0	1
	`sub_down_front`

[create draw only object]
	0
	`sub1`	0	0	-1000

[create draw only object]
	0
	`sub2`	0	0	-1000
