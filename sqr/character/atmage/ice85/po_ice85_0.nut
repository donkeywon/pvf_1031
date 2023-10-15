function setCustomData_po_shotout(obj, receiveData)
{
	if(!obj)
		return;

	local attackBonusRate_arrow = receiveData.readDword();// ?????(%)	

    obj.getVar("damageRate").clear_vector();
    obj.getVar("damageRate").push_vector(receiveData.readDword());
    obj.getVar("damageRate").push_vector(receiveData.readDword());

    local maxT = receiveData.readDword();
    local maxDistance = receiveData.readDword();



	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate_arrow);

    obj.getVar("move").clear_vector();
    obj.getVar("move").push_vector(0);
    obj.getVar("move").push_vector(maxT);
    obj.getVar("move").push_vector(maxDistance);
    obj.getVar("move").push_vector(obj.getXPos() );

    obj.getVar("flag").clear_vector();
    obj.getVar("flag").push_vector(0);

    obj.getVar("flag2").clear_vector();
    obj.getVar("flag2").push_vector(0);

}

function procAppend_po_shotout(obj)
{
//    obj.getVar("move").clear_vector();
//    obj.getVar("move").push_vector(0);
//    obj.getVar("move").push_vector(maxT);
//    obj.getVar("move").push_vector(maxDistance);
//    obj.getVar("move").push_vector(obj.getXPos() );

    local startX = obj.getVar("move").get_vector(3);
    local maxT = obj.getVar("move").get_vector(1);
    local maxDistance = obj.getVar("move").get_vector(2);

	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);


    if (currentT < maxT)
    {

		local mage = obj.getTopCharacter();
		mage = sq_ObjectToSQRCharacter(mage);	
		if (mage) 
        {
            local v = sq_GetAccel(0, maxDistance, currentT, maxT, true);
            local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
			if(mage.isMovablePos(dstX, obj.getYPos()    ))
            {
                sq_setCurrentAxisPos(obj, 0, dstX);
            }else{
                if (obj.getVar("flag2").get_vector(0) == 0)
                {
                    obj.getVar("flag2").set_vector(0,1);
                    local damaRate = obj.getVar("damageRate");
                    sq_BinaryStartWrite();
                    sq_BinaryWriteDword(damaRate.get_vector(0));
                    sq_BinaryWriteDword(damaRate.get_vector(1));
                    sq_SendCreatePassiveObjectPacketPos(mage, 24359, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
                }
                sq_SendDestroyPacketPassiveObject(obj);	
            }
		}


    }else{

		local mage = obj.getTopCharacter();
		mage = sq_ObjectToSQRCharacter(mage);	
        if (obj.getVar("flag2").get_vector(0) == 0)
        {
            obj.getVar("flag2").set_vector(0,1);
            local damaRate = obj.getVar("damageRate");
            sq_BinaryStartWrite();
            sq_BinaryWriteDword(damaRate.get_vector(0));
            sq_BinaryWriteDword(damaRate.get_vector(1));
            sq_SendCreatePassiveObjectPacketPos(mage, 24359, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
        }
        sq_SendDestroyPacketPassiveObject(obj);	

    }
}



function onAttack_po_shotout(obj, damager, boundingBox, isStuck)
{
	if (!obj)
		return 0;
	sq_SetMyShake(obj,4,200);
	
    local flag = obj.getVar("flag");
    
    if (flag.get_vector(0) == 0)
    {
        if(!obj.isMyControlObject()) {
            return;
        }
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(1);
    
        if (obj.getVar("flag2").get_vector(0) == 0)
        {
            obj.getVar("flag2").set_vector(0,1);

            local parentObj = obj.getParent();

            local damaX = damager.getXPos();
            local damaY = damager.getYPos();
            local damaZ = damager.getZPos();
            local damaRate = obj.getVar("damageRate");

            sq_BinaryStartWrite();
            sq_BinaryWriteDword(damaRate.get_vector(0));
            sq_BinaryWriteDword(damaRate.get_vector(1));
            sq_SendCreatePassiveObjectPacketPos(parentObj, 24359, 0, damaX, damaY, damaZ +  damager.getObjectHeight()/2 );
        }
		sq_SendDestroyPacketPassiveObject(obj);	
    }


}

