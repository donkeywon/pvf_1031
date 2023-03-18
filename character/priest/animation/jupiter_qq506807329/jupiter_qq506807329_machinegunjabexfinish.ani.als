#PVF_File

[use animation]
	`../../Effect/Animation/MachinegunJabEx/FN_Shine.ani`
	`sh`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/FN_ShineBack.ani`
	`shb`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/FN_Normal.ani`
	`n`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/FN_Dodge.ani`
	`d`

[add]
	1	9999
	`n`

[add]
	1	10000
	`d`

[create draw only object]
	0
	`sh`	-30	0	64

[create draw only object]
	0
	`shb`	-30	0	64

[use animation]
	`jupiterhammerbotnormal/machinegunjabexfinish.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/machinegunjabexfinish.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/machinegunjabexfinish.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/machinegunjabexfinish.ani`
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
