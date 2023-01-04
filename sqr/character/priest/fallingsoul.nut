


//------------------------------------------------------------------------------
function IsCheckUseFallingSoul(obj) 
{
	if(!obj) return false; 
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	if(!appendage) return false;
	
	
	if(appendage.sq_var.size_vector() > 1) {
		// 7. �Ǹ������� �Ҹ�
		local skillLevel = sq_GetSkillLevel(obj, SKILL_FALLING_SOUL);		
		local consumeMax = sq_GetIntData(obj, SKILL_FALLING_SOUL, 0, skillLevel);
		local time       = sq_GetLevelData(obj, SKILL_FALLING_SOUL, 1, skillLevel);
		local darkPower  = sq_GetLevelData(obj, SKILL_FALLING_SOUL, 2, skillLevel);
		
		//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
		//DS_APEND_GAUGE <- 1 // ���� �Ǹ������� ��ġ
		
		local consumeValue = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 0
		if(consumeValue == 0)
		{		
			obj.startCantUseSkillWarning();
			if (obj.isMessage())
				sq_AddMessage(29002); // 29002>�Ǹ��������� �����մϴ�.
			return false;
		}
		
		if(consumeMax < consumeValue)
			consumeValue = consumeMax;		
		
			
		local consumeRate = sq_GetLevelData(obj, SKILL_FALLING_SOUL, 0, skillLevel);
		consumeRate = consumeRate.tofloat()/100.0;
		
		
		//print("---- Falling Soul info -----------------------")
		//print("consume : " + consumeValue + " / " + consumeRate);
		
		local magicPowerUpValue = (consumeValue*consumeRate) + 0.5;		
		
		print("magicPowerUpValue : " + magicPowerUpValue);		
		
		magicPowerUpValue = magicPowerUpValue.tointeger();
		
		print("magicPowerUpValue : " + magicPowerUpValue);
		//print("time : " + time);
		
		
		
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_FALLING_SOUL, false, "FallingSoul", false);
		
		// ���� UI ��� ����带 �ɾ��ֱ� ���� ȣ��Ǿ�� �մϴ�..
		local skill_level = sq_GetSkillLevel(obj, SKILL_FALLING_SOUL);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_FALLING_SOUL, skill_level);
		//
		
		// ���⼭ append �۾�		
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		

		local change_appendage = appendage.sq_getChangeStatus("FallingSoulMagic");
		if(!change_appendage) {
			change_appendage = appendage.sq_AddChangeStatus("FallingSoulMagic",obj, obj, time, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicPowerUpValue.tointeger());
		}

		// ��������, �ϼӼ� ��������, ��Ӽ� ���װ���
		if(change_appendage) {
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicPowerUpValue.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, darkPower.tofloat());
			//local appendageInfo = change_appendage.getAppendageInfo();
			//appendageInfo.setValidTime(time);
		}
		
		local appendageInfo = appendage.getAppendageInfo();
		appendageInfo.setValidTime(time);
		
		consumeDevilGauge(obj, consumeValue); // �Ǹ��������� �ٿ��ݴϴ�..
		
		return true;
	}
	
	
	return false;
}

function checkCommandEnable_FallingSoul(obj)
{

	if(!obj) return false;

	local bRet = true;
	
	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		////ĵ���� ���� �۾� (2012.04.12) bRet = obj.sq_IsCommandEnable(SKILL_FALLING_SOUL);
		bRet = obj.sq_IsCommandEnable(SKILL_FALLING_SOUL);
	}
	
	if(!bRet) return false;
	

	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	if(!appendage) 
		return false;
	
	local consumeValue = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 0
	if(consumeValue == 0)
		return false;	
		
	return true;
}


		


// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_FallingSoul(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_FALLING_SOUL);


	if(b_useskill) {
		if(IsCheckUseFallingSoul(obj)) { // �Ǹ��������� ó���� �� �� �ֽ��ϴ�..					
			if(obj.isMyControlObject())
			{
				obj.sq_IntVectClear();				
				obj.sq_IntVectPush(0);
				obj.sq_IntVectPush(0); //THROW_TYPE_SKILL
				obj.sq_IntVectPush(SKILL_FALLING_SOUL);
				obj.sq_IntVectPush(500);
				obj.sq_IntVectPush(500);
				obj.sq_IntVectPush(3);
				obj.sq_IntVectPush(4);  //SPEED_TYPE_CAST_SPEED
				obj.sq_IntVectPush(4);  //SPEED_TYPE_CAST_SPEED
				obj.sq_addSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);
			}

			return true;
		}
	}	
	
	return false;
}


//------------------------------------------------------------------------------


// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_FallingSoul(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
}