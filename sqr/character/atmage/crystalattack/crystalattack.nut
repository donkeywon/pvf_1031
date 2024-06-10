getroottable()["CrystalAttackCreatePos"] <- {};
getroottable()["CrystalAttackCreatePos"] = [[0,0],[-10,15],[10,-15],  // ó�� ������ ���� ������
											[-5,8],[5,-8],[-15,23],[15,-23],
											[0,0],[-10,15],[10,-15],[-15,30],[15,-30]];
																						
function checkExecutableSkill_CrystalAttack(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_CRYSTALATTACK);
	if(b_useskill) {
		obj.sq_AddSetStatePacket(STATE_CRYSTALATTACK , STATE_PRIORITY_USER, false);
		return true;
	}	
	return false;

}


function onTimeEvent_CrystalAttack(obj, timeEventIndex, timeEventCount)
{	
	if(!obj)
		return true;

	if(!obj.isMyControlObject())
		return true;
		
	local maxCreateCount = ::CrystalAttackCreatePos.len();
	local createCount = obj.sq_GetIntData(SKILL_CRYSTALATTACK, 1);
	local currentIndex = timeEventCount-1;
	if(timeEventCount > createCount)
		return true;
	

	local dmg = obj.sq_GetBonusRateWithPassive(SKILL_CRYSTALATTACK , STATE_CRYSTALATTACK, 0, 1.0);
	local attackSpeedRate = obj.sq_GetIntData(SKILL_CRYSTALATTACK, 0);

	local pos		= ::CrystalAttackCreatePos[currentIndex];			
	local xDistance = pos[0];
	local angle		= pos[1];
	
	obj.sq_StartWrite();
	obj.sq_WriteDword(dmg);		// ������
	obj.sq_WriteFloat(angle.tofloat());	// ����
	obj.sq_WriteWord(attackSpeedRate); 
	obj.sq_WriteWord(currentIndex);  // ���� �ε���
	
	obj.sq_SendCreatePassiveObjectPacket(24221, 0, 120 + xDistance, 1, 0);
	
	return false;
}

function onProc_CrystalAttack(obj)
{
	if (!obj) return;	
	
	local var = obj.getVar();	
	if(obj.sq_GetCurrentFrameIndex() > 1 && var.getBool(1) == false) // �߻������ ���ٸ�
	{
		var.setBool(1,true); // �߻� ����.			
		
		local maxCreateCount = ::CrystalAttackCreatePos.len();
		obj.setTimeEvent(0,10,maxCreateCount,false);
		
	}
}
	
function checkCommandEnable_CrystalAttack(obj)
{
	if(!obj) return false;
	if(sq_GetSkillLevel(obj, SKILL_ELEMENTAL_BOMBING) > 0){
		return true;
	}
	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		return obj.sq_IsCommandEnable(SKILL_CRYSTALATTACK);
	}
	
	return true;
}

function onSetState_CrystalAttack(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_CRYSTALATTACK);	
	
	local attackSpeedRate = obj.sq_GetIntData(SKILL_CRYSTALATTACK, 0);	
	if(attackSpeedRate != 100) {
		obj.sq_SetAnimationSpeedRate(obj.sq_GetCurrentAni(),attackSpeedRate.tofloat());
	}
	
	obj.sq_PlaySound("MW_CRYSTALATK");
	local var = obj.getVar();
	var.setBool(1,false); // ũ����Ż ������ �ߵ� �ƴ��� ����. ���� �ʱ�ȭ.
	
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);	
	addElementalChain_ATMage(obj, ENUM_ELEMENT_WATER);
}	


function prepareDraw_CrystalAttack(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

}

function onEndCurrentAni_CrystalAttack(obj)
{
	if(!obj) return;
	
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
//
//function onKeyFrameFlag_CrystalAttack(obj, flagIndex)
//{
	//if(!obj) return true;
	//
	//
	//local currentCreateCount = ::CrystalAttackCreatePos.len();
	//
	//local angle = 0.0;
	//local xDistance = 0;
	//if(flagIndex == 2) {
		//local rand = sq_getRandom(10,20);
		//angle = sq_ToRadian(rand.tofloat());
		//xDistance = -10;
	//}
	//else if(flagIndex == 3) {
		//local rand = sq_getRandom(10,20) * -1;
		//angle = sq_ToRadian(rand.tofloat());
		//xDistance = 10;
	//}
		//
	//local dmg = obj.sq_GetBonusRateWithPassive(SKILL_CRYSTALATTACK , STATE_CRYSTALATTACK, 0, 1.0);
	//local attackSpeedRate = obj.sq_GetIntData(SKILL_CRYSTALATTACK, 0);
	//
	//if(obj.isMyControlObject())
	//{
		//obj.sq_StartWrite();
		//obj.sq_WriteDword(dmg);		// ������
		//obj.sq_WriteFloat(angle);	// ����
		//obj.sq_WriteWord(attackSpeedRate); 
		//obj.sq_WriteBool(false);  // Ư�� ��ų ����
		//
		//obj.sq_SendCreatePassiveObjectPacket(24221, 0, 120 + xDistance, 1, 0);
		//
		//
		//// Ư�� ��ų�� ����
		//// ũ����Ż ���� ��ȭ�� �����ٸ� ũ����Ż�� 4�� �� �����˴ϴ�.
		//local skillLevel = sq_GetSkillLevel(obj, SKILL_CRYSTALATTACK_EX);
		//if (flagIndex == 3 && skillLevel > 0)
		//{
			//local angles = [0.5, 0.15, -0.20, -0.40];
			//local xDistances = [-130, -110, -90, -70];
			//
			//// ���ʿ� 4���� �迭�Ǿ� ������ �ǵ��� ��
			//for (local i = 0; i < 4; i++)
			//{
			//
				//obj.sq_StartWrite();
				//obj.sq_WriteDword(dmg);		// ������
				//obj.sq_WriteFloat(angles[i]);	// ����
				//obj.sq_WriteWord(attackSpeedRate); 		
				//obj.sq_WriteBool(true);	 // Ư�� ��ų ����
				//obj.sq_SendCreatePassiveObjectPacket(24221, 0, 220 + xDistances[i], 1, 0);
			//}
		//}
	//}
//
	//return true;
//
//}
//