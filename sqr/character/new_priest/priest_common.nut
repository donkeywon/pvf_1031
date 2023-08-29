function setEnableCancelSkill_Priest(obj, isEnable) {
	if (!obj) return false;
	if (!obj.isMyControlObject()) return false;
	if (!isEnable) return true;

	obj.setSkillCommandEnable(237, isEnable);
	obj.setSkillCommandEnable(238, isEnable);
	obj.setSkillCommandEnable(239, isEnable);
	obj.setSkillCommandEnable(240, isEnable);

	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut") || CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) obj.setSkillCommandEnable(241, isEnable);

	if (!obj.isCarryWeapon()) {
		obj.setSkillCommandEnable(242, isEnable);
		obj.setSkillCommandEnable(243, isEnable);
		obj.setSkillCommandEnable(244, isEnable);
		obj.setSkillCommandEnable(245, isEnable);
	}
	obj.setSkillCommandEnable(246, isEnable);
	obj.setSkillCommandEnable(247, isEnable);
	obj.setSkillCommandEnable(248, isEnable);
	obj.setSkillCommandEnable(249, isEnable);
	obj.setSkillCommandEnable(250, isEnable);
	obj.setSkillCommandEnable(251, isEnable);
	obj.setSkillCommandEnable(132, isEnable);
	obj.setSkillCommandEnable(135, isEnable);
	obj.setSkillCommandEnable(136, isEnable);
	obj.setSkillCommandEnable(137, isEnable);
	obj.setSkillCommandEnable(138, isEnable);

	if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) obj.setSkillCommandEnable(139, isEnable);
	return true;
}

function getAttackCancelStartFrameSize_Priest(obj) {
	local FrameSize = obj.sq_GetAttackCancelStartFrameSize();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) FrameSize = 2;
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) FrameSize = 2;
	return FrameSize;
}

function getAttackCancelStartFrame_Priest(obj, Index) {
	if (!obj) return null;
	local CancelFrame = 0;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") || CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
		switch (Index) {
		case 0:
			CancelFrame = 7;
			break;
		case 1:
			CancelFrame = 5;
			break;
		}
	}
	else CancelFrame = obj.sq_GetAttackCancelStartFrame(Index);
	return CancelFrame;
};

function getAttackAni_Priest(obj, index) {
	if (!obj) return null;
	local AttackAni = obj.sq_GetAttackAni(index);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) AttackAni = obj.sq_GetCustomAni(189 + index);
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) AttackAni = obj.sq_GetCustomAni(256 + index);

	return AttackAni;
}

function getDefaultAttackInfo_Priest(obj, Index) {
	if (!obj) return null;
	local AttackInfo = obj.sq_GetDefaultAttackInfo(Index);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") || CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) AttackInfo = sq_GetCustomAttackInfo(obj, 115 + Index);
	return AttackInfo;
};

function getJumpAttackAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 192);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 255);
		else Ani = obj.sq_GetJumpAttackAni();
	}
	return Ani;
};

function getJumpAttackInfo_Priest(obj) {
	if (!obj) return null;
	local AttackInfo = obj.sq_GetJumpAttackInfo();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") || CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) AttackInfo = sq_GetCustomAttackInfo(obj, 118);
	return AttackInfo;
};

function getDashAttackInfo_Priest(obj) {
	if (!obj) return null;
	local AttackInfo = obj.sq_GetDashAttackInfo();
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") || CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) AttackInfo = sq_GetCustomAttackInfo(obj, 119);
	return AttackInfo;
};

function getDashAttackAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 193);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 286);
		else Ani = obj.sq_GetDashAttackAni();
	}
	return Ani;
};

function getStayAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 169);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 262);
		else Ani = obj.sq_GetStayAni();
	}
	return Ani;
};

function getMoveAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 170);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 263);
		else Ani = obj.sq_GetMoveAni();
	}
	return Ani;
};

function getSitAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 171);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 264);
		else Ani = obj.sq_GetSitAni();
	}
	return Ani;
};

function getDamageAni_Priest(obj, Index) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		switch (Index) {
		case 0:
			Ani = sq_GetCustomAni(obj, 172);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 173);
			break;
		}
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 265 + Index);
		else Ani = obj.sq_GetDamageAni(Index);
	}
	return Ani;
};

function getDownAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 174);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 267);
		else Ani = obj.sq_GetDownAni();
	}
	return Ani;
};

function getOverturnAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 175);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 268);
		else Ani = obj.sq_GetOverturnAni();
	}
	return Ani;
};

function getJumpAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 176);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 269);
		else Ani = obj.sq_GetJumpAni();
	}
	return Ani;
};

function getRestAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 177);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 270);
		else Ani = obj.sq_GetRestAni();
	}
	return Ani;
};

function getThrowChargeAni_Priest(obj, Index) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		switch (Index) {
		case 0:
			Ani = sq_GetCustomAni(obj, 178);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 179);
			break;
		case 2:
			Ani = sq_GetCustomAni(obj, 180);
			break;
		case 3:
			Ani = sq_GetCustomAni(obj, 181);
			break;
		}
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
			switch (Index) {
			case 0:
				Ani = sq_GetCustomAni(obj, 271);
				break;
			case 1:
				Ani = sq_GetCustomAni(obj, 272);
				break;
			case 2:
				Ani = sq_GetCustomAni(obj, 273);
				break;
			case 3:
				Ani = sq_GetCustomAni(obj, 274);
				break;
			}
		}
		else Ani = obj.sq_GetThrowChargeAni(Index);
	}
	return Ani;
};

function getThrowShootAni_Priest(obj, Index) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		switch (Index) {
		case 0:
			Ani = sq_GetCustomAni(obj, 182);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 183);
			break;
		case 2:
			Ani = sq_GetCustomAni(obj, 184);
			break;
		case 3:
			Ani = sq_GetCustomAni(obj, 185);
			break;
		}
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) {
			switch (Index) {
			case 0:
				Ani = sq_GetCustomAni(obj, 275);
				break;
			case 1:
				Ani = sq_GetCustomAni(obj, 276);
				break;
			case 2:
				Ani = sq_GetCustomAni(obj, 277);
				break;
			case 3:
				Ani = sq_GetCustomAni(obj, 278);
				break;
			}
		}
		else Ani = obj.sq_GetThrowShootAni(Index);
	}
	return Ani;
};

function getDashAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 186);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 279);
		else Ani = obj.sq_GetDashAni();
	}
	return Ani;
};

function getGetItemAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 187);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 280);
		else Ani = obj.sq_GetGetItemAni();
	}
	return Ani;
};

function getBuffAni_Priest(obj) {
	if (!obj) return null;
	local Ani = null;
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		Ani = sq_GetCustomAni(obj, 188);
	}
	else {
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut")) Ani = sq_GetCustomAni(obj, 281);
		else Ani = obj.sq_GetBuffAni();
	}
	return Ani;
};