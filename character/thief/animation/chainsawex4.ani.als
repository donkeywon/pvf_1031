#PVF_File

[use animation]
	`../Effect/Animation/ChainSawEx/chopWeapon.ani`
	`cw`

[use animation]
	`../Effect/Animation/ChainSawEx/RollingWeapon.ani`
	`weap`

[use animation]
	`../Effect/Animation/ChainSawEx/chopHitFire.ani`
	`f`

[use animation]
	`../Effect/Animation/ChainSawEx/chopHitBlack.ani`
	`b`

[use animation]
	`../Effect/Animation/ChainSawEx/chopHitEffect.ani`
	`ef`

[add]
	1	10000
	`cw`

[add]
	4	10000
	`ef`

[add]
	4	-10000
	`f`

[add]
	4	-10001
	`b`

[remove]
	5	10000
	`cw`

[remove]
	5	10000
	`ef`

[remove]
	5	-10000
	`f`

[remove]
	5	-10001
	`b`
