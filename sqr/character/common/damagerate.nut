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