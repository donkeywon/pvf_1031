
// sub state
S_FASTMOVE_PLAY <- 0
S_FASTMOVE_LOOP <- 1
S_FASTMOVE_PRO <- 2
S_FASTMOVE_END <- 3

// ����ƽ ����Ÿ �ε���
FM_SI_C_TIME <- 0  // ȸ�� �� �鳯�� ���� �����Ǵ� �ð�
FM_SI_MULTI_HIT_COUNT <- 1 // �ٴ���Ʈ ����
FM_SI_MOVE_VEL <- 2 // �鳯 �̵��ӵ�
FM_SI_Y_AXIS_MOVESPEED <- 3 // �鳯 ���� �̵��ӵ�

// �������� �ε���
FM_LI_HIT_RATE <- 0 // �鳯 ��Ʈ ������(%)
FM_LI_MOVE_LEN <- 1 // �̵��Ÿ� (px)

VECTOR_I_SRC_X <- 0 // ���������� ������ ���� �ε���



// ��ų ���ιߵ� ������ ������ִ� �Լ��Դϴ�.. �ߵ� ���� state�� �̹� �ҽ����� �����Ǿ� �ֽ��ϴ�. �̰����� useskill�� setstate�� �������ָ� �˴ϴ�.
function checkExecutableSkill_Fastmove(obj)  
{
	if(!obj) return false;
	local b_useskill = obj.sq_IsUseSkill(SKILL_FASTMOVE);
	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(S_FASTMOVE_PLAY); // substate����
		obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;
}

// ��ų������ Ȱ��ȭ ������ ������ �Լ��Դϴ�. true�� �����ϸ� ��ų �������� Ȱ��ȭ�� �˴ϴ�. (�ߵ����� state��  �ҽ����� ó���˴ϴ�.)
function checkCommandEnable_Fastmove(obj)
{
	if(!obj) return false;
	
	local state = obj.sq_GetSTATE();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_FASTMOVE); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_FASTMOVE);
	}
	
	return true;
}

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_fastmove(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local substate = obj.sq_getVectorData(datas, 0); // ù��° substate�Դϴ�..	
	obj.setSkillSubState(substate); //set substate
	
    
    local sq_var = obj.getVar();	
    sq_var.clear_vector();
	sq_var.push_vector(0);
	
// ����ƽ ����Ÿ �ε���
//FM_SI_C_TIME <- 0  // ȸ�� �� �鳯�� ���� �����Ǵ� �ð�
//FM_SI_MULTI_HIT_COUNT <- 1 // �ٴ���Ʈ ����

// �������� �ε���
//FM_LI_HIT_RATE <- 0 // �鳯 ��Ʈ ������(%)
//FM_LI_MOVE_LEN <- 1 // �̵��Ÿ� (px)	
	
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	local particle = sq_var.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", obj);
	
	
   	obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_FASTMOVE);
   	
   	obj.sq_setAttackPowerWithPassive(SKILL_FASTMOVE, state, -1,FM_LI_HIT_RATE,1.0);	
   	
    if(substate == S_FASTMOVE_PLAY) {
		obj.sq_stopMove();
		local time = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_C_TIME);		
		sq_var.push_vector(time);
		sq_var.push_vector(0);
    			
		obj.sq_setCurrentAnimation(CUSTOM_ANI_FASTMOVE1);
    }
    else if(substate == S_FASTMOVE_LOOP) {
		obj.sq_stopMove();
		//obj.sq_var.push_vector(posZ);
		//local pAni = obj.sq_getCurrentAni();
		
		sq_var.push_vector(posZ); // index : 1 // srcZ
		local jumpstate = 0;
		
		//print("sq_GetVelocityZ:" + sq_GetVelocity(obj, 2));
		//print("getDownDownFrame:" + obj.getDownDownFrame() + " getDownUpFrame:" + obj.getDownUpFrame() + " getDownBounceUpFrame:" + obj.getDownBounceUpFrame() + " getDownLieFrame:" + obj.getDownLieFrame());
		//print("getJumpUpStartFrame:" + obj.getJumpUpStartFrame() + " getJumpDownStartFrame:" + obj.getJumpDownStartFrame() + " getJumpLandStartFrame:" + obj.getJumpLandStartFrame());
		
		
		if(posZ > 0) {		
			//local frmIndex = obj.getDownUpFrame();

			if(sq_GetVelocity(obj, 2) < 0) {
				jumpstate = 2; // �ϰ���
			}
			else {
				jumpstate = 1; // �����
			}
		}
		sq_var.push_vector(jumpstate); // index : 2 // �����÷��� 0 : �Ƕ��� �־��� �� 1 : �ö� �� �־����� 2 : �������� ���� �־��� ��
		sq_var.push_vector(0); // index : 3 // 
		sq_var.push_vector(0); // index : 4 // 
		
		obj.sq_setCurrentAnimation(CUSTOM_ANI_FASTMOVE2);		
    }
    else if(substate == S_FASTMOVE_PRO) {
    	//CUSTOM_ATTACKINFO_FASTMOVE
    	local max_break_v = obj.sq_getVectorData(datas, 1); // �ι�° vector���� ���� ��
		obj.sq_setCurrentAnimation(CUSTOM_ANI_FASTMOVE3);
		sq_var.push_vector(posX); // ���� �ε��� 1
		
		local pAni = obj.sq_getCurrentAni();
		local initDelay = pAni.GetFrameStartTime(3);
				
		//local vel = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_MOVE_VEL); // �̵��ӵ�
		local vel = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_MOVE_VEL); // �̵��ӵ�
		local d = obj.sq_getLevelData(SKILL_FASTMOVE, FM_LI_MOVE_LEN, 1);
		
		//local moveT =  (d * 10) / vel; // �̵� �� �ð� ���ϱ�
		local v_rate;
		if(!(sq_GetCurrentModuleType() == 4) && !(sq_GetCurrentModuleType() == 5)) //�������� pvp����̳� fair_pvp����� ���
		{
			v_rate = (vel - max_break_v);
		}
		else
		{
			v_rate = vel;
		}
		
		if(v_rate <= 0) 
		{
			v_rate = 1;
		}
		local moveT =  (d * 800) / (v_rate); // �̵� �� �ð� ���ϱ�
		
		sq_var.push_vector(moveT); // �̵� �� �ð� ���� �ε��� 2		
		sq_var.push_vector(0); // �̵� �÷��� �ε��� 3 �̵��� �� ���� ������ ������ �� �׼��� ���̻� �̵����Ѵ�..
		sq_var.push_vector(posY); // �ε���4 �ٷ� �� posY��ǥ�� �����ϴ� �κ��Դϴ�.. �鳯������ ���Ϸ� �̵��� ���������鼭 �̵��÷��װ��� ó���� ���Ӱ� �ؾ��մϴ�..
		local len = obj.sq_getLevelData(SKILL_FASTMOVE, FM_LI_MOVE_LEN, 1);
		//len = len - break_len; // ���ӵ� ���� ��´�..
		sq_var.push_vector(len); // �ε���5
		sq_var.push_vector(0); // �ε���6 ���� �÷���
		
		local hitCnt = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_MULTI_HIT_COUNT); // �ٴ���Ʈ
		
		local term = moveT / hitCnt;
		
		obj.sq_setShake(obj, 2, moveT);
		//obj.sq_setShake(obj, 4, moveT);
		// Ŭ����
		sq_CurrentAnimationProc(pAni);
		
	//	local alsSpinNormal = obj.sq_getAutoLayerWorkAnimation(pAni, "2_sn");
//		local alsSpinDodge = obj.sq_getAutoLayerWorkAnimation(pAni, "2_sd");
	//	if(alsSpinNormal)
		//	alsSpinNormal.setCustomClipArea(true, 0, 0, 10, 10, false);
			
		//if(alsSpinDodge)
			//alsSpinDodge.setCustomClipArea(true, 0, 0, 10, 10, false);
		//

		sq_var.clear_timer_vector();
		sq_var.push_timer_vector();
				
		local t = sq_var.get_timer_vector(0);
		//t.setParameter(35, -1);
		t.setParameter(60, -1);		
		t.resetInstant(0);
		
		obj.sq_timer_.setParameter(term, hitCnt);
		obj.sq_timer_.resetInstant(initDelay);
		
		// ����̵� y�� �̵� �����ϵ��� �����۾�
		// ����ƽ ����Ÿ�� �����̵� �ӵ� �߰�	
		// FM_SI_Y_AXIS_MOVESPEED <- 3 // �鳯 ���� �̵��ӵ�
		local y_axis_movespeed = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_Y_AXIS_MOVESPEED);
		//obj.sq_setMoveDirection(ENUM_DIRECTION_DOWN, ENUM_DIRECTION_DOWN);
		//obj.setAxisMoveDirection(1, ENUM_DIRECTION_DOWN, true, true);
		//obj.sq_setStaticMoveInfo(1, 263, 0, true, 0, 0);
		//obj.sq_setStaticMoveInfo(1, 200, 0, true, 0, 0);
		//obj.sq_setStaticSpeedInfo(1, 1);
		//
		obj.sq_setStaticMoveInfo(1,y_axis_movespeed,y_axis_movespeed,true);
		obj.sq_setMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		//
    }
    else if(substate == S_FASTMOVE_END) {
		obj.sq_stopMove();
    	sq_var.push_vector(posX); // ���� �ε��� 1
		obj.sq_setCurrentAnimation(CUSTOM_ANI_FASTMOVE4);
    }
	
    
}


// prepareDraw �Լ� �Դϴ�..
function prepareDraw_fastmove(obj)
{
if(!obj) return;
//	local substate = obj.getSkillSubState();
	
	//if(substate == S_FASTMOVE_PRO) {
		//local pAni = obj.sq_getCurrentAni();
		
		//local alsSpinNormal = obj.sq_getAutoLayerWorkAnimation(pAni, "2_sn");
		//local alsSpinDodge = obj.sq_getAutoLayerWorkAnimation(pAni, "2_sd");
		
		//if(alsSpinNormal)
		//	alsSpinNormal.setCustomClipArea(true, 5, 5, 5, 5, false);
			
		//if(alsSpinDodge)
//			alsSpinDodge.setCustomClipArea(true, 0, 0, 0, 0, false);
//	}
}


// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_fastmove(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	local pAni = obj.sq_getCurrentAni();
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);

	local sq_var = obj.getVar();
	local currentT = sq_GetCurrentTime(pAni);
	
	
//S_FASTMOVE_PLAY <- 0
//S_FASTMOVE_LOOP <- 1
//S_FASTMOVE_PRO <- 2
//S_FASTMOVE_END <- 3
	
    if(substate == S_FASTMOVE_PLAY) {		
    }
    else if(substate == S_FASTMOVE_LOOP) {
		local max_break_v = 0;
    	//local time = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_C_TIME);
    	local time = obj.sq_getIntData(SKILL_FASTMOVE, FM_SI_C_TIME); // �鳯�� ���� �����Ǵ� �ð�..
    	
    	if(obj.isMyControlObject()) {
    		if(sq_GetSkillLevel(obj, SKILL_FASTMOVE_EX) > 0) // ����̵���ȭ ���� �۾�
    		{
    			local direction = obj.sq_getInputDirection(0);
    			
    			if(direction == ENUM_DIRECTION_NEUTRAL) {
    				sq_var.set_vector(4, currentT); // �ƹ��͵� �ȴ������� �ð��� üũ�Ѵ�..
    			}
    			
    			if(direction == ENUM_DIRECTION_LEFT || direction == ENUM_DIRECTION_RIGHT) {
    				if(obj.getDirection() == ENUM_DIRECTION_LEFT || obj.getDirection() == ENUM_DIRECTION_RIGHT) {    				
    					if(direction != obj.getDirection()) {
    						//local max_break = 200;
    						local max_break = obj.sq_getIntData(SKILL_FASTMOVE_EX, 4); //������ �̵��ϴ� ���� (0~300) // 0 ���� �ϸ� ���� �ӵ��� ������ �ǰ� ���� �þ�� �ӵ��� �������ϴ�..
    						local t = time - sq_var.get_vector(4);
    						local c_t = currentT - sq_var.get_vector(4);
    						local v = sq_GetUniformVelocity(0, max_break, c_t, t);
    						
    						max_break_v = v;
    						//print("\n v:" + v + " c_t:" + c_t + " t:" + t);
    					}
    				}
    			}
    		}
    	}
    
    	
    	//sq_var.push_vector(posZ); // index : 1 // srcZ
    	
    	local srcZ = sq_var.get_vector(1); // ���� ���� ����
    	local jumpstate = sq_var.get_vector(2); // jumpstate : 0 : �ٴ� 1 : ����� 2 : �ϰ���
    	
		local up_t = time / 2;
		local up_l = 20 + srcZ;
    	
		local move_l = 0;
    		
    	//if(srcZ <= 0) {

		if(jumpstate == 0) {
    		
    		if(up_t > currentT) {
    			//move_l = sq_GetAccel(0, up_l, currentT, up_t, true);
    			move_l = sq_GetAccel(srcZ, up_l, currentT, up_t, true);
    		}
    		else {
    			move_l = sq_GetAccel(up_l, 0, currentT - up_t, up_t, false);
    		}
    		
    		if(currentT >= time) {
    			obj.setCurrentPos(posX, posY, 0);
	    		
				if(obj.isMyControlObject()) {			    	
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(S_FASTMOVE_PRO);
					obj.sq_IntVectPush(max_break_v);
					obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_USER, true);
				}    	
    		}
    		else {
    			obj.setCurrentPos(posX, posY, move_l);
    		}
    		
    	}
    	else if(jumpstate == 1) {
    		up_t = 100;
    		local down_t = 400;
    		up_l = 10 + srcZ;
    			    	
    		move_l = 0;
    		
    		//print("\n uprising");

    		
    		if(up_t > currentT) {
    			move_l = sq_GetAccel(srcZ, up_l, currentT, up_t, true);
    		}
    		else {
    			move_l = sq_GetAccel(up_l, 0, currentT - up_t, down_t, false);
    		}
    		
    		if(currentT >= (down_t + up_t) ) {
    			obj.setCurrentPos(posX, posY, 0);
	    		
				if(obj.isMyControlObject()) {			    	
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(S_FASTMOVE_PRO);
					obj.sq_IntVectPush(max_break_v);
					obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_USER, true);
				}    	
    		}
    		else {
    			obj.setCurrentPos(posX, posY, move_l);
    		}    		
    	}
    	else if(jumpstate == 2) { // �ϰ���
    		up_t = 50;
    		local down_t = 400;
    		up_l = srcZ;
    			    	
    		move_l = 0;
    		//print("\n downing");
    		
    		if(up_t > currentT) {
    			move_l = sq_GetAccel(srcZ, up_l, currentT, up_t, true);
    		}
    		else {
    			move_l = sq_GetAccel(up_l, 0, currentT - up_t, down_t, false);
    		}
    		
    		if(currentT >= (down_t + up_t) ) {
    			obj.setCurrentPos(posX, posY, 0);
	    		
				if(obj.isMyControlObject()) {			    	
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(S_FASTMOVE_PRO);
					obj.sq_IntVectPush(max_break_v);
					obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_USER, true);
				}    	
    		}
    		else {
    			obj.setCurrentPos(posX, posY, move_l);
    		}    		
    	}    	
    }
    else if(substate == S_FASTMOVE_PRO) {
//FM_LI_HIT_RATE <- 0 // �鳯 ��Ʈ ������(%)
//FM_LI_MOVE_LEN <- 1 // �̵��Ÿ� (px)
		local initDelay = pAni.GetFrameStartTime(2);
		
		if(initDelay <= currentT) {
	    	local delayT = sq_var.get_vector(2); // �����ε��� 2 �� �̵��ð�
	    	//print(delayT);
	    	local len = sq_var.get_vector(5);
	    	//print(len);
	    	
	    	
			if(sq_var.get_vector(6) == 0) // �ε���6 ���� �÷���
			{
				obj.sq_PlaySound("FMOVE_DASH_LOOP", 7575);
				sq_var.set_vector(6, 1);
			}
	    	
			local v = sq_GetAccel(0, len, currentT - initDelay, delayT, false);
			//local v = sq_GetUniformVelocity(0, len, currentT - initDelay, delayT);	
			
			local srcX = sq_var.get_vector(1); // ���� �ε��� 1
			
			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
			 
			if(sq_var.get_vector(3)) { // �������ӿ��� �̵��� �� ���� ������ �����ٸ�..
				if(sq_var.get_vector(4) != posY) { // �� posY�� ���غ��� �޶����ٸ�..
					sq_var.set_vector(3, 0); // �̵��÷��׸� off���ݴϴ�..
					sq_var.set_vector(4, posY);
				}
			}
			 
			if(obj.isMovablePos(dstX, posY) && !sq_var.get_vector(3)) { // �̵��÷��׿� �̵����������� ��� �����ؾ� �̵�
				//obj.setCurrentPos(dstX, posY, posZ);
				sq_setCurrentAxisPos(obj, 0, dstX);
			}
			else { // �̵��� �� ���� ������ ������..
				sq_var.set_vector(3,1); // �̵� �÷��� �ε��� 3 �̵��� �� ���� ������ ������ �� �׼��� ���̻� �̵����Ѵ�..
				local offset = dstX - posX;
				
				if(offset != 0) {				
					if(offset < 0) 
						offset = -offset;
					
					local totalLen = sq_var.get_vector(5);
					sq_var.set_vector(5, totalLen - offset);
				}
			}
			
			if (obj.sq_timer_.isOnEvent(currentT) == true)
				obj.resetHitObjectList();
				
			if(v >= len) { // �������� �������� �� sub state�� �ٲ۴�..			 
				obj.stopSound(7575);
				if(obj.isMyControlObject()) {
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(S_FASTMOVE_END);
					obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_USER, true);
				}
			}

			

			
			// ����̵� y�� �̵� �����ϵ��� �����۾�
			// ����ƽ ����Ÿ�� �����̵� �ӵ� �߰�
			
			// ���� ��ƼŬ ����
			local t = sq_var.get_timer_vector(0);
			
			if(t.isOnEvent(currentT) == true) {
				//local dust_type = obj.getDustParticleType(LANDPARTICLE_MOVE);
				//local particleCreater = sq_GetobjectParticleCreaters(dust_type);
				//if(obj.getDirection() == ENUM_DIRECTION_LEFT)
					//particleCreater.getParticleInfo().xFlip = true;
				//else
					//particleCreater.getParticleInfo().xFlip = false;					
				//OBJECT_VECTOR objects = chargeSpearParticleCreator_->createObjectParticle();		
				
				local particleCreater = sq_var.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", obj);				
					
				particleCreater.Restart(0);
				//particleCreater.SetPos(posX, posY, posZ-1);				
				local dstX = sq_GetDistancePos(posX, obj.getDirection(), -20);				
				particleCreater.SetPos(dstX, posY, posZ+28);	
				
				sq_AddParticleObject(obj, particleCreater);
			}
			
		}
    }
    else if(substate == S_FASTMOVE_END) {    	
    		local len = 40;
    		local delaySum = 400;
			local v = sq_GetAccel(0, len, currentT, delaySum, false);
			//local v = sq_GetUniformVelocity(0, len, currentT - initDelay, delayT);	
			
			local srcX = sq_var.get_vector(1); // ���� �ε��� 1
			
			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
			 
			if(obj.isMovablePos(dstX, posY)) {
				obj.setCurrentPos(dstX, posY, posZ);
			}
    }
	
	
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_fastmove(obj)
{
	if(!obj) return;
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	
	//

    local substate = obj.getSkillSubState();

    if(substate == S_FASTMOVE_PLAY) {		
    }
    else if(substate == S_FASTMOVE_LOOP) {
    }
    else if(substate == S_FASTMOVE_PRO) {
    }
    else if(substate == S_FASTMOVE_END) {
    }
        
        
	if(bEnd) {
		if(substate == S_FASTMOVE_PLAY) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(S_FASTMOVE_LOOP);
				obj.sq_addSetStatePacket(STATE_FASTMOVE, STATE_PRIORITY_USER, true);
				//obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
		else if(substate == S_FASTMOVE_LOOP) {
		}
		else if(substate == S_FASTMOVE_PRO) {
			//obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
		else if(substate == S_FASTMOVE_END) {
				obj.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}

// state����� ���ÿ� �ѹ� ȣ��Ǵ� �Լ��Դϴ�. oldstate�� ����Ǵ� state�Դϴ�. ���� �߻�Ȱ��� �ְų� ����ó���ɰ��� �ִٸ� �̰����� ó���մϴ�.
function onEndState_fastmove(obj, new_state)
{
	if(!obj) return;
	if(new_state != STATE_FASTMOVE) {
		obj.stopSound(7575);
	}
}


// irdcharacter����  setstate() -> IRDActiveObject::setState -> aftersetstate() �̷��������� ������ setstate�Դϴ�. skillƯ���� ���� ȣ���� �ʿ䰡 
// �ִٸ� �� �Լ��� �̿��մϴ�.

function onAfterSetState_fastmove(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
}

// onbeforeattack �ݹ��Լ� �Դϴ�
function onBeforeAttack_fastmove(obj, damager, boundingBox)
{
	
}

// onAttack �ݹ��Լ� �Դϴ�
function onAttack_fastmove(obj, damager, boundingBox)
{
	
}

// onAfterAttack �ݹ��Լ� �Դϴ�
function onAfterAttack_fastmove(obj, damager, boundingBox)
{
	
}

// onBeforeDamage �ݹ��Լ� �Դϴ�
function onBeforeDamage_fastmove(obj, attacker, boundingBox)
{
	
}

// onDamage �ݹ��Լ� �Դϴ�
function onDamage_fastmove(obj, attacker, boundingBox)
{
	
}

// onAfterDamage �ݹ��Լ� �Դϴ�
function onAfterDamage_fastmove(obj, attacker, boundingBox)
{
	
}


