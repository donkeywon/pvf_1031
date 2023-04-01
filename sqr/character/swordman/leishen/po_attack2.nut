function setCustomData_po_addwave3(obj, receiveData)
{
	if(!obj)
		return;
	local chr = obj.getParent();
	local sqrChr = sq_GetCNRDObjectToCharacter(chr);
	local skillLevel = sq_GetSkillLevel(sqrChr, SKILL_LEISHEN);
	local attackBonus = sq_GetLevelData(sqrChr, SKILL_LEISHEN, 2, skillLevel);
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonus);
	obj.setTimeEvent(0, interval,count,true);
}

function onTimeEvent_po_addwave3(obj, timeEventIndex, timeEventCount)
{
	if(timeEventIndex == 0)
	{
		obj.resetHitObjectList();
	}
}

function onEndCurrentAni_po_addwave3(obj)
{
	if(!obj)
		return;
	local chr = obj.getParent();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);

	sq_BinaryStartWrite();
	sq_BinaryWriteDword(0);
	sq_SendDestroyPacketPassiveObject(obj);
}