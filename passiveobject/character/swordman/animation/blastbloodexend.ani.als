#PVF_File

[use animation]
	`BlastBloodEx/end_blood_floor.ani`
	`end_blood_floor`

[use animation]
	`BlastBloodEx/end_blood.ani`
	`end_blood`

[use animation]
	`BlastBloodEx/small_blood_end1.ani`
	`small_end1`

[use animation]
	`BlastBloodEx/small_blood_end2.ani`
	`small_end2`

[use animation]
	`BlastBloodEx/small_blood_end3.ani`
	`small_end3`

[create draw only object]
	0
	`end_blood_floor`	0	0	-1001

[create draw only object]
	0
	`end_blood`	0	0	-1000

[add]
	0	10
	`small_end1`

[add]
	2	10
	`small_end2`

[add]
	3	10
	`small_end3`
