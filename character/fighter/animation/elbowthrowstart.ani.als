#PVF_File

[use animation]
	`../Effect/Animation/ElbowThrow/START_00_swing_up_d.ani`
	`START_00_swing_up_d`

[use animation]
	`../Effect/Animation/ElbowThrow/START_speed_d.ani`
	`START_speed_d`

[use animation]
	`../Effect/Animation/ElbowThrow/START_00_swing_down_d.ani`
	`START_00_swing_down_d`

[use animation]
	`../Effect/Animation/ElbowThrow/START_dust01.ani`
	`START_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/START_floor00_d.ani`
	`START_floor00_d`

[use animation]
	`../Effect/Animation/ChainDestruction/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_dust01.ani`
	`LOOP_SPIN_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_floor01_d.ani`
	`LOOP_SPIN_floor01_d`

[use animation]
	`../Effect/Animation/ElbowThrow/LOOP_SPIN_spin_dust01.ani`
	`LOOP_SPIN_spin_dust01`

[use animation]
	`../Effect/Animation/ChainDestruction/02_dust.ani`
	`02_dust`

[add]
	0	-3
	`START_floor00_d`

[add]
	0	-2
	`START_dust01`

[add]
	0	-1
	`START_00_swing_down_d`

[add]
	0	10001
	`START_speed_d`

[add]
	0	10002
	`START_00_swing_up_d`

[create draw only object]
	0
	`02_dust`	0	1	0

[create draw only object]
	0
	`LOOP_SPIN_dust01`	0	-2	0

[create draw only object]
	1
	`LOOP_SPIN_floor01_d`	0	-3	0

[create draw only object]
	0
	`LOOP_SPIN_spin_dust01`	0	1	0

[create draw only object]
	0
	`02_dust`	0	1	0
