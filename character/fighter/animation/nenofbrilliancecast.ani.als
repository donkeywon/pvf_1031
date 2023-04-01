#PVF_File

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_energy_3.ani`
	`start_energy_3`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_energy_2.ani`
	`start_energy_2`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_energy_1.ani`
	`start_energy_1`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_heat_red.ani`
	`start_heat_red`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_heat_blue.ani`
	`start_heat_blue`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_elec.ani`
	`start_gathering_elec`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_red.ani`
	`start_gathering_red`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_red_2.ani`
	`start_gathering_red_2`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_blue.ani`
	`start_gathering_blue`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_red_3.ani`
	`start_gathering_red_3`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_gathering_red_4.ani`
	`start_gathering_red_4`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_o.ani`
	`start_o`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_normal.ani`
	`start_normal`

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

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_Magic_Light.ani`
	`start_Magic_Light`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_Magic_elec.ani`
	`start_Magic_elec`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_Magic_Light.ani`
	`start_Magic_Light`

[use animation]
	`../Effect/Animation/NenOfBrilliance/start_Magic_elec.ani`
	`start_Magic_elec`

[add]
	-1	-1
	`start_normal`

[add]
	10	10001
	`start_o`

[add]
	-1	10002
	`start_gathering_red_4`

[add]
	-1	10003
	`start_gathering_red_3`

[add]
	-1	10004
	`start_gathering_blue`

[add]
	-1	10005
	`start_gathering_red_2`

[add]
	-1	10006
	`start_gathering_red`

[add]
	7	10007
	`start_gathering_elec`

[add]
	10	10008
	`start_heat_blue`

[add]
	10	10009
	`start_heat_red`

[add]
	10	10010
	`start_energy_1`

[add]
	10	10011
	`start_energy_2`

[add]
	-1	10012
	`start_energy_3`

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

[create draw only object]
	6
	`start_Magic_Light`	0	-1	0

[create draw only object]
	6
	`start_Magic_elec`	0	-1	0

[create draw only object]
	6
	`start_Magic_Light`	0	-1	0

[create draw only object]
	6
	`start_Magic_elec`	0	-1	0
