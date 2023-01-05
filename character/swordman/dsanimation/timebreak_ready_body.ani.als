#PVF_File

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_Force1.ani`
	`Ready_Force1`

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_BlackForce.ani`
	`Ready_BlackForce`

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_ManteauFront.ani`
	`Ready_ManteauFront`

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_Glow.ani`
	`Ready_Glow`

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_Force2.ani`
	`Ready_Force2`

[use animation]
	`../Effect/Animation/TimeBreak_DS/TimeBreak_Ready_ManteauBehind.ani`
	`Ready_ManteauBehind`

[none effect add]
	0	-2
	`Ready_ManteauBehind`

[none effect add]
	0	-1
	`Ready_Force2`

[none effect add]
	0	10001
	`Ready_Glow`

[none effect add]
	0	10002
	`Ready_ManteauFront`

[none effect add]
	2	10003
	`Ready_BlackForce`

[none effect add]
	0	10004
	`Ready_Force1`
