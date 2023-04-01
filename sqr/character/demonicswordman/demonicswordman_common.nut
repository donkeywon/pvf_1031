
function procSkill_DemonicSwordman(obj)
{

	procSkill_dimensionagreement(obj);
	procSkill_overflow(obj);
	procSkill_darkforce(obj);
	procSkill_timestop(obj);
}




function procSkill_dimensionagreement(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_dimensionagreement);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/DemonicSwordman/dimensionagreement/ap_dimensionagreement.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_dimensionagreement, false, 
				"character/DemonicSwordman/dimensionagreement/ap_dimensionagreement.nut", true);

            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_dimensionagreement, skill_level);
            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_dimensionagreement, true);

			local value0 = sq_GetLevelData(obj, SKILL_dimensionagreement, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, SKILL_dimensionagreement, 1, skill_level); 
			local value2 = sq_GetLevelData(obj, SKILL_dimensionagreement, 2, skill_level); 
			local value3 = sq_GetLevelData(obj, SKILL_dimensionagreement, 3, skill_level); 
			local value4 = sq_GetLevelData(obj, SKILL_dimensionagreement, 4, skill_level); 
			local change_appendage = appendage.sq_getChangeStatus("dimensionagreement");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);
			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value2.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value3.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value4.tofloat());
			}

        }

    }

}


function procSkill_overflow(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_overflow);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/DemonicSwordman/overflow/ap_overflow.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_overflow, false, 
				"character/DemonicSwordman/overflow/ap_overflow.nut", true);

            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_overflow, skill_level);
            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_overflow, true);

			local value0 = sq_GetLevelData(obj, SKILL_overflow, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, SKILL_overflow, 1, skill_level); 
			local value2 = sq_GetLevelData(obj, SKILL_overflow, 2, skill_level); 
			local value3 = sq_GetLevelData(obj, SKILL_overflow, 3, skill_level); 
			local value4 = sq_GetLevelData(obj, SKILL_overflow, 4, skill_level); 
			local change_appendage = appendage.sq_getChangeStatus("overflow");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);
			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value2.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value3.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value4.tofloat());
			}

        }

    }

}


function procSkill_darkforce(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_darkforce);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/DemonicSwordman/darkforce/ap_darkforce.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_darkforce, false, 
				"character/DemonicSwordman/darkforce/ap_darkforce.nut", true);

            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_darkforce, skill_level);
            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_darkforce, true);

			local value0 = sq_GetLevelData(obj, SKILL_darkforce, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, SKILL_darkforce, 1, skill_level); 
			local value2 = sq_GetLevelData(obj, SKILL_darkforce, 2, skill_level); 
			local value3 = sq_GetLevelData(obj, SKILL_darkforce, 3, skill_level); 
			local value4 = sq_GetLevelData(obj, SKILL_darkforce, 4, skill_level); 
			local change_appendage = appendage.sq_getChangeStatus("darkforce");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);
			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value2.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value3.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value4.tofloat());
			}

        }

    }

}



function procSkill_timestop(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_timestop);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/DemonicSwordman/timestop/ap_timestop.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_timestop, false, 
				"character/DemonicSwordman/timestop/ap_timestop.nut", true);

            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_timestop, skill_level);
            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_timestop, true);

			local value0 = sq_GetLevelData(obj, SKILL_timestop, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, SKILL_timestop, 1, skill_level); 
			local value2 = sq_GetLevelData(obj, SKILL_timestop, 2, skill_level); 
			local value3 = sq_GetLevelData(obj, SKILL_timestop, 3, skill_level); 
			local value4 = sq_GetLevelData(obj, SKILL_timestop, 4, skill_level); 
			local change_appendage = appendage.sq_getChangeStatus("timestop");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);
			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value2.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value3.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value4.tofloat());
			}

        }

    }

}