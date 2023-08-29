#PVF_File

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_Glow.ani`
	`B_Glow`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_FootEffect.ani`
	`B_FootEffect`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_Punch.ani`
	`B_Punch`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_Shock.ani`
	`B_Shock`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_Dust3.ani`
	`DemolitionPunch_B_Dust3`

[use animation]
	`../../Effect/Animation/DemolitionPunch/DemolitionPunch_B_Dust2.ani`
	`DemolitionPunch_B_Dust2`

[add]
	1	10001
	`B_Shock`

[add]
	0	10002
	`B_Punch`

[add]
	1	10003
	`B_FootEffect`

[add]
	2	10004
	`B_Glow`

[create draw only object]
	0
	`DemolitionPunch_B_Dust3`	0	1	0

[create draw only object]
	0
	`DemolitionPunch_B_Dust2`	0	2	0

[use animation]
	`jupiterhammerbotnormal/demolitionpunch_b_body.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/demolitionpunch_b_body.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/demolitionpunch_b_body.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/demolitionpunch_b_body.ani`
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
