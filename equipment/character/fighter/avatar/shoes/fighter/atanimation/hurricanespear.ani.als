#PVF_File

[use animation]
	`../Effect/Animation/ATHurricaneSpear/hurricane_back_dodge.ani`
	`hurricane_back_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/hurricane_front_dodge.ani`
	`hurricane_front_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/hurricane_kick_dodge.ani`
	`hurricane_kick_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/finish_kick_dust_normal1.ani`
	`hurricane_kick_dust_normal1`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/finish_kick_dust_normal2.ani`
	`hurricane_kick_dust_normal2`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/finish_kick_back_dodge.ani`
	`finish_kick_back_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/finish_kick_front_dodge.ani`
	`finish_kick_front_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/hit_dot_dodge.ani`
	`hit_dot_dodge`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/sub_dodge1.ani`
	`sub_dodge1`

[use animation]
	`../Effect/Animation/ATHurricaneSpear/sub_dodge2.ani`
	`sub_dodge2`

[none effect add]
	0	-1
	`hurricane_back_dodge`

[none effect add]
	0	10001
	`hurricane_front_dodge`

[none effect add]
	6	10002
	`hurricane_kick_dodge`

[none effect add]
	6	10003
	`hurricane_kick_dust_normal1`

[none effect add]
	6	10004
	`hurricane_kick_dust_normal2`

[create draw only object]
	12
	`finish_kick_back_dodge`	0	-1	0

[create draw only object]
	12
	`finish_kick_front_dodge`	0	-1	0

[create draw only object]
	7
	`hit_dot_dodge`	72	1	80

[create draw only object]
	7
	`sub_dodge1`	72	1	80

[create draw only object]
	7
	`sub_dodge2`	72	1	80
