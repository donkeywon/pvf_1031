#PVF_File

[use animation]
	`../Effect/Animation/LinkedBlastUp.ani`
	`lbu`

[use animation]
	`../Effect/Animation/LinkedBlastDown.ani`
	`lbd`

[use animation]
	`../Effect/Animation/SlantCutLBKick.ani`
	`sclb`

[create draw only object]
	0
	`lbd`	0	-1	30

[create draw only object]
	0
	`lbu`	0	1	30

[add]
	0	10000
	`sclb`
