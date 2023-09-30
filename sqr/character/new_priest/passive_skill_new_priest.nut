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
 case SKILL_SHI_SHEN_ZHI_LI:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/priest/appendage/ap_shishenzhili.nut", true);
	}
	break;
case SKILL_ZHENG_YI_QIAN_NENG:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/priest/appendage/ap_zhengyichengjie.nut", true);
	}
	break;
 return true;
};
