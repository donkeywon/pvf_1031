function onAfterSetState_Blache(obj, state, datas, isResetTimer)
{
    local substate = obj.sq_GetVectorData(datas, 0);
    if (substate == 1)
    {
        obj.endSkillCoolTime(82);
        obj.endSkillCoolTime(84);
        obj.endSkillCoolTime(18);
        obj.endSkillCoolTime(25);
        obj.endSkillCoolTime(36);
        obj.endSkillCoolTime(41);
        obj.endSkillCoolTime(75);
        obj.endSkillCoolTime(96);
    }
}