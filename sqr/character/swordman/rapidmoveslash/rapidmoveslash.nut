
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_swordman_rapidmoveslash(DEJsBtPxNF0X, GSGPg05Xalq9A4JY4YLD_3, uHKRED8ED4EEfH, N6Oph9Yer9XJX88)
{
 if(!DEJsBtPxNF0X) return;
 local JPxICbgz7eKg = DEJsBtPxNF0X.sq_GetVectorData(uHKRED8ED4EEfH, 0); 
 if(JPxICbgz7eKg == 1) 
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(DEJsBtPxNF0X, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 if(DEJsBtPxNF0X.sq_IsMyControlObject())
 {
 DEJsBtPxNF0X.sq_StartWrite();
 DEJsBtPxNF0X.sq_WriteDword(248); 
 DEJsBtPxNF0X.sq_WriteDword(3); 
 DEJsBtPxNF0X.sq_WriteDword(DEJsBtPxNF0X.sq_GetBonusRateWithPassive(248, GSGPg05Xalq9A4JY4YLD_3, 3, 1.0)); 
 DEJsBtPxNF0X.sq_WriteDword(DEJsBtPxNF0X.sq_GetDelaySum()); 
 DEJsBtPxNF0X.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 }
 }
} ;

