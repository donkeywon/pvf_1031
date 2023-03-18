#PVF_File

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_SlashEff.ani`
	`SlashEff`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_AddEff_00.ani`
	`AddEff_00`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_HandEff.ani`
	`HandEff`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_BodyEff_01.ani`
	`BodyEff_01`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_Floor2.ani`
	`Floor2`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_Wp_00.ani`
	`Wp_00`

[use animation]
	`../../Effect/Animation/QuasarExplosion/QCABody_Wp_01.ani`
	`Wp_01`

[none effect add]
	9	-3
	`Wp_01`

[none effect add]
	9	-2
	`Wp_00`

[none effect add]
	0	-1
	`Floor2`

[none effect add]
	0	10001
	`BodyEff_01`

[none effect add]
	9	10002
	`HandEff`

[none effect add]
	9	10003
	`AddEff_00`

[none effect add]
	1	10004
	`SlashEff`
