#PVF_File

[use animation]
	`../Effect/Animation/ChargeCrashEx/Upper.ani`
	`up`

[use animation]
	`../Effect/Animation/ChargeCrashEx/UpperChargeUp.ani`
	`cu`

[use animation]
	`../Effect/Animation/ChargeCrashEx/UpperDustBack.ani`
	`db`

[use animation]
	`../Effect/Animation/ChargeCrashEx/UpperDustFoward.ani`
	`df`

[add]
	0	9999
	`cu`

[add]
	1	10000
	`up`

[create draw only object]
	1
	`db`	0	-1	0

[create draw only object]
	1
	`df`	0	-1	0
