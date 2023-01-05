#PVF_File

[use animation]
	`../Effect/Animation/SwordOfMind/attack_dash.ani`
	`dash`

[use animation]
	`../Effect/Animation/SwordOfMind/attack_sword.ani`
	`sword`

[use animation]
	`../Effect/Animation/SwordOfMind/attack_dust_front.ani`
	`dust_front`

[use animation]
	`../Effect/Animation/SwordOfMind/attack_dust_back.ani`
	`dust_back`

[add]
	1	10002
	`sword`

[add]
	1	10003
	`dash`

[create draw only object]
	2
	`dust_back`	0	-1	0

[create draw only object]
	2
	`dust_front`	0	1	0
