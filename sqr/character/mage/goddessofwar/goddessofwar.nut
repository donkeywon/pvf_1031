


function checkExecutableSkill_goddessofwar(obj)  
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(167);
	if (isUse) 
	{
			obj.sq_AddSetStatePacket(167 , STATE_PRIORITY_USER, false);
			
			return true;
			
	}
	return false;
}

function checkCommandEnable_goddessofwar(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	if (state == STATE_STAND)
		return true;
	
	return true;
}



function onSetState_goddessofwar(obj, state, datas, isResetTimer)
{	
	if (!obj)
		return;
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(83);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
	SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	sq_StartDrawCastGauge(obj, 0, true);

}


function onEndCurrentAni_goddessofwar(obj)
{
	if(!obj) return;
	local skill_level = sq_GetSkillLevel(obj, 167);

	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 167, false,
		"character/mage/goddessofwar/ap_goddessofwar.nut", false);

	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 167, skill_level);

	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 167, true);
	appendage.setEnableIsBuff(true);
	appendage.setBuffIconImage(113);
	appendage = obj.GetSquirrelAppendage("character/mage/goddessofwar/ap_goddessofwar.nut");
	
	if(appendage)
	{

			local change_appendage = appendage.sq_getChangeStatus("goddessofwar");
			
			if(!change_appendage)
			{

				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, 
				false, 0, APID_COMMON);
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, 
				false, 0, APID_COMMON);
				
			}
			if(change_appendage)
			{

				local CRITICAL_DAMAGE_RATE = obj.sq_GetLevelData(167, 1, skill_level);
				CRITICAL_DAMAGE_RATE = CRITICAL_DAMAGE_RATE * 0.1;
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, CRITICAL_DAMAGE_RATE.tofloat());					
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, CRITICAL_DAMAGE_RATE.tofloat());
			}
	}

	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	
	sq_EndDrawCastGauge(obj);
}
function onEndState_Resonance(obj, state)
{

	
}
