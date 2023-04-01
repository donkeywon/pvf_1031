#PVF_File

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E01_Eff01.ani`
	`E01_Eff01`

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E01_bodyEff01.ani`
	`E01_bodyEff01`

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E01_MoveEff01.ani`
	`E01_MoveEff01`

[create draw only object]
	0
	`E01_MoveEff01`	0	-1	0

[none effect add]
	0	10001
	`E01_bodyEff01`

[create draw only object]
	0
	`E01_Eff01`	0	1	0
