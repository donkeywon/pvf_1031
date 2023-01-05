#PVF_File

[use animation]
	`SlashOfBoom_Expl_RingDust.ani`
	`Expl_RingDust`

[use animation]
	`SlashOfBoom_Expl_Glow.ani`
	`Expl_Glow`

[use animation]
	`SlashOfBoom_Expl_BlackDust.ani`
	`Expl_BlackDust`

[use animation]
	`SlashOfBoom_Expl_Expl.ani`
	`Expl_Expl`

[use animation]
	`SlashOfBoom_Expl_BlackExpl.ani`
	`Expl_BlackExpl`

[none effect add]
	0	-3
	`Expl_BlackExpl`

[none effect add]
	0	-2
	`Expl_Expl`

[none effect add]
	0	-1
	`Expl_BlackDust`

[none effect add]
	0	10001
	`Expl_Glow`

[create draw only object]
	0
	`Expl_RingDust`	0	1	0
