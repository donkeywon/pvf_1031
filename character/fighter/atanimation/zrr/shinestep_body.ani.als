#PVF_File

[use animation]
	`../als_ani/ATShineStep/ShineStep_Eff_A.ani`
	`Eff_A`

[use animation]
	`../als_ani/ATShineStep/ShineStep_Eff_B.ani`
	`Eff_B`

[use animation]
	`../als_ani/ATShineStep/ShineStep_start_dust_dodge.ani`
	`start_dust_dodge`

[create draw only object]
	0
	`start_dust_dodge`	0	1	0

[create draw only object]
	1
	`Eff_B`	0	1	0

[create draw only object]
	1
	`Eff_A`	0	1	0
