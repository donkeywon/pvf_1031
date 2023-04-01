#PVF_File

[use animation]
	`VSAppear_01.ani`
	`VSAppear_01`

[use animation]
	`WindSpiritVSMoveSmoke_00.ani`
	`WindSpiritVSMoveSmoke_00`

[use animation]
	`WindSpiritVSABody_00.ani`
	`WindSpiritVSABody_00`

[use animation]
	`WindSpiritVSABody_01.ani`
	`WindSpiritVSABody_01`

[use animation]
	`WindSpiritVSABody_03.ani`
	`WindSpiritVSABody_03`

[none effect add]
	4	-1
	`WindSpiritVSABody_03`

[none effect add]
	1	10001
	`WindSpiritVSABody_01`

[none effect add]
	0	10002
	`WindSpiritVSABody_00`

[create draw only object]
	10
	`WindSpiritVSMoveSmoke_00`	0	1	0

[create draw only object]
	0
	`VSAppear_01`	0	1	0
