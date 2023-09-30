function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mailun_lieyan_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mailun_lieyan_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mailun_lieyan_buff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mailun_lieyan_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_mailun_lieyan_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local physicalPA = appendage.getVar("skillData").get_vector(0);
	local physicalAB = appendage.getVar("skillData").get_vector(1);
	local change_appendage = appendage.sq_getChangeStatus("lieyan_buff");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("lieyan_buff",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, physicalPA);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, physicalPA.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalAB.tofloat());
	}
}

function onEnd_appendage_mailun_lieyan_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI = 0;
}
