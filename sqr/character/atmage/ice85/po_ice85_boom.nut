function setCustomData_po_explosion(obj, receiveData)
{
	if(!obj)
		return;
	local attackBonusRate = receiveData.readDword();// ?????(%)	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        if(!obj.isMyControlObject()) {
            return;
        }

    sq_flashScreen(obj,0,80,500,204, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
    sq_SetMyShake(obj,10,500);


	sq_CreateParticle("character/mage/particle/judekatheeternaliceexp.ptl",obj,60, -60,0,true,350,1000,100);			

}



function onEndCurrentAni_po_explosion(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
    sq_SendDestroyPacketPassiveObject(obj);	

}
