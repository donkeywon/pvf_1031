function setCustomData_po_breakice_second(obj, receiveData)
{
	if(!obj)
		return;
    sq_SetMyShake(obj,3,400);

	local attackBonusRate = receiveData.readDword();// ?????(%)	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    local attackBonusboom =  receiveData.readDword();

    obj.getVar("damageRate").clear_vector();
    obj.getVar("damageRate").push_vector(attackBonusRate);
    obj.getVar("damageRate").push_vector(attackBonusboom);

}


function procAppend_po_breakice_second(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
    local pAni = obj.getCurrentAnimation();
    local frmIndex = sq_GetAnimationFrameIndex(pAni);
    if (frmIndex == 1)
    {
    sq_flashScreen(obj,0,80,300,102, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
    }
}

function onEndCurrentAni_po_breakice_second(obj)
{

        if(!obj.isMyControlObject()) {
            return;
        }
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);

    local damaRate = obj.getVar("damageRate");
    local value0 = damaRate.get_vector(0);
    local value1 = damaRate.get_vector(1);

	sq_BinaryStartWrite();
	sq_BinaryWriteDword(value0);
    sq_BinaryWriteDword(value1);

    sq_SendCreatePassiveObjectPacketPos(obj, 24361, 0, x, y, z);

    sq_SendDestroyPacketPassiveObject(obj);	

}

function onAttack_po_breakice_second(obj, damager, boundingBox, isStuck)
{

    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_JUDEKATHEETERNAL, false, "character/atmage/ice85/ap_ice85.nut", true);				 

}