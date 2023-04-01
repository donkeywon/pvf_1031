#PVF_File

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Dust.ani`
	`Eff_00`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Glow3.ani`
	`Eff_01`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Glow2.ani`
	`Eff_02`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Glow1.ani`
	`Eff_03`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Shock3.ani`
	`Eff_04`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Hand.ani`
	`Eff_05`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Shock2.ani`
	`Eff_06`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Wind.ani`
	`Attack_Wind`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_Shock1.ani`
	`Eff_07`

[use animation]
	`../Effect/Animation/NuclearPunch/NuclearPunch_Attack_ShockBackGlow.ani`
	`Eff_08`

[none effect add]
	0	10001
	`Eff_08`

[create draw only object]
	0
	`Eff_07`	0	2	0

[create draw only object]
	0
	`Attack_Wind`	0	3	0

[create draw only object]
	0
	`Eff_06`	0	4	0

[none effect add]
	0	10005
	`Eff_05`

[create draw only object]
	0
	`Eff_04`	0	6	0

[none effect add]
	0	10007
	`Eff_03`

[none effect add]
	0	10008
	`Eff_02`

[none effect add]
	0	10009
	`Eff_01`

[create draw only object]
	0
	`Eff_00`	0	10	0
