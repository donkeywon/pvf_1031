
function checkExecutableSkill_overfreezeextension(obj)  
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_OVERFREEZEEXTENSION);

	if (isUse) {

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			
			obj.addSetStatePacket(STATE_OVERFREEZEEXTENSION , pIntVec, STATE_PRIORITY_FORCE, false, "");

		return true;
	}

	return false;
}


function setCharacterFristAnimation_OverFreezeExtension(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_OVERFREEZEEXTENSION );		
    if (level > 0)
    {
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_front.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_back.ani");

        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/overfreezeextensionattack.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/overfreezeextensioncasting.ani");



    }
}


function checkCommandEnable_overfreezeextension(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	

	return true;
}

function createBODONG0(obj,size)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_skill/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_front.ani");
    local sizeRate = size.tofloat()/100.0;
    ani.setImageRateFromOriginal(sizeRate, sizeRate);
    ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    local pooledObj = sq_CreatePooledObject(ani,true);
    pooledObj.setCurrentPos(obj.getXPos(),obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	

}

function createBODONG1(obj,size)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_skill/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_back.ani");

    local sizeRate = size.tofloat()/100.0;
    ani.setImageRateFromOriginal(sizeRate, sizeRate);
    ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    local pooledObj = sq_CreatePooledObject(ani,true);
    pooledObj.setCurrentPos(obj.getXPos(),obj.getYPos()-2,obj.getZPos());
    sq_AddObject(obj,pooledObj,1,false);	
}

function onSetState_OVERFREEZEEXTENSION(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	obj.sq_StopMove();
    local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);

    if (state == 0)
    {
        //if (obj.isMyControlObject())
        sq_flashScreen(obj,1000,60,0,178, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE80_READY);
    }else{


        local skillLevel = sq_GetSkillLevel(obj, SKILL_OVERFREEZEEXTENSION);

        local size = sq_GetLevelData(obj, SKILL_OVERFREEZEEXTENSION, 2, skillLevel);
        local time = sq_GetLevelData(obj, SKILL_OVERFREEZEEXTENSION, 1, skillLevel);
        createBODONG1(obj,size);
        createBODONG0(obj,size);
        if (obj.isMyControlObject())
        {
            sq_flashScreen(obj,0,60,0,178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
            sq_SetMyShake(obj,15,120);
        }
        local damage = obj.sq_GetBonusRateWithPassive(SKILL_OVERFREEZEEXTENSION , STATE_OVERFREEZEEXTENSION, 0, 1.0); 

        obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE80_OUT);
        obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICE80 );
        obj.sq_SetCurrentAttackBonusRate(damage);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

        obj.getVar("time").clear_vector();
        obj.getVar("time").push_vector(time);


    }
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onAttack_OVERFREEZEEXTENSION(obj, damager, boundingBox, isStuck)
{
    if (!obj.isMyControlObject())
        return false;
    local state = obj.getSkillSubState();
    if (state == 1)
    {
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_OVERFREEZEEXTENSION, false, "character/atmage/overfreezeextension/ap_ice80.nut", true);				 
            if(masterAppendage) 
            {
                masterAppendage.sq_SetValidTime( obj.getVar("time").get_vector(0) );
            }
    }
}

function onEndCurrentAni_OVERFREEZEEXTENSION(obj)
{
    if (!obj.isMyControlObject())
        return false;
//    local state = obj.getSkillSubState();
    local state = obj.getSkillSubState();
    if (state == 0)
    {

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_OVERFREEZEEXTENSION , pIntVec, STATE_PRIORITY_FORCE, false, "");
    }else{

        local skillLevel = sq_GetSkillLevel(obj, SKILL_OVERFREEZEEXTENSION);

        local size = sq_GetLevelData(obj, SKILL_OVERFREEZEEXTENSION, 2, skillLevel);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = 100.0 / size.tofloat();
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
    }
}
