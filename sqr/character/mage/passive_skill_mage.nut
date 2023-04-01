
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function ProcPassiveSkill_Mage(obj, skill_index, skill_level)
{
 if(!obj) return;
 if(skill_level <= 0) return;
 switch(skill_index)
 {
 case 248:
 local urq71HC_i5Ic2au = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/dragondance/ap_dragondance_proc_skill.nut", true);
 break;


case SKILL_MAGE_COMMINTERRUPT:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/appendage/ap_mage_comminterrupt.nut", true);
	}
 break;

case SKILL_BENYUAN:
	if(skill_level > 0)
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
	}
	break;
 }
} ;

