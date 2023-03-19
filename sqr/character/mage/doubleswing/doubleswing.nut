
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





function onProc_mage_MageDoubleSwing(obj)
{
 if(!obj) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut")) 
 {
 local substate = obj.getSkillSubState();
 switch(substate)
 {
 case 0: 
 if(obj.isCurrentCutomAniIndex(65))
 obj.setCurrentAnimation(setCurrentAnimation_avatar_eff(obj, "DoubleSwing1", true));
 break;
 case 1: 
 if(obj.isCurrentCutomAniIndex(66))
 obj.setCurrentAnimation(setCurrentAnimation_avatar_eff(obj, "DoubleSwing2", true));
 break;
 }
 }
} ;


