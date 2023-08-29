#PVF_File

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceQuakeArea_HolyMace_Dodge.ani`
	`HolyMace_Dodge`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceQuakeArea_HolyMace_Normal.ani`
	`HolyMace_Normal`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceQuakeArea_Floor_Normal.ani`
	`Floor_Normal`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceQuakeArea_Floor_Dodge.ani`
	`Floor_Dodge`

[create draw only object]
	7
	`Floor_Dodge`	0	-1	0

[create draw only object]
	7
	`Floor_Normal`	0	-2	0

[none effect add]
	1	10001
	`HolyMace_Normal`

[none effect add]
	1	10002
	`HolyMace_Dodge`
