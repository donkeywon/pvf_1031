
function destroyObject(obj)
{
	local objListSize = obj.getVar().get_obj_vector_size();
	for(local i =0;i<objListSize;++i)
	{
		local vObj = obj.getVar().get_obj_vector(i);
		if(vObj == null)
			continue;

		vObj.setValid(false);
	}

	obj.getVar().clear_obj_vector();

}

function destroyObjectByVar(obj, varStr)
{
	local objListSize = obj.getVar(varStr).get_obj_vector_size();
	for(local i =0;i<objListSize;++i)
	{
		local vObj = obj.getVar(varStr).get_obj_vector(i);
		if(vObj == null)
			continue;

		vObj.setValid(false);
	}

	obj.getVar(varStr).clear_obj_vector();

}


function getAngle(xPos1, yPos1, xPos2, yPos2)
{
	// �� �������� �Ÿ��� ���Ѵ�
	local xDistance = (xPos2 - xPos1);
	local yDistance = (yPos2 - yPos1);

	print(" xDistance:" + xDistance + " yDistance:" + yDistance);

	xDistance = sq_Abs(xDistance);
	yDistance = sq_Abs(yDistance);

	// ��ũ ź��Ʈ�� ������ ���Ѵ�
	local radian = sq_Atan2(yDistance.tofloat(), xDistance.tofloat());

	// ������ degree �� ��ȯ
	local angle = sq_ToDegree(radian);
	// 0 ~ 360 ������ ���� ���ϱ� ����
	// 360 �� ���ϴ� ������ 360���� ���� ���� �׿������� �ϸ�
	// 0 �� �����Ƿ�
	print(" radian:" + radian + " angle:" + angle);
	return (angle + 360) % 360;
}

function getObjectAngle(orgObj, dstObj)
{
	if(!orgObj || !dstObj)
		return 9999.0;

	return getAngle(orgObj.getXPos(), orgObj.getYPos(), dstObj.getXPos(), dstObj.getYPos());
}



function isInFrontObject(orgObj, dstObj)
{ // ���� �� �տ� �ִ��� üũ�ϴ� �Լ� �Դϴ�.
	if(orgObj.getDirection() == ENUM_DIRECTION_RIGHT)
	{
		if(orgObj.getXPos() < dstObj.getXPos())
			return true;
	}
	else
	{
		if(orgObj.getXPos() > dstObj.getXPos())
			return true;
	}

	return false;
}


// �Ÿ��� ������ Ÿ���� ã�Ƴ��� �����ϴ� �Լ��Դϴ�.
function findAngleTarget(obj, distance, angle, targetMaxHeight)
{
	if(!obj)
		return null;

	local objectManager = obj.getObjectManager();


	if (objectManager == null)
		return null;

	local minDistance = 0;
	local target = null;


	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE) &&
			isInFrontObject(obj, object) && object.getZPos() <= targetMaxHeight)
		{
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			//	���� ������ ���� ����� ���� ������

			if(!activeObj.isDead())
			{
				//local testAngle = CNRDObject.getAngle(0, 0, 10, 10, false);

				print( " angle:" + getObjectAngle(obj, object));
				if(sq_GetDistanceObject(obj, object, false) < distance && getObjectAngle(obj, object) < angle)
				{
					if (target == null || sq_GetDistanceObject(obj, object, false) < minDistance)
					{
						target = activeObj;
						minDistance = sq_GetDistanceObject(obj, object, false);
					}
				}
			}
		}
	}

	return target;
}

// ��û�� ���� getvar ������Ʈ ����Ʈ�ȿ� ���� ������Ʈ�� �ִ��� üũ�ϴ� �Լ��Դϴ�.
// orgObj : ���� object�Դϴ�.
// sq_var get_obj_vector_size ���� ����Ʈ��
function isSameObjectBySqVar(orgObj, sq_var)
{
	if(!orgObj || !sq_var)
		return false;

	local i;
	local object_num = sq_var.get_obj_vector_size();

	for(i = 0; i < object_num; i++)
	{ // �� ������Ʈ �ִϸ��̼��� ��������� �ϴ� �ִϸ��̼����� ��� ��ü�Ѵ�..
		local dstObj = sq_var.get_obj_vector(i);

		local isSame = isSameObject(orgObj, dstObj);

		if(isSame) // �ߺ��Ǵ� ���� �ִٸ�..
			return true;
	}

	return false;

}

function getBossTarget(obj, firstTargetXStartRange, firstTargetXEndRange, firstTargetYRange, targetMaxHeight, exceptSqVar)
{
	if(!obj)
		return null;

	local objectManager = obj.getObjectManager();


	if (objectManager == null)
		return null;

	//local minDistance = 0;
	local target = null;


	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE) &&
			isInFrontObject(obj, object) && object.getZPos() <= targetMaxHeight )
		{
			if(sq_IsinMapArea(obj, object, firstTargetXStartRange, firstTargetXEndRange, firstTargetYRange))
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);

				if(!activeObj.isDead())
				{ // ���� ����
					if(activeObj.isBoss())
					{ // ����
						local isExist = isSameObjectBySqVar(object, exceptSqVar);

						if(!isExist || target == null)
						{
							target = activeObj;
						}
					}
				}
			}
		}
	}

	return target;

}

function getPriorityTarget(obj, firstTargetXStartRange, firstTargetXEndRange, firstTargetYRange, targetMaxHeight, exceptSqVar, isInFront)
{
	if(!obj)
		return null;

	local objectManager = obj.getObjectManager();


	if (objectManager == null)
		return null;

	//local minDistance = 0;
	local target = null;


	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE) &&
			object.getZPos() <= targetMaxHeight )
		{
			if(isInFront == true)
			{
				if(isInFrontObject(obj, object) == false)
				{
					continue;
				}
			}
			if(sq_IsinMapArea(obj, object, firstTargetXStartRange, firstTargetXEndRange, firstTargetYRange))
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);

				if(!activeObj.isDead())
				{ // ���� ����
					local isExist = isSameObjectBySqVar(object, exceptSqVar);

					if(activeObj.isBoss())
					{
						if(target == null)
						{
							target = activeObj;

							if(!isExist)
								return target;
						}
					}

					if(activeObj.isSuperChampion())
					{ // ����
						if(target == null || !isExist)
						{
							target = activeObj;

							if(!isExist)
								return target;
						}
					}

					if(activeObj.isCommonChampion())
					{
						if(target == null || !isExist)
						{
							target = activeObj;

							if(!isExist)
								return target;
						}
					}

					if(activeObj.isChampion())
					{
						if(target == null || !isExist)
						{
							target = activeObj;

							if(!isExist)
								return target;
						}
					}

					if(target == null || !isExist)
					{
						target = activeObj;

						if(!isExist)
							return target;
					}
				}
			}
		}
	}

	return target;

}



function createPaticleMap(obj, filename, x, y, z)
{
	local particleCreater = obj.getVar().GetparticleCreaterMap(filename, filename, obj);

	particleCreater.Restart(0);
	particleCreater.SetPos(x, y, z);
	sq_AddParticleObject(obj, particleCreater);
}

function initGetVarTimer(obj, maxTimerNum, eventTerm, eventMaxCount)
{
	if(maxTimerNum <= 0)
		return;

	local sq_var = obj.getVar();

	sq_var.clear_timer_vector();

	for (local i = 0;i < maxTimerNum; i+=1)
	{
		sq_var.push_timer_vector();
	}

	for (local i = 0;i < maxTimerNum; i+=1)
	{
		local t = sq_var.get_timer_vector(i);
		t.setParameter(eventTerm, eventMaxCount);
		t.resetInstant(i);
	}

}


function procParticleCreaterMap(obj, currentT, filename, x, y, z)
{
	local t = obj.getVar().get_timer_vector(0);

	if(!t)
		return;

	if(t.isOnEvent(currentT) == true)
	{
		local particleCreater = obj.getVar().GetparticleCreaterMap(filename, filename, obj);

		particleCreater.Restart(0);
		particleCreater.SetPos(x, y, z);

		sq_AddParticleObject(obj, particleCreater);
	}
}


function createAnimationPooledObject(obj, aniFilename, isAutoDestroy, x, y, z)
{
	local ani = sq_CreateAnimation("",aniFilename);
	local pooledObj = sq_CreatePooledObject(ani,isAutoDestroy);

	pooledObj.setCurrentPos(x,y,z);
	sq_SetCurrentDirection(pooledObj, obj.getDirection());

	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	return pooledObj;
}

function createAnimationImageRatePooledObject(obj, aniFilename, isAutoDestroy, widthRate, heightRate, x, y, z)
{
	local ani = sq_CreateAnimation("",aniFilename);

	if(!ani)
		return null;

	ani.setImageRateFromOriginal(widthRate, heightRate);

	local pooledObj = sq_CreatePooledObject(ani,isAutoDestroy);

	pooledObj.setCurrentPos(x,y,z);
	sq_SetCurrentDirection(pooledObj, obj.getDirection());

	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	return pooledObj;
}




function procSkill_IceRoad(obj)
{
	local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap_ATMage_IceRoad.nut");

	if(appendage) {
		local isvalid = appendage.isValid();
		if(isvalid) {
			local currentT = appendage.getTimer().Get();
			local t = appendage.sq_var.get_timer_vector(0);
			local t2 = appendage.sq_var.get_timer_vector(1); // ���������� ����°Ͱ� ������ ���ǼҸ�� �ٸ�Ÿ�̸ӷ� ���ư��� mp�Ҹ� ��ŵ�ϴ�.

			if (t2.isOnEvent(currentT) == true)
			{
				local skill = sq_GetSkill(obj, SKILL_ICEROAD);
				if(skill)
				{
					local skill_level = obj.sq_GetSkillLevel(SKILL_ICEROAD);
					local spendMp = obj.sq_GetLevelData(SKILL_ICEROAD, SKL_LV_0, skill_level); // 0.�ð���MP �Ҹ�
					if (spendMp > obj.getMp())
					{
						appendage.setValid(false);
						skill.setSealActiveFunction(true);
						return;
					}
					else
					{
						// MP�� ����ϴٸ� ������ �� �������� �����..
						print( " spendMp:" + spendMp);
						obj.sendSetMpPacket(obj.getMp() - spendMp);
					}

				}
			}

			if (t.getEventTerm() == -1)
				return;

			if (t.isOnEvent(currentT) == true)
			{
				if(obj.isMyControlObject())
				{
					if(obj.getZPos() == 0)
					{
						local skill_level = sq_GetSkillLevel(obj, SKILL_ICEROAD);
						local change_time = sq_GetLevelData(obj, SKILL_ICEROAD, SKL_LV_1, skill_level); // ���ӽð�
						local rate = sq_GetLevelData(obj, SKILL_ICEROAD, SKL_LV_3, skill_level); // �̼� Ȯ��
						local movSpd = sq_GetLevelData(obj, SKILL_ICEROAD, SKL_LV_2, skill_level); //

						sq_BinaryStartWrite();
						sq_BinaryWriteDword(change_time);	// �ð�
						sq_BinaryWriteDword(rate);			// Ȯ��
						sq_BinaryWriteDword(movSpd);		// ����ġ

						// ���̽� �ε� Ư�� �нú� ��ų�� ����ٸ� ���� ���� ���� �����̻� �ɸ���.
						local skillLevel = sq_GetSkillLevel(obj, SKILL_ICEROAD_EX);
						sq_BinaryWriteWord(skillLevel);

						if (skillLevel > 0)
						{
							local prob = sq_GetLevelData(obj, SKILL_ICEROAD_EX, 4, skillLevel) / 10.0;// �����̻� ������ Ȯ��
							local asLevel = sq_GetLevelData(obj, SKILL_ICEROAD_EX, 5, skillLevel);	// �����̻� ������ ����
							local validTime = sq_GetLevelData(obj, SKILL_ICEROAD_EX, 6, skillLevel);	// �����̻� ������ �ð�
							sq_BinaryWriteFloat(prob.tofloat());	// Ȯ��
							sq_BinaryWriteWord(asLevel);			// ����
							sq_BinaryWriteDword(validTime);			// �ð�
						}

						sq_SendCreatePassiveObjectPacket(obj, 24243, 0, 0, 0, 0, obj.getDirection());
					}
				}
			}
		}
	}
}

function playMoveSound_ATMage(obj)
{
	//obj.sq_PlaySound("R_ICE_WALK");

	if(!obj)
		return;

	local result = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/IceRoad/ap_ATMage_IceRoad.nut");

	if (result == true) // ���̽��ε带 �ѳ��� �� ���ڱ��Ҹ��� �ٲ�ϴ�.
	{
		obj.sq_PlaySound("R_ICE_WALK_LOOP", SOUND_ID_MOVE);
	}
	else
	{
		obj.sq_PlayMoveSound();
	}
}

function procDash_ATMage(obj)
{
	if(!obj)
		return;

	local ani = sq_GetCurrentAnimation(obj);

	if(!ani)
		return;

	local isFlag = obj.sq_IsKeyFrameFlag(ani, 1);


	local result = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/IceRoad/ap_ATMage_IceRoad.nut");

	if (result == true) // ���̽��ε带 �ѳ��� �� ���ڱ��Ҹ��� �ٲ�ϴ�.
	{

		if(isFlag)
		{
			obj.sq_PlaySound("R_ICE_WALK");
		}

		obj.sq_ClearKeyFrameFlag(ani);
	}
	else
	{
		//print(" procDash");

		if (isFlag)
		{
			local stage = sq_GetGlobaludpModuleStage();
			if(!stage)
				return;

			local dungeon = sq_GetDungeonByStage(stage);

			if(!dungeon)
				return;

			local dungeonIndex = sq_GetDuegonIndex(dungeon);
			local mapIndex = sq_GetMapIndex(stage);

			//������ ������ ��� 40��, ������ ���� PVP���� ��� 50019��.
			if (dungeonIndex == 40 || mapIndex == 50019)
			{
				obj.sq_PlaySound("R_RUN_SNOW");
			}
			else
			{
				local weight = sq_GetObjectWeight(obj);
				if (sq_GetShadowTypeByAnimation() != 0)
					obj.sq_PlaySound("R_RUN_FLOOR");
				else if (weight < LIGHT_OBJECT_MAX_WEIGHT)
					obj.sq_PlaySound("RUN_STONE");
				else if (weight < MIDDLE_OBJECT_MAX_WEIGHT)
					obj.sq_PlaySound("RUN_SOIL");
				else
					obj.sq_PlaySound("RUN_GRASS");
			}
		}
		obj.sq_ClearKeyFrameFlag(ani);

	}
}





function procSkill_MagicShield(obj)
{
}


function procSkill_MagicShield(obj)
{
}

function getImmuneTypeDamgeRate_ATMage(obj,damageRate, attacker)
{
	// �ұ�� ���Ÿ� ������ �������� N%��ŭ ���ҽ�Ű��, ������ ���� �ʽ��ϴ�.
	if(obj.getVar("firepillar").size_vector() > 0)
	{
		if(obj.getVar("firepillar").get_vector(VECTOR_FLAG_2))
		{
			if(attacker)
			{
				print( " damageRate:" + damageRate);
				local skillLevel = obj.sq_GetSkillLevel(SKILL_FIREPILLAR);
				local N = obj.sq_GetLevelData(SKILL_FIREPILLAR, 0, skillLevel); // 0.���Ÿ� �����ٿ��ִ� ����ġ(%)
				// ���Ÿ� �����̶��..
				damageRate = damageRate - N;
				//damageRate = 10;
				print( " convert damageRate:" + damageRate);
			}
		}
	}

	// �һ�� ȸ���ÿ� �������� 2��(1.5��?) ����.
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap_ATMage_DieHardSlowHeal.nut")) //
	{
		//0. �ǰݽ� �޴� ������ ������(%)
		local increaseDamageRate = sq_GetIntData(obj, SKILL_DIEHARD, SKL_STATIC_INT_IDX_0);

		//increaseDamageRate.tofloat() / 100.0;
		damageRate = damageRate + increaseDamageRate;
	}

	return damageRate;
}

function getImmuneType_ATMage(obj,type, attacker)
{
	local immuneType = type;

	return immuneType;
}

function procSkill_ATMage(obj)
{
	procSkill_IceRoad(obj);
	procSkill_MagicShield(obj);

}



function useSkill_before_ATMage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	local bChangedMp = false;

	print(" consumpMp:" + consumeMp + " oldSkillMpRate:" + oldSkillMpRate);

	local appendage = obj.GetSquirrelAppendage("Character/ATMage/ManaBurst/ap_ATMage_ManaBurst.nut");

	if(appendage)
	{
		local isvalid = appendage.isValid();

		if(isvalid)
		{
			local skillLevel = obj.sq_GetSkillLevel(SKILL_MANABURST);
			local mpComsumeRate = sq_GetLevelData(obj, SKILL_MANABURST, SKL_LVL_COLUMN_IDX_0, skillLevel);
			local newMpRate = oldSkillMpRate.tofloat() * (100 + mpComsumeRate.tofloat()) / 100;

			print(" newMpRate:" + newMpRate);
			obj.setSkillMpRate(skillIndex, newMpRate.tofloat());
			bChangedMp = true;
		}
	}

	if(obj.sq_GetSkillLevel(SKILL_EXPRESSION) > 0)
	{
		local skillLevel = obj.sq_GetSkillLevel(SKILL_EXPRESSION);
		local skillMpRate = obj.getSkillMpRate(skillIndex);
		local mpComsumeRate = sq_GetLevelData(obj, SKILL_EXPRESSION, 0, skillLevel);
		local newMpRate = skillMpRate.tofloat() * (100 - mpComsumeRate.tofloat()) / 100;

		//print(" expression consumeMp oldMpRate:" + skillMpRate.tofloat() + " skillIndex:" + skillIndex);
		//print(" expression consumeMp newMpRate:" + newMpRate.tofloat());
		//print(" expression consumeMp mpComsumeRate:" + mpComsumeRate.tofloat());

		obj.setSkillMpRate(skillIndex, newMpRate.tofloat());
	}

	print(" now consumpMp:" + obj.getSkillMpRate(skillIndex));

	return true;
}

function useSkill_after_ATMage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj)
		return false;

	obj.setSkillMpRate(skillIndex, oldSkillMpRate.tofloat());
	print(" after set consumpMp:" + oldSkillMpRate);

	return true;
}



// getAttackAni()
// �ʿ信 ���� ��Ÿ����� �ٲ�, �� �Լ����� ó������
// ��) ����ü ��ų
function getAttackAni_ATMage(obj, index)
{
	if (!obj)
		return null;

	local animation = obj.sq_GetAttackAni(index);

	// ����ü ��ų�� ����ٸ�, ��Ÿ ���ϸ��̼��� �ٲ�
	// �������� �߻���� ����.
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_ICE_ELEMENTAL_ATTACK1 + index);

	return animation;
}



// getDashAttackAni()
// �ʿ信 ���� ��Ÿ����� �ٲ�, �� �Լ����� ó������
// ��) ����ü ��ų
function getDashAttackAni_ATMage(obj)
{
	if (!obj)
		return null;

	local animation = obj.sq_GetDashAttackAni();

	// ����ü ��ų�� ����ٸ�, ��Ÿ ���ϸ��̼��� �ٲ�
	// �������� �߻���� ����.
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_ICE_ELEMENTAL_DASH_ATTACK);

	return animation;
}



// getJumpAttackAni()
// �ʿ信 ���� ��Ÿ����� �ٲ�, �� �Լ����� ó������
// ��) ����ü ��ų
function getJumpAttackAni_ATMage(obj)
{
	if (!obj)
		return null;

	local animation = obj.sq_GetJumpAttackAni();

	// ����ü ��ų�� ����ٸ�, ��Ÿ ���ϸ��̼��� �ٲ�
	// �������� �߻���� ����.
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_ICE_ELEMENTAL_JUMP_ATTACK);

	return animation;
}

// �⺻ ������ �ִ� ��Ÿ�ΰ�?
// ����ü�� ���� �ִ� 3Ÿ���� ��Ÿ�� �̷����
function getAttackCancelStartFrameSize_ATMage(obj)
{
	local maxAttackNumber = obj.sq_GetAttackCancelStartFrameSize();

	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	// �ִ밳������ 1���� ���� �����ϸ� ��
	if (skillLevel > 0)
		maxAttackNumber = 2;

	return maxAttackNumber;
}

function setState_ATMage_ARR(obj, state, datas, isResetTimer)
{
	if(state == STATE_DIE)
		obj.sq_RemoveSkillLoad(SKILL_HOLONG_LIGHT);	// ������ ȣ�պ� UI ����
	return 0;
}

function getDefaultAttackInfo_ATMage(obj, index)
{
	if (!obj)
		return null;

	local attackInfo = obj.sq_GetDefaultAttackInfo(index);

	// ��Ÿ �������� ����
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_ICE_ELEMENTAL_ATTACK1 + index);
	}

	return attackInfo;
}

function getDashAttackInfo_ATMage(obj)
{
	if (!obj)
		return null;

	local attackInfo = obj.sq_GetDashAttackInfo();

	// ��Ÿ �������� ����
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_ICE_ELEMENTAL_DASH_ATTACK);

	return attackInfo;
}


function getJumpAttackInfo_ATMage(obj)
{
	if (!obj)
		return null;

	local attackInfo = obj.sq_GetJumpAttackInfo();

	// ��Ÿ �������� ����
	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	if (skillLevel > 0)
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_ICE_ELEMENTAL_JUMP_ATTACK);

	return attackInfo;
}




function setEnableCancelSkill_ATMage(obj, isEnable)
{
	if(!obj)
		return false;

	if(!obj.isMyControlObject())
		return false;


	if(!isEnable)
		return true;

	// ĵ���� ���� �۾��Դϴ�. (2012.04.12)
	// ������ - ������ ������ �����ϱ� ������ �ڵ�ĵ���� �۵����մϴ�.

	local GROW_TYPE_AT_MAGE = 0; // ���� ��
	local GROW_TYPE_ELEMENTAL_BOMBER = 1; // ���� ������Ż �ٸ�
	local GROW_TYPE_GLACIALMASTER = 2; // ���� �����

	//print( "  growtype:" +  sq_getGrowType(obj));



	// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
	//if(sq_isPVPMode())
	{
//38	`ATMage/CancelWindStrike.skl`		// ĵ�� ���彺Ʈ����ũ
		obj.setSkillCommandEnable(SKILL_WIND_STRIKE, isEnable);
//39	`ATMage/CancelAtMagePush.skl`		// ĵ�� �о��
		obj.setSkillCommandEnable(SKILL_PUSH_OUT, isEnable);
//40	`ATMage/CancelFallenBlossoms.skl`	// ĵ�� ��ȭ��â
		obj.setSkillCommandEnable(SKILL_FALLENBLOSSOMS, isEnable);
//41	`ATMage/CancelTurnWindmill.skl`		// ĵ�� ǳ��������
		obj.setSkillCommandEnable(SKILL_TURNWINDMILL, isEnable);
//42	`ATMage/CancelBrokenArrow.skl`		// ĵ�� ���ū�ַο�
		obj.setSkillCommandEnable(SKILL_BROKENARROW, isEnable);
//43	`ATMage/CancelIceCrash.skl`			// ĵ�� ���̽� ũ����
		obj.setSkillCommandEnable(SKILL_ICE_CRASH, isEnable);
//44	`ATMage/CancelFrozenLand.skl`		// ĵ�� ������ ����
		obj.setSkillCommandEnable(SKILL_FROZENLAND, isEnable);
//45	`ATMage/CancelIceSword.skl`			// ĵ�� ����
		obj.setSkillCommandEnable(SKILL_ICE_SWORD, isEnable);
//46	`ATMage/CancelMultiShot.skl`		// ĵ�� ���� ������ ������
		obj.setSkillCommandEnable(SKILL_MULTI_SHOT, isEnable);
//47	`ATMage/CancelFlameCircle.skl`		// ĵ�� �����Ӽ�Ŭ
		obj.setSkillCommandEnable(SKILL_FLAMECIRCLE, isEnable);
//170	`ATMage/CancelBackStep.skl`			// ĵ�� �齺��
		//obj.setSkillCommandEnable(SKILL_BROKENARROW, isEnable);

//60	`ATMage/IceOrbEx.skl`			// ���̽� ���� (Ư��)
//SKILL_ICE_ORB_EX				<- 60	// Ư�� ���̽� ����
		obj.setSkillCommandEnable(SKILL_ICE_ORB_EX, isEnable);
//61	`ATMage/Concentrate.skl`		// ����Ʈ����Ʈ(Ư�� ��Ƽ�� ��ų)
//SKILL_CONCENTRATE_EX			<- 61	// ����Ʈ��Ʈ(����)
		obj.setSkillCommandEnable(SKILL_CONCENTRATE_EX, isEnable);
//62 	`ATMage/ElementalStrikeEx.skl`		// ������Ż��Ʈ����ũ (Ư��)
//SKILL_ELEMENTAL_STRIKE_EX		<- 62	// ������Ż ��Ʈ����ũ (Ư����ų)
//63	`ATMage/IceFieldEx.skl`			// ���̽� �ʵ� (Ư��)
		obj.setSkillCommandEnable(SKILL_ELEMENTAL_STRIKE_EX, isEnable);
//SKILL_ICE_FIELD_EX				<- 63	// ���̽� �ʵ�
		obj.setSkillCommandEnable(SKILL_ICE_FIELD_EX, isEnable);
		//

		if(sq_getGrowType(obj) == GROW_TYPE_GLACIALMASTER)
		{
			obj.setSkillCommandEnable(SKILL_ICE_SWORD, isEnable);
		}
	}
	//else
	//{
	//}



	return true;

	local size = 10; // �ϳ� �� �߰��ؾ���
	local cancel_skill_l =[];
	local skill_l =[];
	cancel_skill_l.resize(size);
	skill_l.resize(size);
//SKILL_WIND_STRIKE				<- 38	// ���� ��Ʈ����ũ
//SKILL_PUSH_OUT				<- 39	// �о��
//SKILL_FALLENBLOSSOMS			<- 40   // ����:��ȭ��â
//SKILL_TURNWINDMILL				<- 41	// ǳ��������
//SKILL_BROKENARROW				<- 42	// ������ ����
//SKILL_ICE_CRASH					<- 43	// ���̽�ũ����
//SKILL_FROZENLAND				<- 44	// ������ ����
//SKILL_ICE_SWORD					<- 45	// ����
//SKILL_FLAMECIRCLE				<- 47	// �����Ӽ�Ŭ
//SKILL_MULTI_SHOT				<- 25	// ���� ������ �߻�
	cancel_skill_l[0] = SKILL_CANCEL_WIND_STRIKE;
	cancel_skill_l[1] = SKILL_CANCEL_PUSH_OUT;
	cancel_skill_l[2] = SKILL_CANCEL_FALLENBLOSSOMS;
	cancel_skill_l[3] = SKILL_CANCEL_TURNWINDMILL;
	cancel_skill_l[4] = SKILL_CANCEL_BROKENARROW;
	cancel_skill_l[5] = SKILL_CANCEL_ICE_CRASH;
	cancel_skill_l[6] = SKILL_CANCEL_FROZENLAND;
	cancel_skill_l[7] = SKILL_CANCEL_ICE_SWORD;
	cancel_skill_l[8] = SKILL_CANCEL_FLAMECIRCLE;
	cancel_skill_l[9] = SKILL_CANCEL_MULTI_SHOT;

	skill_l[0] = SKILL_WIND_STRIKE;
	skill_l[1] = SKILL_PUSH_OUT;
	skill_l[2] = SKILL_FALLENBLOSSOMS;
	skill_l[3] = SKILL_TURNWINDMILL;
	skill_l[4] = SKILL_BROKENARROW;
	skill_l[5] = SKILL_ICE_CRASH;
	skill_l[6] = SKILL_FROZENLAND;
	skill_l[7] = SKILL_ICE_SWORD;
	skill_l[8] = SKILL_FLAMECIRCLE;
	skill_l[9] = SKILL_MULTI_SHOT;

	for(local i=0;i<size;i+=1)
	{
		// �Ķ���ͷ� �Ѱ��� Ű �ε�����, ���ݹ���� �������� üũ�Ͽ� ����ϸ� �нú������Ʈ�� ����� ����մϴ�..
		local level = sq_GetSkillLevel(obj, cancel_skill_l[i]);
		local bRet = false;

		if(level > 0)
		{
			if(isEnable)
			{
				bRet = true;
			}
		}

		obj.setSkillCommandEnable(skill_l[i], bRet);
	}


	return true;
}

function isUsableItem_ATMage(obj, itemIndex)
{
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap_ATMage_DieHardSlowHeal.nut")) //
	{ // �һ�� ���ο��� ���̶�� ȸ���迭 �������� �� �� �����ϴ�.
		local isRecover = sq_IsItemRecover(itemIndex);

		if(isRecover == true)
		{
			return false;
		}

		if(itemIndex == 8)
		{ // ������ �ձ�
			return false;
		}
	}
	//print( " is use itemIndex:" + itemIndex + " return true");

	return true;
}

function sendSetHpPacket_ATMage(obj, hp, sendInstant)
{
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap_ATMage_DieHardSlowHeal.nut")) //
	{
		if(obj.getHp() < hp)
		{
			//print(" not send hp");
			return false;
		}
	}
	//print( " go send hp");
	return true;
}

function sendSetMpPacket_ATMage(obj, mp, sendInstant)
{
	return true;
}



// ������ ��ų�� ����Ǿ�� �� �нú� ������Ʈ �ε������,
// `isApplyConversionSkillPassiveObject`�Լ��� �߰��� ���ֵ��� �Ѵ�.
function isApplyConversionSkillPassiveObject_ATMage(passiveObjectIndex)
{
	if (passiveObjectIndex == 24201)
	{	// ���� ��Ʈ����ũ
		return true;
	}
	else if (passiveObjectIndex == 24222)
	{	// ȣ�պ�
		return true;
	}
	else if (passiveObjectIndex == 24217)
	{	// ������
		return true;
	}
	else if (passiveObjectIndex == 24254)
	{	// �ұ��(ȭ������)
		return true;
	}

	// ���ӹ߻� �нú� ������Ʈ, ���ӹ߻��� ���� �нú� ������Ʈ

	local idx = passiveObjectIndex;
	if (idx >= 24266 && idx <= 24283)
	{
		return true;
	}

	return false;
}


//������ ���� ������ �� ȣ��Ǵ� ���� �Լ�
// �������� ������ ���� �� ���� ȣ��˴ϴ�.
function resetDungeonStart_ATMage_ARR(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;

	local isReset = true; // �⺻������ ���� �����Դϴ�.

	if (sq_GetCurrentModuleType() == MODULE_TYPE_WARROOM || sq_GetCurrentModuleType() == MODULE_TYPE_DEAD_TOWER)
	{
		// ������ ������ �״������� �ƴ϶��..
		if (resetReason != REASON_DEATH)
		{
			isReset = false; // ���½�Ű�� �ʽ��ϴ�.
		}
	}


	if(isReset)
	{ // ������ �ؾ��Ѵٸ�..
		local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap_ATMage_IceRoad.nut");


		if(appendage)
		{
			local skill = sq_GetSkill(obj, SKILL_ICEROAD);
			local isvalid = appendage.isValid();

			if(skill)
			{
				print(" isSeal:" + skill.isSealActiveFunction());
				if(!skill.isSealActiveFunction())
				{
					skill.setSealActiveFunction(true);
				}
			}

			if(isvalid)
			{
				appendage.setValid(false);
			}
		}

		obj.sq_RemoveSkillLoad(SKILL_HOLONG_LIGHT);	// ȣ�պ� UI ����
	}

	return 1;

}


// ������ : ������Ż ü��
// parameter�� ���޵� element�Ӽ��� ������ �ٸ�3�Ӽ��� ��ȭ�Ѵ�.
// appendage�� ��ø���� ����.
function addElementalChain_ATMage(obj, element)
{
	if (!obj) return;
	if (element == ENUM_ELEMENT_MAX) return;
	local skillLevel = sq_GetSkillLevel(obj, SKILL_ELEMENTAL_CHAIN);
	if (skillLevel <= 0) return;

	local skill = sq_GetSkill(obj, SKILL_ELEMENTAL_CHAIN);
	if (!skill) return;
	local changeValue = obj.sq_GetLevelData(SKILL_ELEMENTAL_CHAIN, 0, skillLevel);
	local validTime = obj.sq_GetLevelData(SKILL_ELEMENTAL_CHAIN, 1, skillLevel);

	local apFire = null;
	local apWater = null;
	local apDark = null;
	local apLight = null;

	if (element == ENUM_ELEMENT_FIRE)
	{
		apWater = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, changeValue.tofloat(), validTime);
		apDark = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, changeValue.tofloat(), validTime);
		apLight = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, changeValue.tofloat(), validTime);
	}
	else if (element == ENUM_ELEMENT_WATER)
	{
		apFire = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, changeValue.tofloat(), validTime);
		apDark = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, changeValue.tofloat(), validTime);
		apLight = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, changeValue.tofloat(), validTime);
	}
	else if (element == ENUM_ELEMENT_DARK)
	{
		apFire = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, changeValue.tofloat(), validTime);
		apWater = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, changeValue.tofloat(), validTime);
		apLight = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, changeValue.tofloat(), validTime);
	}
	else if (element == ENUM_ELEMENT_LIGHT)
	{
		apFire = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, changeValue.tofloat(), validTime);
		apWater = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, changeValue.tofloat(), validTime);
		apDark = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, changeValue.tofloat(), validTime);
	}
	else if (element == -1)
	{
		apFire = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, changeValue.tofloat(), validTime);
		apWater = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, changeValue.tofloat(), validTime);
		apDark = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, changeValue.tofloat(), validTime);
		apLight = sq_CreateChangeStatus(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, changeValue.tofloat(), validTime);
	}

	if (apFire != null)
		apFire.sq_Append(obj, obj, APID_SKILL_ELEMENTAL_CHAIN_FIRE);
	if (apWater != null)
		apWater.sq_Append(obj, obj, APID_SKILL_ELEMENTAL_CHAIN_WATER);
	if (apDark != null)
		apDark.sq_Append(obj, obj, APID_SKILL_ELEMENTAL_CHAIN_DARK);
	if (apLight != null)
		apLight.sq_Append(obj, obj, APID_SKILL_ELEMENTAL_CHAIN_LIGHT);
}


function onChangeSkillEffect_ATMage_ARR(obj, skillIndex, reciveData)
{
	if(!obj)
		return;

	if(skillIndex == SKILL_ICEROAD)
	{
		local skill = sq_GetSkill(obj, SKILL_ICEROAD);
		skill.resetCurrentCoolTime();
		skill.setSealActiveFunction(true);
		local skill_level = sq_GetSkillLevel(obj, SKILL_ICEROAD);
		obj.startSkillCoolTime(SKILL_ICEROAD, skill_level, -1);

		local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap_ATMage_IceRoad.nut");
		appendage.setValid(false);
	}
	else if(skillIndex == SKILL_DIEHARD)
	{
		if(reciveData.getSize() > 0)
		{
			local hp = reciveData.readDword(); // ����ȭ�� hp

			if(hp > 0)
			{
				print(" onchange:" + hp);
				obj.setHp(hp, null, true);
			}
		}
	}
	else if (skillIndex == SKILL_ELEMENTAL_CHANGE)
	{
		if (reciveData.getSize() > 0)
		{
			local element = reciveData.readByte();
			obj.setThrowElement(element);

			// ��ȣ������ ó��
			local appendage = CNSquirrelAppendage.sq_GetAppendage(obj,"Character/ATMage/MagicShield/ap_MagicShield.nut");
			if(appendage)
				setMagicShieldType(appendage, obj, obj.getThrowElement());
		}
	}
	else if(skillIndex == SKILL_TUNDRASOUL)
	{
		if (reciveData.getSize() > 0)
		{
			local mode = reciveData.readDword();

			local auraAppendage = 0;
			local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoul.nut");

			if(appendage)
			{
				auraAppendage = appendage.sq_getSquirrelAuraMaster("AuraTundraSoul");

				if(mode == 1)
				{ // �ִ°��� �����մϴ�. (�ƿ��)
					appendage.sq_DeleteAppendages();
				}
				else if(mode == 0)
				{ // ���°��� �Ѿ��մϴ�. (�ƿ��)
					local range = obj.sq_GetIntData(SKILL_TUNDRASOUL , 0);// 0. ���� �����̻� �ɸ��� ȿ������
					appendage.sq_AddSquirrelAuraMaster("AuraTundraSoul",obj, obj, range, 18, 5, 0);
				}
			}
		//CNSquirrelAppendage.sq_RemoveAppendage(obj, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoul.nut");
		}
	}
}

function changeTrhowState_ATMage(obj, throwState)
{
	if (!obj) return false;

	printc("changeTrhowState_ATMage");
	if (throwState == 3 &&
		obj.getThrowIndex() == SKILL_ELEMENTAL_CHANGE)
	{
		// ������ : �Ӽ� �ߵ�
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(throwState);
		obj.sq_IntVectPush(-1);
		obj.sq_IntVectPush(obj.getThrowElement());
		obj.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);
		return true;
	}

	return false;
}

function isCounterState_ATMage(obj, isCounter)
{
	if(obj.getVar("firepillar").size_vector() > 0)
	{
		if(obj.getVar("firepillar").get_vector(VECTOR_FLAG_2))
		{
			isCounter = false;
		}
	}

	return isCounter;
}


function AppendAppendageToSimple(obj, skillIndex, appendageFileName, validTime, isBuff)
{
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, appendageFileName, false);

	appendage.sq_SetValidTime(validTime); // ������� Ÿ�� ����

	// ���⼭ append �۾�
	CNSquirrelAppendage.sq_Append(appendage, obj, obj, isBuff); // ������

}

function setActiveStatus_ATMage(obj, activeStatus, power)
{
	if (!obj) return 0;

	local state = sq_GetState(obj);

	if (state == STATE_ELEMENTAL_BUSTER)
	{
		// �����϶� ���� �����̻��� �ɸ��� ���� (������Ż ������)
		//printc("state : STATE_ELEMENTAL_BUSTER");
		return 0;
	}

	return 1;
}


function reset_ATMage(obj)
{
	if(!obj)
		return;

}