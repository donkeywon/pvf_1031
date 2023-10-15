function checkExecutableSkill_judekatheeternal(obj)  
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_JUDEKATHEETERNAL);

	if (isUse) {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			
			obj.addSetStatePacket(STATE_JUDEKATHEETERNAL , pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}

	return false;
}


function setCharacterFristAnimation_Ice85(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_JUDEKATHEETERNAL );		
    if (level > 0)
    {
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/judekatheeternal_cast_body.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/judekatheeternal_start_body.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/als_ani/atjudekatheeternal/start/bowdisappear_arroweffect.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_back.ani");

        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atjudekatheeternal/arrow_shoot.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atjudekatheeternal/explosion/judekatheeternal_explosion.ani");

        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atjudekatheeternal/ice/judekatheeternal_first.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atjudekatheeternal/ice/judekatheeternal_second.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atjudekatheeternal/ice/judekatheeternal_third.ani");

        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/cutin/atmage_eternal.ani");

    }
}



function checkCommandEnable_judekatheeternal(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	
	return true;
}


function createICE85EndDisAppear(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/bowdisappear_arroweffect.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+2,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}

//character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_back.ani
function createICE85Back(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_back.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85StartBack(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_starteffect_back.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85StartFront(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_starteffect_front.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+2,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Spear(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/bowdisappear_arroweffect.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}

function createICE85Wing(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_start_0_wing.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing1(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_start_0_wing1.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing2(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_start_0_wing2.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing3(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/start/judekatheeternal_start_0_wing2_1.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing4(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_wing.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing5(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_wing_1.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing6(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_wing2.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing7(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_wing2_1.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing8(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_1_backwind.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing9(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_1_backwind2.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing10(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_1_backwind3.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()-1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing11(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_startwind.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing12(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_startwind1.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing13(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_startwind2.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}
function createICE85Wing14(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/cast/judekatheeternal_cast_0_startwind3.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}

function createICE85Floor(obj)
{

    local objectManager = obj.getObjectManager();
    local xPos = obj.getXPos();
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atjudekatheeternal/floor.ani");
    local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentDirection(obj.getDirection());
    pooledObj.setCurrentPos(xPos,obj.getYPos()+1,obj.getZPos());
    sq_AddObject(obj,pooledObj,0,false);	
}

function onSetState_JUDEKATHEETERNAL(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
    if (state == 0)
    {

        createUIAniWithIDPath(obj,32,"character/mage/atanimation/cutin/atmage_eternal.ani");
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE85_READY);
        if(!obj.isMyControlObject()) {
            return;
        }

        sq_flashScreen(obj,0,120,300,102, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        sq_SetMyShake(obj,7,160);
        createICE85Back(obj);
    }else{
		local speed = -200;
		obj.sq_SetStaticMoveInfo(0, speed, speed, false);	
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);	

        obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE85_OUT);
        if(!obj.isMyControlObject()) {
            return;
        }

        createICE85StartFront(obj);
        createICE85StartBack(obj);

        local attackBonusRate_arrow = obj.sq_GetBonusRateWithPassive(SKILL_JUDEKATHEETERNAL, STATE_JUDEKATHEETERNAL,0, 1.0);	// 
        local attackBonusRate_out = obj.sq_GetBonusRateWithPassive(SKILL_JUDEKATHEETERNAL, STATE_JUDEKATHEETERNAL,2, 1.0);	// 
        local attackBonusRate_boom = obj.sq_GetBonusRateWithPassive(SKILL_JUDEKATHEETERNAL, STATE_JUDEKATHEETERNAL,3, 1.0);	// 

    	local level = sq_GetSkillLevel(obj, SKILL_JUDEKATHEETERNAL);		


        obj.sq_StartWrite();
        obj.sq_WriteDword(attackBonusRate_arrow);	// attackBonusRate
        obj.sq_WriteDword(attackBonusRate_out);
        obj.sq_WriteDword(attackBonusRate_boom);

        obj.sq_WriteDword(1000);
        obj.sq_WriteDword(800);


        obj.sq_SendCreatePassiveObjectPacket(24358, 0, 75, 1, 75);



    }
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);


}

function onProc_JUDEKATHEETERNAL(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
    local state = obj.getSkillSubState();
    if (state == 1)
    {
        if (frmIndex == 3)
        {
        sq_flashScreen(obj,0,80,160,51, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        }else if (frmIndex == 4)
        {
        sq_flashScreen(obj,160,880,320,255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        }
    }

}

function onEndCurrentAni_JUDEKATHEETERNAL(obj)
{
        if(!obj.isMyControlObject()) {
            return;
        }
    local state = obj.getSkillSubState();
    if (state == 0)
    {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			
			obj.addSetStatePacket(STATE_JUDEKATHEETERNAL , pIntVec, STATE_PRIORITY_FORCE, false, "");
    }else{
        createICE85EndDisAppear(obj);
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
    }
}


