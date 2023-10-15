
function setCustomData_po_ATBlueDragonWillExp(obj, reciveData)
{

	if(!obj) return;

	local attack_rate = reciveData.readDword();
	
	local atk = sq_GetCurrentAttackInfo(obj);
	
	if(atk) {
		sq_SetCurrentAttackBonusRate(atk, attack_rate);
	}
    obj.getVar("damaRate").clear_vector();
    obj.getVar("damaRate").push_vector(attack_rate);
    obj.getVar("dama").clear_obj_vector();

}

function onAttack_po_ATBlueDragonWillExp(obj,damager, boundingBox, isStuck)
{
    obj.getVar("dama").push_obj_vector(damager);
}

function setState_po_ATBlueDragonWillExp(obj, state, datas)
{

	if(!obj) return;

}

function procAppend_po_ATBlueDragonWillExp(obj)
{

	if(!obj) return;

}

function getHitDirection_po_ATBlueDragonWillExp(obj, damager)
{
	if(!obj) return 0;
	
	local pChr = obj.getTopCharacter();
	
	if(pChr) {	
		return sq_GetOppositeDirection(pChr.getDirection());
	}
	
	return 0;
}


function onChangeSkillEffect_po_ATBlueDragonWillExp(obj, skillIndex, reciveData)
{

	if(!obj) return;

}

function onDestroyObject_po_ATBlueDragonWillExp(obj, object)
{

	if(!obj) return;

}

function onKeyFrameFlag_po_ATBlueDragonWillExp(obj, flagIndex)
{

}

function onEndCurrentAni_po_ATBlueDragonWillExp(obj)
{

	if(!obj) return;

	if(obj.isMyControlObject()) {
        local mage = obj.getTopCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	
        if(mage) {	
            local atk = obj.getVar("damaRate").get_vector(0);
            local damager = obj.getVar("dama").get_obj_vector(0);

            if (damager)
            {
                sendIce75Passive(mage,damager,atk);

            }

        }
		sq_SendDestroyPacketPassiveObject(obj);
	}

}
