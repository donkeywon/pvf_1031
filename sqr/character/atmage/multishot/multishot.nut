TIMER_MULTI_SHOT_CREATE_MAGIC_BALL	<- 0; // ��Ÿ
TIMER_MULTI_SHOT_INPUT_COUNT		<- 1; // �ʴ� Ű�Է� Ƚ�� �Ǵ�.
TIMER_MULTI_SHOT_WATING_STAND		<- 2; // ��Ÿ���� ���ĵ� ������ ������

VAR_MULTI_SHOT_CURRENT_COUNT <- 0;

ENUM_MULTI_SHOT_SUBSTATE_CHARGE   <- 0; // ���� �� �غ�
ENUM_MULTI_SHOT_SUBSTATE_HORIZON  <- 1; // ���� �� ����
ENUM_MULTI_SHOT_SUBSTATE_VERTICAL <- 2; // ���� �� ����
ENUM_MULTI_SHOT_SUBSTATE_DIAGONAL <- 3; // ���� �� �밢��
ENUM_MULTI_SHOT_SUBSTATE_FLOOR	  <- 4; // �ٴڿ��� ��Ÿ

function checkExecutableSkill_MultiShot(obj)
{
	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_MULTI_SHOT);
	if(b_useskill) {		
		obj.sq_IntVectClear();
				
		if(obj.getState() == STATE_JUMP)
			obj.sq_IntVectPush(ENUM_MULTI_SHOT_SUBSTATE_CHARGE); 
		else
			obj.sq_IntVectPush(ENUM_MULTI_SHOT_SUBSTATE_FLOOR); 
		obj.sq_IntVectPush(obj.getXPos()); 
		obj.sq_IntVectPush(obj.getYPos()); 
		obj.sq_IntVectPush(obj.getZPos()); 
		obj.sq_AddSetStatePacket(STATE_MULTI_SHOT , STATE_PRIORITY_USER, true);
		return true;
	}	
	return false;

}

function checkCommandEnable_MultiShot(obj)
{
	if(!obj)
		return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_MULTI_SHOT); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_MULTI_SHOT);
	}
	
	return true;
}

function sendMultiShotEnd(obj)
{
	if(!obj)
		return;

	if(obj.isMyControlObject()) {
		local subState = obj.getSkillSubState();
		if(subState == ENUM_MULTI_SHOT_SUBSTATE_FLOOR)
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		else {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		}	
	}
}

function onProc_MultiShot(obj)
{
	if(!obj)
		return;

	local var = obj.getVar();
	local currentInputCount = var.getInt(VAR_MULTI_SHOT_CURRENT_COUNT);
					
	if(obj.isMyControlObject())
	{
		obj.setSkillCommandEnable(SKILL_MULTI_SHOT,true);		
		local b_useskill = obj.sq_IsEnterSkill(SKILL_MULTI_SHOT);	

		sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true); //����Ű Ȱ��ȭ
		if(b_useskill != -1 || sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) //��ų�������̳� ���ݹ�ư ������
			obj.addRapidInput(); // ��Ÿ �Է� ó��
	}
	
	sq_SetKeyxEnable(obj, E_JUMP_COMMAND, true); //����Ű Ȱ��ȭ
	if(sq_IsEnterCommand(obj, E_JUMP_COMMAND)) { // ����Ű �Է½� ���
		sendMultiShotEnd(obj);
	}
}


function onSetState_MultiShot(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local subState = sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);	
	
	if(subState != ENUM_MULTI_SHOT_SUBSTATE_FLOOR) {
			
		if(subState == ENUM_MULTI_SHOT_SUBSTATE_CHARGE) {
			obj.sq_SetStaticMoveInfo(0, 0, 0, false);	
			obj.sq_SetStaticMoveInfo(1, 0, 0, false);	
			sq_SetZVelocity(obj,1,0);
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_MAGIC_CANNON_READY);		
		}
		else if(subState == ENUM_MULTI_SHOT_SUBSTATE_HORIZON) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_MAGIC_CANNON_1);		
		}
		else if(subState == ENUM_MULTI_SHOT_SUBSTATE_VERTICAL) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_MAGIC_CANNON_3);
		}
		else if(subState == ENUM_MULTI_SHOT_SUBSTATE_DIAGONAL) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_MAGIC_CANNON_2);
		}
	}
	else {
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MULTI_SHOT);
	}
	
	//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
	//		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		
	local x = sq_GetVectorData(datas, 1);
	local y = sq_GetVectorData(datas, 2);
	local z = sq_GetVectorData(datas, 3);
	sq_SetCurrentPos(obj,x,y,z);	

	local var = obj.getVar();
	var.setInt(VAR_MULTI_SHOT_CURRENT_COUNT,0);	
	
	if(subState == ENUM_MULTI_SHOT_SUBSTATE_FLOOR || subState == ENUM_MULTI_SHOT_SUBSTATE_CHARGE) // �߻��Ҷ� ���̽�
		obj.sq_PlaySound("MW_TAKE");
	
	local element = obj.getThrowElement();
	addElementalChain_ATMage(obj, element);
}

function onTimeEvent_MultiShot(obj, timeEventIndex, timeEventCount)
{		
	if(!obj)
		return false;

	if(timeEventIndex == TIMER_MULTI_SHOT_CREATE_MAGIC_BALL) {		
		local var = obj.getVar();
		local count = var.getInt(VAR_MULTI_SHOT_CURRENT_COUNT);	
		local level	= sq_GetSkillLevel(obj, SKILL_MULTI_SHOT);
		local max   = sq_GetLevelData(obj, SKILL_MULTI_SHOT, 0, level);

		if(count < max) {
			local inputConut = obj.getRapidInputFrequency();
			inputConut = inputConut.tointeger();
				
			local inputMax		= sq_GetIntData(obj, SKILL_MULTI_SHOT, 0); // 0:�ʴ� ��Ÿ �� �ִ�ġ 
			local gapByInputMin = sq_GetIntData(obj, SKILL_MULTI_SHOT, 1); // 1:�߻� ���� ms (��Ÿ �ּҽ�) 
			local gapByInputMax = sq_GetIntData(obj, SKILL_MULTI_SHOT, 2); // 2:�߻� ���� ms (��Ÿ �ִ��)
			local gap = 300;
			
			if(inputConut > inputMax)
				inputConut = inputMax;			
			
			// ��Ÿ�� ������ gapByInputMin ������.
			// ��Ÿ�� ���� ���� gapByInputMax�� ����� ������.
			local upValue = gapByInputMax - gapByInputMin;
			upValue = upValue.tofloat() * (inputConut.tofloat()/inputMax.tofloat());			
			gap = gapByInputMin + upValue.tointeger();									
			obj.setTimeEvent(TIMER_MULTI_SHOT_CREATE_MAGIC_BALL, gap, 1,false); 
			
			count = count+1;
			var.setInt(VAR_MULTI_SHOT_CURRENT_COUNT, count);	
			
			local currentElementalType = obj.getThrowElement();			
			local subState = obj.getSkillSubState();
			local bonusDamage = 0;	
			
			if(currentElementalType == ENUM_ELEMENT_NONE)
			{
				local basicState = STATE_ATTACK;
				
				if(subState == ENUM_MULTI_SHOT_SUBSTATE_DIAGONAL || subState == ENUM_MULTI_SHOT_SUBSTATE_VERTICAL) // �밢��,����
					basicState = STATE_JUMP_ATTACK;
				
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj),0);
				obj.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),basicState);				
				bonusDamage = sq_GetCurrentAttackBonusRate(obj);				
			}
			
			local addMultiShotDamage = sq_GetLevelData(obj, SKILL_MULTI_SHOT, 1, level);
			
			if(subState == ENUM_MULTI_SHOT_SUBSTATE_FLOOR)
				createMiniMagicCircle(obj, 30, 65, 0, bonusDamage + addMultiShotDamage);
			else if(subState == ENUM_MULTI_SHOT_SUBSTATE_HORIZON) // ����
				createMiniMagicCircle(obj, 30, 82, 0, bonusDamage + addMultiShotDamage);
			else if(subState == ENUM_MULTI_SHOT_SUBSTATE_DIAGONAL) // �밢��
				createMiniMagicCircle(obj, 20, 55, 1, bonusDamage + addMultiShotDamage);
			else if(subState == ENUM_MULTI_SHOT_SUBSTATE_VERTICAL) // ����
				createMiniMagicCircle(obj, 0, 45, 2, bonusDamage + addMultiShotDamage);
				

			local typeName = "none";			
			switch(currentElementalType) 
			{
			case ENUM_ELEMENT_FIRE  : typeName = "fire"; break;
			case ENUM_ELEMENT_WATER : typeName = "water"; break;
			case ENUM_ELEMENT_DARK  : typeName = "dark"; break;
			case ENUM_ELEMENT_LIGHT : typeName = "light"; break;			
			}
						
			local path = "Character/Mage/Effect/Animation/ATMultiShot/attack" + subState + "_" + typeName + "_dodge.ani";
			sq_CreateDrawOnlyObject(obj,path, ENUM_DRAWLAYER_NORMAL, true);
						
			local element = obj.getThrowElement();
			local attackIndex = obj.getAttackIndex();
			playSoundForAtmageAttack(obj, element, attackIndex);
		}
		else {
			local endDelay = 50;
			obj.setTimeEvent(TIMER_MULTI_SHOT_WATING_STAND, endDelay, 1,false); 
		}		
	}
	else if(timeEventIndex == TIMER_MULTI_SHOT_INPUT_COUNT) {
		
	}
	else if(timeEventIndex == TIMER_MULTI_SHOT_WATING_STAND) {
		// ���� Ÿ�̸�
		sendMultiShotEnd(obj);
		return true;
	}
	return false;
}
function onEndCurrentAni_MultiShot(obj)
{
	if(!obj) return;
	
	local subState = obj.getSkillSubState();
	
	
	if(subState == ENUM_MAGIC_CANNON_SUBSTATE_CHARGE) {
		local isHorizon = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
		local isVertical = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);
		local subState = ENUM_MAGIC_CANNON_SUBSTATE_DIAGONAL; // �밢���� �⺻
		
		if(isHorizon && !isVertical)
			subState = ENUM_MAGIC_CANNON_SUBSTATE_HORIZON;
		else if(!isHorizon && isVertical)
			subState = ENUM_MAGIC_CANNON_SUBSTATE_VERTICAL;	
			
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(subState); 
		obj.sq_IntVectPush(obj.getXPos()); 
		obj.sq_IntVectPush(obj.getYPos()); 
		obj.sq_IntVectPush(obj.getZPos()); 
		obj.sq_AddSetStatePacket(STATE_MULTI_SHOT , STATE_PRIORITY_USER, true);		
	}
}


function onKeyFrameFlag_MultiShot(obj, flagIndex)
{
	if(!obj) return true;
	
	local subState = obj.getSkillSubState();
	if(flagIndex == 1) {	
		obj.setTimeEvent(TIMER_MULTI_SHOT_CREATE_MAGIC_BALL, 50, 1,true);  // �߻�		
		obj.setTimeEvent(TIMER_MULTI_SHOT_INPUT_COUNT, 1000, 1,false); // �ʴ� Ű�Է� Ƚ�� �Ǵ�.
		
		obj.startRapidInput();
	}
	return true;

}
