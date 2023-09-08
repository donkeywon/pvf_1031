function Common_procAppend(obj) {
	if (!obj) return;

	procAppend_MonsterBlood(obj); // ?�物血??
}

function procAppend_Swordman(obj) {
	if (!obj) return;
	Common_procAppend(obj);

	local Myobj = obj.sq_IsMyControlObject();
	local state = obj.getState();
	if (Myobj) switch (state) {
	case 0:
	case 8:
	case 14:
		local skill = sq_GetSkill(obj, 62);
		if (skill) {

			if (!skill.isInCoolTime()) {
				obj.setSkillCommandEnable(62, true);
				if (obj.sq_IsEnterSkill(62) != -1) {
					local IsUse = obj.sq_IsUseSkill(62);
					if (IsUse) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(0);
						obj.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true);
						return;
					}
				}
			}
		}
		break;
	}
	return;
};

function procAppend_Fighter(obj) {
	if (!obj) return;

	Common_procAppend(obj);
	
	if (sq_getGrowType(obj) == 1)
	{
		nenGuardFollow_Nencharge(obj);//心之念意
		enableNenchargeSkillsCharge_Proc(obj);//心之念意
	}

	if (sq_getGrowType(obj) == 3) {
		//?�取?�前?�?�編??
		local index = obj.getCurrentSkillIndex();

		//裂地飛沙?�怪控??
		if (index == 106) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_groundkickhold.nut")) {
				CNSquirrelAppendage.sq_AppendAppendage(obj, obj, index, false, "character/fighter/appendage/ap_groundkickhold.nut", true);
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_groundkickhold.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/fighter/appendage/ap_groundkickhold.nut");
			}
		}

		//街頭風暴移動
		if (index == 77) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_junkspin.nut")) {
				CNSquirrelAppendage.sq_AppendAppendage(obj, obj, index, false, "character/fighter/appendage/ap_junkspin.nut", true);
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_junkspin.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/fighter/appendage/ap_junkspin.nut");
			}
		}
	}
}

function procAppend_ATFighter(obj) {
	if (!obj) return;

	Common_procAppend(obj);

	procAppend_Test(obj); // 自动填充投掷

	if ( sq_getGrowType(obj) == 3) {
		//?�取?�前?�?�編??
		local index = obj.getCurrentSkillIndex();

		//血?�風?�移??
		if (index == 77) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_junkspin.nut")) {
				CNSquirrelAppendage.sq_AppendAppendage(obj, obj, index, false, "character/fighter/appendage/ap_junkspin.nut", true);
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_junkspin.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/fighter/appendage/ap_junkspin.nut");
			}
		}
	}
}

function procAppend_Gunner(obj) {
	if (!obj) return;

	Common_procAppend(obj);
}

function procAppend_ATGunner(obj) {
	if (!obj) return;

	Common_procAppend(obj);

	procAppend_NitroMotor(obj);
}

function procAppend_Mage(obj) {
	if (!obj) return;

	if (obj.isDead()) {
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/mage/avatar/ap_avatar_icon.nut");
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/mage/avatar/ap_avatar.nut");
	}

	Common_procAppend(obj);
}

function procAppend_ATMage(obj) {
	if (!obj) return;

	Common_procAppend(obj);
}

function procAppend_Priest(obj) {
	if (!obj) return;

	Common_procAppend(obj);
}

function procAppend_Thief(obj) {
	if (!obj) return;

	Common_procAppend(obj);
}

function procAppend_DemonicSwordman(obj) {
	if (!obj) return;

	Common_procAppend(obj);
}