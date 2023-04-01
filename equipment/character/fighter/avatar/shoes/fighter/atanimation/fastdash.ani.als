#PVF_File

[use animation]
	`../Effect/Animation/ATFastDash/fbody_dodge.ani`
	`fbody`

[use animation]
	`../Effect/Animation/ATFastDash/bbody_dodge.ani`
	`bbody`

[use animation]
	`../Effect/Animation/ATFastDash/start_dust_dodge.ani`
	`start_dust`

[none effect add]
	0	10000
	`bbody`

[none effect add]
	0	-10000
	`fbody`

[create draw only object]
	0
	`start_dust`	0	1	0
