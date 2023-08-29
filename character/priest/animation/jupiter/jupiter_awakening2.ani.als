#PVF_File

[use animation]
	`../../Effect/Animation/Awakening/Transform/01/1_energy_backlight_dodge.ani`
	`1_e_bl_d`

[use animation]
	`../../Effect/Animation/Awakening/Transform/01/4_energy_black_normal_0.ani`
	`4_e_bl_n_0`

[use animation]
	`../../Effect/Animation/Awakening/Transform/01/4_energy_black_normal_1.ani`
	`4_e_bl_n_1`

[use animation]
	`../../Effect/Animation/Awakening/Transform/01/5_energy_spark_dodge.ani`
	`5_e_s_dod`

[use animation]
	`../../Effect/Animation/Awakening/Transform/01/6_energy_ring_dodge.ani`
	`6_e_r_dod`

[add]
	0	10002
	`4_e_bl_n_0`

[add]
	0	10003
	`4_e_bl_n_1`

[add]
	0	10004
	`5_e_s_dod`

[add]
	0	10005
	`6_e_r_dod`

[create draw only object follow parent]
	0
	`1_e_bl_d`	0	-1	75

[use animation]
	`jupiterhammerbotnormal/awakening2.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/awakening2.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/awakening2.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/awakening2.ani`
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
