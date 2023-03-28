#PVF_File

[use animation]
	`03_call_effect_front.ani`
	`call_effect_front`

[use animation]
	`03_call_effect_ram.ani`
	`call_effect_ram`

[use animation]
	`03_call_ram.ani`
	`call_ram`

[use animation]
	`03_call_effect_back.ani`
	`call_effect_back`

[none effect add]
	11	-1
	`call_effect_back`

[none effect add]
	0	10001
	`call_ram`

[none effect add]
	0	10002
	`call_effect_ram`

[none effect add]
	11	10003
	`call_effect_front`
