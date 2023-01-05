increase_damage_rate <- 5 //%
enable_shoucuo_id <- 10001
EMPTY_SLOT_NUMBER <- 0

function setEmptySlotNumber(obj) {
    local id = obj.sq_GetIntData(169, 1);
    if (id == enable_shoucuo_id) {
        local skillmgr = obj.getSkillManager();
        local emptySlotNum = 0;
        for (local i = 0; i < 6; ++i) {
            local skill = skillmgr.getSkill(i);
            if (!skill)
                emptySlotNum += 1;
        }
        for (local i = 198; i < 204; ++i) {
            local skill = skillmgr.getSkill(i);
            if (!skill)
                emptySlotNum += 1;
        }
        EMPTY_SLOT_NUMBER = emptySlotNum;
    } else
        EMPTY_SLOT_NUMBER = 0;
}

function getIncreaseDamageRateByEmptySlotNumber(obj) {
    local sum = increase_damage_rate * EMPTY_SLOT_NUMBER;
    local addRate = sum.tofloat() / 100.0;
    //local newRate = addRate + 1.0;
    //return newRate;
    return addRate;
}