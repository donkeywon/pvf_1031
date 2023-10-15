function setCustomData_po_breakice_end(obj, receiveData)
{
	if(!obj)
		return;
    sq_SetMyShake(obj,7,300);

	local attackBonusRate = receiveData.readDword();// ?????(%)	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    local attackBonusboom =  receiveData.readDword();

    obj.getVar("damageRate").clear_vector();
    obj.getVar("damageRate").push_vector(attackBonusboom);

}


function procAppend_po_breakice_end(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
    local pAni = obj.getCurrentAnimation();
    local frmIndex = sq_GetAnimationFrameIndex(pAni);
    if (frmIndex == 1)
    {
    sq_flashScreen(obj,0,80,300,127, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
    }
}

function onEndCurrentAni_po_breakice_end(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);

    local damaRate = obj.getVar("damageRate");
    local value0 = damaRate.get_vector(0);

	sq_BinaryStartWrite();
	sq_BinaryWriteDword(value0);

    sq_SendCreatePassiveObjectPacketPos(obj, 24362, 0, x, y, z);

    sq_SendDestroyPacketPassiveObject(obj);	

}

function onAttack_po_breakice_end(obj, damager, boundingBox, isStuck)
{

    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_JUDEKATHEETERNAL, false, "character/atmage/ice85/ap_ice85.nut", true);				 

}