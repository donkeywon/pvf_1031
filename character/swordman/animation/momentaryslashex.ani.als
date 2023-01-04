#PVF_File

[use animation]
	`../Effect/Animation/MomentarySlashEx/cutBottom.ani`
	`b`

[use animation]
	`../Effect/Animation/MomentarySlashEx/cutUp.ani`
	`u`

[use animation]
	`../Effect/Animation/MomentarySlashEx/charge.ani`
	`charge`

[add]
	1	-9999
	`b`

[add]
	1	9999
	`u`

[add]
	0	10000
	`charge`

[remove]
	1	10000
	`charge`
