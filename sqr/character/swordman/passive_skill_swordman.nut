
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function ProcPassiveSkill_Swordman(obj, skill_index, skill_level)
{

 switch(skill_index)
 {
 case 248:
 if(skill_level > 0)
 {
 local KLSE5PT5pu = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/appendage/ap_stateoflimit.nut", true);
 if(KLSE5PT5pu)
 {
 }
 }
 break;

 case SKILL_GHOSTSOUL_RELEASE:
		if(skill_level > 0 )
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/attack/ap_ghost.nut", true);
		if(appendage)
			{
		//Display Icon
		local skill_level = sq_GetSkillLevel(obj, SKILL_GHOSTSOUL_RELEASE);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_GHOSTSOUL_RELEASE, skill_level);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_GHOSTSOUL_RELEASE, true);
			}
		}
	break;



case SKILL_SWORDMAN_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/appendage/ap_swordman_comminterrupt.nut", true);
	}
	break;
case SKILL_LEISHEN:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/swordman/leishen/ap_leishen.nut", true);
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
} ;

