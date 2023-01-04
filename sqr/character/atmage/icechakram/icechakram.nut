ENUM_ICE_CHAKRAM_TIMER_LARGE_MULTI_HIT <- 0;

SUB_STATE_ICECHAKRAM_0	<- 0
SUB_STATE_ICECHAKRAM_1	<- 1
SUB_STATE_ICECHAKRAM_2	<- 2
SUB_STATE_ICECHAKRAM_3	<- 3
SUB_STATE_ICECHAKRAM_4	<- 4 // ���� ��ũ�� ������.
SUB_STATE_ICECHAKRAM_5	<- 5 // ū ��ũ�� ȸ��
SUB_STATE_ICECHAKRAM_6	<- 6 // ū ��ũ�� ������

VAR_ICE_CHAKRAM_ATTRACT_APPENDAGE <- 0;

function checkExecutableSkill_IceChakram(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICECHAKRAM);

	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_0); // substate����				
		//2�� ���� �׽�Ʈ��.
		//obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_4); // substate����
		
		obj.sq_AddSetStatePacket(STATE_ICECHAKRAM, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_IceChakram(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_ATTACK) {
		// ĵ�� ��ų ���� �۾���: ������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_ICECHAKRAM);
	}
	return true;

}

function onSetState_IceChakram(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	
	obj.getVar("state").clear_ct_vector();
	obj.getVar("state").push_ct_vector();	
	
	obj.getVar("ani").clear_vector();
	obj.getVar("ani").push_vector(0);

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_1);
		
		
		// ĳ���� ����.		
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
		// SUB_STATE_ICECHAKRAM_1 ���꽺����Ʈ �۾�
		local t = obj.getVar("state").get_ct_vector(0);
		t.Reset();
		t.Start(10000,0);
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_2);
		
		if(obj.isMyControlObject())
		{
			//5	 // 0. �����Ǵ� ������ ����
			//5   // 1. ���� ���� �� �ٴ���Ʈ Ƚ��
			local createSmallRingNum = sq_GetLevelData(obj,	SKILL_ICECHAKRAM, 3, sq_GetSkillLevel(obj, SKILL_ICECHAKRAM)); // 3. �����Ǵ� ������ ����
			local multiHitNum = sq_GetLevelData(obj,	SKILL_ICECHAKRAM, 4, sq_GetSkillLevel(obj, SKILL_ICECHAKRAM)); // 4. ���� ���� �� �ٴ���Ʈ Ƚ��		
			local power = obj.sq_GetBonusRateWithPassive(SKILL_ICECHAKRAM, STATE_ICECHAKRAM, 0,1.0);	 // 0.���� ������ �ٴ���Ʈ ���ݷ�(+)
		
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(createSmallRingNum); // 
			sq_BinaryWriteDword(multiHitNum); // 
			sq_BinaryWriteDword(power); // 
			obj.sq_SendCreatePassiveObjectPacket(24257, 0, 0, 0, 0); // 24257	`Character/Mage/ATIceChakramSmallMgr.obj` // ������ ����ȯ �������� �Ŵ��� 
		}
		
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		// SUB_STATE_ICECHAKRAM_2 ���꽺����Ʈ �۾�
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_3);
		obj.sq_PlaySound("RAGEBLAST_SPIN_01", 7577);
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
		local isFindChr = obj.sq_GetVectorData(datas, 1);
		obj.getVar("findchr").clear_vector();
		obj.getVar("findchr").push_vector(isFindChr);
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_4);
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_4);
	}	
	else if(substate == SUB_STATE_ICECHAKRAM_5) { // ȸ��
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_5);
		sq_SetCurrentAttackInfoFromCustomIndex(obj,CUSTOM_ATTACK_INFO_ICE_CHAKRAM);
		
		sq_SetBodyEffect(obj, obj, true, sq_RGB(255,255,255), 0, 80, 0, sq_ALPHA(255)); // ���� �Ͼ� ����Ʈ
		
		sq_SetCurrentAttackeHitStunTime(sq_GetCurrentAttackInfo(obj), 0); // ���� �����ð� ���ֱ�.
				
		// ū�� �ٴ� ��Ʈ ���ݷ� ����		
		local power = obj.sq_GetBonusRateWithPassive(SKILL_ICECHAKRAM , STATE_ICECHAKRAM, 1, 1.0);		
		obj.sq_SetCurrentAttackBonusRate(power);
		
		// ū�� �ٴ� ��Ʈ ���� �ݹ�
		local multiHitTimeGab = sq_GetIntData(obj, SKILL_ICECHAKRAM, 4);
		obj.setTimeEvent(ENUM_ICE_CHAKRAM_TIMER_LARGE_MULTI_HIT, multiHitTimeGab , 0, false); // 0�̸� ���Ѵ�
		
		obj.sq_PlaySound("MW_RAGEBLAST_READY");			
		
		local attractPower = sq_GetLevelData(obj, SKILL_ICECHAKRAM, 6, sq_GetSkillLevel(obj, SKILL_ICECHAKRAM));
		if(attractPower > 0)
		{						
			// �������� ������ Ÿ��, ������̴� ���� �Ÿ� , Ÿ������ ������ ������ �Ÿ�, ������ �ӵ�
			local appendage = sq_AttractToMe(obj, 200, 100, attractPower);
			local var = obj.getVar();
			var.setAppendage(VAR_ICE_CHAKRAM_ATTRACT_APPENDAGE, appendage);
		}
	}
	else if(substate == SUB_STATE_ICECHAKRAM_6) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICECHAKRAM_6);
	}
	
	

}


function onTimeEvent_IceChakram(obj, timeEventIndex, timeEventCount)
{	
	if(!obj)
		return false;

	if(!obj.isMyControlObject())
		return false;
		
	if(timeEventIndex == ENUM_ICE_CHAKRAM_TIMER_LARGE_MULTI_HIT)
	{	
		obj.resetHitObjectList(); //�ٴ���Ʈ������ ��Ʈ������Ʈ ����Ʈ�� ����.
		return false; // false�� ��� �ݹ� (timeEventCountī��Ʈ�� �����̶�� timeEventCount ��ŭ �ݹ�)
	}
	
	return true; // true�� �ݹ� �ߴ�
}


function prepareDraw_IceChakram(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
		// SUB_STATE_ICECHAKRAM_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		// SUB_STATE_ICECHAKRAM_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�
	}
	

}

function onProc_IceChakram(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	obj.sq_StopMove();
	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
		// SUB_STATE_ICECHAKRAM_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		// SUB_STATE_ICECHAKRAM_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_IceChakram(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	
	

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1)
	{
		local loopTime = 400;
		
		local t = obj.getVar("state").get_ct_vector(0);
		local currentT = 0;
		
		currentT = t.Get();
		
		//print( " currentT:" + currentT + " loopTime:" + loopTime);
			
		if(currentT > loopTime)
		{		
			if(!obj.getVar().get_vector(0))
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_2); // substate����
				obj.sq_AddSetStatePacket(STATE_ICECHAKRAM, STATE_PRIORITY_IGNORE_FORCE, true);
				
				obj.getVar().set_vector(0, 1);
			}
		}		
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2)
	{
		if(obj.isMyControlObject())
		{
			if(obj.getVar("ani").get_vector(0))
			{
				local smallRingObj = obj.sq_GetPassiveObject(24258); // po_ATIceChakramSmallIceRing.nut 24258
				
				if(smallRingObj)
				{
					local passiveState = smallRingObj.getState();
					
					if(passiveState == PASSIVEOBJ_SUB_STATE_2)
					{
						local isFindChr = smallRingObj.getVar("findchr").get_vector(0);
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_3); // substate����
						obj.sq_IntVectPush(isFindChr); // substate����
						obj.sq_AddSetStatePacket(STATE_ICECHAKRAM, STATE_PRIORITY_IGNORE_FORCE, true);
					}
				}
				else
				{
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				}
			}
		}
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_6) {
		sq_RemoveParticle("Character/Mage/Effect/Particle/ATIceChakramDust.ptl", obj);	
	}
	

}

function onEndCurrentAni_IceChakram(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�		
		if(obj.isMyControlObject())
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_1); // substate����
			obj.sq_AddSetStatePacket(STATE_ICECHAKRAM, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		obj.getVar("ani").set_vector(0, 1);
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
		if(obj.isMyControlObject())
		{
			if(obj.getVar("findchr").get_vector(0))
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICECHAKRAM_5); // substate����
				obj.sq_AddSetStatePacket(STATE_ICECHAKRAM, STATE_PRIORITY_IGNORE_FORCE, true);
			}
			else
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// ���ƿ� ��ũ���� ������ ����
		obj.sendStatePacket(STATE_ICECHAKRAM, SUB_STATE_ICECHAKRAM_5);		
	}
	else if(substate == SUB_STATE_ICECHAKRAM_5) {
		// ū ��ũ�� ȸ�� ��Ű�� ����
		obj.sendStatePacket(STATE_ICECHAKRAM, SUB_STATE_ICECHAKRAM_6);		

	}
	else if(substate == SUB_STATE_ICECHAKRAM_6) {
		// ū ��ũ�� ȸ�� ��Ű�� ����
		obj.sendStateOnlyPacket(STATE_STAND);
	}

}

function onKeyFrameFlag_IceChakram(obj, flagIndex)
{

	if(!obj) return true;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
		// SUB_STATE_ICECHAKRAM_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		// SUB_STATE_ICECHAKRAM_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�

	}
	else if(substate == SUB_STATE_ICECHAKRAM_5) {		
		if(flagIndex == 1)
		{
			obj.sq_PlaySound("RAGEBLAST_THROW_LOOP",3711);	
			
			sq_SetMyShake(obj,2,100);		
			sq_CreateParticle("Character/Mage/Effect/Particle/ATIceChakramDust.ptl",obj,60, -60,0,true,350,1000,100);			
			sq_CreateParticle("Character/Mage/Effect/Particle/ATIceChakramDust_1.ptl",obj,-10,-10,0,true,350,1000,100);
		}
	}
	else if(substate == SUB_STATE_ICECHAKRAM_6) {		
		if(flagIndex == 1)
		{
			local createXDis = 30;
			local createYDis = 1;
			local createZDis = 58;						
			local searchAngleH = 30;
			local searchAngleV = 15;
			local distance = 1000;
			local angle = 20;
			
			local x = sq_GetDistancePos(obj.getXPos(), sq_GetDirection(obj), createXDis);
			local y = sq_GetDistancePos(obj.getYPos(), ENUM_DIRECTION_DOWN, createYDis);
			local z = sq_GetDistancePos(obj.getZPos(), ENUM_DIRECTION_UP, createZDis);
			
			local x_range = obj.sq_GetIntData(SKILL_ICECHAKRAM , 3); // x�� �ִ� ����
			local y_range = 200; //
			local z_range = 100; //
		
			printc("x_range " + x_range);
			local activeObject = getPriorityTarget(obj, 0, x_range, y_range, z_range, null, true);
			printc("activeObject " + activeObject);
						
			local maxDistance = activeObject ? abs(activeObject.getXPos() - x) : obj.sq_GetIntData(SKILL_ICECHAKRAM , 3);;
			local horizonAngle = activeObject ? sq_GetShootingHorizonAngle(activeObject, y, 0, searchAngleH, maxDistance) : 0.0 ;
			local verticalAngle = activeObject ? sq_GetShootingVerticalAngle(activeObject, z, 0, searchAngleV, maxDistance, 300) : 0.0;
			local moveSpeed = obj.sq_GetIntData(SKILL_ICECHAKRAM , 5);			
												
			sq_BinaryStartWrite();
			sq_BinaryWriteFloat(horizonAngle);  // �̵� ���� ����
			sq_BinaryWriteFloat(verticalAngle); // �̵� ���� ����
			sq_BinaryWriteDword(moveSpeed);		// �̵� �ӵ�
			sq_BinaryWriteDword(maxDistance);	// �̵� �Ÿ�
			sq_BinaryWriteDword(sq_GetGroup(activeObject));	// Ÿ�� ����
			sq_BinaryWriteDword(sq_GetUniqueId(activeObject));	// Ÿ�� ����
			
			obj.sq_SendCreatePassiveObjectPacket(24234, 0, createXDis, createYDis, createZDis);			
			
			local attractPower = sq_GetLevelData(obj, SKILL_ICECHAKRAM, 6, sq_GetSkillLevel(obj, SKILL_ICECHAKRAM));
			if(attractPower > 0)
			{				
				local var = obj.getVar();
				local appendage = var.getAppendage(VAR_ICE_CHAKRAM_ATTRACT_APPENDAGE);
				if(appendage)
					appendage.setValid(false);			
			}
			
			obj.stopSound(3711);
		}
	}
		
	return true;

}

function onEndState_IceChakram(obj, new_state)
{
	if(!obj)
		return;
	
	obj.stopSound(7577);
	
	if (new_state != STATE_STAND)
	{
		local var = obj.getVar();
		local appendage = var.getAppendage(VAR_ICE_CHAKRAM_ATTRACT_APPENDAGE);
		if (appendage)
			appendage.setValid(false);
	}
	
	// ������,�����̻� ������ ���̽� ��ũ���� ������.
	if(new_state != STATE_ICECHAKRAM)
	{
		obj.stopSound(3711);
		// ��ƼŬ ����.
		sq_RemoveParticle("Character/Mage/Effect/Particle/ATIceChakramDust.ptl", obj);
		sq_RemoveParticle("Character/Mage/Effect/Particle/ATIceChakramDust_1.ptl", obj);
	}	
}

function onAfterSetState_IceChakram(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ICECHAKRAM_0) {
		// SUB_STATE_ICECHAKRAM_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_1) {
		// SUB_STATE_ICECHAKRAM_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_2) {
		// SUB_STATE_ICECHAKRAM_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_3) {
		// SUB_STATE_ICECHAKRAM_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICECHAKRAM_4) {
		// SUB_STATE_ICECHAKRAM_4 ���꽺����Ʈ �۾�
	}
	

}
