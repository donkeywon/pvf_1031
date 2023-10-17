
SUB_STATE_FALLENBLOSSOMS_0	<- 0
SUB_STATE_FALLENBLOSSOMS_1	<- 1
SUB_STATE_FALLENBLOSSOMS_2	<- 2
SUB_STATE_FALLENBLOSSOMS_3	<- 3
SUB_STATE_FALLENBLOSSOMS_4	<- 4

//STATE_FALLENBLOSSOMS			<- 40	// ����:��ȭ��â
//SKILL_FALLENBLOSSOMS			<- 21   // ����:��ȭ��â
function setCharacterFristAnimation_FallenBlossoms(obj)
{
    local level = sq_GetSkillLevel(obj, SKILL_FALLENBLOSSOMS );		
    if (level > 0)
    {
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/fallenblossoms1.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/atanimation/fallenblossoms2.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/effect/animation/atfallenblossoms/02/spear/01_lance_normal.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/effect/animation/atfallenblossoms/02/spearend/01_lance_normal.ani");
        createFristAnimationPooledObject(obj,
        "character/mage/effect/animation/atfallenblossoms/02/05_handcover_dodge.ani");

    }
}
function checkExecutableSkill_FallenBlossoms(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_FALLENBLOSSOMS);

	if(b_useskill)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FALLENBLOSSOMS_0); // substate����
		obj.sq_AddSetStatePacket(STATE_FALLENBLOSSOMS, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_FallenBlossoms(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_FALLENBLOSSOMS); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_FALLENBLOSSOMS);
	}	

	return true;

}

function createFallenBlossomsSpear(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","Character/Mage/Effect/Animation/ATFallenBlossoms/02/spear/01_lance_normal.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	
	pooledObj.setCurrentDirection(obj.getDirection());
	
	sq_moveWithParent(obj, pooledObj);
	
	sq_AddObject(obj,pooledObj,2,false);	

}

function createFallenBlossomsSpearEnd(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","Character/Mage/Effect/Animation/ATFallenBlossoms/02/spearEnd/01_lance_normal.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	
	pooledObj.setCurrentDirection(obj.getDirection());
	
	sq_moveWithParent(obj, pooledObj);
	
	sq_AddObject(obj,pooledObj,2,false);	

}

function createFallenBlossomsSpearExp(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","Character/Mage/Effect/Animation/ATFallenBlossoms/03/04_break_dodge.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	
	pooledObj.setCurrentDirection(obj.getDirection());
	
	sq_moveWithParent(obj, pooledObj);
	
	sq_AddObject(obj,pooledObj,2,false);	

}

function onAttack_FallenBlossoms(obj, damager, boundingBox, isStuck)
{
    if ( !sq_IsFixture(damager) )
    {
        obj.getVar("dama").push_obj_vector(damager);
    }
}

function onSetState_FallenBlossoms(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	obj.sq_StopMove();


	if(substate == SUB_STATE_FALLENBLOSSOMS_0) {
        obj.getVar("dama").clear_obj_vector();

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FALLENBLOSSOMS1);
		obj.sq_PlaySound("MW_ICESPEAR");

		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FALLENBLOSSOMS2);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_FALLENBLOSSOMS);	

		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	
		local sq_var = obj.getVar();
		
		sq_var.clear_timer_vector();
		sq_var.push_timer_vector();
		
		local t = sq_var.get_timer_vector(0);
		t.setParameter(60, -1);		
		t.resetInstant(0);
		
		
		local particle = sq_var.GetparticleCreaterMap("FallenBlossomsP", "Character/Fighter/Particle/ATThrowWeb.ptl", obj);
		
	
		obj.getVar().clear_vector();
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
		
		
		local len = obj.sq_GetIntData(SKILL_FALLENBLOSSOMS, 0); 
        local leny = 0;
		
		




		local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);

		local upPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL);
		local downPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);




		local pAttack = sq_GetCurrentAttackInfo(obj);
		if(sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && leftPress)
        {
            len = 0;
            obj.sq_SetCurrentAttackInfo(ATTACKINFO_FALLMOSBLOSSOMS_2);	
        }


		if(sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && rightPress) 
        {
            len = 0;
            obj.sq_SetCurrentAttackInfo(ATTACKINFO_FALLMOSBLOSSOMS_2);	
        }

        if (upPress) leny = -obj.sq_GetIntData(SKILL_FALLENBLOSSOMS, 1);
        if (downPress) leny = obj.sq_GetIntData(SKILL_FALLENBLOSSOMS, 1);


		local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_FALLENBLOSSOMS STATE_FALLENBLOSSOMS, 0, 1.0); //2.���ݷ�(%)
		sq_SetCurrentAttackBonusRate(pAttack, attackRate);
		
		local posX = obj.getXPos();
		//local delay = 480;
		local ani = obj.sq_GetCurrentAni();
		
		local delay = 0; 
		if(ani)
			delay = ani.getDelaySum(false);
		
		local skillLevel = sq_GetSkillLevel(obj, SKILL_FALLENBLOSSOMS);		
		local multiHit = sq_GetLevelData(obj, SKILL_FALLENBLOSSOMS, 1, skillLevel);
		
		obj.sq_timer_.setParameter(delay / multiHit, multiHit - 1);
		obj.sq_timer_.resetInstant(0);
		
		
		

        obj.getVar("hitCount").clear_vector();
        obj.getVar("hitCount").push_vector(0);


		obj.getVar("flag").clear_vector();
		obj.getVar("flag").push_vector(posX);
		obj.getVar("flag").push_vector(len);
		obj.getVar("flag").push_vector(delay);
		obj.getVar("flag").push_vector(0);

		obj.getVar("flag").push_vector(leny);
		obj.getVar("flag").push_vector(obj.getYPos() );

	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_2) {
		createFallenBlossomsSpearExp(obj, 0, 3, 70);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FALLENBLOSSOMS3);

		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_3) {
		// SUB_STATE_FALLENBLOSSOMS_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_4) {
		// SUB_STATE_FALLENBLOSSOMS_4 ���꽺����Ʈ �۾�
	}
	
	

}


function onProc_FallenBlossoms(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

	if(substate == SUB_STATE_FALLENBLOSSOMS_0) {
		// SUB_STATE_FALLENBLOSSOMS_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_1) {
		if(frmIndex >= 0)
		{
			if(!obj.getVar().get_vector(0))
			{
				createFallenBlossomsSpear(obj, 0, 1, 69);
				obj.getVar().set_vector(0, 1);
			}
		}
	
		if(frmIndex >= 1)
		{
			if(!obj.getVar().get_vector(1))
			{
				createFallenBlossomsSpear(obj, -12, -1, 85);
				obj.getVar().set_vector(1, 1);
			}
		}

		if(frmIndex >= 2)
		{
			if(!obj.getVar().get_vector(2))
			{
				createFallenBlossomsSpear(obj, -21, 2, 45);
				obj.getVar().set_vector(2, 1);
			}
		}
		
		if(frmIndex >= 4)
		{
			if(!obj.getVar().get_vector(3))
			{
				createFallenBlossomsSpearEnd(obj, 0, 3, 70);
				obj.getVar().set_vector(3, 1);
			}
		}
		
		//////
		// ������
		local sq_var = obj.getVar("flag");
		
        local startY = sq_var.get_vector(5);
        local leny = sq_var.get_vector(4);
    	local delayT = sq_var.get_vector(2); 
    	local delayT = sq_var.get_vector(2); // �����ε��� 2 �� �̵��ð�
    	local len = sq_var.get_vector(1);    	
    	
		local v = sq_GetAccel(0, len, currentT, delayT, true);
		local v2 = sq_GetAccel(0, leny, currentT, delayT, true);

    	print(" delayT:" + delayT + " current:" + currentT);
		local srcX = sq_var.get_vector(0); 
		local srcY = startY + v2;
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		 
		if(obj.isMovablePos(dstX, posY) && !sq_var.get_vector(3))
		{ // �̵��÷��׿� �̵����������� ��� �����ؾ� �̵�
			sq_setCurrentAxisPos(obj, 0, dstX);
			sq_setCurrentAxisPos(obj, 1, srcY);
		}
		else
		{ // �̵��� �� ���� ������ ������..
			sq_var.set_vector(3,1); // �̵� �÷��� �ε��� 3 �̵��� �� ���� ������ ������ �� �׼��� ���̻� �̵����Ѵ�..
			local offset = dstX - posX;
			
			if(offset != 0) {				
				if(offset < 0) 
					offset = -offset;
				
				local totalLen = sq_var.get_vector(1);
				sq_var.set_vector(1, totalLen - offset);
			}
		}
		
		if (obj.sq_timer_.isOnEvent(currentT) == true)
        {

            local skillLevel = sq_GetSkillLevel(obj, SKILL_FALLENBLOSSOMS);		
            local skill_level2 = sq_GetSkillLevel(obj, SKILL_ICEMASTER);

            local multiHit = sq_GetLevelData(obj, SKILL_FALLENBLOSSOMS, 1, skillLevel);

            local currHit = obj.getVar("hitCount").get_vector(0);
            if (currHit + 2 >= multiHit)
            {

                if(skill_level2 > 0)
                {

                    local attackInfo = sq_GetCurrentAttackInfo(obj);
                    sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_FREEZE,  
                    sq_GetLevelData(obj, SKILL_FALLENBLOSSOMS, 2, skillLevel), 
                    sq_GetLevelData(obj, SKILL_FALLENBLOSSOMS, 3, skillLevel) + sq_GetLevelData(obj, SKILL_ICEMASTER , 1, skill_level2), 
                    sq_GetLevelData(obj, SKILL_FALLENBLOSSOMS, 4, skillLevel));

                }
            }else{
                obj.getVar("hitCount").set_vector(0,currHit + 1);

            }
			obj.resetHitObjectList();
		}	
			
		//////
		
		// ���� ��ƼŬ ����
		local t = obj.getVar().get_timer_vector(0);
		
		if(t.isOnEvent(currentT) == true)
		{
			local particleCreater = sq_var.GetparticleCreaterMap("FallenBlossomsP", "Character/Fighter/Particle/ATThrowWeb.ptl", obj);				
				
			particleCreater.Restart(0);
			local dstX = sq_GetDistancePos(posX, obj.getDirection(), -20);	
			particleCreater.SetPos(dstX, posY + 1, posZ + 5);	
			
			sq_AddParticleObject(obj, particleCreater);
		}
		
	
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_2) {
		// SUB_STATE_FALLENBLOSSOMS_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_3) {
		// SUB_STATE_FALLENBLOSSOMS_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_4) {
		// SUB_STATE_FALLENBLOSSOMS_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_FallenBlossoms(obj, flagIndex)
{

    if (flagIndex == 10)
    {

        local damager = obj.getVar("dama").get_obj_vector(0);
        local atk = obj.sq_GetBonusRateWithPassive(SKILL_FALLENBLOSSOMS,STATE_FALLENBLOSSOMS, 0, 1.0);

        if (damager)
        {
            sendIce75Passive(obj,damager,atk);

        }
        return true;
    }
}

function onEndCurrentAni_FallenBlossoms(obj)
{

	if(!obj) return;
	
	if(!obj.isMyControlObject())
		return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FALLENBLOSSOMS_0) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FALLENBLOSSOMS_1); 
		obj.sq_AddSetStatePacket(STATE_FALLENBLOSSOMS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_1) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FALLENBLOSSOMS_2); 
		obj.sq_AddSetStatePacket(STATE_FALLENBLOSSOMS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_2) {

		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_3) {
		
	}
	else if(substate == SUB_STATE_FALLENBLOSSOMS_4) {
		
	}
	

}
