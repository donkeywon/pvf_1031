#PVF_File

[use animation]
	`../../../../Effect/Animation/AvatarDance/AvatarDance_B_Eff01.ani`
	`B_Eff01`

[use animation]
	`../../../../Effect/Animation/AvatarDance/AvatarDance_B_Back_Eff01.ani`
	`B_Back_Eff01`

[create draw only object]
	1
	`B_Back_Eff01`	0	-1	0

[create draw only object]
	1
	`B_Eff01`	0	1	0

[use animation]
	`../js60qq506807329_weapon_eff/avatardance_b.ani`
	`weapon_eff`

[use animation]
	`../js60qq506807329_weapon/avatardance_b.ani`
	`weapon`

[add]
	0	-1
	`weapon_eff`

[add]
	0	-1
	`weapon`
