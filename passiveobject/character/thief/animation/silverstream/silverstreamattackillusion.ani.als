#PVF_File

[use animation]
	`MoveEffect.ani`
	`me`

[use animation]
	`BodyHitEffectLoop.ani`
	`he`

[use animation]
	`SlashHitEffect.ani`
	`she`

[use animation]
	`BodyHitEffectVanish.ani`
	`heVan`

[use animation]
	`SilverStreamAttackIllusionDodge.ani`
	`dod`

[use animation]
	`BlackBall.ani`
	`bb`

[add]
	0	10000
	`dod`

[add]
	1	10001
	`me`

[add]
	3	10001
	`he`

[remove]
	3	10001
	`me`

[add]
	3	10002
	`she`

[create draw only object]
	3
	`bb`	40	-1	60

[remove]
	4	10001
	`he`

[add]
	4	10001
	`heVan`
