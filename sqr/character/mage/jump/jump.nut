//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
function onAfterSetState_MageJump(obj , state , datas , isResetTimer)
{
 if (!obj) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/mage/avatar/ap_avatar.nut"))
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.sq_GetVectorData(datas , 0);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = obj.sq_GetVectorData(datas , 1);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 == 0 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 == 1)
 
{
 obj.getVar("jump").clear_vector();
 obj.getVar("jump").push_vector(obj.getZPos());
 
}
else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 == 1 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 == 1)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = obj.getCurrentAnimation();
 sq_Rewind(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.setCurrentFrameWithChildLayer(8);
 
}
 
}
}
function onProc_MageJump(obj)
{
 if(!obj) return;
 if(!obj.isMyControlObject()) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/mage/avatar/ap_avatar.nut") && obj.getVar("jump").size_vector() > 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.getVar("jump").get_vector(0);
 if(obj.getZPos() < Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = obj.getCurrentAnimation();
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setCurrentFrameWithChildLayer(8);
 obj.getVar("jump").clear_vector();
 
}
else
 obj.getVar("jump").set_vector(0 , obj.getZPos());
 
}
}
