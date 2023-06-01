#PVF_File

[use animation]
	`../Effect/Animation/GatlingPunch/OraOra_A_dust.ani`
	`OraOra_A_dust`

[use animation]
	`../Effect/Animation/GatlingPunch/End_Start_HandEffect.ani`
	`End_Start_HandEffect`

[use animation]
	`../Effect/Animation/GatlingPunch/End_Start_NomalRing.ani`
	`End_Start_NomalRing`

[use animation]
	`../Effect/Animation/GatlingPunch/End_C_Hit.ani`
	`End_C_Hit`

[none effect add]
	2	10001
	`End_C_Hit`

[none effect add]
	0	-1
	`End_Start_NomalRing`

[none effect add]
	0	10002
	`End_Start_HandEffect`

[create draw only object]
	0
	`OraOra_A_dust`	0	1	0
