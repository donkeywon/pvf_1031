#PVF_File

[use animation]
	`zweivoltage_crossstart_leaf_a.ani`
	`crossstart_leaf_a`

[use animation]
	`zweivoltage_crossstart_leaf_b.ani`
	`crossstart_leaf_b`

[use animation]
	`zweivoltage_crossstart_leaf_c.ani`
	`crossstart_leaf_c`

[use animation]
	`zweivoltage_crossstart_slash.ani`
	`crossstart_slash`

[use animation]
	`zweivoltage_crossstart_eff_a.ani`
	`crossstart_eff_a`

[use animation]
	`zweivoltage_crossstart_eff_b.ani`
	`crossstart_eff_b`

[add]
	0	-3
	`crossstart_eff_b`

[add]
	0	-2
	`crossstart_eff_a`

[add]
	1	-1
	`crossstart_slash`

[add]
	1	10001
	`crossstart_leaf_c`

[add]
	0	10002
	`crossstart_leaf_b`

[add]
	0	10003
	`crossstart_leaf_a`
