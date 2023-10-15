function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunstyle_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunstyle_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunstyle_buff")
}



function sq_AddEffect(appendage)
{
	if(!appendage) return;
}



function onStart_appendage_gunstyle_buff(appendage)
{
	if(!appendage) return;


	local apd = appendage.getParent();
	local obj = sq_getMyCharacter();
	local skill_level = sq_GetSkillLevel(obj, SKILL_GUNSTYLE);

	local PHYSICAL_CRITICAL_DAMAGE_RATE = sq_GetLevelData(obj, SKILL_GUNSTYLE, 0, skill_level);
	local SPEED = sq_GetLevelData(obj, SKILL_GUNSTYLE, 1, skill_level);
	local change_appendage = appendage.sq_getChangeStatus("gunstyle_buff");

	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, false, 0, APID_COMMON);
	}

	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, PHYSICAL_CRITICAL_DAMAGE_RATE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, SPEED.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, SPEED.tofloat());
		PHYSICAL_CRITICAL_DAMAGE_RATE = PHYSICAL_CRITICAL_DAMAGE_RATE * 10;
		SPEED = SPEED / 10;
	}


	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	
	if(!spectrumAppendage)
	{
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);
	}
	sq_SetParameterOcularSpectrum(spectrumAppendage, 1000, 100, true, sq_RGBA(41, 72, 36, 255), sq_RGBA(41, 72, 36, 255), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 1000, 100, true, sq_RGBA(41, 72, 36, 255), sq_RGBA(41, 72, 36, 255), 2, 0, 1);

}



function proc_appendage_gunstyle_buff(appendage)
{
	if(!appendage) return;
}



function onEnd_appendage_gunstyle_buff(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}


