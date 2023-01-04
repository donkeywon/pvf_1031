EXECUTION_SUB_STATE_GRAB	 <- 0
EXECUTION_SUB_STATE_GRAB_EX	 <- 1
EXECUTION_SUB_STATE_TURNOVER <- 2
EXECUTION_SUB_STATE_RUN		 <- 3
EXECUTION_SUB_STATE_LAST	 <- 4
EXECUTION_SUB_STATE_FAILED	 <- 5

TEST_MODE_EXCUTION <- DEBUG;

EXC_READY_FOR_THROW <- 0;

function sendSubState_Execution(obj,subState)
{
	if(!obj) return;
	
	if(obj.isMyControlObject()) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(subState); // substate����
		obj.sq_addSetStatePacket(STATE_EXECUTION, STATE_PRIORITY_USER, true);
	}
}
//------------------------------------------------------------------------------


// ó���� �Ǹ��������� �����ȴ�..�׷��Ƿ� �Ǹ������� comsume�κ��� ó���� Ư��ȭ�� ���Ѿ��մϴ�..
function IsEnableExecution(obj)
{
	if(!obj) return false; 
		
	//if(TEST_MODE_EXCUTION)
	//	return true;
		
	//if(!isInDevilStrike(obj)) return false;
	if(!isInDevilStrikeSkill(obj)) return false;
	

		
	local appendage = obj.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); // ������Ʈ����Ŀ �������
	
	if(!appendage) return false;
	print("appendage.sq_var.size_vector():" + appendage.sq_var.size_vector());

	if(appendage.sq_var.size_vector() > 1) {
		// 7. �Ǹ������� �Ҹ�
		local skillLevel = sq_GetSkillLevel(obj, SKILL_EXECUTION);
		local consumeValue = sq_GetLevelData(obj, SKILL_EXECUTION, 7, skillLevel);
		
		//DS_APEND_MAX_GAUGE <- 0 // �ִ� �Ǹ������� ��ġ
		//DS_APEND_GAUGE <- 1 // ���� ��
		
				
		local devil_gauge = appendage.sq_var.get_vector(DS_APEND_GAUGE); // gauge index 0
		
		if(devil_gauge >= consumeValue)
		{
			consumeDevilGauge(obj, consumeValue); // �Ǹ��������� �ٿ��ݴϴ�..
			return true;
		}
		else {
			obj.startCantUseSkillWarning();
			if (obj.isMessage()) {
				sq_AddMessage(29002); // 29002>�Ǹ��������� �����մϴ�.
			}
			return false;
		}
		
	}
	
	
	return false;
}


function onEndState_Execution(obj, newState)
{
	if(newState != STATE_EXECUTION)
		removeAllExcutionAppendage(obj);
}



// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_Execution(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_EXECUTION);

	if(b_useskill) {
		if(IsEnableExecution(obj)) { // �Ǹ��������� ó���� �� �� �ֽ��ϴ�..
			sendSubState_Execution(obj,EXECUTION_SUB_STATE_GRAB);
			return true;
		}
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_Execution(obj)
{ //�Ϲ� ��Ȳ���� ��Ȱ��ȭ ��Ų��.. �̰��� Ȱ��ȭ ��Ű�� �ܰ�� ������.. ����-������ �ϴ� �ܰ迡�� �Դϴ�.

	//if(TEST_MODE_EXCUTION)
	//	return true;
	return false;
}

//------------------------------------------------------------------------------

//isCheckHitCollision�� checkHit�� �ǰ� üũ�� ������ �ƴ� ���� �ؾ� �Ұ�쿡 ���δ�. pvp���� ������ �ǰ�üũ�� �ϸ� ����ð��� ���� ��ų�� ĵ���Ǵ� ��찡 �ֱ� ����.
function onIsCheckHitCollision_Execution(obj,damager)
{	
	local subState = obj.getSkillSubState();	
	if(subState == EXECUTION_SUB_STATE_GRAB)  //����� �Ǵ� pvp���� ùŸ ���� ���� ����.
		return obj.isMyControlObject();
		
	//�⺻������ ���� ������Ʈ�� �ƴϸ� false��. ���⼭ false�� �ϰ� �Ǹ� ���� ������Ʈ ���� ����� ���ϵȴ�.
	return (damager && damager.isMyControlObject());
}

function isForceHitCheck_Execution(obj)
{
	if(obj.isMyControlObject()) {
		local subState =  obj.getSkillSubState();	
		if(subState == EXECUTION_SUB_STATE_GRAB) { //����� �Ǵ� pvp���� ùŸ ���� ���� ����.
			return true;
		}	
	}
	return false;
}



// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_Execution(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	// ���� ������Ʈ ����
	local sq_var = obj.getVar();  
	local subState = obj.sq_getVectorData(datas, 0);
	obj.setSkillSubState(subState);	
	
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	sq_var.clear_vector(); // als���� create draw only object �� ������ ������ ������ Ű �÷��׷� �̿��ϰڽ��ϴ�..
	sq_var.push_vector(0); // index : 0
	sq_var.push_vector(0); // index : 1
	sq_var.push_vector(0); // index : 2
	sq_var.push_vector(0); // index : 3
	sq_var.push_vector(0); // index : 4
	sq_var.push_vector(0); // index : 5
	
	local ani = null; // ��Ų�ƹ�Ÿ ������ getcustomani�� �̿����� ���մϴ�.. ���� �ܺο��� �ִϸ��̼��� �ε��ؼ� �����ɴϴ�..
	
	if(subState == EXECUTION_SUB_STATE_GRAB)
	{	
		obj.sq_stopMove();
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_EXC_GRAB);
		ani = obj.getVar().GetAnimationMap("EXC_GRAB", "Character/Priest/Animation/execution/grab.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_1);	
		obj.sq_PlaySound("PR_EXECUTION_READY");		
		sq_var.setBool(EXC_READY_FOR_THROW,false);
	}
	else if(subState == EXECUTION_SUB_STATE_GRAB_EX)
	{	
		obj.sq_stopMove();
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_EXC_GRAB_EX);
		ani = obj.getVar().GetAnimationMap("EXC_GRAB_EX", "Character/Priest/Animation/execution/grabEx.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_2);	
		
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION,state, 0,-1,1.0); // 0�� �ε��� ���ݷ� ����
	}	
	else if(subState == EXECUTION_SUB_STATE_TURNOVER)
	{
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_EXC_TURNOVER);
		ani = obj.getVar().GetAnimationMap("EXC_TURNOVER", "Character/Priest/Animation/execution/turnOver.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		

		local sizeRate = obj.sq_getLevelData(3);
		local explosionSizeRate = sizeRate.tofloat()/100.0;
			
		
		local pAni = obj.sq_getCurrentAni();		
		pAni.applyBoundingBoxRate(explosionSizeRate,0,0); // ����� ���� ����		
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_3);	
		
		local sq_var = obj.getVar();
		local i=0;		
		local objectsSize = sq_var.get_obj_vector_size();
		for(;i<objectsSize;++i)
		{
			local damager = sq_GetCNRDObjectToCollisionObject(sq_var.get_obj_vector(i));
			if(damager) 
				obj.addHitObject(damager);
		}	
		
		
		local ani = sq_CreateAnimation("","Character/Priest/Effect/Animation/execution/turnOver/finger.ani")
		local fingerObj = sq_CreatePooledObject(ani,true);
		fingerObj.setCurrentPos(obj.getXPos(),obj.getYPos()+2,obj.getZPos());
		fingerObj.setCurrentDirection(obj.getDirection());
		sq_AddObject(obj,fingerObj,2,false);	
		
		//obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION, state, 2,-1,1.0);
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION, state, 1,-1,1.0); // // 1. ���� ������� �����ֿ� ���� ���ݷ�(+)
	}
	else if(subState == EXECUTION_SUB_STATE_RUN)
	{				
		obj.sq_PlaySound("PR_EXECUTION_DRAWN");	
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_4);	
		
		local moveDistance = obj.sq_getIntData(SKILL_EXECUTION,0); // �̵��Ÿ�
		local velocityX = obj.sq_getIntData(SKILL_EXECUTION,1); // �ʴ� �̵��ӵ�
		local velocityY = obj.sq_getIntData(SKILL_EXECUTION,2); // �ʴ� �̵��ӵ�
		
			
		// �ʿ��Ѱ� �ð� = �Ÿ�/�ӵ�		
		local targetTime = 0;
		if(velocityX != 0)
			targetTime = moveDistance* 1000 / velocityX;
		
		obj.sq_timer_.setParameter(targetTime, 1);
		obj.sq_timer_.setEventOnStart(false);
		obj.sq_timer_.resetInstant(0);
		
		obj.sq_setStaticMoveInfo(0,velocityX,velocityX,false);
		obj.sq_setStaticMoveInfo(1,velocityY,velocityY,true);
		obj.sq_setMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_EXC_RUN);		
		ani = obj.getVar().GetAnimationMap("EXC_RUN", "Character/Priest/Animation/execution/run.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		
		obj.playSound("EXECUTION_DRAWN_LOOP",3711,0,0,0);
		
		
	}
	else if(subState == EXECUTION_SUB_STATE_LAST)
	{
		obj.stopSound(3711);
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_5);	
	
		local velocityX = obj.sq_getIntData(SKILL_EXECUTION,1); // �ʴ� �̵��ӵ�
		local accelX = obj.sq_getIntData(SKILL_EXECUTION,3); // ���ӵ�
		
		obj.sq_setStaticMoveInfo(0,velocityX,velocityX,false,accelX,true);
		obj.sq_setStaticMoveInfo(1,0,0,false);
		obj.sq_setMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		
		ani = obj.getVar().GetAnimationMap("EXC_LAST", "Character/Priest/Animation/execution/last.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION,state, 5,-1,1.0);
	}
	else if(subState == EXECUTION_SUB_STATE_FAILED)
	{
		//obj.sq_setCurrentAnimation(CUSTOM_ANI_EXC_FAILED);
		ani = obj.getVar().GetAnimationMap("EXC_FAILED", "Character/Priest/Animation/execution/grabFailed.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
		obj.setCurrentAnimation(ani);
		
	}
}

function onProc_Execution(obj)
{	
	if(!obj) return;
	
	
	local subState = obj.getSkillSubState();
	
	local pAni = obj.sq_getCurrentAni();
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	local dir = sq_GetDirection(obj);
	
	local sq_var = obj.getVar();
	if(subState == EXECUTION_SUB_STATE_RUN) {
		// [use animation] `../../Effect/Animation/execution/run/26_dust_a_normal.ani` 	`5`
		//[create draw only object] 4 `5` 0 50 0
		//[create draw only object] 2 `5` 0 50 0
		//[create draw only object] 0 `5` 0 50 0
		
		// [use animation] `../../Effect/Animation/execution/run/1_dust_a_normal.ani` 	`1`
		//[create draw only object] 1 `1` 0 -1 0
		//[create draw only object] 3 `1` 0 -1 0
		//[create draw only object] 5 `1` 0 -1 0
		
		if(frmIndex >= 0 && !sq_var.get_vector(0)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/26_dust_a_normal.ani", posX, posY + 50, posZ, dir);
			sq_var.set_vector(0, 1);
		}
		
		if(frmIndex >= 1 && !sq_var.get_vector(1)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/1_dust_a_normal.ani", posX, posY - 1, posZ, dir);
			sq_var.set_vector(1, 1);
		}

		if(frmIndex >= 2 && !sq_var.get_vector(2)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/26_dust_a_normal.ani", posX, posY + 50, posZ, dir);
			sq_var.set_vector(2, 1);
		}

		if(frmIndex >= 3 && !sq_var.get_vector(3)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/1_dust_a_normal.ani", posX, posY - 1, posZ, dir);
			sq_var.set_vector(3, 1);
		}

		if(frmIndex >= 4 && !sq_var.get_vector(4)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/26_dust_a_normal.ani", posX, posY + 50, posZ, dir);
			sq_var.set_vector(4, 1);
		}

		if(frmIndex >= 5 && !sq_var.get_vector(5)) {
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/1_dust_a_normal.ani", posX, posY - 1, posZ, dir);
			sq_var.set_vector(5, 1);
		}
		
		//
	}
	else if(subState == EXECUTION_SUB_STATE_LAST) {
		//[use animation] `../../Effect/Animation/execution/run/26_dust_a_normal.ani` 	`3`
		//[use animation] `../../Effect/Animation/execution/run/1_dust_a_normal.ani` 	`2`
		
		//[create draw only object] 3 `3` 60 50 0
		//[create draw only object] 1 `3` 30 50 0
		
		//[create draw only object] 0 `2` 30 -1 0
		//[create draw only object] 2 `2` 60 -1 0
		//

		if(frmIndex >= 0 && !sq_var.get_vector(0)) {
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), 30);
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/1_dust_a_normal.ani", dstX, posY - 1, posZ, obj.getDirection());
			sq_var.set_vector(0, 1);
		}

		if(frmIndex >= 0 && !sq_var.get_vector(4)) {
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), 90);
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/last/drawOnly/drawOnlyBase.ani", dstX, posY + 1, posZ, obj.getDirection());
			sq_var.set_vector(4, 1);
		}
		
		if(frmIndex >= 1 && !sq_var.get_vector(1)) {
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), 30);
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/26_dust_a_normal.ani", dstX, posY + 50, posZ, obj.getDirection());
			sq_var.set_vector(1, 1);
		}
		
		if(frmIndex >= 2 && !sq_var.get_vector(2)) {
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), 60);
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/1_dust_a_normal.ani", dstX, posY - 1, posZ, obj.getDirection());
			sq_var.set_vector(2, 1);
		}
		
		if(frmIndex >= 3 && !sq_var.get_vector(3)) {
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), 60);
			sqr_CreatePooledObject(obj, "Effect/Animation/execution/run/26_dust_a_normal.ani", dstX, posY + 50, posZ, obj.getDirection());
			sq_var.set_vector(3, 1);
		}
	}
	
	
	if(obj.isMyControlObject())
	{
		if(subState == EXECUTION_SUB_STATE_RUN)
		{	
			local pAni = obj.sq_getCurrentAni();		
			local currentT = pAni.getCurrentTime();
			
			
			if (obj.sq_timer_.isOnEvent(currentT) == true)
			{
				sendSubState_Execution(obj,EXECUTION_SUB_STATE_LAST);
			}
			obj.setSkillCommandEnable(SKILL_EXECUTION,true);
						
			local b_useskill = obj.sq_IsEnterSkill(SKILL_EXECUTION);			
			if(b_useskill != -1)
				sendSubState_Execution(obj,EXECUTION_SUB_STATE_LAST);
		}
	}
}


function onTimeEvent_Execution(obj, timeEventIndex, timeEventCount)
{
	if(obj.isMyControlObject())
	{
		local subState = obj.getSkillSubState();
		if(subState == EXECUTION_SUB_STATE_RUN)
		{	
			local power = obj.sq_getPowerWithPassive(SKILL_EXECUTION, STATE_EXECUTION, 4,-1,1.0);	
			sq_createAttackObjectWithPath(obj, "Character/Priest/Effect/Animation/execution/run/runDamage.ani","PassiveObject/Character/Priest/AttackInfo/excutionBox.atk",false,power,100,0,0,0);		
		}
	}
	return false; // true�� �ݹ� �ߴ�
} 

function isExcutionGrabable(obj)
{ 		
	local sq_var = obj.getVar();
	local i=0;		
	local objectsSize = sq_var.get_obj_vector_size();
	
	for(;i<objectsSize;++i)
	{
		local damager = sq_var.get_obj_vector(i);
		if(damager) {
			if(sq_IsGrabable(obj,damager) && sq_IsHoldable(obj,damager)) //������ �ִ� ����
				return true;
		}
	}	
	
	return false;
}

function removeAllExcutionAppendage(obj)
{
	local sq_var = obj.getVar();  		
	local i=0;		
	local objectsSize = sq_var.get_obj_vector_size();
	if(objectsSize <= 0)
		return;
	
	for(;i<objectsSize;++i)
	{
		local damager = sq_var.get_obj_vector(i);
		if(damager)
			CNSquirrelAppendage.sq_RemoveAppendage(damager, "Appendage/Character/executionAppendage.nut");
	}		
	
	sq_var.clear_obj_vector();
}


function onEndCurrentAni_Execution(obj)
{
	local subState = obj.getSkillSubState();
	local sq_var = obj.getVar();  
	if(subState == EXECUTION_SUB_STATE_GRAB)
	{			
		local objectsSize = sq_var.get_obj_vector_size();
		if(objectsSize > 0)
		{			
			//�ǰ� ������Ʈ�� Ȧ�����̸� EXECUTION_SUB_STATE_TURNOVER �ƴϸ� EXECUTION_SUB_STATE_GRAB_EX	
			if(isExcutionGrabable(obj)) {
				sendSubState_Execution(obj,EXECUTION_SUB_STATE_TURNOVER);
			}
			else {
				sendSubState_Execution(obj,EXECUTION_SUB_STATE_GRAB_EX);
			}
		}
		else
		{	
			sendSubState_Execution(obj,EXECUTION_SUB_STATE_FAILED);			
		}
	}
	else if(subState == EXECUTION_SUB_STATE_TURNOVER)
	{
		sendSubState_Execution(obj,EXECUTION_SUB_STATE_RUN);
		
		local gap = obj.sq_getIntData(SKILL_EXECUTION,4);
		obj.setTimeEvent(0,gap,0,true);
	}
	else if(subState == EXECUTION_SUB_STATE_RUN)
	{
		sendSubState_Execution(obj,EXECUTION_SUB_STATE_LAST);
	}
	else if(subState == EXECUTION_SUB_STATE_LAST || subState == EXECUTION_SUB_STATE_GRAB_EX || subState == EXECUTION_SUB_STATE_FAILED)  //��Ÿ ������ stand
	{		
		obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		
		removeAllExcutionAppendage(obj);		
	}	
}

// onAttack �ݹ��Լ� �Դϴ�
function onAttack_Execution(obj, damager, boundingBox)
{
	local sq_var = obj.getVar();  
	local subState = obj.getSkillSubState();
	
	if(subState == EXECUTION_SUB_STATE_GRAB)
	{			
		if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager,"Appendage/Character/executionAppendage.nut")) // �̹� �پ� �ִ� �ֵ��� ������ �ʴ´�.
		{
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_EXECUTION, false, "Appendage/Character/executionAppendage.nut", true);
			
			if(masterAppendage) {
				sq_HoldAndDelayDie(damager, obj, true, true, true, 300, 300, ENUM_DIRECTION_NEUTRAL , masterAppendage);
				damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
				
				sq_var.push_obj_vector(damager);
			}
		}
	}
	
	
	local isLastThrowMode = sq_var.getBool(EXC_READY_FOR_THROW);
	if(isLastThrowMode && damager)
		CNSquirrelAppendage.sq_RemoveAppendage(damager, "Appendage/Character/executionAppendage.nut");

}


		
		
		
function onKeyFrameFlag_Execution(obj,flagIndex)
{	
	local sq_var = obj.getVar();  		
	local i=0;		
	local objectsSize = sq_var.get_obj_vector_size();
	
	
	// ��� ��������� ����
	for(;i<objectsSize;++i)
	{
		local damager = sq_var.get_obj_vector(i);
		local ao = sq_GetCNRDObjectToActiveObject(damager);		
		if(ao) {
			local appendage = ao.GetSquirrelAppendage("Appendage/Character/executionAppendage.nut");			
			if(appendage)
				appendage.setState(flagIndex,sq_GetGlobalIntVector());
		}
	}
	
	if(flagIndex == 18) 
	{
		
	}
	else if(flagIndex == 30 && obj.isMyControlObject()) // ����
	{
		local fScreen = sq_flashScreen(obj,80,0,0,150, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		sq_addFlashScreen(fScreen,0,240,320,250, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);	
		sq_SetShake(obj,6,400);
		
		sq_setFullScreenEffect(obj,"Character/Priest/Effect/Animation/execution/grabEx/finish.ani");	
	}
	else if(flagIndex == 11) // ���� ���� ħ
	{	
		sq_SetMyShake(obj,7,400);		
		sq_CreateParticle("Character/Priest/Effect/Particle/ExcutionStonsSmall.ptl", obj, -200, 0, 0, true, 30, 0,2);		
	}	
	else if(flagIndex == 12) // 
	{
		local sq_var = obj.getVar();
		local i=0;		
		local objectsSize = sq_var.get_obj_vector_size();
		
		local state = obj.sq_GetSTATE();
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION, state, 1,-1,1.0);
		for(;i<objectsSize;++i)
		{		
			local damager = sq_GetCNRDObjectToCollisionObject(sq_var.get_obj_vector(i));
			if(damager && sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager)) 
				sq_SendHitObjectPacket(obj,damager,0,0,0);
		}	
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION, state, 2,-1,1.0);
		
	}
	else if(flagIndex == 19)
		sq_SetMyShake(obj,4,80);
	else if(flagIndex == 21)
		sq_SetMyShake(obj,4,80);
	else if(flagIndex == 23)
		sq_SetMyShake(obj,4,80);
	else if(flagIndex == 26)
		sq_SetMyShake(obj,5,200);
	else if(flagIndex == 32 && obj.isMyControlObject()) // ����
	{
		local fScreen = sq_flashScreen(obj,80,0,0,150, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		sq_addFlashScreen(fScreen,0,240,320,250, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);	
		sq_SetShake(obj,6,400);
		
		sq_setFullScreenEffect(obj,"Character/Priest/Effect/Animation/execution/grabEx/finish.ani");	
	}
	else if(flagIndex == 27 && obj.isMyControlObject())
	{
		local currentAni = obj.getCurrentAnimation();
		local frameDelay = currentAni.getDelayBySpeedRate(1);
		local fScreen = sq_flashScreen(obj,0,frameDelay*7,0, 200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		sq_addFlashScreen(fScreen,0,0,frameDelay*2,100, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);		
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_EXCUTION_6);
		local state = obj.sq_GetSTATE();
		obj.sq_setAttackPowerWithPassive(SKILL_EXECUTION, state, 6,-1,1.0);
		obj.stopTimeEvent(0);	
	}
	else if(flagIndex == 28)
		sq_SetMyShake(obj,6,160);	
	else if(flagIndex == 30) {
	
		if(obj.isMyControlObject()) {
			sq_SetMyShake(obj,6,400);	
			local currentAni = obj.getCurrentAnimation();
			local frameDelay = currentAni.getDelayBySpeedRate(1);
			local fScreen = sq_flashScreen(obj, frameDelay*2, frameDelay*5, frameDelay*3, 200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		
		sq_CreateParticle("Character/Priest/Effect/Particle/ExcutionStonsLarge.ptl", obj, 180, 5, 250, true, 30, 0, 2);
		
		sq_var.setBool(EXC_READY_FOR_THROW,true);
	}
	else if(flagIndex == 31) {
		removeAllExcutionAppendage(obj);
	}
	
	return true;	
}
