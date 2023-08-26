//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function onEndCurrentAni_po_swordman_shared(obj)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 7:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 8:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 9:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 10:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 11:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 12:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 13:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 14:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 15:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 16:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 17:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 18:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 19:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 20:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 21:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 22:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
		case 23:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
	}
}



