#PVF_File

[use animation]
	`Success_Loop_FluoreD01.ani`
	`Loop_FluoreD01`

[use animation]
	`Success_Loop_FluoreD02.ani`
	`Loop_FluoreD02`

[use animation]
	`Success_Loop_FluoreN.ani`
	`Loop_FluoreN`

[use animation]
	`Success_Loop_Eff01.ani`
	`Loop_Eff01`

[use animation]
	`Success_Loop_Eff02.ani`
	`Loop_Eff02`

[add]
	2	-2
	`Loop_Eff02`

[add]
	0	-1
	`Loop_Eff01`

[add]
	0	10001
	`Loop_FluoreN`

[add]
	0	10002
	`Loop_FluoreD02`

[add]
	0	10003
	`Loop_FluoreD01`
