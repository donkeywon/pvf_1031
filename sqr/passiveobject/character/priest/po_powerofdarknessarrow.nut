function setCustomData_po_PowerOfDarknessArrow(obj,reciveData)
{		
	local angle = reciveData.readFloat();
	local rate = reciveData.readDword();
	sq_SetCustomRotate(obj,angle);
	
	
	local pAttack = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(pAttack, rate);	
}

function onKeyFrameFlag_po_PowerOfDarknessArrow(obj,flagIndex)
{	
	if(flagIndex == 1) {
		if(obj.sq_isMyControlObject()) // ����,��½ ����Ʈ�� �����Ը� ���δ�.
			obj.sq_setShake(obj,3,150);	
	}
	return true;
}

function onEndCurrentAni_po_PowerOfDarknessArrow(obj)
{
	sq_SendDestroyPacketPassiveObject(obj);
}
