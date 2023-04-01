#PVF_File

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_A_Force.ani`
	`A_Force`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_A_Dust.ani`
	`DemolitionPunch_A_Dust`

[add]
	0	10001
	`A_Force`

[create draw only object]
	0
	`DemolitionPunch_A_Dust`	0	1	0

[use animation]
	`jupiterhammerbotnormal/demolitionpunch_a_body.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/demolitionpunch_a_body.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/demolitionpunch_a_body.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/demolitionpunch_a_body.ani`
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
