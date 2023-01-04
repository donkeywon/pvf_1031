#PVF_File

[use animation]
	`../Effect/Animation/BloodSword/charge_body.ani`
	`b`

[use animation]
	`../Effect/Animation/BloodSword/charge.ani`
	`charge`

[use animation]
	`../Effect/Animation/BloodSword/charge_dodge.ani`
	`charge_dodge`

[use animation]
	`../Effect/Animation/BloodSword/dust.ani`
	`dust`

[add]
	0	10000
	`b`

[add]
	0	10001
	`charge`

[add]
	0	10002
	`charge_dodge`

[create draw only object]
	8
	`dust`	0	1	0
