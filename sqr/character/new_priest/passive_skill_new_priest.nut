function ProcPassiveSkill_Priest(obj, skill_index, skill_level)
{
 switch(skill_index)
 {

case SKILL_PRIEST_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/new_priest/appendage/ap_priest_comminterrupt.nut", true);
	}
 break;

case SKILL_BENYUAN:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
	}
	break;
 }
 return true;
};
