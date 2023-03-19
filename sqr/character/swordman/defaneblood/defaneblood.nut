//????
function checkCommandEnable_defaneblood(obj)
{

	return true;
}

function checkExecutableSkill_defaneblood(obj)  
{

	local isUseSkill = obj.sq_IsUseSkill( SKILL_DEFANEBLOOD );

	if (isUseSkill) 
    {

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_DEFANEBLOOD, false, "character/swordman/defaneblood/ap_defaneblood.nut", true);				 

        local level = sq_GetSkillLevel(obj, SKILL_DEFANEBLOOD);		
        local maxHp = sq_GetLevelData(obj, SKILL_DEFANEBLOOD, 0, level);
        local time = obj.sq_GetIntData(SKILL_DEFANEBLOOD, 0);
        //sq_GetLevelData(obj, SKILL_DEFANEBLOOD, 1, level);
        local cd = sq_GetLevelData(obj, SKILL_DEFANEBLOOD, 2, level);
//        local maxH = sq_GetLevelData(obj, SKILL_DEFANEBLOOD, 1, level);

        masterAppendage.getVar("hpMax").clear_vector();
        masterAppendage.getVar("hpMax").push_vector( maxHp );
        masterAppendage.sq_SetValidTime( time );

		masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_DEFANEBLOOD, level );
		CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, obj, obj, SKILL_DEFANEBLOOD, true);
		masterAppendage.setEnableIsBuff(true);
		masterAppendage.setBuffIconImage(96);

	}
}