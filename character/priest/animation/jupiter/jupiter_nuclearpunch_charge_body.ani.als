#PVF_File

[use animation]
	`../../Effect/Animation/NuclearPunch/NuclearPunch_Charge_DustFront.ani`
	`Charge_DustFront`

[use animation]
	`../../Effect/Animation/NuclearPunch/NuclearPunch_Charge_Fire.ani`
	`Charge_Fire`

[use animation]
	`../../Effect/Animation/NuclearPunch/NuclearPunch_Charge_Hand.ani`
	`Charge_Hand`

[use animation]
	`../../Effect/Animation/NuclearPunch/NuclearPunch_Charge_DustBack.ani`
	`Charge_DustBack`

[none effect add]
	3	-1
	`Charge_DustBack`

[none effect add]
	3	10001
	`Charge_Hand`

[none effect add]
	1	10002
	`Charge_Fire`

[create draw only object]
	3
	`Charge_DustFront`	0	3	0

[use animation]
	`jupiterhammerbotnormal/nuclearpunch_charge_body.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/nuclearpunch_charge_body.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/nuclearpunch_charge_body.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/nuclearpunch_charge_body.ani`
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
