#PVF_File

[use animation]
	`Effect/BlackWaveEx/ex_body_up_dodge.ani`
	`body_up_dodge`

[use animation]
	`Effect/BlackWaveEx/ex_body_down_normal.ani`
	`body_down_normal`

[use animation]
	`Effect/BlackWaveEx/ex_appear_up_dodge.ani`
	`appear_up_dodge`

[use animation]
	`Effect/BlackWaveEx/ex_smog_down_normal.ani`
	`smog_down_normal`

[use animation]
	`Effect/BlackWaveEx/ex_smog_up_dodge.ani`
	`smog_up_dodge`

[use animation]
	`Effect/BlackWaveEx/ex_line_down_normal.ani`
	`line_down_normal`

[use animation]
	`Effect/BlackWaveEx/ex_line_up_dodge.ani`
	`line_up_dodge`

[use animation]
	`Effect/BlackWaveEx/ex_exp_down_normal.ani`
	`exp_down_normal`

[use animation]
	`Effect/BlackWaveEx/ex_exp_up_dodge.ani`
	`exp_up_dodge`

[add]
	0	51
	`body_up_dodge`

[add]
	2	50
	`body_down_normal`

[add]
	5	10
	`appear_up_dodge`

[add]
	6	-10
	`smog_down_normal`

[add]
	6	-10
	`smog_up_dodge`

[create draw only object]
	6
	`line_down_normal`	0	-2	0

[create draw only object]
	6
	`line_up_dodge`	0	-2	0

[add]
	38	15
	`exp_down_normal`

[add]
	38	15
	`exp_up_dodge`

[add]
	39	10
	`smog_down_normal`

[add]
	39	10
	`smog_up_dodge`

[remove]
	37	0
	`line_down_normal`

[remove]
	37	0
	`line_up_dodge`

[remove]
	45	0
	`body_up_dodge`
