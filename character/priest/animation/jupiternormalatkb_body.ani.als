#PVF_File

[use animation]
	`../Effect/Animation/Jupiter/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkB_SlashEff.ani`
	`JupiterNormalAtkB_SlashEff`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkB_Ham_Dodge_Top.ani`
	`JupiterNormalAtkB_Ham_Dodge_Top`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkB_Ham_Normal_Top.ani`
	`JupiterNormalAtkB_Ham_Normal_Top`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkB_Ham_Dodge_Bot.ani`
	`JupiterNormalAtkB_Ham_Dodge_Bot`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkB_Ham_Normal_Bot.ani`
	`JupiterNormalAtkB_Ham_Normal_Bot`

[add]
	0	-2
	`JupiterNormalAtkB_Ham_Normal_Bot`

[add]
	0	-1
	`JupiterNormalAtkB_Ham_Dodge_Bot`

[add]
	2	10001
	`JupiterNormalAtkB_Ham_Normal_Top`

[add]
	2	10002
	`JupiterNormalAtkB_Ham_Dodge_Top`

[add]
	3	10003
	`JupiterNormalAtkB_SlashEff`

[create draw only object]
	0
	`02_dust`	0	1	0
