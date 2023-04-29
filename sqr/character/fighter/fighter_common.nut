//占폶占폯占싯썸く占폗占쏙옙nut占쌨?О占쏙옙占퐓占쏙옙占쌥좧占퐑占폫占쏙옙占퐓占폗占퐐占?占쌥춏占싼?占싱쩳占폟占퐌척占쏙옙
//占?占싱좬占폚占퐐60 QQ506807329   占쏙옙占?NUT占퐏占?占퐂占쌨?옙 占쏙옙占쏙옙棘占?500占?占쏙옙C占퐐占?1000占실턔占쏙옙짝占쏙옙j占쏙옙占폗占?占싸?㏆옙 占쌀쫜占폞占쏙옙占쏙옙占?占?占쏙옙 占쏙옙占쌈? 占싯놂옙 占싣ο옙 占쏙옙占쏙옙 NPC NPK 占실わ옙 占폻占쏙옙 act obj  UI占싻?占쏙옙占쏙옙占쏙옙占폗占쏙옙占?占퐄占폟占쏙옙占?占폚

function fighter_skillbuff(obj, state, datas, isResetTimer) {
	local skillIndex = obj.getCurrentSkillIndex();
	local skl = sq_GetSkill(obj, skillIndex);
	if (!skl) {
		return;
	}
	local skillLevel = sq_GetSkillLevel(obj, skillIndex);
	if (state == 13) {
		if (skillIndex == SKILL_FIGHTER_LIGHTENCHANTWEAPON) {
			local time = sq_GetLevelData(obj, skillIndex, 1, skillLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lightenchantweapon/ap_lightenchantweapon.nut", false);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 243, true);

			appendage = obj.GetSquirrelAppendage("character/fighter/lightenchantweapon/ap_lightenchantweapon.nut");

			if (appendage) {
				appendage.sq_SetValidTime(time);
				local ATTACK_RATE = sq_GetLevelData(obj, skillIndex, 0, skillLevel);
				local change_appendage = appendage.sq_getChangeStatus("lightenchantweapon");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ATTACK_RATE - 100, APID_COMMON);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, ATTACK_RATE.tofloat() - 100);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, ATTACK_RATE.tofloat() - 100);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, ATTACK_RATE.tofloat() - 100);
				}
			}
		} else if (skillIndex == SKILL_FIGHTER_LIGHTTOLERANCEUP) {
			local time = sq_GetLevelData(obj, skillIndex, 0, skillLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, "character/fighter/lighttoleranceup/ap_lighttoleranceup.nut", false);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 244, true);

			appendage = obj.GetSquirrelAppendage("character/fighter/lighttoleranceup/ap_lighttoleranceup.nut");

			if (appendage) {
				appendage.sq_SetValidTime(time);
				local LIGHT_ATTACK = sq_GetLevelData(obj, skillIndex, 3, skillLevel);
				local change_appendage = appendage.sq_getChangeStatus("lighttoleranceup");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK, APID_COMMON);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, LIGHT_ATTACK.tofloat());
				}
			}
		}
	}
}

function setEnableCancelSkill_Fighter(Eu2sIHKskIpQpfSgd, a2RdJFMnQsYHvMbnHt) {
	if (!Eu2sIHKskIpQpfSgd) return false;

	if (!Eu2sIHKskIpQpfSgd.isMyControlObject()) return false;
	if (!a2RdJFMnQsYHvMbnHt) return true;
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(225, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(226, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(227, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(228, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(229, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(230, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(231, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(232, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(233, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(234, a2RdJFMnQsYHvMbnHt);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(Eu2sIHKskIpQpfSgd, "character/fighter/poisonsnake/ap_poisonsnake.nut") == false) Eu2sIHKskIpQpfSgd.setSkillCommandEnable(235, a2RdJFMnQsYHvMbnHt);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(Eu2sIHKskIpQpfSgd, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) Eu2sIHKskIpQpfSgd.setSkillCommandEnable(236, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(237, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(238, a2RdJFMnQsYHvMbnHt);
	Eu2sIHKskIpQpfSgd.setSkillCommandEnable(239, a2RdJFMnQsYHvMbnHt);
	return true;
};

function getAttackCancelStartFrameSize_Fighter(FEiaZWB1pfOemFzlGreiKJx) {
	local ZK_zWOKX5ecWfHRV6w3kcf = FEiaZWB1pfOemFzlGreiKJx.sq_GetAttackCancelStartFrameSize();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(FEiaZWB1pfOemFzlGreiKJx, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) ZK_zWOKX5ecWfHRV6w3kcf = 4;
	return ZK_zWOKX5ecWfHRV6w3kcf;
};

function getAttackCancelStartFrame_Fighter(vFInKSM_e9eeZN, pPTghDb5k9ECXxE3) {
	if (!vFInKSM_e9eeZN) return null;
	local mFeKimOrnaLLWJS = 0;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(vFInKSM_e9eeZN, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) {
		switch (pPTghDb5k9ECXxE3) {
		case 0:
			mFeKimOrnaLLWJS = 3;
			break;
		case 1:
			mFeKimOrnaLLWJS = 3;
			break;
		case 2:
			mFeKimOrnaLLWJS = 3;
			break;
		case 3:
			mFeKimOrnaLLWJS = 3;
			break;
		}
	}
	else mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetAttackCancelStartFrame(pPTghDb5k9ECXxE3);
	return mFeKimOrnaLLWJS;
};

function getAttackAni_Fighter(vFInKSM_e9eeZN, pPTghDb5k9ECXxE3) {
	if (!vFInKSM_e9eeZN) return null;
	local mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetAttackAni(pPTghDb5k9ECXxE3);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(vFInKSM_e9eeZN, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) mFeKimOrnaLLWJS = vFInKSM_e9eeZN.sq_GetCustomAni(130 + pPTghDb5k9ECXxE3);
	return mFeKimOrnaLLWJS;
};

function getDashAttackAni_Fighter(LiXaNxcKArX) {
	if (!LiXaNxcKArX) return null;
	local AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetDashAttackAni();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(LiXaNxcKArX, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) AxJx13egl4aCFce2n = sq_GetCustomAni(LiXaNxcKArX, 135);
	return AxJx13egl4aCFce2n;
};

function getJumpAttackAni_Fighter(LiXaNxcKArX) {
	if (!LiXaNxcKArX) return null;
	local AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetJumpAttackAni();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(LiXaNxcKArX, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) AxJx13egl4aCFce2n = LiXaNxcKArX.sq_GetCustomAni(136);
	return AxJx13egl4aCFce2n;
};

function getDefaultAttackInfo_Fighter(ElpnBTbJT_hv0UHrV, cvfDCz5u7ll3tGuEb) {
	if (!ElpnBTbJT_hv0UHrV) return null;
	local cLp0q4frXfyFVwYdS = ElpnBTbJT_hv0UHrV.sq_GetDefaultAttackInfo(cvfDCz5u7ll3tGuEb);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(ElpnBTbJT_hv0UHrV, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) {
		cLp0q4frXfyFVwYdS = sq_GetCustomAttackInfo(ElpnBTbJT_hv0UHrV, 72 + cvfDCz5u7ll3tGuEb);
		sq_SetCurrentAttackBonusRate(cLp0q4frXfyFVwYdS, ElpnBTbJT_hv0UHrV.sq_GetBonusRateWithPassive(235, STATE_ATTACK, 2 + cvfDCz5u7ll3tGuEb, 1.0));
	}
	return cLp0q4frXfyFVwYdS;
};

function getDashAttackInfo_Fighter(sTPDVHmHbFXvsZHBLCWToz) {
	if (!sTPDVHmHbFXvsZHBLCWToz) return null;
	local ef11ZaNkyYetFpEho = sTPDVHmHbFXvsZHBLCWToz.sq_GetDashAttackInfo();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) {
		ef11ZaNkyYetFpEho = sq_GetCustomAttackInfo(sTPDVHmHbFXvsZHBLCWToz, 77);
		sq_SetCurrentAttackBonusRate(ef11ZaNkyYetFpEho, sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(235, STATE_DASH_ATTACK, 7, 1.0));
	}
	return ef11ZaNkyYetFpEho;
};

function getJumpAttackInfo_Fighter(sTPDVHmHbFXvsZHBLCWToz) {
	if (!sTPDVHmHbFXvsZHBLCWToz) return null;
	local ef11ZaNkyYetFpEho = sTPDVHmHbFXvsZHBLCWToz.sq_GetJumpAttackInfo();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true) {
		ef11ZaNkyYetFpEho = sq_GetCustomAttackInfo(sTPDVHmHbFXvsZHBLCWToz, 78);
		sq_SetCurrentAttackBonusRate(ef11ZaNkyYetFpEho, sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(235, STATE_JUMP_ATTACK, 8, 1.0));
	}
	return ef11ZaNkyYetFpEho;
};