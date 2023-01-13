#PVF_File

[use animation]
	`pack_call_eft_000_down.ani`
	`call_eft_000_down`

[use animation]
	`pack_call_eft_000.ani`
	`call_eft_000`

[use animation]
	`pack_call_eft_001.ani`
	`call_eft_001`

[use animation]
	`pack_call_back.ani`
	`pack_call_back`

[none effect add]
	0	-1
	`pack_call_back`

[none effect add]
	10	10001
	`call_eft_001`

[none effect add]
	4	10002
	`call_eft_000`

[none effect add]
	4	10003
	`call_eft_000_down`
