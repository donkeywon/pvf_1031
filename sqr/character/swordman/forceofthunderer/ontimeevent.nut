//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function onTimeEvent_po_swordman_shared(obj, timeEventIndex, timeEventCount)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(timeEventIndex)
	{
		case 0:
			if(obj.isMyControlObject())
			{
				obj.resetHitObjectList();
			}
		break;
		case 1:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
	}
}

