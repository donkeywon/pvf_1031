#PVF_File

[use animation]
	`3_shoot_Shoot_1.ani`
	`shoot_Shoot_1`

[use animation]
	`3_shoot_Shoot_normal.ani`
	`shoot_Shoot_normal`

[use animation]
	`3_shoot_Feather_1.ani`
	`shoot_Feather_1`

[use animation]
	`3_smoke.ani`
	`smoke`

[add]
	5	10001
	`shoot_Feather_1`

[add]
	5	10002
	`shoot_Shoot_normal`

[add]
	3	10003
	`shoot_Shoot_1`

[create draw only object follow parent]
	0
	`smoke`	0	1	0
