//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_fighter_poisonexplosion")
}
function proc_appendage_fighter_poisonexplosion(appendage)
{
 if (!appendage)
 return; 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getState() == PASSIVEOBJ_SUB_STATE_1) 
{
 appendage.setValid(false);
 return;
 
}
 if(appendage.getVar().getBool(0) != true)
 
{
 appendage.getVar().setBool(0 , true);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = sq_GetCNRDObjectToCollisionObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 sq_sendSetActiveStatusPacket(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , ACTIVESTATUS_SLOW , 100.0 , 120 , false , 1300 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar().get_vector(7) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar().get_vector(6));
 sq_EffectLayerAppendage(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , sq_RGB(0 , 0 , 0) , 254 , 1300 , 0 , 1300);
 
}
}
