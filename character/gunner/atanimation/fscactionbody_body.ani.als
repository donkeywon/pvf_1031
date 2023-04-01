#PVF_File

[use animation]
	`../Effect/Animation/ATFSC7/FSCActionEffect_00.ani`
	`FSCActionEffect_00`

[use animation]
	`../Effect/Animation/ATFSC7/FSCActionBody_00.ani`
	`FSCActionBody_00`

[use animation]
	`../Effect/Animation/ATFSC7/FSCActionBody_02.ani`
	`FSCActionBody_02`

[none effect add]
	0	-1
	`FSCActionBody_02`

[none effect add]
	3	10001
	`FSCActionBody_00`

[create draw only object]
	8
	`FSCActionEffect_00`	0	0	0
