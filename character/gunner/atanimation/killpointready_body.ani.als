#PVF_File

[use animation]
	`../Effect/Animation/ATKillPoint/KillPointReady_Eff_A.ani`
	`Eff_A`

[use animation]
	`../Effect/Animation/ATKillPoint/KillPointReady_Eff_B.ani`
	`Eff_B`

[use animation]
	`../Effect/Animation/ATKillPoint/KillPointReady_Eff_C.ani`
	`Eff_C`

[use animation]
	`../Effect/Animation/ATKillPoint/KillPointReady_Chain.ani`
	`Chain`

[none effect add]
	0	10001
	`Chain`

[none effect add]
	5	10002
	`Eff_C`

[none effect add]
	6	10003
	`Eff_B`

[none effect add]
	7	10004
	`Eff_A`
