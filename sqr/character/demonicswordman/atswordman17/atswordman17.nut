function checkExecutableSkill_buffoverflow(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_buffoverflow);
	
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_buffoverflow , STATE_PRIORITY_USER, false);
		return true;
	}
	
	return false;
}

function checkCommandEnable_buffoverflow(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	if (state == STATE_STAND)
	
		return true;

		return true;

}

function onSetState_buffoverflow(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_PSREADYACTION_BODY);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
	SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);	


}



function onAttack_buffoverflow(obj, damager, boundingBox, isStuck)
{
	if (!obj) return;

	ChangeSword_Up_obj(obj, damager);

}

function onKeyFrameFlag_buffoverflow(obj,flagIndex)
{
	if(!obj)
		return false;
		if (flagIndex == 1)
		{
			local skill_level = sq_GetSkillLevel(obj, SKILL_buffoverflow);

			local skillTime = sq_GetLevelData(obj, SKILL_buffoverflow, 0, skill_level);

			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_buffoverflow, false,"character/demonicswordman/atswordman17/ap_atsword17.nut", false);

			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_buffoverflow, skill_level);
		
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, STATE_buffoverflow, true);
		
			appendage = obj.GetSquirrelAppendage("character/demonicswordman/atswordman17/ap_atsword17.nut");
			appendage.sq_SetValidTime(skillTime);//?ÅÁ∫å?ÇÈñì
			appendage.setBuffIconImage(106);//‘È¢BUFF”Ò¯ˆ£¨÷ÿÃ”sprite_common_commoneffect.NPK
			if(appendage)
			{

					local change_appendage = appendage.sq_getChangeStatus("atdssword17");
					if(!change_appendage)
					{
						change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
						CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, 
						false, 0, APID_COMMON);
						change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
						CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, 
						false, 0, APID_COMMON);
					}
					if(change_appendage)
					{
						local CRITICAL_HIT_RATE = obj.sq_GetLevelData(SKILL_buffoverflow, 2, skill_level);

						local CRITICAL_DAMAGE_RATE = obj.sq_GetLevelData(SKILL_buffoverflow, 1, skill_level);
						CRITICAL_DAMAGE_RATE = CRITICAL_DAMAGE_RATE * 0.1;
						print(" CRITICAL_DAMAGE_RATE=" + CRITICAL_DAMAGE_RATE);
						print(" CRITICAL_HIT_RATE=" + CRITICAL_HIT_RATE);

						change_appendage.clearParameter();
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, CRITICAL_HIT_RATE.tofloat());
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, CRITICAL_DAMAGE_RATE.tofloat());
					}
			}

		}

	return true;
}



function onEndCurrentAni_buffoverflow(obj)
{

	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
