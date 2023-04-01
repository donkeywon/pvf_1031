#PVF_File

[use animation]
	`../Effect/Animation/AT108StairsEx/Punch/two_hit_dodge.ani`
	`two_hit`

[use animation]
	`../Effect/Animation/AT108StairsEx/Punch/hit_dodge.ani`
	`hit_dodge`

[none effect add]
	0	10001
	`two_hit`

[create draw only object]
	0
	`hit_dodge`	0	1	0
