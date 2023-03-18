#PVF_File

[use animation]
	`../Effect/Animation/ATSuplexCyclone/last_hit_back_dodge.ani`
	`back_dodge`

[use animation]
	`../Effect/Animation/ATSuplexCyclone/last_hit_front_dodge.ani`
	`front_dodge`

[use animation]
	`../Effect/Animation/ATSuplexCyclone/dust_finish_floor.ani`
	`dust_floor`

[use animation]
	`../Effect/Animation/ATSuplexCyclone/dust_finish_foot.ani`
	`dust_foot`

[none effect add]
	1	-10000
	`back_dodge`

[none effect add]
	0	10000
	`front_dodge`

[none effect add]
	0	10001
	`dust_floor`

[none effect add]
	1	-10000
	`dust_foot`
