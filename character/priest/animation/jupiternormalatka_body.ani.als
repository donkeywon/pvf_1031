#PVF_File

[use animation]
	`../Effect/Animation/Jupiter/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkA_SlashEff.ani`
	`JupiterNormalAtkA_SlashEff`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkA_Ham_Dodge_Top.ani`
	`JupiterNormalAtkA_Ham_Dodge_Top`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkA_Ham_Normal_Top.ani`
	`JupiterNormalAtkA_Ham_Normal_Top`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkA_Ham_Dodge_Bot.ani`
	`JupiterNormalAtkA_Ham_Dodge_Bot`

[use animation]
	`../Effect/Animation/Jupiter/JupiterNormalAtkA_Ham_Normal_Bot.ani`
	`JupiterNormalAtkA_Ham_Normal_Bot`

[add]
	0	-2
	`JupiterNormalAtkA_Ham_Normal_Bot`

[add]
	0	-1
	`JupiterNormalAtkA_Ham_Dodge_Bot`

[add]
	0	10001
	`JupiterNormalAtkA_Ham_Normal_Top`

[add]
	0	10002
	`JupiterNormalAtkA_Ham_Dodge_Top`

[add]
	4	10003
	`JupiterNormalAtkA_SlashEff`

[create draw only object]
	0
	`02_dust`	0	1	0
