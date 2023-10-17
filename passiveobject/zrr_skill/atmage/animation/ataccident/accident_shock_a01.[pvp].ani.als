#PVF_File

[use animation]
	`Accident_Shock_A02.ani`
	`Shock_A02`

[use animation]
	`Accident_Shock_A04.ani`
	`Shock_A04`

[use animation]
	`Accident_Shock_A03.ani`
	`Shock_A03`

[none effect add]
	0	10001
	`Shock_A03`

[none effect add]
	0	10002
	`Shock_A04`

[create draw only object]
	0
	`Shock_A02`	0	0	-1000
