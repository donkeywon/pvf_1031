#PVF_File

[use animation]
	`../../Effect/Animation/Spincutter/arrival/1_sickle_end_normal.ani`
	`si_e_n`

[use animation]
	`../../Effect/Animation/Spincutter/arrival/2_sickle_end_dodge.ani`
	`si_e_d`

[use animation]
	`../../Effect/Animation/Spincutter/arrival/4_catch_dodge.ani`
	`ca_d`

[create draw only object]
	0
	`si_e_n`	-2	-1	0

[create draw only object]
	0
	`si_e_d`	-2	-1	0

[create draw only object]
	0
	`ca_d`	-2	-1	0

[use animation]
	`jupiterhammerbotnormal/spincutter3.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/spincutter3.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/spincutter3.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/spincutter3.ani`
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
