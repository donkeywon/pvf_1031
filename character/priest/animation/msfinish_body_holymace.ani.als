#PVF_File

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Top_eff.ani`
	`HolyMaceNormalAtkC_Top_eff`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Mace_Dodge_Top.ani`
	`HolyMaceNormalAtkC_Mace_Dodge_Top`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Mace_Normal_Top.ani`
	`HolyMaceNormalAtkC_Mace_Normal_Top`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Mace_Dodge_Bot.ani`
	`HolyMaceNormalAtkC_Mace_Dodge_Bot`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Mace_Normal_Bot.ani`
	`HolyMaceNormalAtkC_Mace_Normal_Bot`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Floor_B.ani`
	`HolyMaceNormalAtkC_Floor_B`

[use animation]
	`../Effect/Animation/HolyMace/HolyMaceNormalAtkC_Floor_A.ani`
	`HolyMaceNormalAtkC_Floor_A`

[create draw only object]
	4
	`HolyMaceNormalAtkC_Floor_A`	0	-3	0

[create draw only object]
	4
	`HolyMaceNormalAtkC_Floor_B`	0	-4	0

[no apply grobal alpha]
	0	-2
	`HolyMaceNormalAtkC_Mace_Normal_Bot`

[no apply grobal alpha]
	0	-1
	`HolyMaceNormalAtkC_Mace_Dodge_Bot`

[no apply grobal alpha]
	4	10001
	`HolyMaceNormalAtkC_Mace_Normal_Top`

[no apply grobal alpha]
	4	10002
	`HolyMaceNormalAtkC_Mace_Dodge_Top`

[none effect add]
	4	10003
	`HolyMaceNormalAtkC_Top_eff`
