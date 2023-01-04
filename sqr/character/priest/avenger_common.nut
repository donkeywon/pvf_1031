
S_FLOW_NORMAL <- 0 // �⺻�������
S_FLOW_PRIEST <- 1 // ������Ʈ ������ ���� �������Ѵ�..
S_FLOW_RETURN <- 2 // 

// Awakening.skl ��ų���� ���̺�
SL_PERFECT_CHANGE_HP <- 0 // (0) ���� ����ü HP 
SL_CHANGE_TIME <- 1 // (1) ���ӽð� 
SL_DEF_INC <- 2 // (2) ��������(+)
SL_ATK_SPD <- 3 // (3) ���ݼӵ�(+)
SL_MOV_SPD <- 4 // (4) �̵��ӵ�(+)
SL_1_HIT_MAGIC_ATK <- 5 // (5) 1Ÿ �������ݷ�(+)
SL_2_HIT_MAGIC_ATK <- 6 // (6) 2Ÿ �������ݷ�(+)
SL_3_HIT_MAGIC_ATK <- 7 // (7) 3Ÿ �������ݷ�(+)
SL_DASH_MAGIC_ATK <- 8 // (8) ��� �������ݷ�(+)
SL_JUMP_MAGIC_ATK <- 9 // (9) C(����) �������ݷ�(+)
SL_JUMP_FULLCHARGE_MAGIC_ATK <- 10 // (10) Ǯ���� C(����) �������ݷ�(+)


// 
// DevilStrike.skl ��ų���� ���̺�
SL_DS_ATTACK1_GAUGE_COMSUME <- 0 // 0.zŰ ������ �Ҹ��
SL_DS_ATTACK2_GAUGE_COMSUME <- 1 // 1.xŰ ������ �Ҹ��
SL_DS_ATTACK3_GAUGE_COMSUME <- 2 // 2.cŰ ������ �Ҹ��
SL_DS_ATTACK1_ATTACK_RATE <- 3 // 3.zŰ ���ݷ�(%)
SL_DS_ATTACK2_ATTACK_RATE <- 4 // 4.xŰ ���ݷ�(%)
SL_DS_ATTACK3_ATTACK_RATE <- 5 // 5.cŰ ���ݷ�(%)


// DevilStrike.skl ��ų���� ���̺�
SL_DS_ATTACK1_GAUGE_COMSUME <- 0 // 0.zŰ ������ �Ҹ��
SL_DS_ATTACK2_GAUGE_COMSUME <- 1 // 1.xŰ ������ �Ҹ��
SL_DS_ATTACK3_GAUGE_COMSUME <- 2 // 2.cŰ ������ �Ҹ��
SL_DS_ATTACK1_ATTACK_RATE <- 3 // 3.zŰ ���ݷ�(%)
SL_DS_ATTACK2_ATTACK_RATE <- 4 // 4.xŰ ���ݷ�(%)
SL_DS_ATTACK3_ATTACK_RATE <- 5 // 5.cŰ ���ݷ�(%)


// ������Ʈ����Ŀ �ε���
DEVILSTRIKE_ATTACK_1 <- 0
DEVILSTRIKE_ATTACK_2 <- 1
DEVILSTRIKE_ATTACK_3 <- 2

// ������Ʈ����Ŀ ������� VECTOR �ε��� 
DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
DS_APEND_GAUGE <- 1 // ���� �Ǹ������� ��ġ
DS_APEND_LAST_GAUGE <- 2 // ���� �Ǹ������� ��ġ
DS_APEND_ADD_FLAG <- 3 // using state ������Ʈ����Ŀ�� ��ų �ѹ��� �ѹ��� ������ �Ǳ� ������ üũ�÷��׸� �����־��դ���..
DS_APEND_BEFORE_ADD <- 4 // �ٷ� �� 


// ��� ������� ���� üũ
function isAvengerAwakenning(obj)
{
	if(!obj) return false;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
	
	if(appendage) {
		// ���� �븮�� �÷��׷� �� ����Դϴ�.. �� �̷����� �Ƴĸ�.. 
		// ����� state_stand���¿����� ���������� �Ǿ�� �մϴ� 
		// �׷��� valid�� false�� �ȴٰ� �ؼ� ���� �������� �ƴٰ� �����ؼ��� �ȵ˴ϴ� ��������� �����س� ��� �� ����� ���� ����Ұ� ���Ƽ� �Դϴ�.. 
		// �� ���̴� ���� �����ϱ�
		local isvalid = appendage.sq_var.get_vector(I_AVENGER_AWAKENING_VALID);
		if(isvalid) {
			return true;
		}
	}
	
	return false;	
}

function isGrowTypeAvenger(obj) // �Ķ���ͷ� �Ѱ��� ��ü�� ������Ʈ-������� üũ�ϴ� �Լ��Դϴ�..
{
	if(!obj) return false;
	
	if(sq_getJob(obj) == ENUM_CHARACTERJOB_PRIEST && sq_getGrowType(obj) == GROW_TYPE_AVENGER) return true; // ����� �ƴ϶�� ���� �׷��� �ʿ� �����̴ϴ�..
	
	return false;
}

// ������Ʈ����Ŀ�� ���µ� ������ state���� üũ
function isExecutableStateDevilStrike(obj)
{
	if(!obj) return false;
	
	if(isAvengerAwakenning(obj)) return false;
	
	local skill = sq_GetSkill(obj, SKILL_DEVILSTRIKE);
	
	local bEnable = false;
	
	if(skill) {
		local state = obj.getState();
		bEnable = skill.isExcutableState(state);
		
		//print("isExecutableStateDevilStrike:" + bEnable + " state:" + state);
		
		if(bEnable) {
			if(state == STATE_THROW) { // ������ skill �߿� state_throw�� �����ϴ� ��� ��ų�� �ִµ� �̰Ϳ� ���ؼ��� �������� üũ�Ѵ�..
				 if(obj.getThrowIndex() != SKILL_GRASP_HAND_OF_ANGER && obj.getThrowIndex() != SKILL_CHANGE_HP_TO_MP) {
					bEnable = false;
				 }
			}			
		}
		
		local var_devil = obj.getVar("devilStrike");
		
		if(bEnable) {
			
			local before_state = var_devil.get_vector(1); // 0���� ��Ÿ�� 1���� �� state
			if(state == before_state) {
				//var_devil.set_vector(2, 1); // 2���ε��� �÷��״� ���� ������Ʈ����ũ 
			}
			else {
				var_devil.set_vector(2, 0); // 2���ε��� �÷��״� ���� ������Ʈ����ũ 
				var_devil.set_vector(1, state);
			}
		}
		else {
			var_devil.set_vector(2, 0); // 2�� �ε��� �÷��״� ���� ������Ʈ����ũ 
			var_devil.set_vector(1, state);
		}
	}
	
	
	return bEnable;
}


// ������Ʈ����Ŀ�� �Ǹ��Һ��� ���մϴ�..
function getDevilStrikeConsumeValue(obj, attack_index)
{
	if(!obj) return 999999; // obj�� ���̶��.. �ϴ� �Һ��� ��û���� �ҷ��� ������..
	
	local level = sq_GetSkillLevel(obj, SKILL_DEVILSTRIKE);
	local consumeValue = sq_GetLevelData(obj, SKILL_DEVILSTRIKE, SL_DS_ATTACK1_GAUGE_COMSUME + attack_index, level);	
	
	return consumeValue;
}


// ��� ������Ʈ����Ŀ ���� �������� üũ
function isInDevilStrike(obj)
{
	if(!obj) return false;
	
	local level = sq_GetSkillLevel(obj, SKILL_DEVILSTRIKE);
	
	if(level <= 0) return false;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(appendage) {
		if(appendage.isValid() && level > 0) {
			if(!isExecutableStateDevilStrike(obj)) return false; // ������Ʈ����Ŀ�� ���µ� ������ state���� üũ
			
			return true;
		}
	}
	
	return false;	
}


// ��� - ������Ʈ����Ŀ ��ų�� ���� �ִ��� üũ�մϴ�..
function isInDevilStrikeSkill(obj)
{
	if(!obj) return false;
	
	local level = sq_GetSkillLevel(obj, SKILL_DEVILSTRIKE);
	
	if(level <= 0) return false;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	
	
	if(appendage) {
		if(appendage.isValid() && level > 0) {
			return true;
		}
	}
	
	return false;	
}

// ����� ���� ���߿� �ٴ���Ʈ�� ���� �� ���������� ��������� �̷�����°��� �������� �̹� �����Ǿ����� üũ�ϴ� �Լ� �Դϴ�..
// ���ڴ� state_throw���� �б�Ǵ� �κе� �ֱ� ������ skl������ staticindex�� ���غ��ϴ�..
function IsAddDevilGauge(obj, staticIndex)
{
	if(!obj) return false;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������	
	
	local use_index = -1;
	
	if(appendage) {
		use_index = appendage.sq_var.get_vector(DS_APEND_ADD_FLAG);
	}
	//print("IsAddDevilGauge:" + use_index);
	
	if(use_index >= 0) { // -1�̰ų�
		return true;
	}
	
	return false;
}



// ���� �����ִ� �Ǹ��������� ��û�ϴ� ������Ʈ����Ŀ �ε����� �Ǹ������� �Ҹ𷮰� 
// ���ؼ� ����� �����ִٸ� return true�� �մϴ�.. 

function IsEnableDevilStrike(obj, index)
{
	if(!obj) return false; 
	
	if(!isInDevilStrike(obj)) return false;
	
	//SL_DS_ATTACK1_GAUGE_COMSUME <- 0 // 0.zŰ ������ �Ҹ��
	//SL_DS_ATTACK2_GAUGE_COMSUME <- 1 // 1.xŰ ������ �Ҹ��
	//SL_DS_ATTACK3_GAUGE_COMSUME <- 2 // 2.cŰ ������ �Ҹ��
	//SL_DS_ATTACK1_ATTACK_RATE <- 3 // 3.zŰ ���ݷ�(%)
	//SL_DS_ATTACK2_ATTACK_RATE <- 4 // 4.xŰ ���ݷ�(%)
	//SL_DS_ATTACK3_ATTACK_RATE <- 5 // 5.cŰ ���ݷ�(%)
	//
	//
	//// ������Ʈ����Ŀ �ε���
	//DEVILSTRIKE_ATTACK_1 <- 0
	//DEVILSTRIKE_ATTACK_2 <- 1
	//DEVILSTRIKE_ATTACK_3 <- 2
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(!appendage) return false;

	if(appendage.sq_var.size_vector() > 1) {
		//iKeyList[0] = E_ATTACK_COMMAND;
		//iKeyList[1] = E_JUMP_COMMAND;
		//iKeyList[2] = E_SKILL_COMMAND;
		local leve_column = 0;
		
		if(index == 0) { // attack (x)
			leve_column = 1;
		}
		else if(index == 1) { // jump (c)
			leve_column = 2;
		}
		else if(index == 2) { // skill (z)
			leve_column = 0;
		}
		
		local consumeValue = getDevilStrikeConsumeValue(obj, leve_column);
		
		//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
		//DS_APEND_GAUGE <- 1 // ���� �Ǹ������� ��ġ
		
		local devil_gauge = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 0
		
		if(devil_gauge >= consumeValue) return true;
		else {
			//obj.startCantUseSkillWarning();
			if (obj.isMessage()) {
				sq_AddMessage(29002); // 29002>�Ǹ��������� �����մϴ�.
			}
			return false;
		}
		
	}
	
	
	return false;
}

// ��Ÿ���� ���� �۵������� Ÿ���� �����ϴ� �Լ�. 
function getLoadSkillEnableTime(obj, skillIndex, intDataIndex)
{
	if(!obj) return 0;
	
	local skill = sq_GetSkill(obj, skillIndex);
	local level = sq_GetSkillLevel(obj, skillIndex);
	local enableTime = 0;

	if (skill == null)
		return enableTime;

	enableTime = obj.sq_getIntData(skillIndex, intDataIndex);
	
	//print("enableTime:" + enableTime);

	return enableTime;
	//return obj.sq_GetObjectWorldTime(obj).Get() + enableTime;
}



// �� ������Ʈ����Ŀ ��ų�� �� �� �ִ� ������� ���캻��.. �����ִ� �Ǹ������� ��ġ�� üũ�غ���..
// �� ��ġ�� ���յǴ� ��ų�� �ִٸ� �� ��ų�� ���εǾ� �ִ� Ű�� sq_SetKeyxEnable�� ���� �� �ִ� ���·� ���� �Ŀ� 

function isEnterDevilStrike(obj, commandIndex, devil_index)
{
	if(!obj) return false;
	
	local bEnable = false;
	
	
	local beforeCommandEnable = sq_GetKeyxEnable(obj, commandIndex);
	
	sq_SetKeyxEnable(obj, commandIndex, true);
	

	local bCommand = sq_IsEnterCommand(obj, commandIndex);
	
	//print("bCommand:" + bCommand + " commandIndex:" + commandIndex + " getstate:" +  obj.getState());

	if(bCommand) {
		bEnable = IsEnableDevilStrike(obj, devil_index); // ������ �Ҹ� üũ�ؼ� ��������		
	}	
	//sq_SetKeyxEnable(obj, commandIndex, beforeCommandEnable);
	//}	
	
	return bEnable;
}


// �Ǹ����������� ���ɴϴ�..
function getDevilGauge(obj)
{
	if(!obj) return 0;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	local v = 0;
	
	if(!appendage) return 0;
	
	if(appendage.sq_var.size_vector() > 1) {
		//appendage.sq_var.set_vector(500);
		v = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 1
	}
	
	return v;
}

function getDevilMaxGaugeValue(obj)
{
	if(!obj) return 0;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(!appendage) return 0;
	
	local v = 0;
	if(appendage.sq_var.size_vector() > 1) {
		v = appendage.sq_var.get_vector(DS_APEND_MAX_GAUGE); // gauge index 0
	}
	
	return v;
}


// �Ǹ��������� �����մϴ�..
function setDevilGauge(obj, value)
{
	if(!obj) return 0;
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(!appendage) return 0;
	
	if(appendage.sq_var.size_vector() > 1) {
		appendage.sq_var.set_vector(DS_APEND_GAUGE, value); // gauge index 0
	}
}

// �Ǹ������� �Һ��� �Ѱ��ָ� �˾Ƽ� ����ݴϴ�..
function consumeDevilGauge(obj, consumeValue)
{
	if(!obj) return;
	
	local devil_value = getDevilGauge(obj);	
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(appendage) {
		//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
		//DS_APEND_GAUGE <- 1 // ���� �Ǹ������� ��ġ
		//DS_APEND_LAST_GAUGE <- 2 // ���� �Ǹ������� ��ġ
	
		appendage.sq_var.set_vector(DS_APEND_LAST_GAUGE, devil_value); // ���� ��������ġ�� �����Ѵ�..
		
		appendage.getTimer().Reset();
		appendage.getTimer().Start(0,0);
	}
	
	local value = devil_value - consumeValue;
	
	if(value < 0)
		value = 0;
		
	setDevilGauge(obj, value);
}

// �����нú� : �Ǹ�(48����)
// 1. ���� ���� ���� ������ ���ݷ��� ������
// 2. ���� ��Ʈ����Ŀ�� �Ǹ� ������ ���·� ����.
// �����нú� �Ǹ��� ���� �ִ��� üũ�ϰ� ���� �ִٸ� �Ǹ� ������ ���·��� �������Ѽ� �����մϴ�..
function getDSGConvertbyNightmare(obj, addValue) // get DevilStrikeGauge Convert by Nightmare
{
	if(!obj) return 0;
	
	local level = sq_GetSkillLevel(obj, SKILL_NIGHTMARE);
	
	local gauge_bonus = sq_GetLevelData(obj, SKILL_NIGHTMARE, 0, level); // 0�� �ε��� Į�� ���������ʽ�(+)
	
	if(gauge_bonus < 0)
		gauge_bonus = 0;
		
	local value = addValue + gauge_bonus;
	
	return value;
}


// �Ǹ��������� �����մϴ�..
function addDevilGauge(obj, addValue)
{
	if(!obj) return;
	
	local devil_value = getDevilGauge(obj);
	
	// �����нú� �Ǹ��� ���� �ִ��� üũ�ϰ� ���� �ִٸ� �Ǹ� ������ ���·��� �������Ѽ� �����մϴ�..
	local result_addValue =	getDSGConvertbyNightmare(obj, addValue);

	local add = result_addValue - addValue;
	//print("addValue:" + addValue + " add:" + add + " result_addValue:" + result_addValue);
	
	local value = devil_value + result_addValue;
	
	local  maxValue = getDevilMaxGaugeValue(obj);
	if(value >= maxValue)
		value = maxValue;
		
		
	setDevilGauge(obj, value);

}



// ����� �⺻ state�� nut���Ϸ� ���ԵǾ� ���� ��Ȳ�϶� ���� ��� state_attack�̶����..
// �̰��� ����� STATE_ATTACK�� �ִ��� ��Ȳ�� ���� CNPriest::setState ������ ������ �Ϸ��� ���� �����δ� ����� ����.. �ֳĸ� onSetState�� irdcharacter�� �����Ƿ�
// �ٽ� �Ųٷ� ���ư��� ������ ���� �� ���� �׷��� ������ �������� üũ�غ��� �׷��ٸ�.. state_attack���� ������ �ƴ϶��.. priest:: �� ������ ������ �ٲپ���Ѵ�..
// �̰��� �� ���ϰ��̴�..

function isPriestFlow(obj, state)
{
	if(!obj) return true;
 // �̰����� true�� �����ϸ� irdcharacter:: ������ ���°��� �ƴ϶� cnpriest ������ ���� �˴ϴ�..
	if(!isGrowTypeAvenger(obj)) // ����� �ƴ� ��� ������ flowpriest��
		return true;
		
	if(isAvengerAwakenning(obj) == true) { // �������Ż��¶��..
		if(state == STATE_DASH_ATTACK) {
			return false;
		}
	}
	
	if(isAvengerAwakenning(obj) == false) {
		//if(state == STATE_ATTACK)
		//	return false;
			
		return true;
	}
	
	
	return false;
}

function flushCommandEnable_Avenger(obj)
{
	if(!obj) return S_FLOW_NORMAL;
	
	if(!obj.isInBattle()) {
		sq_SetAllCommandEnable(obj, false); // �������϶� ��� ��ų�� ����� �� �����ϴ�.
		return S_FLOW_RETURN;
	 }
	
	if(isAvengerAwakenning(obj) == true) { // ���� ���Ż��¶�� �ٸ� ��ų�� ���� ��Ȱ��ȭ ���Ѿ� �Ѵ�..�� ���� ���ſ��� ���� ��ų�� ���� �̸��׸�..�ܵδ� ?
		// ó����ų�� ���� Ȱ��ȭ��Ų��..
		if(obj.isMyControlObject())
			sq_SetAllCommandEnable(obj, false); // ��� state�� �ݾƳ��´�..
			
		local skill = sq_GetSkill(obj, SKILL_EXECUTION);		
		if(skill) {
			if(obj.getState() != STATE_AVENGER_AWAKENING) // ���ŵ����� �ƴϾ���մϴ�.. 
			{
				// ó���������� �Ҹ𷮺��� ���� ���� Ȱ��ȭ�ǵ��� �մϴ�..
				local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
				
				if(appendage) {
					local skillLevel = sq_GetSkillLevel(obj, SKILL_EXECUTION);
					local consumeValue = sq_GetLevelData(obj, SKILL_EXECUTION, 7, skillLevel);
					
					//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
					//DS_APEND_GAUGE <- 1 // ���� ��
					local devil_gauge = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 0
					
					if(devil_gauge >= consumeValue) {		
						skill.setCommandEnable(true); 
					}
				}
			}
		}
		
		skill = sq_GetSkill(obj, SKILL_EX_DISASTER);
		
		if(skill) {
			skill.setCommandEnable(true); 
		}
		
		skill = sq_GetSkill(obj, SKILL_PANDEMONIUM_EX);
		
		if(skill) {
			skill.setCommandEnable(true); 
		}
		
		return S_FLOW_RETURN;
	}
	
	return S_FLOW_NORMAL;
}

function setState_Avenger(obj, state, datas, isResetTimer)
{
	if(!obj) return S_FLOW_PRIEST;
	if(!isGrowTypeAvenger(obj)) return S_FLOW_PRIEST;
	
	// ������Ʈ����Ŀ ������ų �÷��� ��
	if(isInDevilStrikeSkill(obj)) {	
		if(state != obj.getState() || state == STATE_ATTACK) { // ���� state�� �޶�� ���� ������������ ������ �� �ִ°��Դϴ�..		
			local staticIndex = getStaticDataIndexDevilGauge(obj, -1, state); 
			
			
			// ���� ĳ������ state�� üũ�Ͽ� ���ϵǴ°��� -1�� �ƴ϶�� ����������Ѵٴ� �ǹ��Դϴ�..
			if(staticIndex != -1) { // 
				local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������			
				if(appendage) {
					//if(appendage.sq_var.get_vector(DS_APEND_ADD_FLAG) == -1) 
					//-2�� �����ؾ� ���� �������� ������ų �� �ֵ����Ѵ�..�ֳĸ�.. ���� state�� ��� ��û�ϴ� ��찡 �ֱ⶧����..
						//print("\n setState_Avenger:" + obj.getState() + " DS_APEND_ADD_FLAG: staticIndex " + staticIndex);
						appendage.sq_var.set_vector(DS_APEND_ADD_FLAG, staticIndex); // ���� ��Ű�� üũ�÷��׸� ŵ�ϴ�..
				}
			}
		}
	}
	
	if(state == STATE_THROW)
	{
		if(obj.getThrowIndex() == SKILL_CHANGE_HP_TO_MP && obj.getThrowState() == 0) {
			local level = sq_GetSkillLevel(obj, SKILL_CHANGE_HP_TO_MP);
			local gaugeUpValue = sq_GetLevelData(obj, SKILL_CHANGE_HP_TO_MP, 2, level);
			addDevilGauge(obj,gaugeUpValue);
		}
	}

	
	
	if(isPriestFlow(obj, state) == true) {
		return S_FLOW_PRIEST;
	}
	else {
		if(isAvengerAwakenning(obj) == true) {
		}
	}
	
	return S_FLOW_NORMAL;
}



function isRidingToObject_Avenger(obj)
{
	if(!obj) return -1;
	
	if(isAvengerAwakenning(obj) == true) { // �ҽ���������� �����ߴµ� Ż���� Ÿ�� �ȵ�¡..
		//print("isRidingToObject_Avenger");
		return -1;
	}
	
	return 1;
	
}

// �̰��� �������̵� �ϴ� ������ ������Ʈ-���:�ҽ�����𿡼� ������ư�� ������ �� ������ �������ϹǷ�
// ���߿� ����state ��û�ϴ°��� ��ŷ�ϱ� �����Դϴ�..
// �⺻ flow�� avenger_common.nut ���� addSetStatePacket_Avenger ���ϰ��� -1�̶�� IRDCollisionObject::addSetStatePacket�� ȣ������ �ʽ��ϴ�. 

function addSetStatePacket_Avenger(obj, state, datas)
{
	if(!obj)
		return -1;		
	
	
	if(state == STATE_JUMP_ATTACK) {
		//print("\n STATE_JUMP_ATTACK" + " now_state:" + obj.sq_GetSTATE());
	}
	
	if(!obj.isMyControlObject())
		return -1;
	
	if(isAvengerAwakenning(obj) == true) {
		if(state == STATE_JUMP) {
			if(obj.getState() == STATE_DASH || obj.getState() == STATE_STAND) {
			   local var_awakening = obj.getVar("awakening");
			   local t = var_awakening.get_ct_vector(0).Get();	

			   if(var_awakening.get_ct_vector(0).Get() > var_awakening.get_vector(0)) { // ��ü ��Ÿ�� üũ
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(3); // substate����
					obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
			   }
			   else { // ��Ÿ���� �� �ƴ�..
					obj.startCantUseSkillWarning();
					if (obj.isMessage()) //
					{
						sq_AddMessage(414); // 414>��Ÿ���Դϴ�.
					}
			   }
			}
			else {
				obj.sq_addSetStatePacket(STATE_SIT, STATE_PRIORITY_USER, false);
			}
			return -1;
		}
		else if(state == STATE_DIE) {
			local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
		
			if(appendage) {
				appendage.setValid(false);
				appendage.sq_var.set_vector(I_AVENGER_AWAKENING_VALID, 0);
				obj.setObjectHeight(-1);
			}
			
			return -1;
		}
		
		if(state == STATE_THROW) {
			//print("STATE_THROW");
			return -1;
		}
	}
	
	return 1;
}

function isEnableBackStepState_Avenger(obj)
{
	if(!obj) return false;
	
	if(isAvengerAwakenning(obj) == true) {
		return false; // �ҽ������ ���¿����� �齺���� ���Ƴ����մϴ�..
	}
	
	
	//print("isEnableBackStepState");
	
	return obj.sq_isEnableBackStepState();
}

function getDefaultAttackInfo_Avenger(obj, index)
{
	local atk = null;
	if(isAvengerAwakenning(obj) == true) { // ���� ���Ż��¶�� �ٸ� ��ų�� ���� ��Ȱ��ȭ ���Ѿ� �Ѵ�..�� ���� ���ſ��� ���� ��ų�� ���� �̸��׸�..�ܵδ� ?
	  atk = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACKINFO_AW_ATTACK1 + index);	  
	}
	else {
	  if(isInDevilStrikeSkill(obj)) {
		atk = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACKINFO_AVENGER_ATTACK_1 + index);
	  }
	}
	
	return atk;
}


// �Ķ���ͷ� �Ѱ��� Ű �ε�����, ���ݹ���� �������� üũ�Ͽ� ����ϸ� �нú������Ʈ�� ����� ����մϴ�..
function procEnterDevilStrike(obj, keyIndex, attackIndex)
{
	if(!obj) return;
	
	local bEnable = isEnterDevilStrike(obj, keyIndex, attackIndex);
	
	if(bEnable) {					
		// �Ǹ��������� ����ش�..
		if(obj.isMyControlObject()) {
			local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
			
			if(appendage) {			
					
					//if (obj.getWorldTimer().Get() >= obj.getVar("devilStrike").get_vector(0)) {
					local var_devil = obj.getVar("devilStrike");
					
					local t = var_devil.get_ct_vector(0).Get();
					
					//print("get_ct_vector:" + t + "  get_vector(0):" + var_devil.get_vector(0));
					
					if(var_devil.get_ct_vector(0).Get() > var_devil.get_vector(0)) { // ��ü ��Ÿ�� üũ
						local leve_column = 0;
		
						if(attackIndex == 0) { // attack (x)
							leve_column = 1;
						}
						else if(attackIndex == 1) { // jump (c)
							leve_column = 2;
						}
						else if(attackIndex == 2) { // skill (z)
							leve_column = 0;
						}

						local consumeV = getDevilStrikeConsumeValue(obj, leve_column);
						consumeDevilGauge(obj, consumeV);


						// xŰ�� ��� 
						// ���� state������ �߻��ϴ� ��� �����ε����� �÷��ش�..
						local resultAttackIndex = attackIndex;
						
						if(keyIndex == E_ATTACK_COMMAND) {
							resultAttackIndex = obj.getVar("devilStrike").get_vector(2); // 2���ε��� �÷��״� ���� ������Ʈ����ũ 
							//print("resultAttackIndex:" + resultAttackIndex);
							local Index = resultAttackIndex;
							Index = Index + 1;
							if(Index > 2)
								Index = 0;
							
							obj.getVar("devilStrike").set_vector(2, Index);
						}
					
						if(resultAttackIndex == 0) { // attack (x)
							leve_column = 1;
						}
						else if(resultAttackIndex == 1) { // jump (c)
							leve_column = 2;
						}
						else if(resultAttackIndex == 2) { // skill (z)
							leve_column = 0;
						}
						
						// ���� ���ݹߵ�
						local level = sq_GetSkillLevel(obj, SKILL_DEVILSTRIKE);
						
						//iKeyList[0] = E_ATTACK_COMMAND;
						//iKeyList[1] = E_JUMP_COMMAND;
						//iKeyList[2] = E_SKILL_COMMAND;
						
						//local firstAttackRate = obj.sq_getBonusRateWithPassive(SKILL_DEVILSTRIKE, state, 0, 1.0);
						
						// ������Ʈ����Ŀ�� ���ݷ�(%)
						//local attack_bonus_rate = sq_GetLevelData(obj, SKILL_DEVILSTRIKE, SL_DS_ATTACK1_ATTACK_RATE + leve_column, level);
						local devilSkill = sq_GetSkill(obj, SKILL_DEVILSTRIKE);
						local attack_bonus_rate = sq_GetAttackBonusRate(devilSkill, SL_DS_ATTACK1_ATTACK_RATE + leve_column, 1.0);
						
						//print("\n devilstrike attack_rate:" + attack_bonus_rate + " resultAttackIndex:" + leve_column);
						
						obj.sq_binaryData_startWrite();
						obj.sq_binaryData_writeDword(attack_bonus_rate); // ������Ʈ����Ŀ�� ���ݷ�(%)
						
						obj.sq_p00_sendCreatePassiveObjectPacket(24104 + resultAttackIndex, 0, 0, 1, 0);
						
						// ��Ÿ�� ����
						var_devil.get_ct_vector(0).Reset();
						var_devil.get_ct_vector(0).Start(0,0);
						
						local cooltime = getLoadSkillEnableTime(obj, SKILL_DEVILSTRIKE, SI_DS_COOLTIME); // ����Ʈ ��Ÿ��
						var_devil.set_vector(0, cooltime);
				   }
				   else { // ��Ÿ���� �� �ƴ�..
						//obj.startCantUseSkillWarning();
						if (obj.isMessage()) //
						{
							sq_AddMessage(29001); // 29001>���� ��Ʈ����Ŀ ��Ÿ���Դϴ�.
							
						}
				   }
				//
			}
		}
		
		// ���⼭ ���� ���ΰ��� ����Ʈ�� �޶����°��̴�..��ο����ٰ� ������� ȿ��
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_DEVILSTRIKE, true, "Appendage/Character/ap_avenger_effect.nut", true);
		
	}
}

//sq_GetCustomAttackInfo

function procAppend_Avenger(obj)
{
	if(!obj) return S_FLOW_PRIEST;
	
	// �Ϲ� ����� ���
	// �̰����� ������Ʈ����Ŀ �нú� ��ų�� �ִ��� üũ�غ���..
	if(isInDevilStrike(obj)) { // ������Ʈ����Ŀ �нú꽺ų�� �ߵ��Ǿ� �ִٸ�..		
		// �� ������Ʈ����Ŀ ��ų�� �� �� �ִ� ������� ���캻��.. �����ִ� �Ǹ������� ��ġ�� üũ�غ���..
		// �� ��ġ�� ���յǴ� ��ų�� �ִٸ� �� ��ų�� ���εǾ� �ִ� Ű�� sq_SetKeyxEnable�� ���� �� �ִ� ���·� ���� �Ŀ� 
		// 
		
		// ������Ʈ����Ŀ�� �� �� �ִ� ��Ȳ�̶��.. 
		// 1. ������Ʈ����Ŀ �нú� ��ų�� �����Ͽ�����
		// 2. ������Ʈ����Ŀ�� �ߵ��� �� �ִ� state�������� �� ������ ����� �Ǹ�..���� Ű üũ�� �غ���..
		if(isInDevilStrike(obj)) { 
		
			if(obj.getState() == STATE_ATTACK || obj.getState() == STATE_DASH_ATTACK) {
				// ��Ÿ��� CŰ üũ�մϴ�..
				procEnterDevilStrike(obj, E_JUMP_COMMAND, DEVILSTRIKE_ATTACK_2);
			}
			else {			
				local size = 3;
				local iKeyList =[];
				iKeyList.resize(size);
				
				iKeyList[0] = E_ATTACK_COMMAND;
				iKeyList[1] = E_JUMP_COMMAND;
				iKeyList[2] = E_SKILL_COMMAND;			
				
				for(local i=0;i<size;i+=1) {
					// �Ķ���ͷ� �Ѱ��� Ű �ε�����, ���ݹ���� �������� üũ�Ͽ� ����ϸ� �нú������Ʈ�� ����� ����մϴ�..
					local devilstrikeAttackIndex = i;
					procEnterDevilStrike(obj, iKeyList[i], devilstrikeAttackIndex);
				}
			}
		}
		//24104	`Character/Priest/DevilStrike1.obj`	// ��� - ������Ʈ����Ŀ ����1
		//24105	`Character/Priest/DevilStrike2.obj`	// ��� - ������Ʈ����Ŀ ����2
		//24106	`Character/Priest/DevilStrike3.obj`	// ��� - ������Ʈ����Ŀ ����3
	}


	if(isPriestFlow(obj, obj.getState()) == true) {
		return S_FLOW_PRIEST;
	}


	if(obj.isMyControlObject()) {
		if(isAvengerAwakenning(obj) == true) {		
			local state = obj.getState();
			if(state == STATE_STAND) {		 
				local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
			
				if(appendage) {
					//if(appendage.isValid() && appendage.isEnd()) {
					//if(appendage.sq_var.get_vector(I_AVENGER_AWAKENING_VALID) && appendage.isEnd()) {
					if(appendage.sq_var.get_vector(I_AVENGER_AWAKENING_VALID) && appendage.isEnd()) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(0); // substate����
						obj.sq_addSetStatePacket(STATE_AWAKENING_TURN_OFF, STATE_PRIORITY_IGNORE_FORCE, true);
						return S_FLOW_RETURN;
					}
				}
			}
			
			if(state == STATE_STAND || state == STATE_DASH) {
				if(obj.sq_IsEnterSkill(SKILL_BACK_STEP) != -1) {
				   local var_awakening = obj.getVar("awakening");
				   local t = var_awakening.get_ct_vector(0).Get();	

				   if(var_awakening.get_ct_vector(0).Get() > var_awakening.get_vector(0)) { // ��ü ��Ÿ�� üũ
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(3); // substate����
						obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
				   }
				   else { // ��Ÿ���� �� �ƴ�..
						obj.startCantUseSkillWarning();
						if (obj.isMessage()) //
						{
							sq_AddMessage(414); // 414>��Ÿ���Դϴ�.
						}
				   }
				}
			}
		}
	}
	
	return S_FLOW_NORMAL;
}

function drawAppend_Avenger(obj, isOver, x, y)
{
	if(!obj) return S_FLOW_PRIEST;
	
	if(isPriestFlow(obj, obj.getState()) == true) {
		return S_FLOW_PRIEST;
	}
	
	return S_FLOW_NORMAL;
}

function prepareDraw_Avenger(obj)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == true) { // isPriestFlow ���ϰ��� true���.. ������ �ƴϰ� �������� ������ ������Ʈ flow�� ������ �Ѵ�..
		return S_FLOW_NORMAL;
	}
	
	return S_FLOW_PRIEST;
}

function getStayAni_Avenger(obj)
{
	if(!obj) return null;
	
	local sq_var = obj.getVar();
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = sq_var.GetAnimationMap("Stay", "Character/Priest/Animation/AvengerAwakening/Stay.ani");		
	}
	else {
		ani = obj.sq_getStayAni();
	}
	
	return ani;
}

function getAttackAni_Avenger(obj, index)
{
	if(!obj) return null;
	
	local sq_var = obj.getVar();
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		if(index == 0) {
			ani = sq_var.GetAnimationMap("Attack1", "Character/Priest/Animation/AvengerAwakening/Attack1.ani");
		}
		else if(index == 1) {
			ani = sq_var.GetAnimationMap("Attack2", "Character/Priest/Animation/AvengerAwakening/Attack2.ani");
		}
		else if(index == 2) {
			ani = sq_var.GetAnimationMap("Attack3", "Character/Priest/Animation/AvengerAwakening/Attack3.ani");
		}
		else if(index == 3) {
			ani = sq_var.GetAnimationMap("Attack4", "Character/Priest/Animation/AvengerAwakening/Attack4.ani");
		}
		else if(index == 4) {
			ani = sq_var.GetAnimationMap("Attack5", "Character/Priest/Animation/AvengerAwakening/Attack5.ani");
		}
	}
	else {
		if(isInDevilStrikeSkill(obj)) { // ��� - ������Ʈ����Ŀ ��ų�� ���� ������ ��Ÿ�� �ٲ�ϴ�..
			//print("getAttackAni_Avenger");
			if(index == 3) { // ��� - ��Ÿ�� ���� ������ ���� 2������ �ִϸ��̼��� �ٲ�� ������ ���ϸ� ȿ���� �ٸ���..
				// ���ڰ� - ����
				// ������ ��
				if(obj.getWeaponSubType() == WEAPON_SUBTYPE_CROSS || obj.getWeaponSubType() == WEAPON_SUBTYPE_ROSARY) {
					ani = obj.sq_getCustomAni(CUSTOM_ANI_AVENGER_ATTACK_4_ROSARY);
				}
				else {
					ani = obj.sq_getCustomAni(CUSTOM_ANI_AVENGER_ATTACK_4_SCYTHE);
				}
			}
			else
				ani = obj.sq_getCustomAni(CUSTOM_ANI_AVENGER_ATTACK_1 + index);
			
		}
		else {
			//print("obj.sq_getAttackAni");
			ani = obj.sq_getAttackAni(index);
		}
	}
	
	return ani;
}


function getMoveAni_Avenger(obj)
{
	if(!obj) return null;
	
	local sq_var = obj.getVar();
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = sq_var.GetAnimationMap("Move", "Character/Priest/Animation/AvengerAwakening/Move.ani");
	}
	else {
		ani = obj.sq_getMoveAni();
	}
	
	return ani;
}

function getSitAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		local sq_var = obj.getVar();
		ani = sq_var.GetAnimationMap("Sit", "Character/Priest/Animation/AvengerAwakening/Sit.ani"); 
		
	}
	else {
		ani = obj.sq_getSitAni();
	}	
	
	return ani;
}

function getDamageAni_Avenger(obj, index)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getDamageAni(index);
	}
	
	
	return ani;
}

function getDownAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getDownAni();
	}
	
	
	//local ani = obj.sq_getDownAni();
	
	return ani;
}

function getOverturnAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getOverturnAni();
	}
	
	return ani;
}

function getJumpAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		local sq_var = obj.getVar();
		ani = sq_var.GetAnimationMap("Sit", "Character/Priest/Animation/AvengerAwakening/Sit.ani"); 
	}
	else {
		ani = obj.sq_getJumpAni();
	}
	
	return ani;
}

function getJumpAttackAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	//if(isAvengerAwakenning(obj) == true) { // ��� ���������
		//ani = null;
	//}
	//else {
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		print("\n warning \n ");
		print("\n warning \n ");
		print("\n warning \n ");
		print("\n warning \n ");
		print("\n warning \n ");
		print("\n warning \n ");
		print("\n warning \n ");
		print("(isAvengerAwakenning(obj) == true) getJumpAttackAni_Avenger");
	
	}
	
	ani = obj.sq_getJumpAttackAni();
	//}
	
	//local ani = obj.sq_getJumpAttackAni();
	
	return ani;
}

function getRestAni_Avenger(obj)
{
	if(!obj) return null;
	
	local sq_var = obj.getVar();
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		//ani = null;
		ani = sq_var.GetAnimationMap("Stay", "Character/Priest/Animation/AvengerAwakening/Stay.ani");
	}
	else {
		ani = obj.sq_getRestAni();
	}
	
//	local ani = obj.sq_getRestAni();
	
	return ani;
}

function getThrowChargeAni_Avenger(obj, index)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getThrowChargeAni(index);
	}
	
	//local ani = obj.sq_getThrowChargeAni(index);
	
	return ani;
}

function getThrowShootAni_Avenger(obj, index)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getThrowShootAni(index);
	}
	
	//local ani = obj.sq_getThrowShootAni(index);
	
	return ani;
}

function getDashAni_Avenger(obj)
{
	if(!obj) return null;
	
	local sq_var = obj.getVar();
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = sq_var.GetAnimationMap("Dash", "Character/Priest/Animation/AvengerAwakening/Dash.ani");
	}
	else {
		ani = obj.sq_getDashAni();
	}
	
	//local ani = obj.sq_getDashAni();
	
	return ani;
}

function getAttackCancelStartFrame_Avenger(obj, index)
{
	if(!obj) return null;
	
	local frm = 0;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		if(index == 0) {
			frm = 4; // ���� ������..������ 3�̻󿡼� ����
		}
		else if(index == 1) {
			frm = 2; // ���� ������..������ 3�̻󿡼� ����
		}
		else if(index == 2) {
			frm = 8; // ������ ������ 10������ �̻󿡼� ����
		}
	}
	else {
		if(isInDevilStrikeSkill(obj)) { // ��� - ������Ʈ����Ŀ ��ų�� ���� ������ ��Ÿ�� �ٲ�ϴ�..
			if(index == 0) {
				frm = 2; // ���� ������..������ 2�̻󿡼� ����
			}
			else if(index == 1) {
				frm = 3; // ���� ������..������ 3�̻󿡼� ����
			}
			else if(index == 2) {
				frm = 5; // ������ ������ 5������ �̻󿡼� ����
			}
		}
		else
			frm = obj.sq_getAttackCancelStartFrame(index);
	}	
	
	return frm;
}


function getAttackCancelStartFrameSize_Avenger(obj)
{
	if(!obj) return null;
	
	local frmSize = 0;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		//frmSize = 3; // �⺻������ ��� ���� ������ 4����..
		frmSize = 2; // �⺻������ ��� ���� ������ 4����..
	}
	else {
		if(isInDevilStrikeSkill(obj)) { // ����� ��� ��Ÿ�� �����
			frmSize = 3; // ����� �⺻������ 4�� �Դϴ�..
		}
		else
			frmSize = obj.sq_getAttackCancelStartFrameSize();
	}
	
	return frmSize;
}


function getDashAttackAni_Avenger(obj)
{
	if(!obj) return null;

	local ani = null;
	local sq_var = obj.getVar();
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = sq_var.GetAnimationMap("DashAttack", "Character/Priest/Animation/AvengerAwakening/DashAttack.ani");
	}
	else {
		ani = obj.sq_getDashAttackAni();
	}

	//local ani = obj.sq_getDashAttackAni();
	
	return ani;
}

function getGetItemAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		local sq_var = obj.getVar();
		ani = sq_var.GetAnimationMap("GetItem", "Character/Priest/Animation/AvengerAwakening/GetItem.ani"); 
	}
	else {
		ani = obj.sq_getGetItemAni();
	}
	
	//local ani = obj.sq_getGetItemAni();
	
	return ani;
}

function getBuffAni_Avenger(obj)
{
	if(!obj) return null;
	
	local ani = null;
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		ani = null;
	}
	else {
		ani = obj.sq_getBuffAni();
	}
	
	//local ani = obj.sq_getBuffAni();
	
	return ani;
}


function getJumpAttackInfo_Avenger(obj)
{
	if(!obj) return null;
	local atk = obj.sq_getJumpAttackInfo();
	
	return atk;
}


function getDashAttackInfo_Avenger(obj)
{
	if(!obj) return null;
		
	local atk = null;
	
	// �����нú� : �Ǹ�(48����)
	// 1. ���� ���� ���� ������ ���ݷ��� ������
	// 2. ���� ��Ʈ����Ŀ�� �Ǹ� ������ ���·� ����.
	// �����нú� �Ǹ��� ���� �ִ��� üũ�ϰ� ���� �ִٸ� �Ǹ� ������ ���·��� �������Ѽ� �����մϴ�..
	
	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		atk = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACKINFO_AW_DASHATTACK);
		
		local state = obj.sq_GetSTATE();
	    local power = obj.sq_getBonusRateWithPassive(SKILL_AVENGER_AWAKENING, state, SL_DASH_MAGIC_ATK,1.0);
	    obj.sq_setCurrentAttackBonusRate(power);
	    
		//sq_setAttackPowerWithPassive
	}
	
	return atk;
}

function getJumpUpStartFrame_Avenger(obj)
{
	if(!obj) return null;
	local index = obj.sq_getJumpUpStartFrame();
	
	return index;
}

function getJumpDownStartFrame_Avenger(obj)
{
	if(!obj) return null;
	local index = obj.sq_getJumpDownStartFrame();
	
	return index;
}

function getJumpLandStartFrame_Avenger(obj)
{
	if(!obj) return null;
	local index = obj.sq_getJumpLandStartFrame();
	
	return index;
}


// �����̵� ������ ������ 
function getDashAttackSlideStopFrame_Avenger(obj)
{
	if(!obj) return null;
	local index = -1;

	if(isAvengerAwakenning(obj) == true) { // ��� ���������
		index = 15;
	}
	else {
		index = obj.sq_getDashAttackSlideStopFrame();
	}
	
	return index;
}

function drawDevilStrikeGauge(obj)
{
	if(!obj) return;
	
	// ������Ʈ����Ŀ ������ �׸���
	local level = sq_GetSkillLevel(obj, SKILL_DEVILSTRIKE);
	
	if(level <= 0) return; // ������Ʈ����Ŀ�� �нú꽺ų�� ���ٸ� �� �׷��� �ʿ�����̴ϴ�.. �׷����� ������ �𸣰�����..
	
	local sq_var = obj.getVar();
	
	local gaugebar_normal_base = sq_var.GetAnimationMap("4_gaugebar_normal_base", "Character/Priest/Effect/Animation/DevilStrike/gauge/4_gaugebar_normal_base.ani");
	local gaugebar_normal_flash = sq_var.GetAnimationMap("4_gaugebar_normal_flash", "Character/Priest/Effect/Animation/DevilStrike/gauge/4_gaugebar_normal_flash.ani");
	local gaugebar_normal_max = sq_var.GetAnimationMap("4_gaugebar_normal_max", "Character/Priest/Effect/Animation/DevilStrike/gauge/4_gaugebar_normal_max.ani");
	
	local gauge_normal_bar = sq_var.GetAnimationMap("5_gauge_normal_bar", "Character/Priest/Effect/Animation/DevilStrike/gauge/5_gauge_normal_bar.ani");
	local gauge_normal_flash = sq_var.GetAnimationMap("5_gauge_normal_flash", "Character/Priest/Effect/Animation/DevilStrike/gauge/5_gauge_normal_flash.ani");
	local gauge_normal_max = sq_var.GetAnimationMap("5_gauge_normal_max", "Character/Priest/Effect/Animation/DevilStrike/gauge/5_gauge_normal_max.ani");
	local gauge_normal_max_f = sq_var.GetAnimationMap("5_gauge_normal_max_f", "Character/Priest/Effect/Animation/DevilStrike/gauge/5_gauge_normal_max_f.ani");

	local x = 105;
	local y = 525;
	
	local line_buff_num = 9;


	if(sq_getMyBuffInfoCount() > line_buff_num) { // 2���϶� ���� �ø���..	
		local line_offset = 20;
		local line_num = sq_getMyBuffInfoCount() / line_buff_num; // �������������� ���ΰ���
		
		y = y - (line_offset * line_num);
	}

	
	
	///////////////////////////////////////
	// ������ �� �� �׸���
	sq_AnimationProc(gaugebar_normal_base);
	sq_drawCurrentFrame(gaugebar_normal_base, x, y, false);
	///////////////////////////////////////
	
	local gaugeValue = getDevilGauge(obj);
	local max_gaugeValue = getDevilMaxGaugeValue(obj);
	local rate = gaugeValue.tofloat() / max_gaugeValue.tofloat();
	
	// ������ ��
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(appendage) {
		local lastValue = appendage.sq_var.get_vector(2); // ���� ������ 
		
		//print("lastValue:" + lastValue + " gaugeValue:" + gaugeValue);
		
		local CURRENT_HIT_WHITE_FLASH_TIME = 500;
		
		if(lastValue == max_gaugeValue) { // �ִ��ġ�� ������ �������� ���ٸ�..������� 
			CURRENT_HIT_WHITE_FLASH_TIME = 600;
		}
		
		if(lastValue > gaugeValue) { //������ �������� ���� ������ ���� ���ٸ�.. ������� ���ľ��Ѵ�..
			//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
			
			local time = appendage.getTimer().Get();

			local whitetrans = sq_GetUniformVelocity(255, 0, time, CURRENT_HIT_WHITE_FLASH_TIME);
			local lv = sq_GetUniformVelocity(lastValue, gaugeValue, time, CURRENT_HIT_WHITE_FLASH_TIME);
			
			local flahbar_rate = lv.tofloat() / max_gaugeValue.tofloat();
			
			if(lastValue == max_gaugeValue) { // �ִ��ġ�� ������ �������� ���ٸ�..������� 
				if(time < 200) { // ����������� ���̵��� 200 tick���Ͽ����� ���⼭ �����ع����ϴ�..
					sq_AnimationProc(gauge_normal_flash);
					gauge_normal_flash.setImageRate(flahbar_rate, 1.0);
					
					local rgb = sq_RGB(255,255,255);
					local alpha = sq_ALPHA(whitetrans);
					
					sq_drawCurrentFrameEffect_SIMPLE(gauge_normal_flash, x, y, rgb, alpha);
					
					// ��� �������ٵ� �׷��ش�..
					sq_AnimationProc(gaugebar_normal_max);
					sq_drawCurrentFrame(gaugebar_normal_max, x, y, false);
					return;
				}
			}
			
			//print("flahbar_rate:" + flahbar_rate);
			// ������ �׸���
			sq_AnimationProc(gauge_normal_flash);
			gauge_normal_flash.setImageRate(flahbar_rate, 1.0);
			
			local rgb = sq_RGB(255,255,255);
			local alpha = sq_ALPHA(whitetrans);
			
			sq_drawCurrentFrameEffect_SIMPLE(gauge_normal_flash, x, y, rgb, alpha);			
			
			// ������ ȿ�� ��
			if(lv == gaugeValue) {
				appendage.sq_var.set_vector(2, gaugeValue);
			}
		}
		
	}
	
	// �Ϲ� �������� �׸��µ� �ƽ��� �� �ٸ��� �׷�����մϴ�..
	if(gaugeValue == max_gaugeValue) {
		// �Ϲ� ������ �׸���
		sq_AnimationProc(gauge_normal_max);	
		gauge_normal_max.setImageRate(rate, 1.0);	
		sq_drawCurrentFrame(gauge_normal_max, x, y, false);
		//
		
		// �ƽ�ġ �������ٵ� �׷��ش�..
		sq_AnimationProc(gaugebar_normal_flash);
		sq_drawCurrentFrame(gaugebar_normal_flash, x, y, false);
		//
		
		
		local max_gauge_offset_x = 150;
		// �ƽ�ġ �������ٵ� �׷��ش�..
		local size = 8;
		local maxResWidth = 20;		
		local lineMoveLen = (max_gauge_offset_x + (maxResWidth * 2)); // �Ѷ��� �����̴� �Ÿ�

		local time = (appendage.getTimer().Get() / 20) % lineMoveLen;
		
		//print("x:" + x + " y:" + y);
		local xPos = x;
		local yPos = y - 10;
		setClip(xPos, yPos, xPos + max_gauge_offset_x + 16, yPos + 20);
		
		for(local i=0;i<size;i+=1) {
			// �ƽ�ġ �������ٵ� �׷��ش�..
			sq_AnimationProc(gauge_normal_max_f);
			
			//local x1 = max_gauge_offset_x + maxResWidth + (i * 25) - time;
			local x1 = max_gauge_offset_x + maxResWidth + (i * 25) - time;
			local x2 = -maxResWidth + (i * 25) - time;
			
			sq_drawCurrentFrame(gauge_normal_max_f, x + x1, y, false);
			
			sq_drawCurrentFrame(gauge_normal_max_f, x + x2, y, false);
			//
		}
		//		
		releaseClip();
	}
	else {	
		// �Ϲ� ������ �׸���
		sq_AnimationProc(gauge_normal_bar);	
		gauge_normal_bar.setImageRate(rate, 1.0);	
		sq_drawCurrentFrame(gauge_normal_bar, x, y, false);
		//
	}
	
	// ���� ���
	local mouseX = sq_GetMouseXPos();
	local mouseY = sq_GetMouseYPos();
	
	local tipX = x - 20;
	local tipY = y - 15;
	local tipEndX = tipX + 195;
	local tipEndY = tipY + 20;
	if(mouseX > tipX && mouseY > tipY && mouseX < tipEndX && mouseY < tipEndY) {
		sq_drawToolTip(x - 35, y - 13, sq_RGB(255,255,255), 0, 1, 29003, 0, 260, true);
	}
	
}

// ����� drawcustomui �κ��Դϴ�.. ��ǥ������ ������Ʈ����Ŀ �������� �׸����� ��������ϴ�..
function drawCustomUI_Avenger(obj)
{
	if(!obj) return;
	//if(obj.sq_isMyCharacter()) // ���� ĳ���Ͱ� �ƴ϶�� �̰��� �׷��� �ʿ� �����̴ϴ�..
	//if(sq_getMyCharacter() != obj) {
	//	return;
	//}
	
	
	if(!obj.sq_isMyCharacter()) {
		//print("!obj.sq_isMyCharacter()");
		return;
	}	
		
		
	if(!isGrowTypeAvenger(obj)) return; // ����� �ƴ϶�� ���� �׷��� �ʿ� �����̴ϴ�..
	
	
	
	// ������Ʈ����Ŀ ������ �׸���
	drawDevilStrikeGauge(obj);
}




function getStaticDataIndexDevilGauge(obj, passiveobjectIndex, newState) { // ������Ʈ state ���� ���� ������ DevilStrike.skl ����ƽ����Ÿ �ε����� ���ؿɴϴ�..
	if(!obj) return -1;
	
	local state = obj.getState();
	local staticIndex = -1;
	if(newState != -1) {
		state = newState;
	}
	
	
	if(state == STATE_THROW) { // ������ skill �߿� state_throw�� �����ϴ� ��� ��ų�� �ִµ� �̰Ϳ� ���ؼ��� �������� üũ�Ѵ�..
			//print("\n state == STATE_THROW:" + obj.getThrowIndex());
		 if(obj.getThrowIndex() == SKILL_GRASP_HAND_OF_ANGER) { //GraspHandOfAnger // (�г��� ������)
			staticIndex = SI_DS_GRASP_HANDOFANGER;
		 }
		 else if(obj.getThrowIndex() == SKILL_CHANGE_HP_TO_MP) { // ChangeHpToMp (������ ��)
			staticIndex = SI_DS_CHANGE_HPTOMP;
		 }
		 else if(obj.getThrowIndex() == SKILL_SLOW_HEAL) { // SKILL_SLOW_HEAL
			//SI_DS_SLOW_HEAL <- 20 // ���ο���
			staticIndex = SI_DS_SLOW_HEAL;
		 }
		 else if(obj.getThrowIndex() == SKILL_STRIKING) { // SKILL_STRIKING
                //SKILL_STRIKING,						/// ��Ʈ����ŷ
				//SI_DS_STRIKING <- 22 // ��Ʈ����ŷ
			staticIndex = SI_DS_STRIKING;
		 }
		 else if(obj.getThrowIndex() == SKILL_CURE) { // SKILL_CURE
				//SKILL_CURE,							/// ť�� - ��Ƽ����
				//SI_DS_CURE <- 23 // ť��
			staticIndex = SI_DS_CURE;
		 }
		 else if(obj.getThrowIndex() == SKILL_BLESS) { // SKILL_BLESS
				//SKILL_BLESS,						/// ���� - ���ν���
				//SI_DS_BLESS <- 25 // ������ �ູ
			staticIndex = SI_DS_BLESS;
		 }
		 else if(obj.getThrowIndex() == SKILL_RISING_AREA) { // SKILL_RISING_AREA
				//SKILL_RISING_AREA
				//SI_DS_RISING_AREA <- 27 // ��õ��
			staticIndex = SI_DS_RISING_AREA;
		 }				
	}
	else if(state == STATE_ATTACK) {
		if(isAvengerAwakenning(obj)) {
			if(obj.getAttackIndex() == 3) {
				staticIndex = SI_DS_DG_JUMP_ATTACK;
			}
			else {
				staticIndex = SI_DS_DG_ATTACK;
			}
		}
		else {
			staticIndex = SI_DS_ATTACK;
		}
	}
	else if(state == STATE_JUMP_ATTACK) {
		staticIndex = SI_DS_JUMP_ATTACK;
	}
	else if(state == STATE_DASH_ATTACK) {
		if(isAvengerAwakenning(obj)) {
			staticIndex = SI_DS_DG_DASH_ATTACK;
		}
		else {
			staticIndex = SI_DS_DASH_ATTACK;
		}
	}
	else if(state == STATE_HIGH_SPEED_SPLASH) {
		staticIndex = SI_DS_HIGH_SPEED_SLASH;
	}
	else if(state == STATE_EARTHQUAKE || passiveobjectIndex == 24103) { //24103	`Character/Priest/EarthQuakeRock.obj`
		staticIndex = SI_DS_EARTH_QUAKE;
	}
	else if(state == STATE_SPINCUTTER) {
		staticIndex = SI_DS_SPINCUTTER;
	}
	else if(state == STATE_HEDGEHOG) {
		staticIndex = SI_DS_HEDGEHOG;
	}
	else if(state == STATE_FASTMOVE) {
		staticIndex = SI_DS_FASTMOVE;
	}
	else if(state == STATE_EXECUTION) {
		staticIndex = SI_DS_EXECUTION;
	}
	else if(state == STATE_RIPPER) {
		staticIndex = SI_DS_RIPPER;
	}
	else if(state == STATE_POWER_OF_DARKNESS) {
		staticIndex = SI_DS_DARK;
	}
	else if(state == STATE_ANTIAIR_UPPER) {
//SI_DS_ANTIAIR_UPPER <- 18 // ����Ÿ
		staticIndex = SI_DS_ANTIAIR_UPPER;
	}
	else if(state == STATE_SMASHER) {
//SI_DS_SMASHER <- 19// ���ż�
		staticIndex = SI_DS_SMASHER;
	}
	else if(state == STATE_LUCKY_STRAIGHT) {
//SI_DS_LUCKY_STRAIGHT <- 21 // ��Ű ��Ʈ����Ʈ
		staticIndex = SI_DS_LUCKY_STRAIGHT;
	}
	else if(state == STATE_SECOND_UPPER) {
	// STATE_SECOND_UPPER <- 30 		  //  ���������
//SI_DS_SKILL_SECOND_UPPER <- 24 // ���������
		staticIndex = SI_DS_SKILL_SECOND_UPPER;
	}
	else if(state == STATE_LUCKY_STRAIGHT) {
//SI_DS_LUCKY_STRAIGHT <- 21 // ��Ű ��Ʈ����Ʈ
		staticIndex = SI_DS_LUCKY_STRAIGHT;
	}
	else if(state == STATE_QUAKE_AREA) {
	// STATE_QUAKE_AREA <- 26 		  //  ������
//SI_DS_QUAKE_AREA <- 26 // ������
		staticIndex = SI_DS_QUAKE_AREA;
	}
	else if(state == STATE_EX_DISASTER) {
	// STATE_EX_DISASTER <- 74 		  //  ex��ų - ���
		staticIndex = SI_DS_DISASTER;
	}
	else if(state == STATE_PANDEMONIUM_EX) {
	// STATE_PANDEMONIUM_EX <- 73 		  //  ex��ų - ������
		staticIndex = SI_DS_PANDEMONI;
	}
	
		//
	
	//print("\n staticIndex:" + staticIndex);
	return staticIndex;

}

// ��� state�� üũ�Ͽ� ������ �ʿ��� ���¶�� �Ǹ��������� ���������ݴϴ�..
// �нú������Ʈ �ε����� �߰��� ������ ���ΰ� state�� �̹� �ٸ����·� �������� �� �ڴʰ� �������� ���� ���� ó���ϱ� ���ؼ� �Դϴ�..
function procDevilStrikeGauge(obj, passiveobjectIndex) 
{
	if(!obj) return;
	
	local staticIndex = getStaticDataIndexDevilGauge(obj, passiveobjectIndex, -1); 
	//local passive_attack_staticIndex = getStaticDataIndexDevilGauge(obj, passiveobjectIndex); 
	
	// ���� ĳ������ state�� üũ�Ͽ� ���ϵǴ°��� -1�� �ƴ϶�� ����������Ѵٴ� �ǹ��Դϴ�..
	//print("procDevilStrikeGauge:" + staticIndex);
	if(staticIndex != -1) { // 
		if(!IsAddDevilGauge(obj, staticIndex)) {
			//print(" \n IsAddDevilGauge(obj, staticIndex) == false");
		 return; // �����÷��׸� üũ�ؼ� -1�� ���ϵǸ� FALSE�� �����ϴµ� �̷��� �����ؼ��� �ȵ˴ϴ�..
		 }
		
		//print("addDevilGauge staticIndex :" + staticIndex);
		local addValue = sq_GetIntData(obj, SKILL_DEVILSTRIKE, staticIndex);
		//print("addValue:" + addValue + " maxValue:" +  getDevilMaxGaugeValue(obj));
		 addDevilGauge(obj, addValue); // �Ǹ��������� �� state���� �°� �����մϴ�
		 		 
		//obj.getVar("devilStrike").set_vector(0, -1); // ������ ������..���� �����׸�~
		// �� ����� ���ؼ��� ���� ���̻� �����ϸ� �ȵǱ� ������ �÷��׸� -1������ ����
		local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������			
		
		if(appendage) {
			//print("appendage.sq_var.set_vector(DS_APEND_ADD_FLAG, -1);");
			appendage.sq_var.set_vector(DS_APEND_ADD_FLAG, -1);
		}
		
	}
}

// ��� attack���� �ݹ��Լ��� �Դϴ�..
function onBeforeAttack_Avenger(obj, damager, bounding_box, is_stuck)
{
	
	return 1;
}

function onAttack_Avenger(obj, damager, bounding_box, is_stuck)
{
	if(!obj) return -1;
	//print(" onAttack_Avenger" + isGrowTypeAvenger(obj));
	
	if(!isGrowTypeAvenger(obj)) return -1; // ����� �ƴ϶�� ���� �׷��� �ʿ� �����̴ϴ�..	
	
	procDevilStrikeGauge(obj, -1); // ��� state�� üũ�Ͽ� ������ �ʿ��� ���¶�� �Ǹ��������� ���������ݴϴ�..
	
	return 1;
}

function onAfterAttack_Avenger(obj, damager, bounding_box, is_stuck)
{
	return 1;
}


function onAfterAttack_PassiveObject(passiveobj, damager, bounding_box, is_stuck)
{
	return 1;
}


function setEnableCancelSkill_Avenger(obj, isEnable)
{
	if(!obj) return false;
	
	if(!isGrowTypeAvenger(obj)) return false; // ����� �ƴ϶�� ������Ʈ�� ���� �̵��ϵ���
	
	
	if(!obj.isMyControlObject()) return false;


	if(!isEnable) {
		return true;
	}
	
	// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
	//if(sq_isPVPMode())
	{	
		//127 `Priest/CancelFastmove.skl` // ĵ�� ����̵�
		obj.setSkillCommandEnable(SKILL_FASTMOVE, isEnable);		
		//128 `Priest/CancelHighSpeedSlash.skl` // ĵ�� ��Ӻ���
		obj.setSkillCommandEnable(SKILL_HIGH_SPEED_SLASH, isEnable);		
		//129 `Priest/CancelEarthQuake.skl` // ĵ�� ������
		obj.setSkillCommandEnable(SKILL_EARTH_QUAKE, isEnable);		
		//130 `Priest/CancelHedgehog.skl` // ĵ�� ��ȣ�� ����(����ȣ��)
		obj.setSkillCommandEnable(SKILL_HEDGEHOG, isEnable);		
		//132 `Priest/CancelSpincutter.skl`  // ĵ�� ����Ŀ��
		obj.setSkillCommandEnable(SKILL_SPINCUTTER, isEnable);		
		//170	`Priest/CancelBackStep.skl`		// ĵ�� �齺��
		
//133 	`Priest/PandemoniumEx.skl`		// Ư�� : ������
//SKILL_PANDEMONIUM_EX			<- 133 // ������ 
		obj.setSkillCommandEnable(SKILL_PANDEMONIUM_EX, isEnable);		
//134 	`Priest/DisasterEx.skl` 		// Ư�� : ���
//SKILL_EX_DISASTER			<- 134	// ex��ų - ���
		obj.setSkillCommandEnable(SKILL_EX_DISASTER, isEnable);		
		//
	}
	// ĵ���� ���� �۾��Դϴ�. (2012.04.12)
	return true;
	
	//local size = 5;
	local size = 4;
	local cancel_skill_l =[];
	local skill_l =[];
	cancel_skill_l.resize(size);
	skill_l.resize(size);
	
	cancel_skill_l[0] = SKILL_CANCEL_FASTMOVE;
	cancel_skill_l[1] = SKILL_CANCEL_HIGH_SPEED_SLASH;
	cancel_skill_l[2] = SKILL_CANCEL_EARTH_QUAKE;
	cancel_skill_l[3] = SKILL_CANCEL_HEDGEHOG;
	//cancel_skill_l[4] = SKILL_CANCEL_SPINCUTTER;

	skill_l[0] = SKILL_FASTMOVE;
	skill_l[1] = SKILL_HIGH_SPEED_SLASH;
	skill_l[2] = SKILL_EARTH_QUAKE;
	skill_l[3] = SKILL_HEDGEHOG;
	//skill_l[4] = SKILL_SPINCUTTER;

	for(local i=0;i<size;i+=1) {
		// �Ķ���ͷ� �Ѱ��� Ű �ε�����, ���ݹ���� �������� üũ�Ͽ� ����ϸ� �нú������Ʈ�� ����� ����մϴ�..
		local level = sq_GetSkillLevel(obj, cancel_skill_l[i]);
		local bRet = false;
		
		if(level > 0) {
			if(isEnable) {
				// ���⿡�� �ҽ���������� üũ�غ����Ѵ�.. �ҽ������ ���Ż��¿��� �Ϲ� ĵ���Ⱑ ������ ������� �ʴ°�..
				if(!isAvengerAwakenning(obj))
					bRet = true;
				else {
					return false;
				}
			}
		}
		
		//print("\n cancel_skill_l[i]:" + cancel_skill_l[i] + " level:" + level + " bRet:" + bRet + " skill_l[i]:" + skill_l[i]);
		obj.setSkillCommandEnable(skill_l[i], bRet);
	}
	
	
	return true;
}

function playDashAttackSound_Avenger(obj) // �뽬���带 �����ϴ� �������̵��� �Լ��Դϴ�..
{
	if(!obj) return 0;
	if(!isGrowTypeAvenger(obj)) return 0; // ����� �ƴ϶�� ���� �׷��� �ʿ� �����̴ϴ�..
	
	if(isAvengerAwakenning(obj)) return 1; // �����϶� ���� �뽬���� �����մϴ�..
	
	return 0;
}



function setActiveStatus_Avenger(obj, activeStatus, power)
{
	if(!obj) return 0;
	if(isAvengerAwakenning(obj))
	{
		return 0; // �����϶� ���� �����̻��� ���ƹ����ϴ�..
	}
	
	return 1;
}

// setcurrentanimation�� �� �Ŀ� ����Ʈ���� ���� ������ ���� ��� setcurrentanimation�Ŀ� ��Ʈ�� �� �� �ִ� squirrel functionȣ���� �մϴ�..
function setCurrentAnimation_Avenger(obj, animation) 
{
	if(!obj) return;
	if(!animation) return;
	
	if(isAvengerAwakenning(obj)) { // ���� �ҽ������ ���� �Ķ�� setcurrentanimation �Ǵ� ��� animation�� ���� �������� �÷��׸� ������ŵ�ϴ�..
		if(animation) {
			animation.setNeverApplyAnotherPlayersEffectAlphaRate(false);
			animation.setIsApplyAnotherPlayersEffectAlphaRate(false);
		}
	}
}

//������ ���� ������ �� ȣ��Ǵ� ���� �Լ�
function resetDungeonStart_Avenger(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;	
	
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(appendage) {
		if(appendage.sq_var.size_vector() == 5) { // ���� �����ϴ°��̶�� �Ǹ������� ��ġ�� �����մϴ�..
			appendage.sq_var.set_vector(1, 0); // ���� �Ǹ������� ��ġ �ε��� 1
		}
	}
	
	local awakening_appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
	
	if(awakening_appendage) {
		if(isAvengerAwakenning(obj)) {
			awakening_appendage.setValid(false);
			awakening_appendage.sq_var.set_vector(I_AVENGER_AWAKENING_VALID, 0);
			obj.setObjectHeight(-1);
		}
	}
	
	return 1;
	
}

function takingAwakenSkillBack_Avenger(obj)
{	
	if(!obj) return false;
	if(!isGrowTypeAvenger(obj)) // ����� �ƴ� ��� ������ flowpriest��
		return false;
		
	local state = obj.getState();
	
	print("\n takingAwakenSkillBack:" + state + " isAvengerAwakenning(obj):" + isAvengerAwakenning(obj));
	
	if(isAvengerAwakenning(obj) || state == STATE_AVENGER_AWAKENING) { // ���� ���� - �ҽ������ ���¶�� Ȥ�� // ���� ���� �����϶��� �̰��� �����մϴ�..
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0); // substate����
		obj.sq_addSetStatePacket(STATE_AWAKENING_TURN_OFF, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	
	if(obj.getVar("takingAwakenSkillBack").size_vector() == 0) {
		obj.getVar("takingAwakenSkillBack").push_vector(0);
		obj.getVar("takingAwakenSkillBack").push_vector(0);
	}
	
	obj.getVar("takingAwakenSkillBack").set_vector(0, 1);
	
	return true;
}