PO_MAGIC_CANNON_STATE_CREATE	<- 2;
PO_MAGIC_CANNON_STATE_SHOOT		<- 3;

PO_MAGIC_CANNON_VAR_SHOOT_POSITION <- 0;
PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE <- 1;

function setCustomData_po_ATMagicCannon(obj, receiveData)
{
	if(!obj) return;
	
	local shootPosition	= receiveData.readWord();
	local elementalType	= receiveData.readWord();
	
	obj.setTimeEvent(0,2000,1,false); // 0�� �ε����� Ÿ�̸�, �ʴ��� �̺�Ʈ �߻�, 1����, ó���� �������.
	local var = obj.getVar();
	var.setInt(PO_MAGIC_CANNON_VAR_SHOOT_POSITION, shootPosition);
	var.setInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE, elementalType);
		
	if(elementalType != ENUM_ELEMENT_NONE) {
		setCurrentAnimationFromCutomIndex(obj,elementalType);		
	}
	
	// �ϼ��� ��� ���� ������ ����.
	if(elementalType == ENUM_ELEMENT_DARK) {
		local parentObj = obj.getTopCharacter();
		parentObj = sq_ObjectToSQRCharacter(parentObj);
		
		if(!parentObj)
			return;		
		
		local skill_level			= sq_GetSkillLevel(parentObj, SKILL_ELEMENTAL_CHANGE);	
		local changeStatusLevel		= sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 7, skill_level);// 7.���� ����
		local changeStatusProb		= sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 8, skill_level);// 8.���� Ȯ��(0.1%)
		local changeStatusDuration	= sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 9, skill_level);// 9.���� ���ӽð�
		local attackInfo			= sq_GetCurrentAttackInfo(obj);
		sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_CURSE, changeStatusProb, changeStatusLevel, changeStatusDuration);			
		
		local attackPower = 0;		
		attackPower = parentObj.sq_GetBonusRateWithPassive(SKILL_MAGIC_CANNON, STATE_MAGIC_CANNON, elementalType, 1.0);
		sq_SetAddWeaponDamage(attackInfo, true);
		sq_SetCurrentAttackBonusRate(attackInfo, attackPower);
		
		// �ٸ� �������� ���߿��� �������� ó���ϱ� ������ ������&�۵��� ����ϳ�
		// �ϼ��� ������ ��ü���� �������� ó���ϱ� ������ ���������� ����
		attackInfo.setAttackType(ATTACKTYPE_MAGICAL); 
		
		//������ ��ǰ� �׼� ����
		//DAMAGEACT_NONE = 0,		/// ���� ����
		//DAMAGEACT_DAMAGE = 1,	/// ������ ���
		//DAMAGEACT_DOWN = 2,		/// �ٿ�
		sq_SetCurrentAttackeDamageAct(attackInfo, 1);
		attackInfo.setElement(ENUM_ELEMENT_DARK);
	}
}

function addMagicCannonEffect(obj,vangle)
{	
	if(!obj)
		return;
	local var = obj.getVar();
	local elementalType = var.getInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE);
	local currentAni = obj.getCurrentAnimation();
	local typeName = "none";
	
	switch(elementalType) 
	{
	case ENUM_ELEMENT_FIRE  : typeName = "fire"; break;
	case ENUM_ELEMENT_WATER : typeName = "water"; break;
	case ENUM_ELEMENT_DARK  : typeName = "dark"; break;
	case ENUM_ELEMENT_LIGHT : typeName = "light"; break;	
	default : return;
	}
			
	local effect = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATMagicCannon/01_" + typeName + "_dodge.ani", 0 ,0 ,0);	
	effect.setCustomRotate(true, sq_ToRadian(vangle));	
}

function onKeyFrameFlag_po_ATMagicCannon(obj, keyIndex)
{
	if(!obj)
		return false;
	if(keyIndex == 1) {
		obj.sendStateOnlyPacket(PO_MAGIC_CANNON_STATE_SHOOT);		
	}
	
	return true;
}

function onTimeEvent_po_ATMagicCannon(obj, timeEventIndex, timeEventCount)
{
	if(!obj)
		return false;
	if(obj.isMyControlObject())
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	return true; // true�� �ݹ� �ߴ�
} 

function setState_po_ATMagicCannon(obj, state, datas)
{
	if(!obj) return;	
	
	local var = obj.getVar();		
	local shootPosition = var.getInt(PO_MAGIC_CANNON_VAR_SHOOT_POSITION);
	local elementalType = var.getInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE);

	if (state == PO_MAGIC_CANNON_STATE_SHOOT) {			
		local vangle = 0.0;		// ����
		if(shootPosition == ENUM_MAGIC_CANNON_SUBSTATE_VERTICAL)
			vangle = -90.0;		// ����		
		else if(shootPosition == ENUM_MAGIC_CANNON_SUBSTATE_DIAGONAL)
			vangle = -45.0;		 // �밢��
			
		if(elementalType != ENUM_ELEMENT_NONE) { // ���Ӽ��� �̹��� ����Ʈ �̹���
			setCurrentAnimationFromCutomIndex(obj,ENUM_ELEMENT_MAX + elementalType);			
			obj.setCustomRotate(true, sq_ToRadian(vangle));
		}
		
		obj.sq_SetMoveParticle("Particle/ATMagicCannon.ptl", 0.0, vangle);
		addMagicCannonEffect(obj,vangle); // �� �ϴ� ����Ʈ		
		
		local fireSound = "MWSHOW_04";
		
		if (elementalType == ENUM_ELEMENT_FIRE)
			fireSound = "MCANNON_FIRE";
		else if (elementalType == ENUM_ELEMENT_WATER)
			fireSound = "MCANNON_ATK";
		else if (elementalType == ENUM_ELEMENT_DARK)
			fireSound = "MCANNON_DARK";
		else if (elementalType == ENUM_ELEMENT_LIGHT)
			fireSound = "MCANNON_LIGHT";
			
		obj.sq_PlaySound(fireSound);		
	}
}

function createMagicCannonElementlalExplosion(obj)
{
	if(!obj)
		return;
	local var = obj.getVar();
	local elementalType = var.getInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE);
	if(!obj.isMyControlObject())
		return;
			
	if(elementalType == ENUM_ELEMENT_DARK) //�ϼ��� ��� �������� �ʴ´�.
		return;
			
	local changeStatusType		= ACTIVESTATUS_MAX;
	local parentObj				= sq_GetCNRDObjectToCharacter(obj.getParent());
	local skill_level			= sq_GetSkillLevel(parentObj, SKILL_ELEMENTAL_CHANGE);	
	local changeStatusDuration	= sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 0, skill_level);	
	local changeStatusProb		= 0.0;
	local changeStatusLevel		= 0.0;
	local changeStatusdamage	= 0;
	
	// ����ĳ���� ���� ũ��(%)
	local sizeRate				= sq_GetIntData(parentObj, SKILL_MAGIC_CANNON, 0);
	
	
	switch (elementalType)
	{
	case ENUM_ELEMENT_WATER : 
		changeStatusType		= ACTIVESTATUS_FREEZE;
		changeStatusLevel		=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 3, skill_level);// 3.���� ����
		changeStatusProb		=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 4, skill_level);// 4.���� Ȯ��(0.1%)
		changeStatusDuration	=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 5, skill_level);// 5.���� ���ӽð�
		break;
		
	case ENUM_ELEMENT_LIGHT : 
		changeStatusType		= ACTIVESTATUS_LIGHTNING;
		changeStatusLevel		=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 11, skill_level);// 11.���� ����
		changeStatusProb		=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 12, skill_level);// 12.���� Ȯ��(0.1%)
		changeStatusDuration	=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 13, skill_level);// 13.���� ���ӽð�
		changeStatusdamage		=	sq_GetLevelData(parentObj, SKILL_ELEMENTAL_CHANGE, 14, skill_level);// 14.���� ������
		break;
	}			
		
	local explosionInfo = sq_getNewAttackInfoPacket();
	
	// ����ĳ���� ���� ũ��(%)
	explosionInfo.sizeRate = sizeRate;
	
	if (changeStatusType != ACTIVESTATUS_MAX)
	{
		explosionInfo.changeStatusType		= changeStatusType; 
		explosionInfo.changeStatusProb		= changeStatusProb.tofloat();  // Ȯ��
		explosionInfo.changeStatusLevel		= changeStatusLevel.tofloat(); // ����	
		explosionInfo.changeStatusDuration	= changeStatusDuration;
		explosionInfo.changeStatusdamage	= changeStatusdamage;
	}
	
	
	local parentObj = obj.getParent();
	parentObj = sq_ObjectToSQRCharacter(parentObj);
	
	local attackPower = 0;
	if(parentObj) {
		attackPower = parentObj.sq_GetBonusRateWithPassive(SKILL_MAGIC_CANNON, STATE_MAGIC_CANNON, elementalType, 1.0);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackPower);		
	}
	
	if(0 != attackPower) {
		explosionInfo.powerRate	= attackPower;
		explosionInfo.useWeapon	= true;
	}	
		
	sq_createCommonElementalAttack(obj, elementalType, 0, 0, 0, explosionInfo);	
}

function onAttack_po_ATMagicCannon(obj, damager, boundingBox, isStuck)
{	
	if(!obj)
		return 0;

	local var = obj.getVar();
	local elementalType = var.getInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE);
	local state = obj.getState();
	if (state == PO_MAGIC_CANNON_STATE_SHOOT && elementalType != ENUM_ELEMENT_DARK) {		
		createMagicCannonElementlalExplosion(obj);
		sq_SendDestroyPacketPassiveObject(obj);
	}
	
		
	
	local fireSound = "R_MWSHOT_HIT";	
	if (elementalType == ENUM_ELEMENT_FIRE)
		fireSound = "R_FIRESHOT_HIT";
	else if (elementalType == ENUM_ELEMENT_WATER)
		fireSound = "R_ICE_HIT";
	else if (elementalType == ENUM_ELEMENT_DARK)
		fireSound = "R_DARKSHOT_HIT";
	else if (elementalType == ENUM_ELEMENT_LIGHT)
		fireSound = "R_LIGHTSHOT_HIT";
	obj.sq_PlaySound(fireSound);	
			
	return 0;
}

function procAppend_po_ATMagicCannon(obj)
{
	if(obj.getZPos() <= 0)
	{
		createMagicCannonElementlalExplosion(obj);
		sq_SendDestroyPacketPassiveObject(obj);
		
		local var = obj.getVar();
		local elementalType = var.getInt(PO_MAGIC_CANNON_VAR_ELEMENTAL_TYPE);
		local fallSound = "MANTLE_TIGHTEN";
		
		if (elementalType == ENUM_ELEMENT_FIRE)
			fallSound = "MCANNON_FIREFALL";
		else if (elementalType == ENUM_ELEMENT_WATER)
			fallSound = "MCANNON_CRASH_02";
		else if (elementalType == ENUM_ELEMENT_DARK)
			fallSound = "MCANNON_DARKFALL";		
		else if (elementalType == ENUM_ELEMENT_LIGHT)
			fallSound = "MCANNON_LIGHTFALL";				
		
		obj.sq_PlaySound(fallSound);	
	}
}


function onEndCurrentAni_po_ATMagicCannon(obj)
{
	if(!obj) return;
}
