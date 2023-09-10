function onSetState_FluoreCollider_Creat(obj, state, datas, isResetTimer)
{
	obj.sq_StopMove();

	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
if(subState == 1000)
	{
	local buffAni = obj.sq_GetBuffAni();
	obj.setCurrentAnimation(buffAni);
	}
	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
}


function FindAllEnemy(obj,distance, angle, targetMaxHeight)
{
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE) && object.getZPos() <= targetMaxHeight)
		{
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			if(!activeObj.isDead())
			{
				if(sq_GetDistanceObject(obj, object, false) < distance && getObjectAngle(obj, object) < angle)
				{
					local var = obj.getVar("dama");  		
					local objectsSize = var.get_obj_vector_size();
					if (objectsSize > 0 )
						{
							if (obj.isMyControlObject())
							{
								for(local i=0;i<objectsSize;++i)
									{
										local damager = var.get_obj_vector(i);
										local attackBonusRate = obj.getVar("value").get_vector(0);
										local attackInfo = sq_GetCustomAttackInfo(obj, 0);
										sq_SetCurrentAttackInfo(obj, attackInfo);
										attackInfo = sq_GetCurrentAttackInfo(obj);
										sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
										sq_SetCurrentAttackeHitStunTime(attackInfo, 0);
										if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/mage/fluorecollider/ap_fluorecollider.nut"))
										CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/mage/fluorecollider/ap_fluorecollider.nut");		
               							local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 105, false, "character/mage/fluorecollider/ap_fluorecollider.nut", true);
										if(masterAppendage) 
										sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL , masterAppendage);	
									}

							}

						}	
					obj.getVar("dama").push_obj_vector(object);
				}
			}
		}
	}


}



function onProc_FluoreCollider_Creat(obj)
{
    local skillLevel = sq_GetSkillLevel(obj, 33);
    if (skillLevel > 0)
    {
        local skill = sq_GetSkill(obj, 33);
        local skilllevel = obj.sq_GetSkillLevel(105);
        local subState = obj.getSkillSubState();
        if (subState == 0 && !skill.isSealFunction() && !obj.getVar().get_vector(0))
        {
            local attackBonusRate = obj.sq_GetBonusRateWithPassive(105, 41, 4, 1.0);
            local attackBonusRate2 = obj.sq_GetBonusRateWithPassive(105, 41, 5, 1.0);
            obj.sq_StartWrite();
            obj.sq_WriteDword(0);
            obj.sq_WriteDword(attackBonusRate);
            obj.sq_WriteDword(attackBonusRate2);
            obj.sq_SendCreatePassiveObjectPacket(24339, 0, 50, 1, 0);
            sq_SetMyShake(obj, 2, 240);

            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        }

        obj.getVar().set_vector(0, 1);
    }
    return true;
}

function onEndCurrentAni_FluoreCollider_Creat(obj)
{
    local skillLevel = sq_GetSkillLevel(obj, 33);
    if (skillLevel > 0)
    {
        local subState = obj.getSkillSubState();
        if (subState == 1000)
        {

            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        }
        else
        {
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        }
    }
}






function FindAngleTarget(obj, distance, angle, targetMaxHeight)
{
	if(!obj)
		return null;
		
	local objectManager = obj.getObjectManager();
	

	if (objectManager == null)
		return null;

	local minDistance = 0;
	local target = null;
	

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE) &&
			isInFrontObject(obj, object) && object.getZPos() <= targetMaxHeight)
		{
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			//	ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿?ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿?
			
			if(!activeObj.isDead())
			{
				//local testAngle = CNRDObject.getAngle(0, 0, 10, 10, false);
				
				print( " angle:" + getObjectAngle(obj, object));
				if(sq_GetDistanceObject(obj, object, false) < distance && getObjectAngle(obj, object) < angle)
				{
					if (target == null || sq_GetDistanceObject(obj, object, false) < minDistance)
					{
						target = activeObj;
						minDistance = sq_GetDistanceObject(obj, object, false);
					}
				}
			}
		}
	}

	return target;
}


function SetValidpassiveobject(obj)
{
	local var = obj.getVar("hitEffectObj");
	local objectsSize = var.get_obj_vector_size();

	for(local i=0;i<objectsSize;++i)
	{
		local effectObj = var.get_obj_vector(i);
		if (effectObj)
		{
			effectObj.setValid(false);
		}
	}

}

function CreateFluoreColliderSparkEffect(obj)
{
	local ani = sq_CreateAnimation("","passiveobject/character/mage/animation/homonculous/fluorecollider/thunder_spark.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	pooledObj.setCurrentPos(obj.getXPos() + 5,obj.getYPos() + 1,obj.getZPos() +200);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
	obj.getVar("hitEffectObj").push_obj_vector( pooledObj );
}

function onProcCon_mage_MageFluorecollider(R6ogHnfBxZjID)
{
 if(!R6ogHnfBxZjID) return;
 sq_SetKeyxEnable(R6ogHnfBxZjID, E_JUMP_COMMAND, true);
 if(sq_IsEnterCommand(R6ogHnfBxZjID, E_JUMP_COMMAND))
 {
 R6ogHnfBxZjID.sq_IntVectClear();
 R6ogHnfBxZjID.sq_IntVectPush(4);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(20);
 R6ogHnfBxZjID.sq_AddSetStatePacket(4, STATE_PRIORITY_USER, true);
 }
} ;