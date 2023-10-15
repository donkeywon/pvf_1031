
SUB_STATE_ICEMAN_0	<- 0
SUB_STATE_ICEMAN_1	<- 1
SUB_STATE_ICEMAN_2	<- 2
SUB_STATE_ICEMAN_3	<- 3
SUB_STATE_ICEMAN_4	<- 4
SUB_STATE_ICEMAN_WAIT <- 5



function setCharacterFristAnimation_IceMan(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_ICEMAN );		
    if (level > 0)
    {

        if (sq_GetSkillLevel(obj, SKILL_ICEMANUPDATE ) <= 0)
        {
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/iceman2.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/iceman3.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/iceman4.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/iceman5.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/iceman6.ani");

            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/01_casting/02_roadappear_dodge_00.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/01_casting/02_roadappear_dodge_f_00.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/01_casting/casting_base_front.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/01_casting/casting_base_back.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/02_pole/pole_base.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/02_pole/dust/19smoke_dodge_11.ani");

            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/destroy_base_0.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/destroy_base_1.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/destroy_base_2.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/02_broken/dust/19smoke_dodge_00.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/03_broken_02/dust/19smoke_dodge_00.ani");

            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle01_normal.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle01_normal_60.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle02_normal.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle02_normal_60.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle03_normal.ani");
            createFristAnimationPooledObject(obj,
            "passiveobject/character/mage/animation/aticeman/03_destroy/particle/12_particle03_normal_60.ani");

        }else{

            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_attack1_body.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_attack2_body.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_attack3_body.ani");

            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_attaklast_body.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_cast_body.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/zrr/icemasterupdate/pinpointrush_start_body.ani");

            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack1_a.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack1_b.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack2_a.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack2_b.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack3_a.ani");
            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/attack/pinpointrush_attack3_b.ani");

            createFristAnimationPooledObject(obj,
            "character/mage/atanimation/als_ani/atpinpointrush/cast/pinpointrush_cast_body.ani");

        }

    }
}


function checkExecutableSkill_IceMan(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICEMAN);

	if(b_useskill) {

		local skillLevel = sq_GetSkillLevel(obj, SKILL_ICEMANUPDATE);		
		obj.sq_IntVectClear();
        if (skillLevel > 0)
        {
		obj.sq_IntVectPush(-10);
        }else{
		obj.sq_IntVectPush(0);
        }
        obj.getVar("dama").clear_obj_vector();
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_IceMan(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	return true;

}


function onAttack_IceMan(obj, damager, boundingBox, isStuck)
{
    if ( !sq_IsFixture(damager) )
    {
        obj.getVar("dama").push_obj_vector(damager);
    }
}

function onEndState_IceMan(obj, new_state)
{



	local substate = obj.getSkillSubState();
	
	if(new_state != STATE_ICEMAN)
    {
		obj.sq_RemoveAimPointMark();
    }

	local skillLevel = sq_GetSkillLevel(obj, SKILL_ICEMANUPDATE);		
    if (skillLevel <= 0)
    {

        local damager = obj.getVar("dama2").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 2, 1.0 );

        if (damager)
        {
            sendIce75Passive(obj,damager,atk);

        }

    }
}

function createDust_IceMan(obj)
{
	local ani = sq_CreateAnimation("","character/mage/atanimation/als_ani/atpinpointrush/start/dust.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(obj.getXPos(),obj.getYPos(),obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}

function createShockWave_IceMan(obj)
{
	local ani = sq_CreateAnimation("","passiveobject/character/mage/animation/aticeman/03_destroy/03_broken_02/dust/19smoke_dodge_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(obj.getXPos(),obj.getYPos() + 1,obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}
function createShockWave2_IceMan(obj)
{
	local ani = sq_CreateAnimation("","passiveobject/character/mage/animation/aticeman/03_destroy/common/18_shockwave_dodge_0.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(obj.getXPos(),obj.getYPos() + 1,obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}


function onSetState_IceMan(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

    local level = sq_GetSkillLevel(obj, SKILL_ICEMANUPDATE);
    local hit0 = sq_GetLevelData(obj, SKILL_ICEMANUPDATE, 0, level);
    local hit1 = sq_GetLevelData(obj, SKILL_ICEMANUPDATE, 1, level);
    local hit2 = sq_GetLevelData(obj, SKILL_ICEMANUPDATE, 2, level);
	
	obj.getVar("state").clear_ct_vector();
	obj.getVar("state").push_ct_vector();
	local t = obj.getVar("state").get_ct_vector(0);
	t.Reset();
	t.Start(10000,0);
	
	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	

    if (substate == -10)
    {

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_CASTING);

    }else if (substate == -9)
    {
        createDust_IceMan(obj);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_START);
		obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICEMANUPDATE_GRAB);
        local disTX = obj.sq_GetIntData(SKILL_ICEMANUPDATE, 0);
        local disTY = 0;
		local targetObj = findAngleTarget(obj, disTX, 180, 100);
		if(targetObj) {
            obj.getVar("dama").clear_obj_vector();
            obj.getVar("dama").push_obj_vector(targetObj);
            disTX = abs(obj.getXPos() - targetObj.getXPos() ) + obj.sq_GetIntData(SKILL_ICEMANUPDATE,1);
            disTY = targetObj.getYPos() - obj.getYPos()+ 5 ;

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(targetObj, obj, SKILL_ICEMAN, false, "character/atmage/iceman/ap_iceman.nut", true);				 


        }
        local ani = obj.sq_GetCurrentAni();
		local delay = ani.getDelaySum(false);

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector(obj.getXPos());
        obj.getVar("pos").push_vector(obj.getYPos());
        obj.getVar("pos").push_vector(delay);
        obj.getVar("pos").push_vector(disTX);
        obj.getVar("pos").push_vector(disTY);

        obj.getVar("atkCount").clear_vector();
        obj.getVar("atkCount").push_vector(0);
        obj.getVar("atkCount").push_vector(obj.sq_GetIntData(SKILL_ICEMANUPDATE, 2) );

        local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 1, hit0.tofloat() / 100.0 );
        obj.sq_SetCurrentAttackBonusRate(damage);				
    

    }else if (substate == -8)
    {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_ATTACK1);
		obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICEMANUPDATE_ATTACK1);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        local currAtk = obj.getVar("atkCount").get_vector(0);
        obj.getVar("atkCount").set_vector(0,currAtk + 1);

        local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 1, hit0.tofloat() / 100.0 );
        obj.sq_SetCurrentAttackBonusRate(damage);				

    }else if (substate == -7)
    {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_ATTACK2);
		obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICEMANUPDATE_ATTACK2);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        local currAtk = obj.getVar("atkCount").get_vector(0);
        obj.getVar("atkCount").set_vector(0,currAtk + 1);

        local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 1, hit0.tofloat() / 100.0 );
        obj.sq_SetCurrentAttackBonusRate(damage);				

    }else if (substate == -6)
    {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_ATTACK3);
		obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICEMANUPDATE_ATTACK3);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        local currAtk = obj.getVar("atkCount").get_vector(0);
        obj.getVar("atkCount").set_vector(0,currAtk + 1);

        local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 1, hit0.tofloat() / 100.0 );
        obj.sq_SetCurrentAttackBonusRate(damage);				

    }else if (substate == -5)
    {
        sq_SetMyShake(obj,3,80);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMANUPDATE_ATTACKLAST);
		obj.sq_SetCurrentAttackInfo(ATTACKINFO_ICEMANUPDATE_ATTACKLAST);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
        local damage = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 2, hit1.tofloat() / 100.0 );
        local damage2 = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 3, hit2.tofloat() / 100.0 );
        obj.sq_SetCurrentAttackBonusRate(damage);				
        obj.getVar("damaR").clear_vector();
        obj.getVar("damaR").push_vector(damage2);

    }

	else if(substate == SUB_STATE_ICEMAN_0)
	{
		obj.getVar("dama").clear_obj_vector();
		obj.sq_PlaySound("ICEBLADE_CAST");
		local offsetX = 100;
		offsetX = obj.sq_GetDistancePos(posX, obj.sq_GetDirection(), offsetX);

		local vX = obj.sq_GetIntData(SKILL_ICEMAN, 0); 
		local vY = 0;

		obj.sq_AddAimPointMark(offsetX, posY, vX, vY);
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN1);
	}
	else if(substate == SUB_STATE_ICEMAN_WAIT)
	{
		local dstX = obj.sq_GetVectorData(datas, 1);
		
		obj.getVar("dash").clear_vector();
		obj.getVar("dash").push_vector(dstX); 
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN6);
	}
	else if(substate == SUB_STATE_ICEMAN_1)
	{
		
		print(" sub_state_1");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN2);
		
	}
	else if(substate == SUB_STATE_ICEMAN_2)
	{
		
		
		local dstX = obj.getVar("dash").get_vector(0);
		obj.getVar("dash").push_vector(posX); 
		obj.getVar("dash").push_vector(posY); 
		
		local disX = sq_Abs(dstX - posX);
		local disY = posY;
		
		if(dstX > posX)
		{
			obj.setDirection(ENUM_DIRECTION_RIGHT);
		}
		else
		{
			obj.setDirection(ENUM_DIRECTION_LEFT);
		}
		
		disX = disX - 120;
		
		if(disX <= 0)
			disX = 0;
		
		obj.getVar("dash").push_vector(disX); 
		obj.getVar("dash").push_vector(disY); 
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN3);
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN4);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICEMAN);
		
		local multiHitAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
		STATE_ICEMAN, SKL_LVL_COLUMN_IDX_1, 1.0); 
		
		obj.sq_SetCurrentAttackBonusRate(multiHitAttackRate);
		
		
		local currentAni = sq_GetCurrentAnimation(obj);
		if(currentAni)
		{
			local multiHitSpeed100Rate = obj.sq_GetIntData(SKILL_ICEMAN, 2); 
			currentAni.setSpeedRate(multiHitSpeed100Rate.tofloat());
		}
		
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN5);
	}
	
	

}

function prepareDraw_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
}

function onProc_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	local sq_var = obj.getVar();
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();


    if(substate == -9)
    {
            local delayT = obj.getVar("pos").get_vector(2);





        local v0 = sq_GetAccel(0, obj.getVar("pos").get_vector(3), currentT, delayT, true);
        local v1 = sq_GetAccel(0, obj.getVar("pos").get_vector(4), currentT, delayT, true);

        local scX = sq_GetDistancePos(obj.getVar("pos").get_vector(0), obj.getDirection(), v0);
        local scY = obj.getVar("pos").get_vector(1) + v1;

		if(obj.isMovablePos(scX, scY ))
        {
			sq_setCurrentAxisPos(obj, 0, scX);
			sq_setCurrentAxisPos(obj, 1, scY);
        }

    }

	else if(substate == SUB_STATE_ICEMAN_0)
	{ 
		if(obj.isMyControlObject())
		{
			local targetTime = obj.sq_GetIntData(SKILL_ICEMAN, 1); 
			
			print( " targetTime:" + targetTime);
			
			if(currentT > targetTime)
			{
				local skillLevel = sq_GetSkillLevel(obj, SKILL_ICEMAN);

				local value = 0;
				
				local freezeRate = obj.sq_GetLevelData(SKILL_ICEMAN,
				 SKL_LVL_COLUMN_IDX_0, skillLevel); 
				 
				local multiHitAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_1, 1.0); 
				
				local smashAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_2, 1.0); 
				
				local expPower = obj.sq_GetPowerWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_3, -1, 1.0); 

				sq_BinaryStartWrite();
				sq_BinaryWriteDword(freezeRate); 
				sq_BinaryWriteDword(multiHitAttackRate); 
				sq_BinaryWriteDword(smashAttackRate); 
				sq_BinaryWriteDword(expPower); 
				
				local aimPosX = obj.sq_GetAimPosX(posX, posY, true);
				local offsetX = aimPosX - posX;

				if (offsetX < 0)
				{
					offsetX = -offsetX;
				}

				local offsetY = -1;
				obj.sq_SendCreatePassiveObjectPacket(24255, 0, offsetX, offsetY, 0); 
				
				
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICEMAN_WAIT); 
				obj.sq_IntVectPush(aimPosX); 
				obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}

        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }


	}
	else if(substate == SUB_STATE_ICEMAN_WAIT)
	{
		local t = obj.getVar("state").get_ct_vector(0);
		local currentT = t.Get();
		
		if(currentT > 620)
		
		{		
			if(obj.isMyControlObject())
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICEMAN_1); 
				obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}

        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }

	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		
		if(!obj.getVar().get_vector(0))
		{
			if(frmIndex >= 4)
			{
				obj.sq_PlaySound("MW_ICEMAN");
				obj.getVar().set_vector(0, 1);
			}
		}

        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }

	}
	else if(substate == SUB_STATE_ICEMAN_2)
	{
		
		local dash_t = pAni.getDelaySum(false); 
		local srcX = obj.getVar("dash").get_vector(1); 
		local srcY = obj.getVar("dash").get_vector(2); 
    	    	
    	local dis_x_len = obj.getVar("dash").get_vector(3); 
		local dis_y_len = obj.getVar("dash").get_vector(4); 
		
		local v = sq_GetAccel(0, dis_x_len, currentT, dash_t, true);
		
		
		
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		
		 
		sq_setCurrentAxisPos(obj, 0, dstX);
		
		

        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }

	}
	else if(substate == SUB_STATE_ICEMAN_3)
	{
		
		local isHit = false;
		
			local particleX = sq_GetXPos(obj);
			local particleY = sq_GetYPos(obj);
			local particleZ = sq_GetZPos(obj);
			
		local offsetLen = 140;
			
		if(frmIndex >= 1 && !obj.getVar().get_vector(0))
		{
			isHit = true;
			offsetLen = 140;
			obj.getVar().set_vector(0, 1);
		}

		if(frmIndex >= 4 && !obj.getVar().get_vector(1))
		{
			isHit = true;
			offsetLen = 114;
			
			obj.getVar().set_vector(1, 1);
		}

		if(frmIndex >= 8 && !obj.getVar().get_vector(2))
		{
			isHit = true;
			offsetLen = 90;
			obj.getVar().set_vector(2, 1);
		}

		if(frmIndex >= 11 && !obj.getVar().get_vector(3))
		{
			isHit = true;
			offsetLen = 150;
			obj.getVar().set_vector(3, 1);
		}

		if(frmIndex >= 16 && !obj.getVar().get_vector(4))
		{
			isHit = true;
			offsetLen = 85;
			obj.getVar().set_vector(4, 1);
		}
		
		
		if(isHit)
		{		
			obj.resetHitObjectList();
			particleX = sq_GetDistancePos(posX, obj.getDirection(), offsetLen);
			sq_SetMyShake(obj,2,100);
			
			local particleCreater = obj.getVar().GetparticleCreaterMap("AtIceManPoleD2", 
			"PassiveObject/Character/Mage/Particle/ATIceManPoleDestroy.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(particleX, particleY + 5, particleZ + 65);
			sq_AddParticleObject(obj, particleCreater);
		}


        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }
		
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		

        obj.setSkillCommandEnable(SKILL_ICEMAN, true);
        local iEnterSkill = obj.sq_IsEnterSkill(SKILL_ICEMAN);

        if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || iEnterSkill != -1)
        {
            local currentAni = sq_GetCurrentAnimation(obj);
            currentAni.setSpeedRate(200.0);				
        }

	}
	

}

function onProcCon_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	if(substate == SUB_STATE_ICEMAN_0)
	{
		local disX = sq_GetDistancePos(obj.getXPos(), sq_GetDirection(obj), 50);

		local iPX = obj.sq_GetAimPosX(obj.getXPos(), posY, false);

		if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
		{
			if (disX < iPX)
			{
				obj.sq_SetAimPointMarkPosition(disX, posY);
			}
		}

		if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
		{
			if (disX > iPX)
			{
				obj.sq_SetAimPointMarkPosition(disX, posY);
			}
		}
	
	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		
	}
	else if(substate == SUB_STATE_ICEMAN_2) {
		
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
		
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		
	}
	

}

function onEndCurrentAni_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(!obj.isMyControlObject())
		return;
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();	

    if (substate == -10)
    {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(-9); 
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
    }else if (substate == -9)
    {
        if ( obj.getVar("dama").get_obj_vector(0) )
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-8); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }else{
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
        }
    }else if (substate == -8)
    {

        if ( obj.getVar("atkCount").get_vector(0) < obj.getVar("atkCount").get_vector(1) )
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-7); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }else{
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-5); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }
    }else if (substate == -7)
    {
        if ( obj.getVar("atkCount").get_vector(0) < obj.getVar("atkCount").get_vector(1) )
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-6); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }else{
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-5); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }
    }else if (substate == -6)
    {
        if ( obj.getVar("atkCount").get_vector(0) < obj.getVar("atkCount").get_vector(1) )
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-8); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }else{
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(-5); 
            obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
        }
    }else if (substate == -5)
    {

		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
    }

	else if(substate == SUB_STATE_ICEMAN_0)
	{
	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_2); 
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
		
	}
	else if(substate == SUB_STATE_ICEMAN_2) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_3); 
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_4); 
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		sq_SimpleMoveToNearMovablePos(obj,200);



		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	

}

function onKeyFrameFlag_IceMan(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();
    local damager = obj.getVar("dama").get_obj_vector(0);

    if (flagIndex == 1000 && obj.getVar("flag").get_vector(0) == 0)
    {
		obj.resetHitObjectList();
        if(substate != -5)
        {
            sq_SendHitObjectPacket(obj,damager,0,0,0);
        }
        obj.getVar("flag").set_vector(0,1);

        sq_SetMyShake(obj,2,80);

    }else if (flagIndex == 2000 && obj.getVar("flag").get_vector(1) == 0)
    {
        if(substate != -5)
        {
            sq_SendHitObjectPacket(obj,damager,0,0,0);
        }
        createShockWave_IceMan(obj);
        createShockWave2_IceMan(obj);
		obj.resetHitObjectList();
        sq_SetMyShake(obj,8,300);
		sq_flashScreen(obj,0,80,80,102, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        obj.getVar("flag").set_vector(1,1);
        obj.sq_SetCurrentAttackBonusRate( obj.getVar("damaR").get_vector(0) );				
        CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atmage/iceman/ap_iceman.nut");		
    }else if (flagIndex == 10)
    {

        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN , STATE_ICEMAN, 2, 1.0 );

        if (damager)
        {
            sendIce75Passive(obj,damager,atk);

        }
        return true;
    }

	return false;

}
