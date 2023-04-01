#PVF_File

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/Floor_00.ani`
	`Floor_00`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/LOOP_SPIN_spin_dust01.ani`
	`LOOP_SPIN_spin_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/02_dust.ani`
	`02_dust`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_01_swing_up_d.ani`
	`START_01_swing_up_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_00_swing_up_d.ani`
	`START_00_swing_up_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_speed_d.ani`
	`START_speed_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_00_swing_down_d.ani`
	`START_00_swing_down_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_dust01.ani`
	`START_dust01`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_floor00_d.ani`
	`START_floor00_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/START_01_swing_down_d.ani`
	`START_01_swing_down_d`

[use animation]
	`../Effect/Animation/ElbowThrow/TrunHeel/Start/LOOP_SPIN_dust01.ani`
	`LOOP_SPIN_dust01`

[create draw only object]
	0
	`LOOP_SPIN_dust01`	0	-2	0

[add]
	2	-4
	`START_01_swing_down_d`

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

[add]
	3	10003
	`START_01_swing_up_d`

[create draw only object]
	0
	`02_dust`	0	1	0

[create draw only object]
	0
	`LOOP_SPIN_spin_dust01`	0	1	0

[create draw only object follow parent]
	2
	`Floor_00`	0	0	-1000
