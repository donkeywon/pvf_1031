#PVF_File

[use animation]
	`LineStartDodge.ani`
	`sd`

[use animation]
	`LineEffectNormal.ani`
	`en`

[use animation]
	`LineEffectDodge.ani`
	`ed`

[use animation]
	`LineBallDodge.ani`
	`bd`

[use animation]
	`LineStartBlastNormal.ani`
	`sbn`

[use animation]
	`LineStartBlastDodge.ani`
	`sbd`

[use animation]
	`ex_LineStartDodgeEx.ani`
	`ex_line_dodge`

[add]
	0	10
	`sd`

[add]
	0	20
	`sbn`

[add]
	0	19
	`sbd`

[add]
	1	11
	`en`

[add]
	1	12
	`ed`

[add]
	3	13
	`bd`

[add]
	0	20
	`ex_line_dodge`

[remove]
	5	13
	`bd`

[remove]
	5	11
	`en`

[remove]
	5	12
	`ed`

[remove]
	39	20
	`ex_line_dodge`
