#PVF_File

[use animation]
	`../Effect/Animation/SlashOfHell/SlashOfHell_casting_3.ani`
	`SlashOfHell_casting_3`

[use animation]
	`../Effect/Animation/SlashOfHell/SlashOfHell_casting_2.ani`
	`SlashOfHell_casting_2`

[use animation]
	`../Effect/Animation/SlashOfHell/SlashOfHell_casting_4.ani`
	`SlashOfHell_casting_4`

[use animation]
	`../Effect/Animation/SlashOfHell/SlashOfHell_casting_1.ani`
	`SlashOfHell_casting_1`

[none effect add]
	2	10001
	`SlashOfHell_casting_1`

[none effect add]
	0	10002
	`SlashOfHell_casting_4`

[create draw only object]
	3
	`SlashOfHell_casting_2`	0	2	0

[create draw only object]
	3
	`SlashOfHell_casting_3`	0	3	0
