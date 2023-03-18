#PVF_File

[use animation]
	`../Effect/Animation/ATCrazyMount/charge_dodge.ani`
	`charge`

[use animation]
	`../Effect/Animation/ATCrazyMount/attack_hand_dodge.ani`
	`attack_hand`

[use animation]
	`../Effect/Animation/ATCrazyMount/attack_floor_dodge.ani`
	`attack_floor`

[none effect add]
	0	10000
	`charge`

[none effect add]
	0	10000
	`attack_hand`

[create draw only object]
	9
	`attack_floor`	0	1	-1000
