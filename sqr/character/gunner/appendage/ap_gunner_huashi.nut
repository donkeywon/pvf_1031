
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_huashi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_huashi")
}


function sq_AddEffect(appendage)
{
	if(!appendage) return;
}


function onStart_appendage_gunner_huashi(appendage)
{
	if(!appendage) return;

	local apd = appendage.getParent();
	local obj = sq_getMyCharacter();
	local skill_level = sq_GetSkillLevel(obj, SKILL_GUNNER_HUASHI);

	local value0 = sq_GetLevelData(obj, SKILL_GUNNER_HUASHI, 4, skill_level);
	local value1 = sq_GetLevelData(obj, SKILL_GUNNER_HUASHI, 5, skill_level);
	local change_appendage = appendage.sq_getChangeStatus("gunner_huashi");

	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, 0, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, false, 0, APID_COMMON);
	}

	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, value0.tofloat());//øïß¿
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, value0.tofloat());//øïß¿ ØªÛö
		value0 = value0*10*STATE_GUNNER_HUASHI;
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());//ÐñÜâÚª×âÍôÌªÕô
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value0.tofloat());//ÐñÜâØªÛöÍôÌªÕô
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, value0.tofloat());//ÐñÜâÔ¼Ø¡ÍôÌªÕô
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, value1.tofloat());//áÜÓø
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, value1.tofloat());//áÜÓø
		value1 = value1/10*STATE_GUNNER_HUASHI;
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, value1.tofloat());//øìÌª
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, value1.tofloat());//øìÌª
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());//ÕôÕá
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());//òªÕô
	}
}


function proc_appendage_gunner_huashi(appendage)
{
	if(!appendage) return;
}


