#PVF_File

[use animation]
	`../Effect/Animation/ExcelStrikeHitLB.ani`
	`h3`

[use animation]
	`../Effect/Animation/ExcelStrikeAdd/LBStart.ani`
	`ls`

[use animation]
	`../Effect/Animation/ExcelStrikeAdd/LBHit.ani`
	`lh`

[use animation]
	`../Effect/Animation/LinkedBlastUp.ani`
	`lbu`

[use animation]
	`../Effect/Animation/LinkedBlastDown.ani`
	`lbd`

[use animation]
	`../Effect/Animation/ExcelStrikeHit4Effect.ani`
	`hit4effect`

[create draw only object]
	3
	`lbd`	0	-1	30

[create draw only object]
	3
	`lbu`	0	1	30

[add]
	0	10000
	`ls`

[add]
	4	10000
	`h3`

[create draw only object]
	4
	`lh`	0	1	0

[create draw only object]
	5
	`hit4effect`	0	1	0
