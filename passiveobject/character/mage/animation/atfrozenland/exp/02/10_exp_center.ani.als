#PVF_File

[use animation]
	`09_exp_start.ani`
	`09_exp_start`

[use animation]
	`10_exp_center_1_0.ani`
	`10_exp_center_1_0`

[use animation]
	`10_exp_center_1_0_f.ani`
	`10_exp_center_1_0_f`

[use animation]
	`10_exp_center_1_1.ani`
	`10_exp_center_1_1`

[use animation]
	`10_exp_center_1_1_f.ani`
	`10_exp_center_1_1_f`

[use animation]
	`20_exp_fog_dodge_50_0.ani`
	`20_exp_fog_dodge_50_0`

[use animation]
	`20_exp_fog_dodge_50_1.ani`
	`20_exp_fog_dodge_50_1`

[add]
	0	-1
	`09_exp_start`

[add]
	0	5
	`10_exp_center_1_0`

[add]
	0	10
	`10_exp_center_1_0_f`

[add]
	0	5
	`10_exp_center_1_1`

[add]
	0	10
	`10_exp_center_1_1_f`

[create draw only object]
	0
	`20_exp_fog_dodge_50_0`	0	1	0

[create draw only object]
	0
	`20_exp_fog_dodge_50_1`	0	1	0
