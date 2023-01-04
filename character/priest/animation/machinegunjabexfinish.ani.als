#PVF_File

[use animation]
	`../Effect/Animation/MachinegunJabEx/FN_Shine.ani`
	`sh`

[use animation]
	`../Effect/Animation/MachinegunJabEx/FN_ShineBack.ani`
	`shb`

[use animation]
	`../Effect/Animation/MachinegunJabEx/FN_Normal.ani`
	`n`

[use animation]
	`../Effect/Animation/MachinegunJabEx/FN_Dodge.ani`
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
