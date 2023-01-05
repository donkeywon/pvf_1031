CNAvenger.pushScriptFiles("Character/Priest/avenger_header.nut"); // ���  ��ũ��Ʈ ������ ���� �־�� ���,enum�� ����  
CNAvenger.pushScriptFiles("Character/Priest/avenger_common.nut"); //  �̰��� state�� �������°��� �ƴ� ��� ���� �Լ� �Դϴ�..

CNAvenger.pushScriptFiles("Character/Priest/passive_skill_priest.nut");


CNAvenger.pushState("Character/Priest/Spincutter.nut", "spincutter", STATE_SPINCUTTER, SKILL_SPINCUTTER);
CNAvenger.pushState("Character/Priest/hedgehog.nut", "Hedgehog", STATE_HEDGEHOG, SKILL_HEDGEHOG);
CNAvenger.pushState("Character/Priest/Ripper.nut", "Ripper", STATE_RIPPER, SKILL_RIPPER);
CNAvenger.pushState("Character/Priest/fastmove.nut", "fastmove", STATE_FASTMOVE, SKILL_FASTMOVE); // ����̵�
CNAvenger.pushState("Character/Priest/EarthQuake.nut", "EarthQuake", STATE_EARTHQUAKE, SKILL_EARTH_QUAKE );

CNAvenger.pushState("Character/Priest/Awakening.nut", "Awakening", STATE_AVENGER_AWAKENING, SKILL_AVENGER_AWAKENING); // ���� ���
CNAvenger.pushState("Character/Priest/DashAttack.nut", "DashAttack", STATE_DASH_ATTACK, -1);
CNAvenger.pushState("Character/Priest/AwakenningTurnOff.nut", "AwakenningTurnOff", STATE_AWAKENING_TURN_OFF, -1);

CNAvenger.pushState("Character/Priest/AvengerAttack.nut", "AvengerAttack", STATE_ATTACK, -1); // ��� - ���� (����)
CNAvenger.pushState("Character/Priest/PowerOfDarkness.nut", "PowerOfDarkness", STATE_POWER_OF_DARKNESS, SKILL_POWER_OF_DARKNESS); // ��� - ���� (����)
CNAvenger.pushState("Character/Priest/FallingSoul.nut", "FallingSoul", STATE_FALLING_SOUL, SKILL_FALLING_SOUL); // ��� - ���� (����)

CNAvenger.pushState("Character/Priest/DisasterEx.nut", "DisasterEx", STATE_EX_DISASTER, SKILL_EX_DISASTER); // ��� -EX��ų - ���
CNAvenger.pushState("Character/Priest/PandemoniumEx.nut", "PandemoniumEx", STATE_PANDEMONIUM_EX, SKILL_PANDEMONIUM_EX); // ��� - Ư�� : ������



CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_ripperexplosion.nut", 24102); // ���� �нú�
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_earthquakerock.nut", 24103); // �����ũ �нú�
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_spincutter.nut", 24100); // 24100	`Character/Priest/Spincutter.obj` ����Ŀ�� �нú� ������Ʈ
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_spincutterthrow.nut", 24101); // 24101	24101	`Character/Priest/SpincutterThrow.obj`

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack1.nut", 24104); // 24104	`Character/Priest/DevilStrike1.obj`	// ��� - ������Ʈ����Ŀ ����1
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack2.nut", 24105); // 24105	`Character/Priest/DevilStrike2.obj`	// ��� - ������Ʈ����Ŀ ����2
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack3.nut", 24106); // 24106	`Character/Priest/DevilStrike3.obj`	// ��� - ������Ʈ����Ŀ ����3

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PowerOfDarknessCircle.nut", 24107); // 24107	`Character/Priest/PowerOfDarknessCircle.obj`	// ��� - ����� �Ǵ�
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PowerOfDarknessArrow.nut", 24108); // 24108	`Character/Priest/PowerOfDarknessCircle.obj`	// ��� - ����� �Ǵ� ȭ��

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_disasterExp.nut", 24109); // 24109	`Character/Priest/DisasterExp.obj`	// ��� - ex��ų - �������
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PendemoniumExDevil.nut", 24110); // 24110	`Character/Priest/PowerOfDarknessCircle.obj`	// ��� - ����� �Ǵ� ȭ��


CNAvenger.pushState("Character/Priest/Execution.nut", "Execution", STATE_EXECUTION, SKILL_EXECUTION); // ó��

CNAvenger.pushState("Character/Priest/HighSpeedSlash.nut", "HighSpeedSlash", STATE_HIGH_SPEED_SPLASH, SKILL_HIGH_SPEED_SLASH); // ó��



 


