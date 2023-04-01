
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_atfighter_flamelegs")
 appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_flamelegs")
}

function onStart_appendage_atfighter_flamelegs(Lmb1IBm0hXY6DPN)
{
 if(!Lmb1IBm0hXY6DPN) return;
 Lmb1IBm0hXY6DPN.getVar().setBool(0,false);
 Lmb1IBm0hXY6DPN.getVar().setBool(1,false);
} ;

function proc_appendage_atfighter_flamelegs(Lmb1IBm0hXY6DPN)
{
 if (!Lmb1IBm0hXY6DPN) return;
 local YpaXlNk63NMAawV1szMUwYl = Lmb1IBm0hXY6DPN.getParent();
 if (!YpaXlNk63NMAawV1szMUwYl || Lmb1IBm0hXY6DPN.getVar().getBool(0) != false || !sq_IsMyControlObject(YpaXlNk63NMAawV1szMUwYl)) return;
 switch (YpaXlNk63NMAawV1szMUwYl.getState())
 {
 case 0:
 case 8:
 case 14:
 YpaXlNk63NMAawV1szMUwYl = sq_GetCNRDObjectToSQRCharacter(YpaXlNk63NMAawV1szMUwYl);
 if (YpaXlNk63NMAawV1szMUwYl)
 {
 YpaXlNk63NMAawV1szMUwYl.setSkillCommandEnable(41, true);
 if (YpaXlNk63NMAawV1szMUwYl.sq_IsEnterSkill(41) != -1)
 {
 Lmb1IBm0hXY6DPN.getVar().setBool(0, true);
 YpaXlNk63NMAawV1szMUwYl.sq_IntVectClear();
 YpaXlNk63NMAawV1szMUwYl.sq_IntVectPush(0);
 YpaXlNk63NMAawV1szMUwYl.sq_AddSetStatePacket(62, STATE_PRIORITY_USER, true);
 }
 }
 break;
 }
} ;

