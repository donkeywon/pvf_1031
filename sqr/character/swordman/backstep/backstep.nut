
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_swordman_backstep(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt, ZDQLDKNcdcrwAH_F2Dd, KLSE5PT5pu)
{
 if(!JM8H4uzkC2sc8UKfL7) return;
 local _RxS8qXkVJS2rEYWZj2fu1 = JM8H4uzkC2sc8UKfL7.sq_GetVectorData(ZDQLDKNcdcrwAH_F2Dd, 0); 
 if(_RxS8qXkVJS2rEYWZj2fu1 == 49) 
 {
 if(JM8H4uzkC2sc8UKfL7.sq_IsMyControlObject())
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JM8H4uzkC2sc8UKfL7, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 JM8H4uzkC2sc8UKfL7.sq_StartWrite();
 JM8H4uzkC2sc8UKfL7.sq_WriteDword(248); 
 JM8H4uzkC2sc8UKfL7.sq_WriteDword(1); 
 JM8H4uzkC2sc8UKfL7.sq_WriteDword(JM8H4uzkC2sc8UKfL7.sq_GetBonusRateWithPassive(248, CSDeDFugOHJaOjHj1gt, 0, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(JM8H4uzkC2sc8UKfL7, 24370, 0, JM8H4uzkC2sc8UKfL7.getXPos(), JM8H4uzkC2sc8UKfL7.getYPos() - 1, 0); 
 }
 }
 }
} ;
