#PVF_File

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_dodge_down.ani`
	`dodge_down`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_normal.ani`
	`normal`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_dodge_up.ani`
	`dodge_up`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_spark1.ani`
	`spark1`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_spark2.ani`
	`spark2`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_spark3.ani`
	`spark3`

[use animation]
	`../Effect/Animation/DarkSoul/charge_launch_smog.ani`
	`smog`

[add]
	0	10010
	`dodge_down`

[add]
	0	10011
	`normal`

[add]
	0	10012
	`dodge_up`

[create draw only object]
	2
	`spark1`	43	1	82

[create draw only object]
	4
	`spark2`	43	1	82

[create draw only object]
	4
	`spark3`	43	1	82

[create draw only object]
	2
	`smog`	23	2	80
