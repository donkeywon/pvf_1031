function onAfterSetState_SwordmanAttack(obj, state, datas, isResetTimer)
{
	if (!obj) return;
	local skill = sq_GetSkill(obj, 113);
	local skillLevel = obj.sq_GetSkillLevel(113);
	if (skillLevel > 0)
	{
		local attackIndex = obj.getAttackIndex();
		if(attackIndex == 0)
		{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(0);
		obj.sq_SendCreatePassiveObjectPacket(24350, 0, 0, 0, 0);
		}
		else if(attackIndex == 1)
		{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(0);
		obj.sq_SendCreatePassiveObjectPacket(24351, 0, 0, 0, 0);
		}
		else if(attackIndex == 2)
		{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(0);
		obj.sq_SendCreatePassiveObjectPacket(24352, 0, 0, 0, 0);
		}
	}
}