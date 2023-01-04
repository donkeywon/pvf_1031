function setCustomData_po_ATMagicBallLightMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallLight(obj, receiveData);
}

function setCustomData_po_ATMagicBallDarkMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallDark(obj, receiveData);
}

function setCustomData_po_ATMagicBallWaterMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallWater(obj, receiveData);
}

function setCustomData_po_ATMagicBallFireMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallFire(obj, receiveData);
}

function setCustomData_po_ATMagicBallNoneMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallNone(obj, receiveData);
}





// ������ü - ��Ӽ�
function setCustomData_po_ATMagicBallLight(obj, receiveData)
{
	if(!obj)
		return;
		
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);		
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallLightMove.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallLight", "PassiveObject/Character/Mage/Particle/ATMagicBallLightTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTail1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTail2.ptl");
	obj.sq_SetObjectParticlePos(0, -1, 0);
}


// ������ü - �ϼӼ�
function setCustomData_po_ATMagicBallDark(obj, receiveData)
{
	if(!obj)
		return;

	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();	
	local attackBonusRate = 0;
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	local mage = obj.getTopCharacter();
	if (!mage)
		return;

	local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_CHANGE);
	local skillLevel = sq_GetSkillLevel(mage, SKILL_ELEMENTAL_CHANGE);
	//attackBonusRate = sq_GetAttackBonusRate(skill, 6, 1.0) + attackBonusRate;
	attackBonusRate = sq_GetBonusRateWithPassive(mage, SKILL_ELEMENTAL_CHANGE, STATE_ELEMENTAL_CHANGE, 6, 1.0) + attackBonusRate;

	sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);

	// �ϼӼ��� ��쿣 ������ �߻����� �ʱ⶧���� �����̻��� ��ü�� �ٷ� �ɾ��ش�.
	local changeStatusLevel		= sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 7, skillLevel);// 7.���� ����
	local changeStatusProb		= sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 8, skillLevel);// 8.���� Ȯ��(0.1%)
	changeStatusProb /= 10;
	local changeStatusDuration	= sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 9, skillLevel);// 9.���� ���ӽð�
	local attackInfo			= sq_GetCurrentAttackInfo(obj);
	sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_CURSE, changeStatusProb, changeStatusLevel, changeStatusDuration);	


	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallDarkMove.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallDark", "PassiveObject/Character/Mage/Particle/ATMagicBallDarkTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTail1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTail2.ptl");
	obj.sq_SetObjectParticlePos(0, -1, 0);
}


// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallWater(obj, receiveData)
{
	if(!obj)
		return;
	
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	// ��ƼŬ�� �̵� ������ ������

	obj.sq_SetMoveParticle("Particle/ATMagicBallWaterMove.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallWaterTail", "PassiveObject/Character/Mage/Particle/ATMagicBallWaterTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTail1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTail2.ptl");
	obj.sq_SetObjectParticlePos(0, -1, 0);
}


// ������ü - ȭ�Ӽ�
function setCustomData_po_ATMagicBallFire(obj, receiveData)
{
	if(!obj)
		return;
	
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	// ��ƼŬ�� �̵� ������ ������

	obj.sq_SetMoveParticle("Particle/ATMagicBallFireMove.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallFireTail", "PassiveObject/Character/Mage/Particle/ATMagicBallFireTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTail1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTail2.ptl");
	obj.sq_SetObjectParticlePos(0, -1, 0);
}

// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallNone(obj, receiveData)
{
	if(!obj)
		return;
	
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallNoneMove.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallNoneTail", "PassiveObject/Character/Mage/Particle/ATMagicBallNoneTail.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallNoneTail.ptl");
	obj.sq_SetObjectParticlePos(0, -1, 0);
	
	local mage = obj.getTopCharacter();
	if (!mage)
		return;
	
	// �⺻�� ���� ����
	mage.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),mage.getState());	
	sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
}


function onAttack_po_ATMagicBallNone(obj, damager, boundingBox, isStuck)
{	// ��Ÿ ���Ӽ�
	if (!obj)
		return 0;
	return 0;
}




// ȭ�Ӽ� ���� ������Ʈ ����
function createFireExplosion(obj, damager, boundingBox, isStuck, passiveObjectIndex)
{
	if (!obj)
		return 0;
		
	if(!damager)
		return 0;

	local mage = obj.getTopCharacter();
	
	if (!mage)
		return 0;
	
	if (obj.isMyControlObject())
	{
		// ������ ���� ����
		// ������Ż ������ static data(3)�� ���ݷ� ���� parameter�� ������
		local var = obj.getVar();
		local bonusRate = 1.0;
		if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
		{
			local rate = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 3);
			bonusRate = rate.tofloat() / 100.0;
		}
		
		
		local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_CHANGE);
		local skillLevel = sq_GetSkillLevel(mage, SKILL_ELEMENTAL_CHANGE);
		local attackBonusRate = sq_GetBonusRateWithPassive(mage, SKILL_ELEMENTAL_CHANGE, STATE_ELEMENTAL_CHANGE, 1, bonusRate);
		local sizeRate = sq_GetIntData(mage, SKILL_ELEMENTAL_CHANGE, 0);
		local totalDamage = sq_GetCurrentAttackBonusRate(obj) + attackBonusRate;
		
		local x = sq_GetCenterXPos(boundingBox);
		local y = damager.getYPos() + 1;
		local z = sq_GetCenterZPos(boundingBox);
		
		sq_BinaryStartWrite()
		sq_BinaryWriteWord(sizeRate);		// ������ ũ��
		sq_BinaryWriteWord(totalDamage);	// ������		
		//sq_SendCreatePassiveObjectPacket(obj, passiveObjectIndex, 0, 0, 1, 0, ENUM_DIRECTION_NEUTRAL);
		print(" x:" + x + " y:" + y + " z:" + z);
		sq_SendCreatePassiveObjectPacketPos(mage, passiveObjectIndex, 0, x, y, z);
		
		//sq_SendDestroyPacketPassiveObject(obj);
		
	}
}


// ���� ���� ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFireMultiShot(obj, damager, boundingBox, isStuck)
{	// ���� ������ ȭ�Ӽ�
	createFireExplosion(obj, damager, boundingBox, isStuck, 24281);
	return 0;
}


// ���� ��Ÿ ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFire(obj, damager, boundingBox, isStuck)
{	// ��Ÿ ȭ�Ӽ�
	createFireExplosion(obj, damager, boundingBox, isStuck, 24214);
	return 0;
}


// ���Ӽ� ���� ������Ʈ ����
function createWaterExplosion(obj, damager, boundingBox, isStuck, passiveObjectIndex)
{
	if (!obj)
		return 0;
		
	if(!damager)
		return 0;

	local mage = obj.getTopCharacter();
	if (!mage)
		return 0;

	if (obj.isMyControlObject())
	{
		// ������ ���� ����
		// ������Ż ������ static data(3)�� ���ݷ� ���� parameter�� ������
		local var = obj.getVar();
		local bonusRate = 1.0;
		if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
		{
			local rate = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 3);
			bonusRate = rate.tofloat() / 100.0;
		}
		
		local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_CHANGE);
		local skillLevel = sq_GetSkillLevel(mage, SKILL_ELEMENTAL_CHANGE);
		//local attackBonusRate = sq_GetAttackBonusRate(skill, 2, 1.0);
		local attackBonusRate = sq_GetBonusRateWithPassive(mage, SKILL_ELEMENTAL_CHANGE, STATE_ELEMENTAL_CHANGE, 2, bonusRate);
		local sizeRate = sq_GetIntData(mage, SKILL_ELEMENTAL_CHANGE, 1);
				
		local totalDamage = sq_GetCurrentAttackBonusRate(obj) + attackBonusRate;
		
		local power = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 3, skillLevel);
		local prob = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 4, skillLevel);
		local validTime = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 5, skillLevel);
		
		local x = sq_GetCenterXPos(boundingBox);
		local y = damager.getYPos() + 1;
		local z = sq_GetCenterZPos(boundingBox);
		
		
		sq_BinaryStartWrite()
		sq_BinaryWriteWord(sizeRate);			// ������ ũ��
		sq_BinaryWriteWord(totalDamage);		// ������
		sq_BinaryWriteByte(ACTIVESTATUS_FREEZE);// ���� �����̻�
		prob = prob / 10.0;
		sq_BinaryWriteFloat(prob.tofloat());	// Ȯ�� (0.1%)
		sq_BinaryWriteFloat(power.tofloat());	// ����
		sq_BinaryWriteDword(validTime);			// ���ӽð�
		//sq_SendCreatePassiveObjectPacket(obj, passiveObjectIndex, 0, 0, 1, 0, ENUM_DIRECTION_NEUTRAL);
		
		sq_SendCreatePassiveObjectPacketPos(mage, passiveObjectIndex, 0, x, y, z);
	}
}


// ���� ���� ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWaterMultiShot(obj, damager, boundingBox, isStuck)
{	// ���� ������ ȭ�Ӽ�
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24282);
	return 0;
}


// ���� ��Ÿ ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWater(obj, damager, boundingBox, isStuck)
{
	// ��Ÿ ���Ӽ�
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24215);
	return 0;
}

function onAttack_po_ATMagicBallDark(obj, damager, boundingBox, isStuck)
{	// ��Ÿ �ϼӼ�
	if (!obj)
		return 0;

	return 0;
}


// ��Ӽ� ���� ������Ʈ ����
function createLightExplosion(obj, damager, boundingBox, isStuck, passiveObjectIndex)
{
	if(!damager)
		return 0;
		
	if (!obj)
		return 0;

	local mage = obj.getTopCharacter();
	if (!mage)
		return 0;

	if (obj.isMyControlObject())
	{
		// ������ ���� ����
		// ������Ż ������ static data(3)�� ���ݷ� ���� parameter�� ������
		local var = obj.getVar();
		local bonusRate = 1.0;
		if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
		{
			local rate = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 3);
			bonusRate = rate.tofloat() / 100.0;
		}
		
		local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_CHANGE);
		local skillLevel = sq_GetSkillLevel(mage, SKILL_ELEMENTAL_CHANGE);
		//local attackBonusRate = sq_GetAttackBonusRate(skill, 10, 1.0);
		local attackBonusRate = sq_GetBonusRateWithPassive(mage, SKILL_ELEMENTAL_CHANGE, STATE_ELEMENTAL_CHANGE, 10, bonusRate);
		local sizeRate = sq_GetIntData(mage, SKILL_ELEMENTAL_CHANGE, 2);
		
		// �����̻� ����, Ȯ��, ���ӽð�
		local power = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 11, skillLevel);
		local prob = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 12, skillLevel);
		local validTime = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 13, skillLevel);
		local damage = sq_GetLevelData(mage, SKILL_ELEMENTAL_CHANGE, 14, skillLevel);
		local totalDamage = sq_GetCurrentAttackBonusRate(obj) + attackBonusRate;
		
		local x = sq_GetCenterXPos(boundingBox);
		local y = damager.getYPos() + 1;
		local z = sq_GetCenterZPos(boundingBox);
		
		
		sq_BinaryStartWrite()
		sq_BinaryWriteWord(sizeRate);			// ������ ũ��
		sq_BinaryWriteWord(totalDamage);	// ������
		sq_BinaryWriteByte(ACTIVESTATUS_LIGHTNING);	// ���� �����̻�
		prob = prob / 10.0;
		sq_BinaryWriteFloat(prob.tofloat());	// Ȯ�� (0.1%)
		sq_BinaryWriteFloat(power.tofloat());	// ����
		sq_BinaryWriteDword(validTime);			// ���ӽð�
		sq_BinaryWriteDword(damage);			// ���� ������
		//sq_SendCreatePassiveObjectPacket(obj, passiveObjectIndex, 0, 0, 1, 0, ENUM_DIRECTION_NEUTRAL);
		
		print(" x:" + x + " y:" + y + " z:" + z);
		sq_SendCreatePassiveObjectPacketPos(mage, passiveObjectIndex, 0, x, y, z);
		
		
	}
}


// ���� ��Ÿ ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLight(obj, damager, boundingBox, isStuck)
{
	createLightExplosion(obj, damager, boundingBox, isStuck, 24216);
	return 0;
}


// ���� ���� ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLightMultiShot(obj, damager, boundingBox, isStuck)
{
	createLightExplosion(obj, damager, boundingBox, isStuck, 24283);
	return 0;
}


function procAppend_po_ATMagicBallNone(obj)
{
}

