
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_leishen")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_leishen")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_leishen")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_leishen(appendage)
{
	if(!appendage) {
		return;
	}
	local currentT = appendage.getTimer().Get();
	local t = appendage.sq_var.get_timer_vector(0);

	local obj = appendage.getParent();
	local parentChr = sq_GetCNRDObjectToSQRCharacter(obj);

	local skill = sq_GetSkill(parentChr, SKILL_LEISHEN);

	if(!skill.isSealFunction())
	{
		if (t.isOnEvent(currentT) == true)
		{
			sq_SendCreatePassiveObjectPacket(obj, 900319, 0, 0, 0, 0, obj.getDirection());
		}
	}
}

function onStart_appendage_leishen(appendage)
{
	if(!appendage) {
		return;
	}

	local obj = appendage.getParent();
	local parentObj = sq_GetCNRDObjectToSQRCharacter(obj);
	local skill_level = sq_GetSkillLevel(parentObj,SKILL_LEISHEN);
	local time = sq_GetLevelData(parentObj, SKILL_LEISHEN, 0, skill_level);

	appendage.sq_var.clear_timer_vector();
	appendage.sq_var.push_timer_vector();
	local t = appendage.sq_var.get_timer_vector(0);
	t.setParameter(3000, -1);
	t.resetInstant(0);
}

function onEnd_appendage_leishen(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
}
