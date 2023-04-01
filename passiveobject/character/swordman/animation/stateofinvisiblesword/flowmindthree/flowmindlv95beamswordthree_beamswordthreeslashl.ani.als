#PVF_File

[use animation]
	`FlowMindLv95BeamSwordThree_EndParticle.ani`
	`EndParticle`

[use animation]
	`FlowMindLv95BeamSwordThree_FadeBack.ani`
	`FadeBack`

[use animation]
	`FlowMindLv95BeamSwordThree_WeaponFade.ani`
	`WeaponFade`

[use animation]
	`FlowMindLv95BeamSwordThree_BeamSwordThreeSlashN.ani`
	`BeamSwordThreeSlashN`

[none effect add]
	1	-1
	`BeamSwordThreeSlashN`

[none effect add]
	0	10001
	`WeaponFade`

[none effect add]
	7	10002
	`FadeBack`

[none effect add]
	7	10003
	`EndParticle`
