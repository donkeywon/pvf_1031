
S_PO_FROZENLAND_MC_0 <- 10
S_PO_FROZENLAND_MC_1 <- 11
S_PO_FROZENLAND_MC_2 <- 12
S_PO_FROZENLAND_MC_3 <- 13
S_PO_FROZENLAND_MC_4 <- 14
S_PO_FROZENLAND_MC_5 <- 15


function insertIceFog(obj, dx, dy, dz)
{
	if(!obj)
		return;
		
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	
	local particleCreater = obj.getVar().GetparticleCreaterMap("fronzenLand", "PassiveObject/Character/Mage/Particle/ATFrozenLand.ptl", obj);
		
	particleCreater.Restart(0);
	particleCreater.SetPos(x + dx, y + dy, z + dz);	
	
	//print(" insertIceFog:" + particleCreater);
	sq_AddParticleObject(obj, particleCreater);
	

}

function setCustomData_po_ATFrozenLandMagicCircle(obj, reciveData)
{

	if(!obj) return;
	
	local radiusRate = reciveData.readDword(); // �������� (������ ���� ���� : 100%~)
	local spinNum = reciveData.readDword(); // ����� ��Ÿ���� ���ڸ����� ������ ���� ��
	local spinTime = reciveData.readDword(); // �ҿ뵹�� �ļ� ����� ������ �ð�
	
	
	local multiHitTerm = reciveData.readDword(); // ��� �ٴ���Ʈ ����
	local multiHitAttackRate = reciveData.readDword(); // ��� �ٴ���Ʈ ���ݷ� (%)
	local expAttackRate = reciveData.readDword(); // ��� ���� ���ݷ� (%)
	local frozenRate = reciveData.readDword(); // ���� Ȯ��
	local frozenLevel = reciveData.readDword(); // ���� ����
	local frozenTime = reciveData.readDword(); // ���� �ð�
	// ũ�δ�Ŭ ������ �߰� �۾� ���ڸ����� �����ִ� �ð��� 0���� ũ�ٸ� ������ ��ȸ�ϴ� state�� �����ؾ� �մϴ�.
	local spinAddTime = reciveData.readDword(); // �ҿ뵹�̰� ĳ���� �ֺ��� ȸ���ϴ� �ð� (0.001�ʴ���)
	
	obj.getVar("state").clear_vector(); // state vector
	obj.getVar("state").push_vector(0);
	
	obj.getVar("flag").clear_vector();
	obj.getVar("flag").push_vector(0);
	obj.getVar("flag").push_vector(0);
	obj.getVar("flag").push_vector(0);
	obj.getVar("flag").push_vector(0);
	obj.getVar("flag").push_vector(0);
	
	obj.getVar("basePos").clear_vector();
	obj.getVar("basePos").push_vector(0);
	obj.getVar("basePos").push_vector(0);
	obj.getVar("basePos").push_vector(0);
	
	obj.getVar("flag").clear_timer_vector();
	obj.getVar("flag").push_timer_vector();
	
	obj.getVar("icefog").clear_vector();
	obj.getVar("icefog").push_vector(0);
	
	local t = obj.getVar("flag").get_timer_vector(0);
	t.setParameter(50, 1);
	t.resetInstant(0);
	
	//radiusRate = 100;
	
	obj.getVar("radius").clear_vector();
	obj.getVar("radius").push_vector(radiusRate); // 
	obj.getVar("radius").push_vector(0); // setstate�� setcurrentanimation �� �ִϸ��̼� ���ο� ����
	obj.getVar("radius").push_vector(spinNum); // 2 ���ɰ���
	obj.getVar("radius").push_vector(spinTime); // 3 �ҿ뵹�� �ļ� ����� ������ �ð�
	
	obj.getVar("attack").clear_vector();
	obj.getVar("attack").push_vector(multiHitTerm); // 
	obj.getVar("attack").push_vector(multiHitAttackRate); // 
	obj.getVar("attack").push_vector(expAttackRate); // 
	obj.getVar("attack").push_vector(frozenRate); // 
	obj.getVar("attack").push_vector(frozenLevel); // 
	obj.getVar("attack").push_vector(frozenTime); // 
	
	// ũ�δ�Ŭ ������ �߰� �۾� ���ڸ����� �����ִ� �ð��� 0���� ũ�ٸ� ������ ��ȸ�ϴ� state�� �����ؾ� �մϴ�.
	obj.getVar("spin").clear_vector();
	obj.getVar("spin").push_vector(spinAddTime); // 
	
	if(obj.isMyControlObject()) {
		local pIntVec = sq_GetGlobalIntVector();
		
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, radiusRate);
		
		obj.addSetStatePacket(S_PO_FROZENLAND_MC_0, pIntVec, STATE_PRIORITY_AUTO, false, "");
	}

}

function setState_po_ATFrozenLandMagicCircle(obj, state, datas)
{

	if(!obj) return;
	
	local passiveState = state;
	
	obj.getVar("state").set_vector(0, passiveState);
	
	obj.getVar("flag").set_vector(VECTOR_FLAG_0, 0);

	initGetVarTimer(obj, 1, 400, 10);
	
	if(passiveState == S_PO_FROZENLAND_MC_0) {		
		local x = sq_GetXPos(obj);
		local y = sq_GetYPos(obj);
		local z = sq_GetZPos(obj);
		
		obj.getVar("basePos").set_vector(0, x);
		obj.getVar("basePos").set_vector(1, y);
		obj.getVar("basePos").set_vector(2, z);
		
		
		local atk = sq_GetCurrentAttackInfo(obj);
		
		if(atk)
		{
			local frozenRate = obj.getVar("attack").get_vector(3);
			local frozenLevel = obj.getVar("attack").get_vector(4);
			local frozenTime = obj.getVar("attack").get_vector(5);
			
			print(" frozenRate:" + frozenRate);
			
			sq_SetChangeStatusIntoAttackInfo(atk, 0, ACTIVESTATUS_FREEZE, frozenRate, frozenLevel, frozenTime);
		}		
	}
	else if(passiveState == S_PO_FROZENLAND_MC_1) {
	}
	else if(passiveState == S_PO_FROZENLAND_MC_2) {
		local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
	}
	else if(passiveState == S_PO_FROZENLAND_MC_3) {
	}
	else if(passiveState == S_PO_FROZENLAND_MC_4) {
		local ani = obj.getCustomAnimation(1);
		obj.setCurrentAnimation(ani);
		
		
	}

	if(passiveState != S_PO_FROZENLAND_MC_3)
	{
		local radius100Rate = obj.getVar("radius").get_vector(0);	
		local radiusRate = (radius100Rate.tofloat() / 100.0);	
		local currentAni = sq_GetCurrentAnimation(obj);
		currentAni.setImageRateFromOriginal(radiusRate, radiusRate);	
		local size = (sq_GetAniRealImageSize(currentAni, ENUM_DIRECTION_RIGHT) / 2) + 60;	
		obj.getVar("radius").set_vector(1, size);
	}
	
	//radius100Rate
	

}

function procAppend_po_ATFrozenLandMagicCircle(obj)
{

	if(!obj) return;
	local pChr = obj.getTopCharacter();
	
	if(!pChr) {
		if(obj.isMyControlObject())
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
		return;
	}
	
	local objX = sq_GetXPos(obj);
	local objY = sq_GetYPos(obj);
	local objZ = sq_GetZPos(obj);
	
	local state = obj.getVar("state").get_vector(0);
	local passiveState = state;

	local pAni = sq_GetCurrentAnimation(obj);
	local frmIndex = sq_GetAnimationFrameIndex(pAni);

	if(passiveState == S_PO_FROZENLAND_MC_0) {
		// ���� passivestate������ ��� �нú������Ʈ���� ����ϴ�..
		if(frmIndex >= 2) {
			if(obj.getVar("flag").get_vector(VECTOR_FLAG_0) == 0) {
				if(obj.isMyControlObject()) {
				
					//obj.getVar("attack").push_vector(multiHitTerm); // 
					//obj.getVar("attack").push_vector(multiHitAttackRate); // 
					//obj.getVar("attack").push_vector(expAttackRate); // 
					//obj.getVar("attack").push_vector(frozenRate); // 
					//obj.getVar("attack").push_vector(frozenLevel); // 
					//obj.getVar("attack").push_vector(frozenTime); // 
					
					local radius100Rate = obj.getVar("radius").get_vector(0);
					local radiusRate = (radius100Rate.tofloat() / 100.0);
					local size = (sq_GetAniRealImageSize(pAni, ENUM_DIRECTION_RIGHT) / 2) + 60;
					obj.getVar("radius").set_vector(1, size);

				
					local radiusSize = obj.getVar("radius").get_vector(1);
					
					local spinNum = obj.getVar("radius").get_vector(2);
					local spinTime = obj.getVar("radius").get_vector(3);
					local multiHitTerm = obj.getVar("attack").get_vector(0);
					local multiHitAttackRate = obj.getVar("attack").get_vector(1);
					
					// ũ�δ�Ŭ ������ �߰� �۾� ���ڸ����� �����ִ� �ð��� 0���� ũ�ٸ� ������ ��ȸ�ϴ� state�� �����ؾ� �մϴ�.
					local spinAddTime = obj.getVar("spin").get_vector(0);
					
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(0); //
					sq_BinaryWriteDword(0); //
					sq_BinaryWriteDword(radiusSize); //
					sq_BinaryWriteDword(spinNum); //
					sq_BinaryWriteDword(spinTime); //
					sq_BinaryWriteDword(multiHitTerm); //
					sq_BinaryWriteDword(multiHitAttackRate); //
					sq_BinaryWriteDword(spinAddTime); //
					sq_SendCreatePassiveObjectPacketFromPassivePos( obj, 24248, 0, 0, 0, 0);

					sq_BinaryStartWrite();
					sq_BinaryWriteDword(180); //
					sq_BinaryWriteDword(1); //
					sq_BinaryWriteDword(radiusSize); //
					sq_BinaryWriteDword(spinNum); //
					sq_BinaryWriteDword(spinTime); //
					sq_BinaryWriteDword(multiHitTerm); //
					sq_BinaryWriteDword(multiHitAttackRate); //
					sq_BinaryWriteDword(spinAddTime); //
					sq_SendCreatePassiveObjectPacketFromPassivePos( obj, 24248, 0, 0, 0, 0);
					//obj.getVar().set_vector(1, 1);
				}
				
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 0);

				obj.addSetStatePacket(S_PO_FROZENLAND_MC_2, pIntVec, STATE_PRIORITY_AUTO, false, "");
				obj.getVar("flag").set_vector(VECTOR_FLAG_0, 1);
				
				
			}
			local currentT = sq_GetCurrentTime(pAni);			
			//procParticleCreaterMap(obj, currentT, "PassiveObject/Character/Mage/Particle/ATFrozenLand.ptl", objX, objY + 5, objZ);
			//insertIceFog(obj, 0, 5, 0);
		}
	}
	else if(passiveState == S_PO_FROZENLAND_MC_1) {
	}
	else if(passiveState == S_PO_FROZENLAND_MC_2) {
		// ���� �нú꽺����Ʈ������ ����� ���������� Ȯ���ϰ� �� �������ٸ� �����нú������Ʈ�� �����ؼ� ����������Ʈ�� setstate�մϴ�.
		if(obj.getVar("flag").get_vector(VECTOR_FLAG_0) == 0)
		{
			local pole_passive_obj = sq_GetPassiveObject(obj, 24248);
			if(!pole_passive_obj)
			{
				local parentObj = obj.getParent();
				CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "Appendage/Character/ap_common_suck.nut");
				
				if(obj.isMyControlObject()) {
				
					local radius100Rate = obj.getVar("radius").get_vector(0);
					
					local radiusRate = (radius100Rate.tofloat() / 100.0);					
					local currentAni = sq_GetCurrentAnimation(obj);
					local size = (sq_GetAniRealImageSize(currentAni, ENUM_DIRECTION_RIGHT) / 2) + 60;
					obj.getVar("radius").set_vector(1, size);
				
					local radiusSize = obj.getVar("radius").get_vector(1);
					
					local expAttackRate = obj.getVar("attack").get_vector(2); // 
					
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(radiusSize); //
					sq_BinaryWriteDword(expAttackRate); // ���߰��ݷ�
					sq_BinaryWriteDword(radius100Rate); // ��Ŭ Ȯ�� ����
					
					local cx = obj.getVar("basePos").get_vector(0);
					local cy = obj.getVar("basePos").get_vector(1);
					local cz = obj.getVar("basePos").get_vector(2);
					
					sq_SendCreatePassiveObjectPacket(obj, 24249, 0, 0, 1, 0, obj.getDirection());

					//sq_SendCreatePassiveObjectPacketFromPassivePos( obj, 24249, 0, cx, cy, cz); // ���� �нú������Ʈ
					
					
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);

					obj.addSetStatePacket(S_PO_FROZENLAND_MC_3, pIntVec, STATE_PRIORITY_AUTO, false, "");
				}
				obj.getVar("flag").set_vector(VECTOR_FLAG_0, 1);
			}
			else
			{				
				if(obj.getVar("flag").get_vector(VECTOR_FLAG_2) == 0)
				{
					local poleState = pole_passive_obj.getState();
					
					if(poleState == S_PO_FROZENLAND_POLE_1 || poleState == S_PO_FROZENLAND_POLE_2)
					{
						local poleAni = pole_passive_obj.getCurrentAnimation();

						local frmIndex = sq_GetAnimationFrameIndex(poleAni);
						
						if(frmIndex >= 1) 
						{
							// CNFlashScreen* sq_flashScreen(CNRDObject* obj, int inTime, int stayTime, int outTime, 
							// int maxAlpha, DWORD rbga, int effectType, int layerType)
							sq_SetMyShake(obj,4,200);

							local poleAniFrameNumber = sq_GetAniFrameNumber(poleAni, 0);
							
							local poleAniDelayTime = poleAni.getDelaySum(0, poleAniFrameNumber - 1);
							local poleAniLoopTime = poleAni.getDelaySum(3, poleAniFrameNumber - 1);

							local spinNum = obj.getVar("radius").get_vector(2);
							local spinTime = obj.getVar("radius").get_vector(3);														
							
							local totalSpinPoleDelaySum = ((spinNum - 1) * poleAniLoopTime) + poleAniDelayTime - 80;	
							
							
							totalSpinPoleDelaySum = totalSpinPoleDelaySum + spinTime;
							
							// ũ�δ�Ŭ ������ �߰� �۾� ���ڸ����� �����ִ� �ð��� 0���� ũ�ٸ� ������ ��ȸ�ϴ� state�� �����ؾ� �մϴ�.
							totalSpinPoleDelaySum = totalSpinPoleDelaySum + obj.getVar("spin").get_vector(0);
							
							//print( " spinNum:" + spinNum + " poleAniDelayTime:" + poleAniDelayTime + " poleAniLoopTime:" + poleAniLoopTime + " spinTime:" + spinTime + " totalSpinPoleDelaySum:" + totalSpinPoleDelaySum);
							
							if(obj.isMyControlObject())
							{
								local fScreen = sq_flashScreen(obj,0,totalSpinPoleDelaySum,0,140, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
							}
							
							obj.getVar("flag").set_vector(VECTOR_FLAG_2, 1);
						}
					}
				}
				
				
				if(!obj.getVar("flag").get_vector(VECTOR_FLAG_3))
				{
					local poleState = pole_passive_obj.getState();
					if(poleState == S_PO_FROZENLAND_POLE_2)
					{
						print(" appendage suck");
						local parentObj = obj.getParent();

						// ������̴� ������� ����		
						local appendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, obj, SKILL_FROZENLAND, false, "Appendage/Character/ap_common_suck.nut", false);

						local suckVel = 200;						
						local radiusSize = obj.getVar("radius").get_vector(1);
						local range = radiusSize * 2;
						
						if(appendage)
						{
							appendage.sq_SetValidTime(2000);
							// ���⼭ append �۾�		
							CNSquirrelAppendage.sq_Append(appendage, parentObj, obj);
							
							local auraAppendage = appendage.sq_getAuraMaster("frozenAura");
							//
							if(!auraAppendage)
								auraAppendage = appendage.sq_AddAuraMaster("frozenAura",parentObj, obj, 1200, 18, 5, 0);
							
							auraAppendage.setAttractionInfo(suckVel, suckVel, range, 100);
						}
						
						//
						obj.getVar("flag").set_vector(VECTOR_FLAG_3, 1);
						
						obj.sq_PlaySound("ICEEARTH_SPIN");
					}
				}
			}
		}
	}
	else if(passiveState == S_PO_FROZENLAND_MC_3) {
		// ���� �нú꽺����Ʈ������ ���� �нú��� �ִϸ��̼� �������� Ȯ���ؼ� ������� �մϴ�.
		if(obj.getVar("flag").get_vector(VECTOR_FLAG_0) == 0)
		{
			local exp_passive_obj = sq_GetPassiveObject(obj, 24249);

			if(exp_passive_obj)
			{
				if(exp_passive_obj.getState() == S_PO_FROZENLAND_1)
				{
					local exp_ani = sq_GetCurrentAnimation(exp_passive_obj);
					local exp_frm_index = sq_GetAnimationFrameIndex(exp_ani);

					if(exp_frm_index >= 4)
					{
						if(obj.isMyControlObject())
						{
							local pIntVec = sq_GetGlobalIntVector();
							sq_IntVectorClear(pIntVec);
							sq_IntVectorPush(pIntVec, 0);

							obj.addSetStatePacket(S_PO_FROZENLAND_MC_4, pIntVec, STATE_PRIORITY_AUTO, false, "");
						}

						obj.getVar("flag").set_vector(VECTOR_FLAG_0, 1);
					}
				}
			}
		}
	}
	
	local t = obj.getVar("flag").get_timer_vector(0);
	

		
	if(passiveState == S_PO_FROZENLAND_MC_2)
	{
		if(obj.getVar("flag").get_vector(VECTOR_FLAG_2) == 1)
		{
			local currentT = sq_GetCurrentTime(pAni);
			
			if(t.isOnEvent(currentT) == true)
			{
				local radius = obj.getVar("radius").get_vector(1);	
				//
				//local offset = 20;
			
				local index = obj.getVar("icefog").get_vector(0);
				
				local size = 3;
				local iKeyList =[];
				iKeyList.resize(size);
				
				iKeyList[0] = ((radius * 2) / 3);
				iKeyList[1] = -(radius * 2) / 3;
				iKeyList[2] = 0;
				
				print(" iKeyList[0]:" + iKeyList[0]);
				print(" iKeyList[1]:" + iKeyList[1]);
				
				insertIceFog(obj, iKeyList[0], 2, 40);
				insertIceFog(obj, iKeyList[1], 2, 40);
				insertIceFog(obj, iKeyList[2], 2, 40);
				
				print(" insertIceFog:" + iKeyList[index]);
				
				index = index + 1;
				
				if(index > 2)
				{
					index = 0;
				}
				index = obj.getVar("icefog").set_vector(0, index);
			}
		}
	
	}
}


function onDestroyObject_po_ATFrozenLandMagicCircle(obj, object)
{

	if(!obj) return;

}

function onKeyFrameFlag_po_ATFrozenLandMagicCircle(obj, flagIndex)
{

}

function onEndCurrentAni_po_ATFrozenLandMagicCircle(obj)
{

	if(!obj) return;
	
	if(!obj.isMyControlObject()) return;
	
	
	local state = obj.getVar("state").get_vector(0);
	
	local passiveState = state;

	if(passiveState == S_PO_FROZENLAND_MC_0) {
		//local pIntVec = sq_GetGlobalIntVector();
		//
		//sq_IntVectorClear(pIntVec);
		//sq_IntVectorPush(pIntVec, 0);
		//
		//obj.addSetStatePacket(S_PO_FROZENLAND_MC_1, pIntVec, STATE_PRIORITY_AUTO, false, "");
	}
	else if(passiveState == S_PO_FROZENLAND_MC_1) {
	}
	else if(passiveState == S_PO_FROZENLAND_MC_2) {
	}
	else if(passiveState == S_PO_FROZENLAND_MC_4) {
		if(obj.isMyControlObject())
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}
