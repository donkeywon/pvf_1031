
S_DISASTER_0 <- 0
S_DISASTER_1 <- 1
S_DISASTER_2 <- 2
S_DISASTER_3 <- 3
S_DISASTER_4 <- 4

//750 // �Ǹ�ȭ ������ ��, ������ ������
//500 // �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
//2000 // Ÿ���� �ð� (ms ����)
//500 // Ÿ���� x�� �̵��ð�
//500 // Ÿ���� y�� �̵��ð�
//250 // �ҿ뵹�̰� ���� ������̴� ����(x�� ����)
//125 // �ҿ뵹�̰� ���� ������̴� �ӵ�


SD_I_DAMAGE_INC <- 0 // �Ǹ�ȭ ������ ��, ������ ������
SD_I_AWAKENING_INC <- 1 //// �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
SD_I_TARGET_TIME <- 2 // Ÿ���� �ð� (ms ����)
SD_I_TARGET_MOV_X <- 3 // Ÿ���� X�� �̵��ð�
SD_I_TARGET_MOV_Y <- 4 // Ÿ���� y�� �̵��ð�
SD_I_TARGET_SUCK_LEN <- 5 // �ҿ뵹�̰� ���� ������̴� ����(x�� ����)
SD_I_TARGET_SUCK_VEL <- 6 // �ҿ뵹�̰� ���� ������̴� �ӵ�



// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_DisasterEx(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_EX_DISASTER);
	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(S_DISASTER_0); // substate����
		obj.sq_IntVectPush(obj.getDirection()); // substate����
		obj.sq_addSetStatePacket(STATE_EX_DISASTER, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_DisasterEx(obj)
{
	if(!obj) return false;
	
	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_EX_DISASTER); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_EARTH_QUAKE);
	}
	
	
	return true;
}

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_DisasterEx(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local sq_var = obj.getVar();
	local substate = obj.sq_getVectorData(datas, 0); // ù��° substate�Դϴ�..	
	local direction = obj.sq_getVectorData(datas, 1); // ù��° substate�Դϴ�..	
	obj.setSkillSubState(substate); //set substate
	obj.sq_stopMove();
	
    
	sq_var.clear_vector();
	sq_var.push_vector(0);	
	sq_var.push_vector(0);
	sq_var.push_vector(0);
	
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
//CUSTOM_ANI_EX_DISASTER_1		<- 118	  // EX��ų - ���1
//CUSTOM_ANI_EX_DISASTER_2		<- 119	  // EX��ų - ���1
//CUSTOM_ANI_EX_DISASTER_3		<- 120	  // EX��ų - ���1
//CUSTOM_ANI_EX_DISASTER_4		<- 121	  // EX��ų - ���1
//CUSTOM_ANI_EX_DISASTER_5		<- 122	  // EX��ų - ���1
	obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_DISASTER);
	
	local attack_rate = 1.0;

	//SD_I_DAMAGE_INC <- 0 // �Ǹ�ȭ ������ ��, ������ ������
	//SD_I_AWAKENING_INC <- 1 //// �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
	
	if(isAvengerAwakenning(obj)) {
		local inc = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_DAMAGE_INC); // Ÿ���� X�� �̵��ð�
		local inc_rate = inc.tofloat() / 100.0;
		print("\n inc_rate:" + inc_rate);
		attack_rate += inc_rate;
	}
	
	obj.stopSound(7575);
	obj.sq_setAttackPowerWithPassive(SKILL_EX_DISASTER, state, -1, 0, attack_rate);

	
    if(substate == S_DISASTER_0) {
		if(isAvengerAwakenning(obj)) {
			local ani = obj.getVar().GetAnimationMap("Disaster1", "Character/Priest/Animation/disasterEx/Disaster1.ani"); // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
			obj.setCurrentAnimation(ani);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_AVENGER_AWAKENING, false, "Appendage/Character/ap_avenger_awakening.nut", false);
			if(appendage) { // �������¶�� �����ð��� �÷�����մϴ�.
				local skill_level = obj.sq_getSkillLevel(SKILL_AVENGER_AWAKENING);
				local t = sq_GetLevelData(obj, SKILL_AVENGER_AWAKENING, SL_CHANGE_TIME, skill_level);
				local awakening_inc_t = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_AWAKENING_INC); // �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
				appendage.sq_var.set_vector(I_AVENGER_AWAKENING_TIME, t + awakening_inc_t);
				appendage.sq_SetValidTime(t + awakening_inc_t); // ������� Ÿ�� ����
			}
		}
		else {
			obj.sq_setCurrentAnimation(CUSTOM_ANI_EX_DISASTER_1);
		}
    
		local pAni = obj.sq_getCurrentAni();		
    }
    else if(substate == S_DISASTER_1) {
		obj.sq_setShake(obj, 3, 160);
    
		if(isAvengerAwakenning(obj)) {
			 // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
			local ani = obj.getVar().GetAnimationMap("Disaster2", "Character/Priest/Animation/disasterEx/Disaster2.ani");
			obj.setCurrentAnimation(ani);
		}
		else {
			obj.sq_setCurrentAnimation(CUSTOM_ANI_EX_DISASTER_2);
		}
    
		/////////////////////////////////////////////
		//if(obj.isMyControlObject()) {
			//obj.sq_binaryData_startWrite();
			//obj.sq_binaryData_writeDword(0);
			//obj.sq_p00_sendCreatePassiveObjectPacket(24101, 0, 0, 0, 0);
		//}
	    ///////////////////////////////////////////////	
		local pA = obj.sq_getCurrentAni();
		
		local iX = posX;
		local iY = posY;

		//int offsetX = lua_getIntData(SKILL_SPIRAL_COLUMN_EX, 0);
		//offsetX = lua_getDistancePos(iX, sq_GetDirection(this), offsetX);

		//int vX = lua_getIntData(SKILL_SPIRAL_COLUMN_EX, 1);
		//int vY = 0;
		
	//SD_I_DAMAGE_INC <- 0 // �Ǹ�ȭ ������ ��, ������ ������
	//SD_I_AWAKENING_INC <- 1 //// �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
	//SD_I_TARGET_TIME <- 2 // Ÿ���� �ð� (ms ����)
	//SD_I_TARGET_MOV_X <- 3 // Ÿ���� X�� �̵��ð�
	//SD_I_TARGET_MOV_Y <- 4 // Ÿ���� y�� �̵��ð�
	//SD_I_TARGET_SUCK_LEN <- 5 // �ҿ뵹�̰� ���� ������̴� ����(x�� ����)
	//SD_I_TARGET_SUCK_VEL <- 6 // �ҿ뵹�̰� ���� ������̴� �ӵ�
	//
		//
		local vX = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_TARGET_MOV_X); // Ÿ���� X�� �̵��ð�
		local vY = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_TARGET_MOV_Y); // Ÿ���� Y�� �̵��ð�

		obj.sq_addAttractAimPointMark(iX, iY, vX, vY);
		//450	// ������̴� ���� (x�� ����)
		//180	// ������̴� ���� �ִ� ����
		local range = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_TARGET_SUCK_LEN); // �ҿ뵹�̰� ���� ������̴� ����(x�� ����)
		local suck_vel = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_TARGET_SUCK_VEL); // �ҿ뵹�̰� ���� ������̴� �ӵ�
		obj.sq_setAttractAimInfo(suck_vel, suck_vel, range / 2, 180);
		//obj.sq_setAttractAimInfo(91, 113, range / 2, 180);
		
		
    }
    else if(substate == S_DISASTER_2) {
    //
		//CUSTOM_ATTACKINFO_DISASTER
   		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_DISASTER);
   		
		if(isAvengerAwakenning(obj)) {
			 // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
			local ani = obj.getVar().GetAnimationMap("Disaster3", "Character/Priest/Animation/disasterEx/Disaster3.ani");
			obj.setCurrentAnimation(ani);
		}
		else {
			obj.sq_setCurrentAnimation(CUSTOM_ANI_EX_DISASTER_3);
		}
		
		obj.sq_PlaySound("DISASTER_CIRCLE_LOOP", 7575);
   		
    }
    else if(substate == S_DISASTER_3) {
    
		if(isAvengerAwakenning(obj)) {
			 // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
			local ani = obj.getVar().GetAnimationMap("Disaster4", "Character/Priest/Animation/disasterEx/Disaster4.ani");
			obj.setCurrentAnimation(ani);
		}
		else {
			obj.sq_setCurrentAnimation(CUSTOM_ANI_EX_DISASTER_4);
		}
    
		
    }
    else if(substate == S_DISASTER_4) {
		if(isAvengerAwakenning(obj)) {
			 // ��Ų�ƹ�Ÿ ������ �ܺο��� �ִϸ��̼��� ������ �;� �մϴ�..
			local ani = obj.getVar().GetAnimationMap("Disaster5", "Character/Priest/Animation/disasterEx/Disaster5.ani");
			obj.setCurrentAnimation(ani);
		}
		else {
			obj.sq_setCurrentAnimation(CUSTOM_ANI_EX_DISASTER_5);
		}
    }
}

// irdcharacter����  setstate() -> IRDActiveObject::setState -> aftersetstate() �̷��������� ������ setstate�Դϴ�. skillƯ���� ���� ȣ���� �ʿ䰡 
// �ִٸ� �� �Լ��� �̿��մϴ�.

function onAfterSetState_DisasterEx(obj, state, datas, isResetTimer)
{
	if(!obj) return;
}

// onbeforeattack �ݹ��Լ� �Դϴ�
function onBeforeAttack_DisasterEx(obj, damager, boundingBox)
{
	
}



// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_DisasterEx(obj)
{
	if(!obj) return;
	
	local substate = obj.getSkillSubState();
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	local sq_var = obj.getVar();
	local pAni = obj.sq_getCurrentAni();
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);

	local currentT = sq_GetCurrentTime(pAni);
	
    if(substate == S_DISASTER_0) {
    }
    else if(substate == S_DISASTER_1) {
		if(frmIndex >= 0) {
    		local flag = sq_var.get_vector(0);
    		if(!flag) {
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_EX_DISASTER, true, "Appendage/Character/ap_avenger_effect.nut", true);
				sq_var.set_vector(0, 1);
			}
	   }
	   //isAvengerAwakenning()
    }
    else if(substate == S_DISASTER_2) {
		local stateTimer = obj.sq_getStateTimer();		
		//SD_I_DAMAGE_INC <- 0 // �Ǹ�ȭ ������ ��, ������ ������
		//SD_I_AWAKENING_INC <- 1 //// �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
		//SD_I_TARGET_TIME <- 2 // Ÿ���� �ð� (ms ����)
		//SD_I_TARGET_MOV_X <- 3 // Ÿ���� X�� �̵��ð�
		//SD_I_TARGET_MOV_Y <- 4 // Ÿ���� y�� �̵��ð�
		//SD_I_TARGET_SUCK_LEN <- 5 // �ҿ뵹�̰� ���� ������̴� ����(x�� ����)
		//SD_I_TARGET_SUCK_VEL <- 6 // �ҿ뵹�̰� ���� ������̴� �ӵ�
		//local t = 1000;
		local t = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_TARGET_TIME); // Ÿ���� �ð� (ms ����)
		
		//print("\n stateTimer:" + stateTimer);
		
		if(stateTimer > (t - 750)) {
    		local flag = sq_var.get_vector(1);
    		if(!flag) {				
				local iX = obj.getXPos();
				local iY = obj.getYPos();
				local iPX = obj.sq_getAttractAimPosX(iX,iY, false);
				local iPY = obj.sq_getAttractAimPosY(iX,iY, false) + 2;
				
				print("\n posX:" + posX + " posY:" + posY + " aimposX:" + iPX + " aimposY:" + iPY);

				sq_MoveToNearMovablePos(obj, iPX, iPY, 0, iX, iY, posZ, 200, -1, 3);
				obj.sq_removeAttractAimPointMark();
				sq_var.set_vector(1, 1);
			}
	   }
		
		if(stateTimer > t) {
			if(obj.isMyControlObject()) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(S_DISASTER_3);
				obj.sq_IntVectPush(obj.getDirection()); // substate����
				obj.sq_addSetStatePacket(STATE_EX_DISASTER, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
    
    }	
    else if(substate == S_DISASTER_3) {
		if(frmIndex >= 5) {
    		local flag = sq_var.get_vector(0);
    		if(!flag) {
				if(obj.isMyControlObject()) {
				
					//SD_I_DAMAGE_INC <- 0 // �Ǹ�ȭ ������ ��, ������ ������
					//SD_I_AWAKENING_INC <- 1 //// �Ǹ�ȭ ������ ��, �Ǹ�ȭ ���ӽð� ����,ms ����
					
					local attack_rate = 1.0;
					if(isAvengerAwakenning(obj)) {
						local inc = obj.sq_getIntData(SKILL_EX_DISASTER, SD_I_DAMAGE_INC); // Ÿ���� X�� �̵��ð�
						local inc_rate = inc.tofloat() / 100.0;
						attack_rate += inc_rate;
					}
					
					local bonus_rate = obj.sq_getBonusRateWithPassive(SKILL_EX_DISASTER, STATE_EX_DISASTER, 1, attack_rate);
					
					obj.sq_binaryData_startWrite();
					obj.sq_binaryData_writeDword(bonus_rate);
					obj.sq_p00_sendCreatePassiveObjectPacket(24109, 0, 0, 0, 0); // ����
				}
				
				
				if(isAvengerAwakenning(obj)) {
					//local particleCreater = sq_var.GetparticleCreaterMap("GuillotineSub", "PassiveObject/Character/Thief/Particle/GuillotineSub.ptl", obj);
					local particleCreater = sq_var.GetparticleCreaterMap("GuillotineSub6", "Character/Priest/Effect/Particle/DisasterStonsSmall.ptl", obj);
					particleCreater.Restart(0);
					//local dstX = sq_GetDistancePos(posX, obj.getDirection(), -20);				
					particleCreater.SetPos(posX, posY, posZ);
					sq_AddParticleObject(obj, particleCreater);
					
					obj.sq_PlaySound("PR_DGUARDIAN_DISASTER"); // �Ǹ�ȭ ���� �� ������ ���� �΋H���� ����ĥ�� ���̽�
				}
				else {				
					obj.sq_PlaySound("PR_DISASTER"); // ������ ���� �΋H���� ����ĥ�� ���̽�
				}
				
				local fScreen = sq_flashScreen(obj,0,320,320,200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);

				obj.sq_setShake(obj, 6, 320);

				obj.sq_removeAttractAimPointMark();
				sq_var.set_vector(0, 1);
			}
		}
    
    }	
    else if(substate == S_DISASTER_4) {
    }	
    
    
    
    if(substate == S_DISASTER_4) {
		if(frmIndex >= 4) {
    		local flag = sq_var.get_vector(0);
    		if(!flag) {
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_EX_DISASTER, true, "Appendage/Character/ap_avenger_effect.nut", true);
				sq_var.set_vector(0, 1);
			}
	   }
    }
    
	
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_DisasterEx(obj)
{
	if(!obj) return;
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	local sq_var = obj.getVar();
	//

    local subState = obj.getSkillSubState();
        
    if(subState == S_DISASTER_1) {
    }
    else if(subState == S_DISASTER_2) {
    }
    else if(subState == S_DISASTER_3) {
    }
    

	if(bEnd) {
	    if(subState == S_DISASTER_0) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(S_DISASTER_1);
			obj.sq_IntVectPush(obj.getDirection()); // substate����
			obj.sq_addSetStatePacket(STATE_EX_DISASTER, STATE_PRIORITY_IGNORE_FORCE, true);
	    }
	    else if(subState == S_DISASTER_1) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(S_DISASTER_2);
			obj.sq_IntVectPush(obj.getDirection()); // substate����
			obj.sq_addSetStatePacket(STATE_EX_DISASTER, STATE_PRIORITY_IGNORE_FORCE, true);
	    }
	    else if(subState == S_DISASTER_2) {
	    }
	    else if(subState == S_DISASTER_3) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(S_DISASTER_4);
			obj.sq_IntVectPush(obj.getDirection()); // substate����
			obj.sq_addSetStatePacket(STATE_EX_DISASTER, STATE_PRIORITY_IGNORE_FORCE, true);
	    }
	    else if(subState == S_DISASTER_4) {
			obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	    }
	}
}

// state����� ���ÿ� �ѹ� ȣ��Ǵ� �Լ��Դϴ�. oldstate�� ����Ǵ� state�Դϴ�. ���� �߻�Ȱ��� �ְų� ����ó���ɰ��� �ִٸ� �̰����� ó���մϴ�.
function onEndState_DisasterEx(obj, new_state)
{
	if(!obj) return;
	if(new_state != STATE_EX_DISASTER) {
		obj.sq_removeAttractAimPointMark();
	}
	obj.stopSound(7575);
}

// onAttack �ݹ��Լ� �Դϴ�
function onAttack_DisasterEx(obj, damager, boundingBox)
{
	
}

// onAfterAttack �ݹ��Լ� �Դϴ�
function onAfterAttack_DisasterEx(obj, damager, boundingBox)
{
	
}

// onBeforeDamage �ݹ��Լ� �Դϴ�
function onBeforeDamage_DisasterEx(obj, attacker, boundingBox)
{
	
}

// onDamage �ݹ��Լ� �Դϴ�
function onDamage_DisasterEx(obj, attacker, boundingBox)
{
	
}

// onAfterDamage �ݹ��Լ� �Դϴ�
function onAfterDamage_DisasterEx(obj, attacker, boundingBox)
{
	
}

function getScrollBasisPos_DisasterEx(obj)
{
	if(!obj) return;
	
	local substate = obj.getSkillSubState();

	if(substate == S_DISASTER_2 || substate == S_DISASTER_1) {
		if(obj.isMyControlObject()) {
			local iX = obj.getXPos();
			local iY = obj.getYPos();
			local iPX = obj.sq_getAttractAimPosX(iX,iY, false);
			local iPY = obj.sq_getAttractAimPosY(iX,iY, false);
			obj.sq_SetCameraScrollPosition(iPX, iPY, 0);
			return true;
		}
	}
	
	return false;
}
