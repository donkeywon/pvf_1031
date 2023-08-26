//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_icewaveex")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_icewaveex")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_icewaveex")
}



function sq_AddEffect(appendage)
{
}



function proc_appendage_icewaveex(appendage)
{
	if(!appendage || !appendage.isValid())
	{
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}

	if (parentObj.getState() == STATE_HOLD)
	{
		if (parentObj.getState() == STATE_HOLD && !sq_IsInCategory(parentObj,CATEGORY_ETC_FIXTURE))
		{
			parentObj.setCurrentDirection(sq_GetOppositeDirection(sourceObj.getDirection()));
		}
	}
	else
	{
		if (parentObj.isMyControlObject() && parentObj.getState() != STATE_DIE && !parentObj.isDead())
		{
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
			sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
			sq_AddSetStatePacketActiveObject(parentObj, STATE_HOLD, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
		}
	}

}



function onStart_appendage_icewaveex(appendage)
{
	local obj = appendage.getParent();
	if(!appendage) return;
}



function onEnd_appendage_icewaveex(appendage)
{
	if(!appendage)
	{
		return;
	}

	local parentObj = appendage.getParent();
				
	if(!parentObj) 
	{
		appendage.setValid(false);
		return;
	}			
		
	if (parentObj.getState() == STATE_HOLD) 
	{
		appendage.setValid(false);
		parentObj.sendStateOnlyPacket(STATE_STAND);
	}

}

