#PVF_File

[use animation]
	`../Effect/Animation/ATCrashLowKick/charge_dodge.ani`
	`charge`

[use animation]
	`../Effect/Animation/ATCrashLowKick/1kick_dodge.ani`
	`1kick`

[use animation]
	`../Effect/Animation/ATCrashLowKick/1hit_normal.ani`
	`1hit`

[use animation]
	`../Effect/Animation/ATCrashLowKick/1hit_dodge.ani`
	`1hit_d`

[none effect add]
	1	10000
	`charge`

[none effect add]
	7	10001
	`1kick`

[create draw only object]
	8
	`1hit`	0	1	0

[create draw only object]
	8
	`1hit_d`	0	1	0
