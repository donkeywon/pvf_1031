#PVF_File

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP_body.ani`
	`body`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP_LeftDodge.ani`
	`ld`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP_Normal.ani`
	`n`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP_RightDodge.ani`
	`rd`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP1_BlueFire.ani`
	`1bf`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP1_RedFire.ani`
	`1rf`

[use animation]
	`../../Effect/Animation/MachinegunJabEx/RP2_RedFire.ani`
	`2rf`

[add]
	0	9999
	`n`

[add]
	0	10000
	`ld`

[add]
	0	10000
	`rd`

[add]
	0	10000
	`body`

[create draw only object]
	0
	`1bf`	0	0	0

[create draw only object]
	0
	`1rf`	0	0	0

[create draw only object]
	2
	`2rf`	0	0	0

[use animation]
	`jupiterhammerbotnormal/machinegunjabexright.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/machinegunjabexright.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/machinegunjabexright.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/machinegunjabexright.ani`
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
