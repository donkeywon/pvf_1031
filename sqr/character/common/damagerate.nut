function getCurrentModuleDamageRate(obj) {
    if (!obj) return 1.0;

    setEmptySlotNumber(obj);
    local rate = getSkillDamageRateIncrease(obj);

    rate = rate + getIncreaseDamageRateByEmptySlotNumber(obj);

    return rate.tofloat();
}

function getSkillDamageRateIncrease(obj) {
    local rate = 1.0;
    if (sq_getJob(obj) == ENUM_CHARACTERJOB_SWORDMAN) {
        rate = getCurrentModuleDamageRate_Swordman(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_FIGHTER) {
        rate = getCurrentModuleDamageRate_ATFighter(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_FIGHTER) {
        rate = getCurrentModuleDamageRate_Fighter(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_GUNNER) {
        rate = getCurrentModuleDamageRate_ATGunner(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_GUNNER) {
        rate = getCurrentModuleDamageRate_Gunner(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_MAGE) {
        rate = getCurrentModuleDamageRate_ATMage(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_MAGE) {
        rate = getCurrentModuleDamageRate_Mage(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_PRIEST) {
        rate = getCurrentModuleDamageRate_Priest(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_THIEF) {
        rate = getCurrentModuleDamageRate_Thief(obj);
    } else if (sq_getJob(obj) == ENUM_CHARACTERJOB_DEMONIC_SWORDMAN) {
        rate = getCurrentModuleDamageRate_DemonicSwordman(obj);
    }
    return rate;
}

function getAttackBonusRate_benyuan(obj, skillLevel) {
    return sq_GetLevelData(obj, SKILL_BENYUAN, 50, skillLevel);
}

///////////////////////////////////////////////////////////////////////////////////////////

function getCurrentModuleDamageRate_Swordman(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATFighter(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    //風雷嘯
	if (sq_GetSkillLevel(obj, 237) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 237, 8, obj.sq_GetSkillLevel(237)) / 10) / 100;
	}
	//傲天之怒
	else if (sq_GetSkillLevel(obj, 253) > 0)
	{
		local baseRate = sq_GetLevelData(obj, 253, 0, sq_GetSkillLevel(obj, 253));
		local championRate = sq_GetLevelData(obj, 253, 1, sq_GetSkillLevel(obj, 253));
		local bossRate = sq_GetLevelData(obj, 253, 2, sq_GetSkillLevel(obj, 253));
		if (WHOISNEXT == 0)
			return (baseRate.tofloat() + 100.0) / 100.0;
		if (WHOISNEXT == 1)
			return (baseRate.tofloat() + championRate.tofloat() + 100.0) / 100.0;
		if (WHOISNEXT == 2)
			return (baseRate.tofloat() + bossRate.tofloat() + 100.0) / 100.0;
	}
	//詭詐之道
	else if (sq_GetSkillLevel(obj, 252) > 0)
	{
		local addRate = 0;
		local pSkillIndex = obj.getCurrentSkillIndex();
		switch (pSkillIndex)
		{
		case 13:
			addRate = sq_GetLevelData(obj, 252, 1, sq_GetSkillLevel(obj, 252));
			break;
		case 3:
			addRate = sq_GetLevelData(obj, 252, 2, sq_GetSkillLevel(obj, 252));
			break;
		case 14:
			addRate = sq_GetLevelData(obj, 252, 3, sq_GetSkillLevel(obj, 252));
			break;
		case 106:
			addRate = sq_GetLevelData(obj, 252, 4, sq_GetSkillLevel(obj, 252));
			break;
		case 76:
			addRate = sq_GetLevelData(obj, 252, 5, sq_GetSkillLevel(obj, 252));
			break;
		case 77:
			addRate = sq_GetLevelData(obj, 252, 6, sq_GetSkillLevel(obj, 252));
			break;
		case 105:
			addRate = sq_GetLevelData(obj, 252, 7, sq_GetSkillLevel(obj, 252));
			break;
		case 123:
			addRate = sq_GetLevelData(obj, 252, 8, sq_GetSkillLevel(obj, 252));
			break;
		}
		return (addRate.tofloat() + 100.0) / 100.0;
	}
	//烈火支配
	else if (sq_GetSkillLevel(obj, 251) > 0)
	{
		local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_atfirepowerreleasebuff.nut");
		if (isAppend)
		{
			local addRate = sq_GetLevelData(obj, 251, 0, sq_GetSkillLevel(obj, 251));
			return (addRate.tofloat() + 100.0) / 100.0;
		}
	}

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Fighter(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATGunner(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Gunner(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATMage(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Mage(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Priest(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    //小錘子
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/holymace/ap_holymace.nut"))
    {
        rate = rate * (100 + sq_GetLevelData(obj, 253, 1,
        obj.sq_GetSkillLevel(253) ) / 10) / 100;
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Thief(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_DemonicSwordman(obj) {
    local rate = 100;

    local skillLevel = obj.sq_GetSkillLevel(SKILL_BENYUAN);
    if (skillLevel > 0) {
        rate = rate + getAttackBonusRate_benyuan(obj, skillLevel)
    }

    return rate.tofloat() / 100.0;
}