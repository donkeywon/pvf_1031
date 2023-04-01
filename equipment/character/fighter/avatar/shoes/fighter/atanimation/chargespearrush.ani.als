#PVF_File

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushEffectBackDodge.ani`
	`rebd`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushDustBackNormal.ani`
	`rdbn`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinBackDodge.ani`
	`rsbd`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinFrontDodge.ani`
	`rsfd`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushDustFrontNormal.ani`
	`rdfn`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushEffectFrontDodge.ani`
	`refd`

[create draw only object]
	0
	`rebd`	0	-1	0

[none effect add]
	0	-11
	`rdbn`

[none effect add]
	0	-10
	`rsbd`

[none effect add]
	0	10001
	`rsfd`

[none effect add]
	0	10002
	`rdfn`

[create draw only object]
	0
	`refd`	0	1	0
