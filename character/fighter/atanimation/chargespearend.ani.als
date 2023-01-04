#PVF_File

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushDustBackNormalEnd.ani`
	`rdbn`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinBackDodgeEnd.ani`
	`rsbd`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinFrontDodgeEnd.ani`
	`rsfd`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushDustFrontNormalEnd.ani`
	`rdfn`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinBackDodgeEndStay.ani`
	`rsbdes`

[use animation]
	`../Effect/Animation/ATChargeSpear/ATRushSpinFrontDodgeEndStay.ani`
	`rdfdes`

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
	1
	`rsbdes`	0	1	0

[create draw only object]
	1
	`rdfdes`	0	1	0
