ATMAGE_MAGIC_ANI_TYPE_BACK	 <- 0;
ATMAGE_MAGIC_ANI_TYPE_FRONT  <- 1;
ATMAGE_MAGIC_ANI_TYPE_CIRCLE <- 2;

VAR_MAGIC_SHIELD_BACK_ANI	 <- 0;
VAR_MAGIC_SHIELD_FRONT_ANI	 <- 1;
VAR_MAGIC_SHIELD_ICE_HIT_COUNT <- 2; // ���Ӽ� ��ȣ���� ������ �ִ� ī��Ʈ Ƚ��.

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_MagicShield")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_MagicShield")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_MagicShield")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_MagicShield")	
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_MagicShield")	
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_MagicShield")
}

function sq_AddEffect(appendage)
{
}


function drawAppend_appendage_MagicShield(appendage, isOver, x, y, isFlip)
{
	if (!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	
	if (!obj) {
		appendage.setValid(false);
		return;
	}
	local var = appendage.getVar();
	local backAni = var.getAnimation(VAR_MAGIC_SHIELD_BACK_ANI);
	local frontAni = var.getAnimation(VAR_MAGIC_SHIELD_FRONT_ANI);

	if (frontAni && isOver) {		
		sq_AnimationProc(frontAni);
		sq_drawCurrentFrame(frontAni, x, y, isFlip);		
	}	
	else if (backAni && !isOver) {
		sq_AnimationProc(backAni);
		sq_drawCurrentFrame(backAni, x, y, isFlip);
	}
}




function getImmuneTypeDamageRate_appendage_MagicShield(appendage, damageRate, attacker)
{		
	if (!appendage)
		return damageRate;
		
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if (!parentObj) {
		appendage.setValid(false);
		return damageRate;
	}
	
	local var = appendage.getVar();
	if (!var)
		return damageRate;	
		
	
	
	local type = parentObj.getThrowElement();

	
	// ���Ӽ� : ������ ���� Ƚ�� ���� ���
	if (type == ENUM_ELEMENT_WATER)
		return 0;			
		
	local type = parentObj.getThrowElement();		
	// ���������� ���������� ������.
	local skill_level = parentObj.sq_GetSkillLevel(SKILL_MAGIC_SHIELD);
	local decreaseRate = parentObj.sq_GetLevelData(SKILL_MAGIC_SHIELD, 1, skill_level); // 1. ������ ������(%)			
	damageRate = damageRate - decreaseRate;
	return damageRate;
}


function removeMagicShield(obj)
{
	CNSquirrelAppendage.sq_RemoveAppendage(obj, "Character/ATMage/MagicShield/ap_MagicShield.nut");
}


// �������� ó��.
// ���Ӽ� : �޴� ������ ���� % ����
// ȭ�Ӽ� : �ǰݽ� ������ ȭ�Ӽ� ������
// ���Ӽ� : ������ ���� Ƚ�� ���� ���
// ��Ӽ� : �ǰݽ� �����ð� �� ���� 
// �ϼӼ� : �ǰݽ� ������ ��ȭ

function onDamageParent_appendage_MagicShield(appendage ,attacker, boundingBox, isStuck) 
{		
	if (!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	
	local var = appendage.getVar();
	if (!var)
		return;	

	local type = parentObj.getThrowElement();
		
	local circleObj = sq_AddDrawOnlyAniFromParent(parentObj, getMagicShieldAniPath(ATMAGE_MAGIC_ANI_TYPE_CIRCLE, type)  ,0,-1,0);
	if (circleObj) {
		circleObj.setCurrentDirection(sq_GetOppositeDirection(attacker.getDirection()));
		var.push_obj_vector(circleObj);
	}
	
	if (isStuck)
		return;		
			
	local skill_level = sq_GetSkillLevel(parentObj, SKILL_MAGIC_SHIELD);
	
	// ȭ�Ӽ� : �ǰݽ� ������ ȭ�Ӽ� ������
	if (type == ENUM_ELEMENT_FIRE) 
	{			
		local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
		if (sqrChr) 
		{
			if (!(parentObj.sq_GetTeam() == attacker.getTeam())) 
			{	
				local fireDamage = sqrChr.sq_GetPowerWithPassive(SKILL_MAGIC_SHIELD, STATE_MAGIC_SHIELD, 2,-1,1.0);
				local ap = sq_getNewAttackInfoPacket();
				ap.power = fireDamage;
				ap.element = ENUM_ELEMENT_FIRE;
				ap.useWeapon = false;
				ap.eType = ATTACKTYPE_MAGICAL;
				if (parentObj.isMyControlObject())
					sq_SendHitObjectPacketByAttackInfo(parentObj, attacker, ap);
			}		
		}
	}	
	// ���Ӽ� : ������ ���� Ƚ�� ���� ���
	if (type == ENUM_ELEMENT_WATER) 
	{
		if (!attacker.isObjectType(0x0821))
		{
			if (!(parentObj.sq_GetTeam() == attacker.getTeam())) 
			{
				local currentIceGuardCount = var.getInt(VAR_MAGIC_SHIELD_ICE_HIT_COUNT); // ���Ӽ� ��ȣ Ƚ��
				currentIceGuardCount--;
		
			if (currentIceGuardCount <= 0)
				appendage.setValid(false);
			
			var.setInt(VAR_MAGIC_SHIELD_ICE_HIT_COUNT,currentIceGuardCount);
			}
		}	
	}	
	// ��Ӽ� : �ǰݽ� �����ð� �� ���� 
	else if (type == ENUM_ELEMENT_LIGHT) 
	{
		if (!(parentObj.sq_GetTeam() == attacker.getTeam())) 
		{		
			local stunTime	= sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 4, skill_level); // 4. �� ���� �ð�

			local ap = sq_getNewAttackInfoPacket();
			ap.hitStunTimeAttackerDamager = stunTime;
			sq_SendHitObjectPacketByAttackInfo(parentObj, attacker, ap);
		}
	}
	// �ϼӼ� : �ǰݽ� ������ ��ȭ	
	else if (type == ENUM_ELEMENT_DARK) 
	{
		if (!(parentObj.sq_GetTeam() == attacker.getTeam())) 
		{
			local prob	= sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 5, skill_level)/10.0; // 5. ��ȭ Ȯ�� (0.1%)
			local level	= sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 6, skill_level); // 6. ��ȭ ����
			local time	= sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 7, skill_level); // 7. ���ӽð�
				
			sq_sendSetActiveStatusPacket(attacker, parentObj, ACTIVESTATUS_SLOW, prob.tofloat(), level, false, time); // Ȯ��, ����, ����, �ð�
		}
	}
}


function getMagicShieldAniPath(aniType, elementType)
{
	local commonPath = "Character/Mage/Effect/Animation/ATMagicShield/";	
	local aniName =  "00_shield_"; //ATMAGE_MAGIC_ANI_TYPE_BACK
	local typeName = "none"; // ENUM_ELEMENT_NONE
	
	if (aniType == ATMAGE_MAGIC_ANI_TYPE_FRONT) 
		aniName =  "01_shield_";
	else if (aniType == ATMAGE_MAGIC_ANI_TYPE_CIRCLE) 
		aniName =  "02_shield_";
	
	if (elementType == ENUM_ELEMENT_WATER)
		typeName = "ice";
	else if (elementType == ENUM_ELEMENT_FIRE)
		typeName = "fire";
	else if (elementType == ENUM_ELEMENT_DARK)
		typeName = "dark";
	else if (elementType == ENUM_ELEMENT_LIGHT)
		typeName = "light";
		
	return commonPath + aniName + typeName + "_dodge.ani";
}

function setMagicShieldType(appendage, obj, type)
{
	local parentObj = sq_GetCNRDObjectToSQRCharacter(obj);
	
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	local var = appendage.getVar();	
	
	local currentAniFrameIndex = 0; // ���� �Ӽ� ����Ʈ �ִϿ� �ű� ����Ʈ �ִϿ� ����ȭ�� ����.
	local backAni = var.getAnimation(VAR_MAGIC_SHIELD_BACK_ANI);
	local frontAni = var.getAnimation(VAR_MAGIC_SHIELD_FRONT_ANI);

	if (backAni && frontAni) {
		currentAniFrameIndex = sq_GetAnimationFrameIndex(backAni);
		sq_DeleteAni(backAni);
		sq_DeleteAni(frontAni);
	}
	
	backAni  = sq_CreateAnimation("", getMagicShieldAniPath(ATMAGE_MAGIC_ANI_TYPE_BACK, type));
	frontAni = sq_CreateAnimation("", getMagicShieldAniPath(ATMAGE_MAGIC_ANI_TYPE_FRONT, type));
	
	sq_SetAnimationFrameIndex( backAni, currentAniFrameIndex); // ������ ����ȭ
	sq_SetAnimationFrameIndex( frontAni, currentAniFrameIndex);		
	
	var.setAnimation(VAR_MAGIC_SHIELD_BACK_ANI,backAni); // ���� ���� : ��ġ ����ȭ��
	var.setAnimation(VAR_MAGIC_SHIELD_FRONT_ANI,frontAni);			
}

function setMagicShieldTime(obj,time)
{
	local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, "Character/ATMage/MagicShield/ap_MagicShield.nut");
	
	if (!appendage)
		return;

	appendage.sq_SetValidTime(time);
}

function proc_appendage_MagicShield(appendage)
{
	if (!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
				
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}				
	
	local var = appendage.getVar();				
	local objectsSize = var.get_obj_vector_size();	
	for (local i=0;i<objectsSize;++i)
	{
		local circle = var.get_obj_vector(i);
		if (circle)
			sq_SetCurrentPos(circle, parentObj.getXPos(), parentObj.getYPos()+1, parentObj.getZPos());		
	}
}



function onStart_appendage_MagicShield(appendage)
{
	if (!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
				
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	
	//���� �ʱ�ȭ
	local var = appendage.getVar();	
	local skill_level = sq_GetSkillLevel(parentObj, SKILL_MAGIC_SHIELD);
	local maxIceGuardHit = sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 3, skill_level); // 3. ���Ӽ� ������ ��� Ƚ��		
	var.setInt(VAR_MAGIC_SHIELD_ICE_HIT_COUNT, maxIceGuardHit);

	// ���⿡�� ĳ���� �Ӽ��� �޾ƿͼ� �Ӽ� ���� ��������.
	local elementalType = parentObj.getThrowElement();	
	setMagicShieldType(appendage, parentObj, elementalType);
	
	// �ð��� ����
	local skill_level = sq_GetSkillLevel(parentObj,SKILL_MAGIC_SHIELD);
	local time = sq_GetLevelData(parentObj, SKILL_MAGIC_SHIELD, 0, skill_level); // 0. ���ӽð�
	
	setMagicShieldTime(parentObj,time);
	parentObj.sq_PlaySound("ESHIELD_LOOP",SKILL_MAGIC_SHIELD);	
}



function onEnd_appendage_MagicShield(appendage)
{
	if (!appendage) {
		return;
	}	
		
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);		
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}	
	
	local var = appendage.getVar();	
	local backAni = var.getAnimation(VAR_MAGIC_SHIELD_BACK_ANI);
	local frontAni = var.getAnimation(VAR_MAGIC_SHIELD_FRONT_ANI);

	if (backAni && frontAni) {	
		sq_DeleteAni(backAni);
		sq_DeleteAni(frontAni);
	}			
		
	var.clear_obj_vector();	
	parentObj.stopSound(SKILL_MAGIC_SHIELD);		
}




