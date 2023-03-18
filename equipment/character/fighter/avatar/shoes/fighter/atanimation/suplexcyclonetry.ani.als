#PVF_File

[use animation]
	`../Effect/Animation/ATSuplexCyclone/down_hit_dodge.ani`
	`down_hit`

[use animation]
	`../Effect/Animation/ATSuplexCyclone/dust_normal_foot.ani`
	`dust_foot`

[use animation]
	`../Effect/Animation/ATSuplexCyclone/dust_normal_floor.ani`
	`dust_floor`

[create draw only object]
	5
	`down_hit`	0	1	0

[none effect add]
	0	10001
	`dust_foot`

[none effect add]
	0	10002
	`dust_floor`
