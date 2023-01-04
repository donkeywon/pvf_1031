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
	`SilverStreamDummyIllusionDodge.ani`
	`dod`

[add]
	0	10000
	`dod`

[add]
	1	10001
	`me`

[add]
	2	10001
	`he`

[add]
	2	10002
	`she`

[remove]
	2	10001
	`me`

[remove]
	3	10001
	`he`

[add]
	3	10001
	`heVan`
