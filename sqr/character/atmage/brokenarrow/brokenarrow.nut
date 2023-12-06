
SUB_STATE_BROKENARROW_0	<- 0
SUB_STATE_BROKENARROW_1	<- 1
SUB_STATE_BROKENARROW_2	<- 2
SUB_STATE_BROKENARROW_3	<- 3
SUB_STATE_BROKENARROW_4	<- 4

BrokenArrow_state_0 <- 10
BrokenArrow_state_1 <- 11
BrokenArrow_state_2 <- 12

function checkExecutableSkill_BrokenArrow(obj)
{

	if(!obj) return false;
	
	//local targetObj = sq_GetObjectByObjectId(obj, BROKENARROW_UNIQUE_ID);
	local flag = obj.getVar("brokenarrow").get_vector(VECTOR_FLAG_0);
	local targetObj = sq_GetPassiveObjectByState(obj, 24250, BrokenArrow_state_1); // 24250	`Character/Mage/ATBrokenArrow.obj`			// ������ - ���ū�ַο� (ȭ��)

	local expTime = obj.sq_GetIntData(SKILL_BROKENARROW, 1); // 1. Ÿ�� ������ �뽬����� ����� �� �ִ� �ð� (ȭ���� �����ִ� �ð�)
	
	// ũ�δ�Ŭ ������ �۾�.. Ÿ�� ������ �뽬����� ����� �� �ִ� �ð� (ȭ���� �����ִ� �ð�)
	// 0��� �뽬�� ���� �ʴ´�..
		
	if(!targetObj || flag == 0 || expTime == 0)
	{
		local b_useskill = obj.sq_IsUseSkill(SKILL_BROKENARROW);

		if(b_useskill) {
			obj.getVar("arrow").clear_vector();
			obj.getVar("arrow").push_vector(0);
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_BROKENARROW_0); // substate����
			obj.sq_AddSetStatePacket(STATE_BROKENARROW, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}	
	}
	else
	{
		print( " checkExecutableSkill_BrokenArrow targetObj:" + targetObj);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_BROKENARROW_2); // substate����
		
		local group = sq_GetGroup(targetObj);
		local uniqueId = sq_GetUniqueId(targetObj);
	
		obj.sq_IntVectPush(group); // substate����
		obj.sq_IntVectPush(uniqueId); // substate����
		obj.sq_AddSetStatePacket(STATE_BROKENARROW, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	


	return false;

}


//local arr=["one","two","three"]
//
//::print("FOREACH\n");
//
//foreach(i,val in arr)
//{
	//::print("index ["+i+"]="+val+"\n");
//}
//
//::print("FOR\n");
//
//for(local i=0;i<arr.len();i+=1)
//{
	//::print("index ["+i+"]="+arr[i]+"\n");
//}
//
//::print("WHILE\n");
//
//local i=0;
//while(i<arr.len())
//{
	//::print("index ["+i+"]="+arr[i]+"\n");
	//i+=1;
//}
//::print("DO WHILE\n");
//
//local i=0;
//do
//{
	//::print("index ["+i+"]="+arr[i]+"\n");
	//i+=1;
//}while(i<arr.len());


function checkCommandEnable_BrokenArrow(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_BROKENARROW); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}
	

	return true;

}

function onChangeSkillEffect_BrokenArrow(obj, skillIndex, reciveData)
{
	if(!obj)
		return;
}

function onSetState_BrokenArrow(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	local arrowLauchNum = obj.sq_GetIntData(SKILL_BROKENARROW, 0); // 0. ȭ�� ����
	
	obj.getVar().clear_vector();	
	obj.getVar().push_vector(arrowLauchNum);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	
	obj.getVar("flag").clear_vector();
	obj.getVar("flag").push_vector(0);
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

	if(substate == SUB_STATE_BROKENARROW_0) {
		if(obj.getVar("brokenarrow").size_vector() == 0)
		{
			obj.sq_PlaySound("MW_BARROW");
			obj.getVar("brokenarrow").clear_vector();
			obj.getVar("brokenarrow").push_vector(1);
		}
		else
			obj.getVar("brokenarrow").set_vector(VECTOR_FLAG_0, 1);
		
		// �뽬�÷���
		obj.getVar("dash").clear_vector();
		obj.getVar("dash").push_vector(0);
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BROKENARROW1);
/*
		local pAni = obj.sq_GetCurrentAni();
		pAni.setSpeedRate(200.0);
*/
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BROKENARROW_LOOP1);
/*
		local pAni = obj.sq_GetCurrentAni();
		pAni.setSpeedRate(200.0);
*/
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		// �뽬1
		obj.getVar("brokenarrow").set_vector(VECTOR_FLAG_0, 0); // �ѹ� �ķ�ģ�ٸ�..�ٽ� ������ �˴ϴ�.
		
		local group = obj.sq_GetVectorData(datas, 1);
		local uniqueId = obj.sq_GetVectorData(datas, 2);
		
		local targetObj = sq_GetObject(obj, group, uniqueId);

		obj.getVar().push_vector(posX); // ���� x : i: 3
		obj.getVar().push_vector(posY); // ���� y : i: 4
		
		if(targetObj) {
			local disX = sq_Abs(targetObj.getXPos() - posX);
			local disY = targetObj.getYPos() - posY;
			
			if(targetObj.getXPos() > posX)
			{
				obj.setDirection(ENUM_DIRECTION_RIGHT);
			}
			else
			{
				obj.setDirection(ENUM_DIRECTION_LEFT);
			}
			
			disX = disX - 60;
			
			if(disX <= 0)
				disX = 0;
			
			obj.getVar().push_vector(disX); // x�� �̵��Ÿ� : i: 5
			obj.getVar().push_vector(disY); // y�� �̵��Ÿ� : i: 6
		}
		else { // ����Ʈ �̵��Ÿ�
			local defaultDistance = obj.sq_GetIntData(SKILL_BLUEDRAGONWILL, 1); // ���� ���� (���� Ȯ����) (100~)
			obj.getVar().push_vector(defaultDistance); // x�� �̵��Ÿ� 
			obj.getVar().push_vector(0); // y�� �̵��Ÿ�
		}
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BROKENARROW_DASH1);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_AT_MAGE_BROKENARROW);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BROKENARROW_DASH2);
		
		obj.sq_PlaySound("MW_BARROW_FIN");
		
		local atk = sq_GetCurrentAttackInfo(obj);		
		local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_BROKENARROW, STATE_BROKENARROW, 1, 1.0); //1.�ֵѷ�ġ�� ���ݷ�(%)
		sq_SetCurrentAttackBonusRate(atk, attackRate);
		
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
}

function prepareDraw_BrokenArrow(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_BROKENARROW_0) {
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
	}
	

}


function getAngleArrow(obj, pTargetChr)
{
	if(!obj) return;
	if(!pTargetChr) return;
	
	local offsetX = 58; // Ȱ��� ��ġ
	local offsetZ = 75; // Ȱ��� ��ġ
	

	local X = obj.getXPos() + sq_GetDistancePos(0, obj.getDirection(), offsetX);
	local Y = obj.getYPos();
	local Z = obj.getZPos() + offsetZ;
	
	local posX = pTargetChr.getXPos();
	local posY = pTargetChr.getYPos();
	local posZ = pTargetChr.getZPos() + (sq_GetObjectHeight(pTargetChr) / 2);
	
	local offset = posX - X;
	
	local distance = sq_GetDistance( X, Y - Z, posX, posY - posZ, true);
	
	local w = posX - X;		
	if(w < 0) w = -w;
	//	ȭ����� ������ ���ؼ� ����Ʈ�� ��� ������ �Ǵ��� ���Ѵ�.
	
	local h = (posY - posZ) - (Y - Z);
	local width = sq_Abs(posX - X);
	local angle = sq_Atan2( h.tofloat(), width.tofloat());

	//if((posY - posZ) < (Y - Z))
	{
		angle = -angle;
	}

	local nRevision = distance;

	local cos = nRevision.tofloat() * sq_Cos(angle);
	local sin = nRevision.tofloat() * sq_Sin(angle);

	local nX = sq_Abs( cos.tointeger() );
	local nY = sq_Abs( sin.tointeger() );

	return angle;
	//sq_SetfRotateAngle(pAni, angle);		

}


function onProc_BrokenArrow(obj)
{

	if(!obj) return;

	if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)) {
		obj.sq_AddSetStatePacket(0, 1, false);
		return;
	}

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local sq_var = obj.getVar();
	local currentT = sq_GetCurrentTime(pAni);

	local posX = sq_GetXPos(obj);
	local posY = sq_GetYPos(obj);
	local posZ = sq_GetZPos(obj);

	if(substate == SUB_STATE_BROKENARROW_0) {
		// SUB_STATE_BROKENARROW_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
		// SUB_STATE_BROKENARROW_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		local dash_t = pAni.getDelaySum(false); //
		//obj.getVar().push_vector(posX); // ���� x : i: 3
		//obj.getVar().push_vector(posY); // ���� y : i: 4
    	
		local srcX = obj.getVar().get_vector(3); // ����x
		local srcY = obj.getVar().get_vector(4); // ����y
    	    	
    	local dis_x_len = sq_var.get_vector(5); // �� �̵��Ÿ�
		local dis_y_len = obj.getVar().get_vector(6) + 1; // y�� �̵��Ÿ�
		
		local v = sq_GetAccel(0, dis_x_len, currentT, dash_t, true);
		
		local my = sq_GetUniformVelocity(0, dis_y_len, currentT, dash_t);
		
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		local dstY = srcY + my;
		 
		if(sq_var.get_vector(1))
		{ // �������ӿ��� �̵��� �� ���� ������ �����ٸ�..
			if(sq_var.get_vector(2) != posY)
			{ // �� posY�� ���غ��� �޶����ٸ�..
				sq_var.set_vector(1, 0); // �̵��÷��׸� off���ݴϴ�..
				sq_var.set_vector(2, posY);
			}
		}
		 
		if(obj.isMovablePos(dstX, dstY) && !sq_var.get_vector(1))
		{ // �̵��÷��׿� �̵����������� ��� �����ؾ� �̵�
			sq_setCurrentAxisPos(obj, 0, dstX);
			sq_setCurrentAxisPos(obj, 1, dstY);
		}
		else
		{ // �̵��� �� ���� ������ ������..
			sq_var.set_vector(1,1); // �̵� �÷��� �ε��� 3 �̵��� �� ���� ������ ������ �� �׼��� ���̻� �̵����Ѵ�..
			local offset = dstX - posX;
			
			if(offset != 0) {				
				if(offset < 0) 
					offset = -offset;
				
				local totalLen = sq_var.get_vector(5); // ���̵��Ÿ�
				sq_var.set_vector(5, totalLen - offset);
			}
		}
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		// SUB_STATE_BROKENARROW_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_BrokenArrow(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_BROKENARROW_0 || substate == SUB_STATE_BROKENARROW_1)
	{
		local pAni = obj.getCurrentAnimation();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

		//local x_range = obj.sq_GetIntData(SKILL_BLUEDRAGONWILL, 3); // ��� �����ð�
		//local y_range = obj.sq_GetIntData(SKILL_BLUEDRAGONWILL, 4); // ��� �����ð�
		//local z_range = obj.sq_GetIntData(SKILL_BLUEDRAGONWILL, 5); // ��� �����ð�
	
		if(frmIndex >= 3)
		{
			if(obj.getVar("flag").get_vector(0) == 0)
			{
				local x_range = 400; // �˻����� x
				local y_range = 200; // �˻����� y
				local z_range = 50; // �˻����� z
				
				x_range = obj.sq_GetIntData(SKILL_BROKENARROW, 3); // 3. x����
				y_range = obj.sq_GetIntData(SKILL_BROKENARROW, 4); // 4. y����
				z_range = obj.sq_GetIntData(SKILL_BROKENARROW, 5); // 5. z����
				
				local x = sq_GetXPos(obj);
				local y = sq_GetYPos(obj);
				local z = sq_GetZPos(obj);

				local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_BROKENARROW, STATE_BROKENARROW, 0, 1.0); //2.���ݷ�(%)

				local expTime = obj.sq_GetIntData(SKILL_BROKENARROW, 1); // 1. Ÿ�� ������ �뽬����� ����� �� �ִ� �ð� (ȭ���� �����ִ� �ð�)
				local stunTime = obj.sq_GetIntData(SKILL_BROKENARROW, 2); // 2. �� �����ð�
				
				local targetObj = sq_FindTarget(obj, 80, x_range, y_range, z_range);
				
				
				//local my = sq_GetUniformVelocity(0, dis_y_len, currentT, dash_t);
				local xLen = 400;
				local yLen = 0;
				local zLen = 75;
				local angle = -1.0;
				
				if(targetObj)
				{
					 xLen = obj.getXDistance(targetObj);
					 yLen = sq_GetYPos(targetObj) - sq_GetYPos(obj);
					 zLen = sq_GetZPos(targetObj) + (sq_GetObjectHeight(targetObj) / 2);
					 
					 angle = getAngleArrow(obj, targetObj);
					 
					 print(" angle:" + angle);
				}
				
				//local fireOffsetX = 56;
				
				if(obj.isMyControlObject())
				{
					local fireOffsetX = 65;
					local fireOffsetY = 0;
					local fireOffsetZ = 73;
					
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(xLen); // 
					sq_BinaryWriteDword(yLen); // 
					sq_BinaryWriteDword(zLen); // 
					sq_BinaryWriteDword(attackRate); // 		
					sq_BinaryWriteDword(expTime); // 		
					sq_BinaryWriteDword(stunTime); // 		
					sq_BinaryWriteFloat(angle); // 		
					obj.sq_SendCreatePassiveObjectPacket(24250, 0, fireOffsetX, fireOffsetY + 1, fireOffsetZ); // ȭ��
				}
				
				obj.getVar("flag").set_vector(0, 1);
			}
		}
		
		if(obj.getVar("dash").get_vector(0) == 0)
		{
			obj.setSkillCommandEnable(SKILL_BROKENARROW, true);
    		
			local iEnterSkill = obj.sq_IsEnterSkill(SKILL_BROKENARROW);
    		
			if(iEnterSkill != -1)
			{
				obj.getVar("dash").set_vector(0, 1);
			}
		}

		
		
		
		//local particleCreater = null;
		
		//particleCreater = obj.getVar().GetparticleCreaterMap("BrokenArrowDownAttack", "Character/Mage/Particle/BrokenArrowDownAttack.ptl", obj);
		//
		//particleCreater = obj.getVar().GetparticleCreaterMap("BrokenArrowUpAttack", "Character/Mage/Particle/BrokenArrowUpAttack.ptl", obj);
			//
		//particleCreater.Restart(0);
		//particleCreater.SetPos(x + dx, y + dy, z + dz);	
		//
		//sq_AddParticleObject(obj, particleCreater);
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		// SUB_STATE_BROKENARROW_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		// SUB_STATE_BROKENARROW_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_BrokenArrow(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(!obj.isMyControlObject()) {
		return;
	}

	local arrowNum = obj.getVar().get_vector(0);
		
	if(substate == SUB_STATE_BROKENARROW_0 || substate == SUB_STATE_BROKENARROW_1)
	{

		local arrowIndex = obj.getVar("arrow").get_vector(0);
		
		arrowIndex = arrowIndex + 1;
		
		obj.getVar("arrow").set_vector(0, arrowIndex);
		
		if(arrowIndex < arrowNum)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_BROKENARROW_1); // substate����
			obj.sq_AddSetStatePacket(STATE_BROKENARROW, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		else
		{
			local expTime = obj.sq_GetIntData(SKILL_BROKENARROW, 1); // 1. Ÿ�� ������ �뽬����� ����� �� �ִ� �ð� (ȭ���� �����ִ� �ð�)
			
			// ũ�δ�Ŭ ������ �۾�.. Ÿ�� ������ �뽬����� ����� �� �ִ� �ð� (ȭ���� �����ִ� �ð�)
			// 0��� �뽬�� ���� �ʴ´�..
		
			if(obj.getVar("dash").get_vector(0) == 1 && expTime > 0)
			{
				local targetObj = sq_GetPassiveObjectByState(obj, 24250, BrokenArrow_state_1); // 24250	`Character/Mage/ATBrokenArrow.obj`			// ������ - ���ū�ַο� (ȭ��)				
				
				
				if(!targetObj)
				{
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				}
				else
				{
					local group = sq_GetGroup(targetObj);
					local uniqueId = sq_GetUniqueId(targetObj);
				
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(SUB_STATE_BROKENARROW_2); // substate����
					obj.sq_IntVectPush(group); // substate����
					obj.sq_IntVectPush(uniqueId); // substate����
					
					obj.sq_AddSetStatePacket(STATE_BROKENARROW, STATE_PRIORITY_IGNORE_FORCE, true);
				}
				
			}
			else
			{
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			}
			
			//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}

	}
	else if(substate == SUB_STATE_BROKENARROW_2)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_BROKENARROW_3); // substate����
		obj.sq_AddSetStatePacket(STATE_BROKENARROW, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_BROKENARROW_3)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_BrokenArrow(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_BROKENARROW_0) {
		// SUB_STATE_BROKENARROW_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
		// SUB_STATE_BROKENARROW_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		// SUB_STATE_BROKENARROW_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		// SUB_STATE_BROKENARROW_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_BrokenArrow(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_BROKENARROW_0) {
		// SUB_STATE_BROKENARROW_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
		// SUB_STATE_BROKENARROW_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		// SUB_STATE_BROKENARROW_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		// SUB_STATE_BROKENARROW_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

}

function onAfterSetState_BrokenArrow(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_BROKENARROW_0) {
		// SUB_STATE_BROKENARROW_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_1) {
		// SUB_STATE_BROKENARROW_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_2) {
		// SUB_STATE_BROKENARROW_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_3) {
		// SUB_STATE_BROKENARROW_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_BROKENARROW_4) {
		// SUB_STATE_BROKENARROW_4 ���꽺����Ʈ �۾�
	}
	

}

function onAttack_BrokenArrow(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;
	
	local substate = obj.getSkillSubState();
	
	if(substate == SUB_STATE_BROKENARROW_3)
	{
		
	}

}

