#PVF_File

[use animation]
	`IceFieldLighting.ani`
	`IceFieldLighting`

[use animation]
	`IceFieldDust2.ani`
	`IceFieldDust2`

[use animation]
	`IceFieldDust1.ani`
	`IceFieldDust1`

[use animation]
	`IceFieldDodge1.ani`
	`IceFieldDodge1`

[use animation]
	`IceFieldDisappear1.ani`
	`IceFieldDisappear1`

[none effect add]
	0	10001
	`IceFieldDodge1`

[none effect add]
	0	10002
	`IceFieldDust1`

[none effect add]
	1	10003
	`IceFieldDust2`

[none effect add]
	0	10004
	`IceFieldLighting`

[create draw only object]
	6
	`IceFieldDisappear1`	0	1	0
