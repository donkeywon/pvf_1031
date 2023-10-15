function checkExecutableSkill_shardmagnum(obj)  
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_SHARDMAGNUM);

	if (isUse) {
		obj.sq_AddSetStatePacket(STATE_SHARDMAGNUM , STATE_PRIORITY_USER, false);
		return true;
	}

	return false;
}



function setCharacterFristAnimation_ShardMagnum(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_SHARDMAGNUM );		
    if (level > 0)
    {
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/zrr/shardmagnumbody_body.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atshardmagnum/shardmagnumstep1_01iceboom4.ani");
        createFristAnimationPooledObject(obj,
        "passiveobject/zrr_skill/atmage/animation/atshardmagnum/shardmagnumstep2_02handglow.ani");



    }
}


function checkCommandEnable_shardmagnum(obj)
{

	return true;
}

function onKeyFrameFlag_SHARDMAGNUM(obj, flagIndex)
{
//1
//2
    if(!obj.isMyControlObject())
        return false;
    if (flagIndex == 10)
    {

        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_SHARDMAGNUM , STATE_SHARDMAGNUM , 0, 1.0);

        if (damager)
        {
            sendIce75Passive(obj,damager,atk);

        }
        return true;
    }

    if (obj.getVar("flag").get_vector(flagIndex) == 0)
    {
        obj.getVar("flag").set_vector(flagIndex,1);
        local len = 100;
        if (flagIndex == 1)
        {

            obj.sq_StartWrite();
            obj.sq_WriteDword(0);	// attackBonusRate
            obj.sq_WriteDword(63);	// attackBonusRate
            obj.sq_SendCreatePassiveObjectPacket(24357, 0, len, 1, 0);
            sq_flashScreen(obj,0,0,200,102, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
            sq_SetMyShake(obj,5,50);

        }else if (flagIndex == 2)
        {
            local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_SHARDMAGNUM, STATE_SHARDMAGNUM, 1, 1.0);
            obj.sq_StartWrite();
            obj.sq_WriteDword(attackBonusRate);	// attackBonusRate
            obj.sq_WriteDword(64);	// attackBonusRate
            obj.sq_SendCreatePassiveObjectPacket(24357, 0, len, 1, 0);
            sq_flashScreen(obj,0,80,100,178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
            sq_SetMyShake(obj,10,200);
        }
    }
}

function onSetState_SHARDMAGNUM(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEBREAK);
	obj.sq_SetCurrentAttackInfo(ATTACKINFO_BREAKICE);
    obj.getVar("flag").clear_vector();
    obj.getVar("flag").push_vector(0);
    obj.getVar("flag").push_vector(0);
    obj.getVar("flag").push_vector(0);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_SHARDMAGNUM , STATE_SHARDMAGNUM, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);				

    obj.getVar("dama").clear_obj_vector();


	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onAttack_SHARDMAGNUM(obj, damager, boundingBox, isStuck)
{
    obj.getVar("dama").push_obj_vector(damager);
}

function onEndCurrentAni_SHARDMAGNUM(obj)
{

    if(!obj.isMyControlObject())
        return false;


	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
