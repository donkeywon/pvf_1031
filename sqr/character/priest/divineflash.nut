function checkExecutableSkill_DivineFlash(obj) {
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(112);

	if (isUse) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(112);
		obj.sq_IntVectPush(500);
		obj.sq_IntVectPush(500);
		obj.sq_IntVectPush(2);
		obj.sq_IntVectPush(4);
		obj.sq_IntVectPush(4);
		obj.sq_IntVectPush(1000);
		obj.sq_IntVectPush(1000);
		/*		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut"))
			obj.sq_IntVectPush(-1);
		else*/
		obj.sq_IntVectPush(obj.sq_GetIntData(112, 2));
		obj.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DivineFlash(obj) {
	if (!obj) return false;

	return true;

}

function Set_DivineFlash(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_PlaySound("PR_DIVINEFLASH");
	local object = null;
	local ThrowIndex = obj.getThrowIndex();

	local dsgudsaduhuasoi = obj.sq_GetVectorData(datas, 1);
	object = sq_GetObjectByObjectId(obj, dsgudsaduhuasoi);
	local skillLevel = obj.sq_GetSkillLevel(112);
	local DefaultC = 100;

	local bonus = obj.sq_GetBonusRateWithPassive(112, 8, 0, 1.0);
	local addRate = obj.sq_GetIntData(112, 4)/100.0;
	if(!isSameObject(obj, object))
		bonus = (bonus*addRate).tointeger();
	
	if(!object)
	{
		object = obj;
		bonus = obj.sq_GetBonusRateWithPassive(112, 7, 0, 1.0);
		DefaultC = (DefaultC * obj.sq_GetIntData(112, 6) / 100.0).tointeger();
		if (ThrowIndex == 45 || ThrowIndex == 24) {
			bonus = obj.sq_GetBonusRateWithPassive(112, 7, 2, 1.0);
			DefaultC = 100;
		}
	}
	local SQRch = sq_GetCNRDObjectToSQRCharacter(object);
	if (SQRch) {
		local X = SQRch.getXPos();
		local Y = SQRch.getYPos();
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(8);
		obj.sq_WriteDword(DefaultC);
		obj.sq_WriteDword(bonus);
		sq_SendCreatePassiveObjectPacketPos(obj, 24374, 0, X, Y, 0);
		local Path1 = "passiveobject/new/priest/animation/divineflash/DivineFlash_SingleB_Beam.ani";
		createAnimationImageRatePooledObject(obj, Path1, true, DefaultC / 100.0, DefaultC / 100.0, X, Y, 0);
		local Path2 = "passiveobject/new/priest/animation/divineflash/DivineFlash_SingleA_Whirl.ani";
		createAnimationImageRatePooledObject(obj, Path2, true, DefaultC/100.0, DefaultC/100.0, X, Y, 0);
		if(ThrowIndex == 45 || ThrowIndex == 24)
			return;
		local Path = "appendage/character/ap_divineflash.nut";
		local DefaultA = sq_GetLevelData(obj, 112, 6, skillLevel);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(SQRch, obj, 112, false, Path, false);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 112, skillLevel);
		appendage.sq_SetValidTime(DefaultA);
		appendage.setEnableIsBuff(true);
		CNSquirrelAppendage.sq_Append(appendage, SQRch, obj, true);
		appendage.setBuffIconImage(75);
	}
}