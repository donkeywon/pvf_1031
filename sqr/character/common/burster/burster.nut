


// ������ ��ų�� �� �� �ִ� ��ų���� üũ�غ��ϴ�.
function isEnableBursterSkill(chr, skillIndex)
{
	if (!chr)
		return false;

	local bursterSkill = sq_GetSkill(chr, SKILL_BURSTER);

	if (!bursterSkill)
		return false;
	
	local size = sq_GetCustomIntDataSize(bursterSkill, chr);

	for (local i = 0; i < size; i++)
	{
		// ������ ��ų�ε������� ���´�.
		local disableSkillIndex = sq_GetIntData(chr, SKILL_BURSTER, i);

		if (disableSkillIndex == skillIndex)
		{
			print(" disableSkillIndex:" + disableSkillIndex);
			return false;
		}
	}

	return true;
}


// ���뽺ų �����͸�忡�� ���������� �����մϴ�. �����͸�� Ȥ�� �ٸ� ��ų���� ����������Ʈ�� �����Ҷ� �̰����� ������ �մϴ�.
function getCurrentModuleDamageRate(obj)
{	
	if (!obj)
		return 1.0;

	local rate = 1.0;
	local appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");

	if (appendage)
	{
		if (appendage.isValid())
		{
			local skillIndex = obj.getCurrentSkillIndex();

			// �����͸�忡 �ش��ϴ� �����̶�� ���������� ���ߵ��� ���� ���ɴϴ�.
			if (isEnableBursterSkill(obj, skillIndex))
			{
				local level = sq_GetSkillLevel(obj, SKILL_BURSTER);
				// (4) �������� (%) (100%�� �⺻)
				local value = obj.sq_GetLevelData(SKILL_BURSTER, SKL_LVL_COLUMN_IDX_4, level);

				rate = value.tofloat() / 100.0;

				print(" burst level:" + level + " value:" + value + " getCurrentModuleDamageRate:" + rate.tofloat());
			}
		}
	}

	return rate.tofloat();
}

// ĳ���� ���� ��Ÿ�� ���� (�����͸�忡�� ��Ÿ���� �����մϴ�.)
/*function startSkillCoolTime(obj, skillIndex, skillLevel, currentCoolTime)
{
	if (!obj)
		return -1;

	local appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");
	
	if(appendage)
	{
		// �����͸�尡 Ȱ��ȭ �����̰� �ش�Ǵ� ��ų�̶�� ��Ÿ���� ���� �˴ϴ�.
		if (appendage.isValid() && isEnableBursterSkill(obj, skillIndex))
		{
			local level = sq_GetSkillLevel(obj, SKILL_BURSTER);
			// (5) �⺻ �ּ� ��Ÿ�� (ms)
			local value = obj.sq_GetLevelData(SKILL_BURSTER, SKL_LVL_COLUMN_IDX_5, level);

			return value; // �����͸�� ��Ÿ��
		}
	}

	return -1;

}*/

function checkExecutableSkill_Burster(obj)
{
	if (!obj)
		return false;

	
	local isUseSkill = obj.sq_IsUseSkill(SKILL_BURSTER);

	if (isUseSkill)
	{
		obj.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, false);
		return true;
	}	

	return false;
}



function checkCommandEnable_Burster(obj)
{
	if (!obj)
		return false;

	// ���� Ÿ���������� üũ�մϴ�. (����� ž, ������ ž)
	// ��ž, ��ž������ �����͸�尡 �ߵ����� �ʽ��ϴ�.
	if (sq_IsTowerDungeon())
	{
		print(" here top dungeon");
		return false;
	}
	
	local state = sq_GetState(obj);
	
	if(state == STATE_ATTACK)
	{
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_BURSTER);
	}
	

	return true;

}

function onEndState_Burster(obj, state)
{
	// ������Ʈ ���� Ȥ�� ��� �Ǿ��ٸ� ĳ���� ������ ����
	sq_EndDrawCastGauge(obj);
}


// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_Burster(obj, state, datas, isResetTimer)
{	
	if (!obj)
		return;

	print(" burster mode start");

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);

	obj.sq_StopMove();
	
	local buffAni = obj.sq_GetBuffAni();	
	
	
	obj.setCurrentAnimation(buffAni);

	//sq_var.set_vector(1, 1);

	local ani = sq_GetCurrentAnimation(obj);

	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RESONANCE);

	// ���Ӽ� ��ȭ ������ �ɾ��ش�.
	local skillLevel = sq_GetSkillLevel(obj, SKILL_BURSTER);

	print(" Burster skillLevel:" + skillLevel);

	// ĳ���� �ӵ��� ���󰡵��� ����
	// ĳ���� �ӵ��� ����Ǹ�, ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
	// ĳ���� �������� ǥ�ø� ���ݴϴ�.
	local castTime = sq_GetCastTime(obj, SKILL_BURSTER, skillLevel);
	print(" Burster castTime:" + castTime);
	local animation = sq_GetCurrentAnimation(obj);
	local startTime = sq_GetDelaySum(animation);
	local speedRate = startTime.tofloat() / castTime.tofloat();
	
	print(" cast speedRate:" + speedRate);
		
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

	if (ani)
	{
		local posX = obj.getXPos();
		local posY = obj.getYPos();
		local posZ = obj.getZPos();

		local bodyBackEffAni = sq_CreateAnimation("","Character/Common/Animation/BusterMode/buster_start_back_light3.ani");
		local bodyBackEffObj = obj.sq_CreateCNRDPooledObject(bodyBackEffAni, true);
		bodyBackEffObj.setCurrentDirection(obj.getDirection());
		bodyBackEffObj.setCurrentPos(posX, posY - 1, 47);

		// ĳ���� Ÿ�ӿ� ���� ȿ���� �°� �÷��ݴϴ�.
		local effAniTime = sq_GetDelaySum(bodyBackEffAni);
		local speedrate = effAniTime.tofloat() / castTime.tofloat();
		local castSpeed = sq_GetCastSpeed(obj);
		local animationSpeedValue = castSpeed.tofloat() * speedrate.tofloat();
		local aniSpeedRate = animationSpeedValue.tofloat() * 100.0 / SPEED_VALUE_DEFAULT;

		bodyBackEffAni.setSpeedRate(aniSpeedRate.tofloat());
		print(" backAniSpeedRate:" + aniSpeedRate.tofloat());

		obj.sq_AddObject(bodyBackEffObj);

		local bodyFrontEffAni = sq_CreateAnimation("","Character/Common/Animation/BusterMode/buster_start_front_cross.ani");

		// ĳ���� Ÿ�ӿ� ���� ȿ���� �°� �÷��ݴϴ�.
		local effFrontAniTime = sq_GetDelaySum(bodyFrontEffAni);
		local sr = effFrontAniTime.tofloat() / castTime.tofloat();
		//local castSpeed = sq_GetCastSpeed(obj);
		local frontAnimationSpeedValue = castSpeed.tofloat() * sr.tofloat();
		local frontAniSpeedRate = frontAnimationSpeedValue.tofloat() * 100.0 / SPEED_VALUE_DEFAULT;
		bodyFrontEffAni.setSpeedRate(frontAniSpeedRate.tofloat());

		print(" frontAniSpeedRate:" + frontAniSpeedRate);

		local bodyFrontEffObj = obj.sq_CreateCNRDPooledObject(bodyFrontEffAni, true);
		bodyFrontEffObj.setCurrentDirection(obj.getDirection());
		bodyFrontEffObj.setCurrentPos(posX, posY + 2, 47);
		obj.sq_AddObject(bodyFrontEffObj);

		// ȭ��ȿ��
		if (castTime > 100)
		{
			sq_flashScreen(obj, castTime - 100, 100, 0, 150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
	}
		
	sq_StartDrawCastGauge(obj, startTime, true);
}


function onProc_Burster(obj)
{
	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	local sq_var = obj.getVar();
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();		
}


function onEndCurrentAni_Burster(obj)
{
	if(!obj)
		return;
		
	if(obj.sq_IsMyControlObject())
	{
		obj.sq_SetShake(obj, 3, 250);
	}
	
	local skill_level = sq_GetSkillLevel(obj, SKILL_BURSTER);

	// �ߺ��Ǹ� �ȵǱ� ������.. �ٽ� ��´�..
	local appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");
	
	if(appendage)
	{
		// �ִٸ� ���� ������� ����
		local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
		
		if(spectrumAppendage)
			spectrumAppendage.endCreateSpectrum();
	
		appendage.sq_DeleteAppendages();
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "Character/Common/Burster/ap_Common_Burster.nut");
	}
	
	appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_BURSTER, false,
		 "Character/Common/Burster/ap_Common_Burster.nut", false);	

	 // (0) ���ӽð�
	local change_time = sq_GetLevelData(obj, SKILL_BURSTER, 0, skill_level);		
	
	print(" burst mode valid time:" + change_time);
	appendage.sq_SetValidTime(change_time); // ������� Ÿ�� ����
		
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BURSTER, skill_level);

	// ���⼭ append �۾�		
	CNSquirrelAppendage.sq_Append(appendage, obj, obj);
	
	
	// �ߺ��Ǹ� �ȵǱ� ������.. �ٽ� ��´�..
	appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");
	
	// �̼� ����
	if(appendage)
	{
		local change_appendage = appendage.sq_getChangeStatus("burstChangeStatus");
		
		local value = sq_GetLevelData(obj, SKILL_BURSTER, 1, skill_level); // (1) ���� �ӵ�(+)

		if(!change_appendage)
			change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, change_time, 
			CHANGE_STATUS_TYPE_ATTACK_SPEED, 
			false, value, APID_COMMON);
		
		if(change_appendage) {
			local atk_spd = sq_GetLevelData(obj, SKILL_BURSTER, 1, skill_level); // (1) ���� �ӵ�(+)
			local mov_spd = sq_GetLevelData(obj, SKILL_BURSTER, 2, skill_level); // (2) �̵� �ӵ�(+)
			local cast_spd = sq_GetLevelData(obj, SKILL_BURSTER, 3, skill_level); // (3) ĳ��Ʈ �ӵ�(+)
			
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, atk_spd.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, mov_spd.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, cast_spd.tofloat());
		}
	}



	if (obj.isMyControlObject())
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);	
	}
}


function onAttack_Burster(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;

}
