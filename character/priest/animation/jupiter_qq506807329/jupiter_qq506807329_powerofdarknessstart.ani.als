#PVF_File

[use animation]
	`../../Effect/Animation/PowerOfDarkness/3_bodylight_dodge.ani`
	`3`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/7_handaura_dodge.ani`
	`7`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/2_Start_aura_back_normal.ani`
	`2`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/4_Start_aura_front_dodge.ani`
	`4`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/5_Start_aura_front_normal.ani`
	`5`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/6_Start_handaura_normal.ani`
	`6`

[create draw only object]
	0
	`3`	0	1	0

[create draw only object]
	0
	`7`	0	1	0

[none effect add]
	0	-2
	`2`

[none effect add]
	0	10002
	`4`

[none effect add]
	0	10003
	`5`

[none effect add]
	0	10004
	`6`

[use animation]
	`jupiterhammerbotnormal/powerofdarknessstart.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/powerofdarknessstart.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/powerofdarknessstart.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/powerofdarknessstart.ani`
	`priest_jupiter_4`

[add]
	0	-2
	`priest_jupiter_1`

[add]
	0	-1
	`priest_jupiter_2`

[add]
	0	2790
	`priest_jupiter_3`

[add]
	0	2791
	`priest_jupiter_4`
