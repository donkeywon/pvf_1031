#PVF_File

[use animation]
	`SmallBoneHandD.ani`
	`ld`

[use animation]
	`SmallBoneHandStart.ani`
	`bottom`

[use animation]
	`SmallBoneHandStartBloodDB.ani`
	`bb`

[use animation]
	`SmallBoneHandStartBloodNU.ani`
	`bu`

[use animation]
	`SmallBoneHandBottom.ani`
	`bhb`

[use animation]
	`SmallBoneHandBottomDodge.ani`
	`bhbd`

[add]
	0	10
	`ld`

[add]
	0	-10
	`bottom`

[add]
	3	11
	`bb`

[add]
	3	12
	`bu`

[add]
	5	-11
	`bhbd`

[add]
	5	-12
	`bhb`

[remove]
	8	0
	`bhbd`

[remove]
	8	0
	`bhb`
