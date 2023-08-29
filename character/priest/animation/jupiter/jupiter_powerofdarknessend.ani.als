#PVF_File

[use animation]
	`../../Effect/Animation/PowerOfDarkness/2_Last_aura_back_normal.ani`
	`1`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/4_Last_aura_front_dodge.ani`
	`2`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/5_Last_aura_front_normal.ani`
	`3`

[use animation]
	`../../Effect/Animation/PowerOfDarkness/6_Last_handaura_normal.ani`
	`4`

[create draw only object]
	0
	`1`	0	-1	0

[create draw only object]
	0
	`2`	0	1	0

[create draw only object]
	0
	`3`	0	1	0

[create draw only object]
	0
	`4`	0	1	0

[use animation]
	`jupiterhammerbotnormal/powerofdarknessend.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/powerofdarknessend.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/powerofdarknessend.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/powerofdarknessend.ani`
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
