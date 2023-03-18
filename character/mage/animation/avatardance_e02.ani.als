#PVF_File

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E02_Eff03.ani`
	`E02_Eff03`

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E01_bodyEff01.ani`
	`E01_bodyEff01`

[use animation]
	`../Effect/Animation/AvatarDance/AvatarDance_E02_BackEff03.ani`
	`E02_BackEff03`

[create draw only object]
	0
	`E02_BackEff03`	0	-1	0

[none effect add]
	3	10001
	`E01_bodyEff01`

[create draw only object]
	0
	`E02_Eff03`	0	1	0
