#PVF_File

[use animation]
	`../Effect/Animation/ExoticRampant/C_Effect1.ani`
	`C_Effect1`

[use animation]
	`../Effect/Animation/ExoticRampant/A_Effect1.ani`
	`A_Effect1`

[use animation]
	`../Effect/Animation/ExoticRampant/A_Effect2.ani`
	`A_Effect2`

[use animation]
	`../Effect/Animation/ExoticRampant/A_Dust.ani`
	`A_Dust`

[use animation]
	`../Effect/Animation/ExoticRampant/B_Effect1.ani`
	`B_Effect1`

[use animation]
	`../Effect/Animation/ExoticRampant/B_Effect2.ani`
	`B_Effect2`

[use animation]
	`../Effect/Animation/ExoticRampant/B_Dust.ani`
	`B_Dust`

[none effect add]
	8	10001
	`B_Dust`

[none effect add]
	6	10002
	`B_Effect2`

[none effect add]
	6	10003
	`B_Effect1`

[none effect add]
	0	10004
	`A_Dust`

[none effect add]
	0	10005
	`A_Effect2`

[none effect add]
	0	10006
	`A_Effect1`

[create draw only object]
	12
	`C_Effect1`	0	1	0
