MAGEOBJ_SUB_STATE_0 <- 30
MAGEOBJ_SUB_STATE_1 <- 31
MAGEOBJ_SUB_STATE_2 <- 32
MAGEOBJ_SUB_STATE_3 <- 33
MAGEOBJ_SUB_STATE_4 <- 34


function setCustomData_po_Mage(obj, receiveData)
{

	if(!obj) return;
	local id = receiveData.readDword();
	local pChr = obj.getTopCharacter();
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	if(id == 0 )
    	{
    		local attackBonusRate = receiveData.readDword();
    		local attackBonusRate2 = receiveData.readDword();		
        	obj.getVar("state").clear_vector();
	    	obj.getVar("state").push_vector(0);
	    	obj.getVar("value").clear_vector();
	    	obj.getVar("value").push_vector(attackBonusRate);
	    	obj.getVar("value").push_vector(attackBonusRate2);
        	obj.getVar("dama").clear_obj_vector();

	    	local pIntVec = sq_GetGlobalIntVector();
	    	sq_IntVectorClear(pIntVec);
	    	sq_IntVectorPush(pIntVec, 0);
	    	obj.addSetStatePacket(MAGEOBJ_SUB_STATE_0, pIntVec, STATE_PRIORITY_AUTO, false, "");
    	}



}

function setState_po_Mage(obj, state, datas)
{
	local id = obj.getVar("id").get_vector(0);
	local pChr = obj.getTopCharacter();
	local passiveState = state;
	obj.getVar("state").set_vector(0, passiveState);
	if(id == 0)
	{
	    if(passiveState == MAGEOBJ_SUB_STATE_0)
	    {
			local ani = obj.getVar().GetAnimationMap("fluorecollider_Main", "passiveobject/character/mage/Animation/Homonculous/FluoreCollider/create_body.ani");
			obj.setCurrentAnimation(ani);
        	local Ani = sq_CreateAnimation("", "passiveobject/character/mage/Animation/Homonculous/FluoreCollider/create_body_glow.ani");
        	local Ani2 = sq_CreateAnimation("", "passiveobject/character/mage/Animation/Homonculous/FluoreCollider/create_wheel.ani");
        	local Ani3 = sq_CreateAnimation("", "passiveobject/character/mage/animation/homonculous/fluorecollider/create_area.ani");
        	local CurrentAni = sq_GetCurrentAnimation(obj);
			CurrentAni.addLayerAnimation( 10001,Ani,true);
			CurrentAni.addLayerAnimation( -1,Ani2,true);	
			CurrentAni.addLayerAnimation( -1,Ani3,true);	
	    }
        else if(passiveState == MAGEOBJ_SUB_STATE_1)
	    {
			local AttackTerm = sq_GetIntData(pChr, 105, 6);
			local ani = obj.getVar().GetAnimationMap("fluorecollider_Loop", "passiveobject/character/mage/Animation/Homonculous/FluoreCollider/stay_body.ani");
			obj.setCurrentAnimation(ani);
        	local AddAni = sq_CreateAnimation("", "passiveobject/character/mage/animation/homonculous/fluorecollider/fluorerun.ani");
        	local Ani2 = sq_CreateAnimation("", "passiveobject/character/mage/animation/homonculous/fluorecollider/create_area1.ani");
        	local CurrentAni = sq_GetCurrentAnimation(obj);
			CurrentAni.addLayerAnimation( 10001, AddAni,true);
			CurrentAni.addLayerAnimation( 0,Ani2,true);
			local attackSpeedRate = 150;
			if(attackSpeedRate != 100) 
			CurrentAni.setSpeedRate(attackSpeedRate.tofloat());
        	obj.setTimeEvent(0,AttackTerm,0,true);

			local targetObj = FindAngleTarget(obj, 300, 200, 500);
			if(targetObj) 
				{
					local ani = sq_CreateAnimation("", "passiveobject/character/mage/animation/homonculous/fluorecollider/thunder6.ani");
					local startX = obj.getXPos();
					local startY = obj.getYPos();
					local startZ = 200;
					local lastX  = sq_GetDistancePos(targetObj.getXPos(), obj.getDirection(), 0);
					local lastY = targetObj.getYPos();
					local lastZ = targetObj.getZPos() + targetObj.getObjectHeight();

					local rotateAngle = GetRorateAngleByCurrentPos(obj,startX,startY,startZ,lastX,lastY,lastZ );
					local pooledObj = sq_CreatePooledObject(ani,true);
					local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 10);
					pooledObj.setCurrentPos(posX,obj.getYPos() + 5,startZ);
					pooledObj.setCurrentDirection(obj.getDirection());
					sq_AddObject(obj,pooledObj,2,false);	
					obj.getVar("hitEffectObj").clear_obj_vector();
					obj.getVar("hitEffectObj").push_obj_vector( pooledObj );
					local distance = sq_GetDistance(startX, startY - startZ, lastX,lastY - lastZ, true);
					local lenX = 300;
					local lenY = 150;
					local pAni = sq_GetCurrentAnimation(pooledObj);
					sq_SetfRotateAngle(pAni, rotateAngle);
					pAni.setImageRate(distance.tofloat() / lenX.tofloat(), lenY.tofloat() / 100.0 );
					CreateFluoreColliderSparkEffect(obj);
				}
		
 
	    }
        else if(passiveState == MAGEOBJ_SUB_STATE_2)
	    {
			local ani = obj.getVar().GetAnimationMap("fluorecollider_Exp", "passiveobject/character/mage/animation/homonculous/fluorecollider/exp.ani");
			obj.setCurrentAnimation(ani);
			local attackBonusRate2 = obj.getVar("value").get_vector(1);
			local attackInfo = sq_GetCustomAttackInfo(obj, 1);
			sq_SetCurrentAttackInfo(obj, attackInfo);
			attackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate2);
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() + sq_getRandom( -50, 50), sq_getRandom( 0, 50));
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() + sq_getRandom( -50, 50), sq_getRandom( 0, 50));
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() - sq_getRandom( -50, 50), sq_getRandom( 0, 50));
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() - sq_getRandom( -50, 50), sq_getRandom( 0, 50));
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() - sq_getRandom( -50, 50), sq_getRandom( 0, 50));
			sq_SendCreatePassiveObjectPacketPos(obj, 23055, 0, obj.getXPos() + sq_getRandom( -80, 80), obj.getYPos() - sq_getRandom( -50, 50), sq_getRandom( 0, 50));
		}
    }	
}

function onTimeEvent_po_Mage(obj, timeEventIndex, timeEventCount)
{
    local id = obj.getVar("id").get_vector(0);
	local passiveState = obj.getVar("state").get_vector(0);	
    local pChr = obj.getTopCharacter();
	if(id == 0)
	{
	if (passiveState == MAGEOBJ_SUB_STATE_1)        
        {
	    if (timeEventIndex == 0)
	        {
				FindAllEnemy(obj,300, 200, 500);
			}

        }
    }	
}

function procAppend_po_Mage(obj)
{
	local id = obj.getVar("id").get_vector(0);
	local passiveState = obj.getVar("state").get_vector(0);
	local pChr = obj.getTopCharacter();
	local pAni = obj.getCurrentAnimation();
	local frmIndex = sq_GetAnimationFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	if(id == 0)
    {
		local Skilllevel = sq_GetSkillLevel(pChr, 105);
		local AttackTime = sq_GetLevelData( pChr, 105, 0, Skilllevel);
        if (passiveState == MAGEOBJ_SUB_STATE_1)
        {
		if(currentT >= AttackTime)
			{
				SetValidpassiveobject(obj);				
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 0);
				obj.addSetStatePacket(MAGEOBJ_SUB_STATE_2, pIntVec, STATE_PRIORITY_AUTO, false, ""); 	
			}
        }    		
	}
}


function onEndCurrentAni_po_Mage(obj)
{
	local id = obj.getVar("id").get_vector(0);
	local passiveState = obj.getVar("state").get_vector(0);
	local pChr = obj.getTopCharacter();
	if(id == 0)
		{
			if (passiveState == MAGEOBJ_SUB_STATE_0)
	    		{
	    			local pIntVec = sq_GetGlobalIntVector();
	    			sq_IntVectorClear(pIntVec);
	    			sq_IntVectorPush(pIntVec, 0);
	    			obj.addSetStatePacket(MAGEOBJ_SUB_STATE_1, pIntVec, STATE_PRIORITY_AUTO, false, "");
        		}
			else if (passiveState == MAGEOBJ_SUB_STATE_2)
	    		{
					sq_SendDestroyPacketPassiveObject(obj);   
        		}
    	}
}


function GetRorateAngleByCurrentPos(obj,x1,y1,z1,x2,y2,z2)
{
	if(!obj) return;

	local X = x1;
	local Y = y1;
	local Z = z1;
	
	local posX = x2;
	local posY = y2;
	local posZ = z2;
	
	local offset = posX - X;
	
	local distance = sq_GetDistance( X, Y - Z, posX, posY - posZ, true);
	
	local w = posX - X;		
	if(w < 0) w = -w;
	
	
	local h = (posY - posZ) - (Y - Z);
	local width = sq_Abs(posX - X);
	local angle = sq_Atan2( h.tofloat(), width.tofloat());

	
	{
		angle = -angle;
	}

	local nRevision = distance;

	local cos = nRevision.tofloat() * sq_Cos(angle);
	local sin = nRevision.tofloat() * sq_Sin(angle);

	local nX = sq_Abs( cos.tointeger() );
	local nY = sq_Abs( sin.tointeger() );

	return angle;
	

}

