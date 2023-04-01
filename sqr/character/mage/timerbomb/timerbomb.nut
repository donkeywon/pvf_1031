
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onProc_mage_MageTimerBomb(obj)
{
 if(!obj) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut")) 
 {
 if(obj.isCurrentCutomAniIndex(67))
 obj.setCurrentAnimation(setCurrentAnimation_avatar_eff(obj, "TimerBomb", true));
 }
} ;
