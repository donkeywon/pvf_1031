

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_AvengerAttack(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		obj.getVar().clear_vector();

		obj.getVar().push_vector(0); // 0���ε���
		obj.getVar().push_vector(0); // 1���ε���
		obj.getVar().push_vector(0);// 2���ε���
		obj.getVar().push_vector(0);// 3���ε���
		obj.getVar().push_vector(0);// 4���ε���
		
		if(obj.getAttackIndex() == 0)
		{
			obj.setAttackXVelocity(100);
			obj.setAttackXAccel(-300);
			obj.setAttackXVelocityFast(200);
			obj.setAttackXAccelFast(-300);	
		}

		if(obj.getAttackIndex() == 1) { //
			obj.setAttackXVelocity(50);
			obj.setAttackXAccel(-300);
			obj.setAttackXVelocityFast(50);
			obj.setAttackXAccelFast(-300);	
		}		
		
		if(obj.getAttackIndex() == 2) { //
			obj.setAttackXVelocity(20);
			obj.setAttackXAccel(-300);
			obj.setAttackXVelocityFast(50);
			obj.setAttackXAccelFast(-30);
		}
		if(obj.getAttackIndex() == 3) 
		{ //

		}
		return;
	}
	
	obj.sq_stopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();	
	local dir = sq_GetDirection(obj);

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	
	obj.setAttackXVelocity(0);
	obj.setAttackXAccel(0);
	obj.setAttackXVelocityFast(0);
	obj.setAttackXAccelFast(0);
	
	
}


function onAfterSetState_AvengerAttack(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	if(isAvengerAwakenning(obj) == false) {
		return;
	}
		
	print("	onAfterSetState_AvengerAttack obj.getAttackIndex():" + obj.getAttackIndex());
	
	// Awakening.skl ��ų���� ���̺�
	//SL_PERFECT_CHANGE_HP <- 0 // (0) ���� ����ü HP 
	//SL_CHANGE_TIME <- 1 // (1) ���ӽð� 
	//SL_DEF_INC <- 2 // (2) ��������(+)
	//SL_ATK_SPD <- 3 // (3) ���ݼӵ�(+)
	//SL_MOV_SPD <- 4 // (4) �̵��ӵ�(+)
	//SL_1_HIT_MAGIC_ATK <- 5 // (5) 1Ÿ �������ݷ�(+)
	//SL_2_HIT_MAGIC_ATK <- 6 // (6) 2Ÿ �������ݷ�(+)
	//SL_3_HIT_MAGIC_ATK <- 7 // (7) 3Ÿ �������ݷ�(+)
	//SL_DASH_MAGIC_ATK <- 8 // (8) ��� �������ݷ�(+)
	//SL_JUMP_MAGIC_ATK <- 9 // (9) C(����) �������ݷ�(+)		
	

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();	
	local dir = sq_GetDirection(obj);
	local power = 0;


	if(obj.getAttackIndex() == 0) { // ���� ���Ż��� �⺻ ���� �������̶��..			
		local v = 5;
		local dstX = sq_GetDistancePos(posX, obj.getDirection(), v);
		
		if(obj.isMovablePos(dstX, posY)) {
			obj.setCurrentPos(dstX, posY, posZ);
		}
		
		obj.setAttackXVelocity(50);
		obj.setAttackXAccel(-300);
		obj.setAttackXVelocityFast(100);
		obj.setAttackXAccelFast(-300);

			//print("	sqr_CreatePooledObject 4_dust_normal.ani");
		sqr_CreatePooledObject(obj, "Effect/Animation/Awakening/attack/attack1/4_dust_normal.ani", posX, posY + 1, posZ, dir);

	}		
	if(obj.getAttackIndex() == 1) { // ���� ���Ż��� �⺻ ���� �������̶��..			
		obj.getVar().push_vector(0);
		
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
		
			//print("	sqr_CreatePooledObject 4_dust_normal_0.ani");
			//print("	sqr_CreatePooledObject 4_dust_normal_1.ani");
			
		sqr_CreatePooledObject(obj, "Effect/Animation/Awakening/attack/attack2/4_dust_normal_0.ani", posX, posY + 1, posZ, dir);
		sqr_CreatePooledObject(obj, "Effect/Animation/Awakening/attack/attack2/4_dust_normal_1.ani", posX, posY + 1, posZ, dir);
	}		
	if(obj.getAttackIndex() == 2) { // ���� ���Ż��� �⺻ ���� �������̶��..
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
		obj.getVar().push_vector(0);
	}
	if(obj.getAttackIndex() == 3) { // ���� ���Ż��� �⺻ ���� �������̶��..
		obj.getVar().push_vector(0); 
		obj.getVar().push_vector(0); // 2�� �÷��� ���������� �ƴ��� �Ǵ��ϴ� �÷���
		obj.getVar().push_vector(0);
	}
	
	if(obj.getAttackIndex() == 4) { // ���� ���Ż��� �⺻ ���� �������̶��..
		obj.getVar().push_vector(0); 
		obj.getVar().push_vector(0); // 2�� �÷��� ���������� �ƴ��� �Ǵ��ϴ� �÷���
		obj.getVar().push_vector(0);
	}

	
	// �����нú� : �Ǹ�(48����)
	// 1. ���� ���� ���� ������ ���ݷ��� ������
	// 2. ���� ��Ʈ����Ŀ�� �Ǹ� ������ ���·� ����.
	// �����нú� �Ǹ��� ���� �ִ��� üũ�ϰ� ���� �ִٸ� �Ǹ� ������ ���·��� �������Ѽ� �����մϴ�..	
	
	if(obj.getAttackIndex() < 3) {
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_AW_ATTACK1 + obj.getAttackIndex());
		// 
		
		local rate = obj.sq_getPassiveAttackRate(0, state, 1.0);
		
	    //print("sq_getPassiveAttackRate:" + rate.tofloat());
	    
	    power = obj.sq_getBonusRateWithPassive(SKILL_AVENGER_AWAKENING, state, SL_1_HIT_MAGIC_ATK + obj.getAttackIndex(),1.0);	
	    
		//local before_power = obj.sq_getSkillPower(SKILL_AVENGER_AWAKENING, SL_1_HIT_MAGIC_ATK + obj.getAttackIndex());
		
		
	    //print("before CUSTOM_ATTACKINFO_AW_ATTACK1:" + before_power);
	    //print("CUSTOM_ATTACKINFO_AW_ATTACK1:" + power);
	}
	
	if(obj.getAttackIndex() >= 4)
	{ // ��� - �ҽ������ ��Ÿ ���ݷ� ������ ���� ���̸� ���Դϴ�..
		obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_AW_ATTACK4);
		//power = obj.sq_getSkillPower(SKILL_AVENGER_AWAKENING, SL_JUMP_MAGIC_ATK);
		
	    //power = obj.sq_getPowerWithPassive(SKILL_AVENGER_AWAKENING,SL_1_HIT_MAGIC_ATK + obj.getAttackIndex(),-1,1.0);	
	    //print("CUSTOM_ATTACKINFO_AW_ATTACK4:" + power);
	    
	    ///////////////////////////////////
		local chargeTime = sq_GetIntData(obj, SKILL_AVENGER_AWAKENING, 0); //���� ���� ���� �ִ� �����ð�
		
		//local level = sq_GetSkillLevel(obj, SKILL_AVENGER_AWAKENING);		
		//local AtkAdd = sq_GetLevelData(obj, SKILL_AVENGER_AWAKENING, SL_JUMP_MAGIC_ATK, level);		
		//local fullchargeAtkAdd = sq_GetLevelData(obj, SKILL_AVENGER_AWAKENING, SL_JUMP_FULLCHARGE_MAGIC_ATK, level);				
		//local offset = fullchargeAtkAdd - AtkAdd; // Ǯ���� ���ݷ°� �⺻ ���ݷ� ������ offset���� ���س���..				
		//local stateTimer = obj.getStateTimer();
		
	    local basePower = obj.sq_getBonusRateWithPassive(SKILL_AVENGER_AWAKENING, state, SL_JUMP_MAGIC_ATK,1.0);
	    local maxPower = obj.sq_getBonusRateWithPassive(SKILL_AVENGER_AWAKENING, state, SL_JUMP_FULLCHARGE_MAGIC_ATK,1.0);

		local stateTimer = obj.sq_getVectorData(datas, 1); // ù��° substate�Դϴ�..	

		local resultPower = sq_GetUniformVelocity(basePower, maxPower, stateTimer, chargeTime); // ������
		
		// Ư������ �̻��ϰ�� ������ �ƽ� �Ŀ�
		if(obj.isOverSkillLevel(SKILL_AVENGER_AWAKENING, 3))
			resultPower = maxPower;
			
		power = resultPower;
		
		//print("stateTimer:" + stateTimer + " chargeTime:" + chargeTime);
		print("basePower:" + basePower + " maxPower:" + maxPower + " resultPower:" + resultPower + " timer:" + stateTimer);	
	    //////////////////////////////////
	    
		local awakening_var = obj.getVar("awakening");
		awakening_var.get_ct_vector(0).Reset();
		awakening_var.get_ct_vector(0).Start(0,0);
		
		local cooltime = getLoadSkillEnableTime(obj, SKILL_AVENGER_AWAKENING, 1); // ����Ʈ ��Ÿ��
		awakening_var.set_vector(0, cooltime); // ��Ÿ�Ӽ���
		
	}
		
	obj.sq_setCurrentAttackBonusRate(power);
}


// prepareDraw �Լ� �Դϴ�..
function prepareDraw_AvengerAttack(obj)
{
}


// loop �κ��Դϴ� ismycontrol�� ������ ���� ����� ��� object���� �̰��� ��ġ�Ե˴ϴ�.
function onProc_AvengerAttack(obj)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		return;
	}
	
	local substate = obj.getSkillSubState();
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	local pAni = obj.sq_getCurrentAni();
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	
	if(obj.getAttackIndex() == 2) {
		// ����° ��ġ�� �ӵ��� �� ������
		if(!obj.getVar().get_vector(0)) {
			if(frmIndex >= 0 && frmIndex < 5) {
				local pA = obj.sq_getCurrentAni();
				obj.sq_setAnimationSpeedRate(pA, 160.0);
				obj.getVar().set_vector(0, 1);
			}
		}
		
		if(!obj.getVar().get_vector(1)) {
			if(frmIndex >= 5) {
				local pA = obj.sq_getCurrentAni();
				obj.sq_setAnimationSpeedRate(pA, 100.0);
				obj.getVar().set_vector(1, 1);
			}
		}		
		
		if(frmIndex >= 6) {
			local dustFlag = obj.getVar().get_vector(3);
			if(!dustFlag) {
				obj.getVar().set_vector(3, 1);
				//print("size_vector:" + obj.getVar().size_vector());
				
				//local dustN = obj.getVar().GetAnimationMap("15_dust_normal","Character/Priest/Effect/Animation/Awakening/attack/attack3/15_dust_normal.ani");
				//pAni.addLayerAnimation(1, dustN, false);
				
				// ���� ���� ����
				local dust_n_Ani = obj.sq_createCNRDAnimation("Effect/Animation/Awakening/attack/attack3/15_dust_normal.ani");
				local dustObj = obj.sq_createCNRDPooledObject(dust_n_Ani, true);
				dustObj.setCurrentDirection(obj.getDirection());
		
				
				dustObj.setCurrentPos(posX, posY + 2, 0);
				obj.sq_AddObject(dustObj);
				
				//print("dustFlag:" + dustFlag);
				
			}
		}
	}
	
	if(obj.getAttackIndex() == 3) { // ������ ������� ���� ��
		// ����° ��ġ�� �ӵ��� �� ������
		local chargeTime = sq_GetIntData(obj, SKILL_AVENGER_AWAKENING, 0); //���� ���� ���� �ִ� �����ð�
		local stateTimer = obj.sq_getStateTimer();
		
		if(chargeTime <= stateTimer && !obj.getVar().get_vector(0)) {
			print("\n fullCharge");
			local pfullChargeAni = obj.getVar().GetAnimationMap("Attack4_2", "Character/Priest/Animation/AvengerAwakening/Attack4_2.ani");
			if(pfullChargeAni) {
				obj.setCurrentAnimation(pfullChargeAni);
			}
			obj.getVar().set_vector(0, 1);
		}
	}
	
	
	if(obj.getAttackIndex() == 4) { // ������ ������� ����
		// ����° ��ġ�� �ӵ��� �� ������
		if(!obj.getVar().get_vector(1)) {
			local pA = obj.sq_getCurrentAni();
			obj.sq_setAnimationSpeedRate(pA, 100.0);
			obj.getVar().set_vector(1, 1);
		}
	}
	
	
}

// loop �κ��Դϴ� ismycontrol ȣ��Ʈ�� ������ object�� �̰��� ���ϴ�. setstate �����̳� �нú������Ʈ ���� , ��� ó���մϴ�.
function onProcCon_AvengerAttack(obj)
{
	if(!obj) return;
	if(isAvengerAwakenning(obj) == false) {
		local pAni = obj.sq_getCurrentAni();
		local bEnd = obj.sq_ani_IsEnd(pAni);
		 local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
		
		
		if(obj.getAttackIndex() == 2) // ���� 3Ÿ °���..
		{	
			// (�����Ͼ� Ʃ��)
			if(frmIndex >= 5) // 6�� ������ �̻��̶��.
			{ 
				if(obj.getVar().get_vector(2) == 0)
				{ // 2�� �÷��װ� 0�̶��
					obj.getVar().set_vector(2, 1); // 2���÷��׸� 1�� �ٲ۴� �ֳ��ϸ� �� �ѹ��� �̾����� ���;��ϱ⶧����..
					//print("CUSTOM_ATTACKINFO_AVENGER_ATTACK_3_2:" + CUSTOM_ATTACKINFO_AVENGER_ATTACK_3_2);
					obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_AVENGER_ATTACK_3_2); // ��� ������ ���� 
				}
			}
		}
		
		// ���ϴ°��� §��..
		if(obj.getAttackIndex() == 3) // ���� 4Ÿ °���..
		{	
			if(frmIndex >= 7) {
				if(obj.getVar().get_vector(3) == 0)
				{ // 3�� �÷��װ� 0�̶��
					// ��� ��Ÿ 2��° atk������ �����ϱ� �����̴�.. ���������� �ٲٱ� ���ؼ��Դϴ�..
					//print("obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_AVENGER_ATTACK_4_2);");
					obj.sq_setCurrentAttackInfo(CUSTOM_ATTACKINFO_AVENGER_ATTACK_4_2);
					
					obj.getVar().set_vector(3, 1); // 2���÷��׸� 1�� �ٲ۴� �ֳ��ϸ� �� �ѹ��� �̾����� ���;��ϱ⶧����..
					
				}
			}
			if(frmIndex >= 8) // 8�� ������ �̻��̶��.
			{ 
				if(obj.getVar().get_vector(2) == 0)
				{ // 2�� �÷��װ� 0�̶��
					obj.sq_setShake(obj, 1, 200); // ������ ����Ų��.. 
					obj.getVar().set_vector(2, 1); // 2���÷��׸� 1�� �ٲ۴� �ֳ��ϸ� �� �ѹ��� �̾����� ���;��ϱ⶧����..
				}
			}
		}
		
		
		return;
	}
	
	local pAni = obj.sq_getCurrentAni();
	local bEnd = obj.sq_ani_IsEnd(pAni);
    local frmIndex = obj.sq_ani_GetCurrentFrameIndex(pAni);
	
    local substate = obj.getSkillSubState();
    
    //if (obj.getAttackIndex() < obj.sq_getAttackCancelStartFrameSize() &&
		//frmIndex >= obj.sq_getAttackCancelStartFrame(obj.getAttackIndex()) &&
		//sq_IsEnterCommand(obj, 1)
	//)
	
    
        
	if(obj.getAttackIndex() == 2) { // ���� ���Ż��� �⺻ ���� �������̶��..	
	
		if(frmIndex >= 5) {
			if(obj.getVar().get_vector(2) == 0) {
				obj.getVar().set_vector(2, 1);
				obj.sq_setShake(obj, 2, 500);
			}
		}
	}
	
	if(obj.getAttackIndex() < 3) {
	
		sq_SetKeyxEnable(obj, 1, true);	
			
		local bCommand = sq_IsEnterCommand(obj, 1);
		
		if (bCommand)
		{
		   local var_awakening = obj.getVar("awakening");
		   local t = var_awakening.get_ct_vector(0).Get();	
		   
		   //print("var_awakening.get_ct_vector(0).Get():" + t + "var_awakening.get_vector(0):" + var_awakening.get_vector(0));

		   if(var_awakening.get_ct_vector(0).Get() > var_awakening.get_vector(0)) { // ��ü ��Ÿ�� üũ
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3); // substate����
				obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
		   }
		   else { // ��Ÿ���� �� �ƴ�..
				obj.startCantUseSkillWarning();
				if (obj.isMessage()) {
					sq_AddMessage(414); // 414>��Ÿ���Դϴ�.
				}
		   }
			return;
		}
	
	}
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	if(obj.getAttackIndex() == 3) {		
		
		local bDownKey = sq_IsDownKey(obj, 1, false);
		local chargeTime = sq_GetIntData(obj, SKILL_AVENGER_AWAKENING, 0) * 2; //���� ���� ���� �ִ� �����ð�
		local stateTimer = obj.sq_getStateTimer();
		print("\n chargeTime:" + chargeTime + " stateTimer:" + stateTimer);
		
		// ��û����
		// ���� �Ŀ� ����ð���ŭ �帣�� �ڵ����� �Ѿ�ϴ�..		
		if(!bDownKey || stateTimer >= chargeTime) { // ���� ����ٴ°���.. 
			
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(4); // substate����
			obj.sq_IntVectPush(stateTimer); // �⺻���� �߰� ���ݷ�
			
			
			obj.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
			return;
		}
	}
	
}
