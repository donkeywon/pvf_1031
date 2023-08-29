#PVF_File

[use animation]
	`../../Effect/Animation/RepeatedSmashEx/Effect.ani`
	`e`

[use animation]
	`../../Effect/Animation/RepeatedSmashEx/SwingBodyN.ani`
	`bn`

[use animation]
	`../../Effect/Animation/RepeatedSmashEx/SwingBodyD.ani`
	`wd`

[use animation]
	`../../Effect/Animation/RepeatedSmashEx/dust.ani`
	`dust`

[use animation]
	`../../Effect/Animation/RepeatedSmashEx/Charge.ani`
	`charge`

[add]
	3	10000
	`e`

[add]
	0	10001
	`bn`

[add]
	0	10002
	`wd`

[add]
	0	10003
	`charge`

[create draw only object]
	3
	`dust`	0	0	0

[use animation]
	`jupiterhammerbotnormal/repeatedsmashexfinish.ani`
	`priest_jupiter_1`

[use animation]
	`jupiterhammerbotdodge/repeatedsmashexfinish.ani`
	`priest_jupiter_2`

[use animation]
	`jupiterhammertopnormal/repeatedsmashexfinish.ani`
	`priest_jupiter_3`

[use animation]
	`jupiterhammertopdodge/repeatedsmashexfinish.ani`
	`priest_jupiter_4`

[add]
	0	-2
	`priest_jupiter_1`

[add]
	0	-1
	`priest_jupiter_2`

[add]
	0	2790
	`priest_jupiter_3`

[add]
	0	2791
	`priest_jupiter_4`
