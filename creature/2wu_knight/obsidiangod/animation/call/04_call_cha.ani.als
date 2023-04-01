#PVF_File

[use animation]
	`04_call_eff_dodge_f.ani`
	`call_eff_dodge_f`

[use animation]
	`04_call_eff_normal_f.ani`
	`call_eff_normal_f`

[use animation]
	`04_call_eff_dodge_b.ani`
	`call_eff_dodge_b`

[use animation]
	`04_call_eff_normal_b.ani`
	`call_eff_normal_b`

[none effect add]
	8	-2
	`call_eff_normal_b`

[none effect add]
	8	-1
	`call_eff_dodge_b`

[none effect add]
	8	10001
	`call_eff_normal_f`

[none effect add]
	8	10002
	`call_eff_dodge_f`
