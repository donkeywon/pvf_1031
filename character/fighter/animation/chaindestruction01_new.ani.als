#PVF_File

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction01_ottom_01.ani`
	`ottom_01`

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction01_op_02.ani`
	`op_02`

[use animation]
	`../Effect/Animation/ChainDestruction/New/ChainDestruction01_op_01.ani`
	`op_01`

[create draw only object]
	1
	`op_01`	0	1	0

[create draw only object]
	1
	`op_02`	0	2	0

[create draw only object]
	0
	`ottom_01`	0	1	-1000
