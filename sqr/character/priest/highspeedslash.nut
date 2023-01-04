HSS_SUB_STATE_READY		<- 0
HSS_SUB_STATE_ATTACK_1	<- 1
HSS_SUB_STATE_ATTACK_2  <- 2
HSS_SUB_STATE_ATTACK_3	<- 3
HSS_SUB_STATE_ATTACK_4	<- 4
HSS_SUB_STATE_LAST		<- 5



// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_HighSpeedSlash(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_HIGH_SPEED_SLASH);
	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(HSS_SUB_STATE_READY); // substate����
		obj.sq_addSetStatePacket(STATE_HIGH_SPEED_SPLASH, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_HighSpeedSlash(obj)
{
	if(!obj) return false;
	
	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_HIGH_SPEED_SLASH); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_HIGH_SPEED_SLASH);
	}

	return true;
}

//------------------------------------------------------------------------------
function onProc_HighSpeedSlash(obj)
{	
	if(!obj) return;
	if(obj.isMyControlObject())
	{
		obj.setSkillCommandEnable(SKILL_HIGH_SPEED_SLASH,true);
		local subState = obj.getSkillSubState();
		if(subState >= HSS_SUB_STATE_ATTACK_1 && subState <= HSS_SUB_STATE_ATTACK_4)
		{	
			
			local b_useskill = obj.sq_IsEnterSkill(SKILL_HIGH_SPEED_SLASH);			
			
			if(b_useskill != -1)
			{
				local sq_var = obj.getVar();
				sq_var.setBool(2,true);
			}
		}
	}
}

function onEndState_HighSpeedSlash(obj, newState)
{
	if(!obj) return;
	if(newState != STATE_HIGH_SPEED_SPLASH) {
		obj.setCarryWeapon(true);
	}
}



function sendSubState_HighSpeedSlash(obj, subState)
{	
	if(!obj) return;
	
	if(obj.sq_isMyControlObject()) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(subState); // substate����
		obj.sq_addSetStatePacket(STATE_HIGH_SPEED_SPLASH, STATE_PRIORITY_USER, true);
	}	
}

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_HighSpeedSlash(obj, state, datas, isResetTimer)
{		
	local sq_var = obj.getVar();
	local subState = obj.sq_getVectorData(datas, 0);
	obj.setSkillSubState(subState);
	
	//���� ����
	obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_HIGH_SPEED_SLASH);	
		
	if(subState == HSS_SUB_STATE_READY)
	{		
		sq_var.setInt(0,0);			   // ������ �ٴ� ��Ʈ Ƚ�� �ʱ�ȭ	
		sq_var.setFloat(1,100.0);			   // �ӵ� ������ �ʱ�ȭ			 
		sq_var.setBool(2,false);	   // Ű�Է� �ʱ�ȭ
		
		obj.sq_stopMove();
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_READY);		
		obj.sq_PlaySound("PR_FASTCUT_READY");
	}
	else if(subState == HSS_SUB_STATE_ATTACK_1)
	{	
		if(obj.isCarryWeapon())
			obj.setCarryWeapon(false);
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_ATTACK_1);		
		obj.sq_PlaySound("FASTCUT_SWISH");
	}
	else if(subState == HSS_SUB_STATE_ATTACK_2)
	{	
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_ATTACK_2);
		obj.sq_PlaySound("FASTCUT_SWISH");
	}
	else if(subState == HSS_SUB_STATE_ATTACK_3)
	{	
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_ATTACK_3);
		obj.sq_PlaySound("FASTCUT_SWISH");
	}
	else if(subState == HSS_SUB_STATE_ATTACK_4)
	{	
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_ATTACK_4);
		obj.sq_PlaySound("FASTCUT_SWISH");
	}
	else if(subState == HSS_SUB_STATE_LAST)
	{	
		obj.sq_setCurrentAnimation(CUSTOM_ANI_HIGH_SPEED_LAST);
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_HIGH_SPEED_SLASH_LAST);	
		obj.sq_PlaySound("FASTCUT_WHOOSH");
		obj.sq_PlaySound("PR_FASTCUT");
	}
	
	if(subState >= HSS_SUB_STATE_ATTACK_1 && subState <= HSS_SUB_STATE_ATTACK_4)
	{	
		local isKeyInput = sq_var.getBool(2);
		if(isKeyInput) {  //Ű�Է��� �־���.
			local speedUpRate = sq_var.getFloat(1); // �ӵ� ������
			
			//�ӵ� ����. 
			local intDataSpeedUpRate = obj.sq_getIntData(0);
			local maxSpeedUpRate = obj.sq_getIntData(1);
			
			maxSpeedUpRate = maxSpeedUpRate.tofloat();
			intDataSpeedUpRate = (intDataSpeedUpRate.tofloat() + 100.0) / 100;
			speedUpRate = speedUpRate * intDataSpeedUpRate.tofloat();
			
			if(speedUpRate > maxSpeedUpRate)
				speedUpRate = maxSpeedUpRate;
			
			sq_var.setBool(2,false);
			sq_var.setFloat(1,speedUpRate); //���� �ӵ� ����			
						
			if(speedUpRate > 0)
			{
				local ani = obj.sq_getCurrentAni();
				ani.setSpeedRate(speedUpRate);				
				//print("subState" + subState + "speedUpRate : "+speedUpRate);								
			}
		}
		//print("DelaySum : " + obj.sq_getDelaySum());
	}
	
	obj.sq_setAttackPowerWithPassive(SKILL_HIGH_SPEED_SLASH, state, -1,1,1.0);
	
}

function onEndCurrentAni_HighSpeedSlash(obj)
{
	local sq_var = obj.getVar();
	local subStateIndex = obj.getSkillSubState();
	local currentHitCount = sq_var.getInt(0);
	local maxHitCount = obj.sq_getLevelData(0);
	
	if(subStateIndex < HSS_SUB_STATE_LAST && currentHitCount >= maxHitCount){		
		sendSubState_HighSpeedSlash(obj,HSS_SUB_STATE_LAST);
		return;
	}	
	sq_var.setInt(0,currentHitCount+1); //�ٴ���Ʈ Ƚ�� ����
	
	if(subStateIndex == HSS_SUB_STATE_READY)
		sendSubState_HighSpeedSlash(obj, HSS_SUB_STATE_ATTACK_1);
	else if(subStateIndex == HSS_SUB_STATE_ATTACK_1)
		sendSubState_HighSpeedSlash(obj, HSS_SUB_STATE_ATTACK_2);
	else if(subStateIndex == HSS_SUB_STATE_ATTACK_2)
		sendSubState_HighSpeedSlash(obj, HSS_SUB_STATE_ATTACK_3);
	else if(subStateIndex == HSS_SUB_STATE_ATTACK_3)
		sendSubState_HighSpeedSlash(obj, HSS_SUB_STATE_ATTACK_4);
	else if(subStateIndex == HSS_SUB_STATE_ATTACK_4)
		sendSubState_HighSpeedSlash(obj, HSS_SUB_STATE_ATTACK_1);
	else if(subStateIndex == HSS_SUB_STATE_LAST){
		obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);		
	}
	
	
}

function onKeyFrameFlag_HighSpeedSlash(obj,flagIndex)
{
	//if(flagIndex == 1)
		
		
	return true;
}