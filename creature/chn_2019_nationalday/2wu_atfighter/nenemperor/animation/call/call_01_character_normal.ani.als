#PVF_File

[use animation]
	`call_00_effect_dodge_down.ani`
	`call_00_effect_dodge_down`

[use animation]
	`call_02_effect_dodge_up.ani`
	`call_02_effect_dodge_up`

[use animation]
	`call_03_effect_normal_top.ani`
	`call_03_effect_normal_top`

[add]
	0	-2
	`call_03_effect_normal_top`

[add]
	0	-1
	`call_02_effect_dodge_up`

[add]
	0	10001
	`call_00_effect_dodge_down`
