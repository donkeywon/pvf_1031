#PVF_File

[use animation]
	`../Effect/Animation/AirRaidEx/Burn.ani`
	`burn`

[use animation]
	`../Effect/Animation/AirRaidEx/BurnEnd.ani`
	`burnEnd`

[use animation]
	`../Effect/Animation/AirRaidEx/ATDust.ani`
	`smoke`

[add]
	0	10000
	`burn`

[create draw only object]
	0
	`smoke`	0	0	0

[create draw only object]
	1
	`burnEnd`	0	0	0
