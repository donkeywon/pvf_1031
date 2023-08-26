//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function onAfterSetState_grandwave_swordman(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	local substate0 = obj.sq_GetVectorData(datas, 0);
	local substate1 = obj.sq_GetVectorData(datas, 1);
	if(substate0 == 2 && substate1 == 0)
	{
		if(obj.isMyControlObject())
		{
			local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
			local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
			if(forceThunderer > 0)
			{
				obj.sq_StartWrite();
				obj.sq_WriteDword(13);
				obj.sq_SendCreatePassiveObjectPacket(24337, 0, 100, 0, 0);
			}
			else
			{
				obj.sq_StartWrite();
				obj.sq_WriteDword(11);
				obj.sq_SendCreatePassiveObjectPacket(24337, 0, 100, 0, 0);
			}
		}
	}
	if(substate0 == 2 && substate1 > 0)
	{
		if(obj.isMyControlObject())
		{
			local skill = sq_GetSkill(obj, SKILL_FORCETHUNDERER);
			local forceThunderer = sq_GetSkillLevel(obj, SKILL_FORCETHUNDERER);
			if(forceThunderer > 0)
			{
				obj.sq_StartWrite();
				obj.sq_WriteDword(14);
				obj.sq_SendCreatePassiveObjectPacket(24337, 0, 100, 0, 0);
			}
			else
			{
				obj.sq_StartWrite();
				obj.sq_WriteDword(12);
				obj.sq_SendCreatePassiveObjectPacket(24337, 0, 100, 0, 0);
			}
		}
	}
}

