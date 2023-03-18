#PVF_File

[use animation]
	`../js60qq506807329_weapon_eff/qcbbody_body.ani`
	`weapon_eff`

[use animation]
	`../js60qq506807329_weapon/qcbbody_body.ani`
	`weapon`

[use animation]
	`../../../../Effect/Animation/QuasarExplosion/QCBBody_Star_00.ani`
	`Star_00`

[use animation]
	`../../../../Effect/Animation/QuasarExplosion/QCBBody_Star_01.ani`
	`Star_01`

[use animation]
	`../../../../Effect/Animation/QuasarExplosion/QCBBody_Star_02.ani`
	`Star_02`

[use animation]
	`../../../../Effect/Animation/QuasarExplosion/QCBBody_SlashEff.ani`
	`SlashEff`

[add]
	0	-1
	`weapon_eff`

[add]
	0	-1
	`weapon`

[none effect add]
	2	10001
	`SlashEff`

[none effect add]
	6	10002
	`Star_02`

[none effect add]
	3	10003
	`Star_01`

[none effect add]
	2	10004
	`Star_00`
