//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_mage_summonramos_atk")
 appendage.sq_AddFunctionName("onStart" , "onStart_appendage_mage_summonramos_atk")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_mage_summonramos_atk")
 appendage.sq_AddFunctionName("onSourceKeyFrameFlag" , "onSourceKeyFrameFlag_appendage_mage_summonramos_atk")
}
function proc_appendage_mage_summonramos_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getSource();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getParent();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2)
{
 appendage.setValid(false);
 return;
 
}
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = sq_GetCNRDObjectToActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getAttackIndex();
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 < 11 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == 15)
 
{
 appendage.setValid(false);
 return;
 
}
 if((appendage.getVar("atkTime").get_timer_vector(0)).isOnEvent(appendage.getTimer().Get()) == true)
 sq_SendHitObjectPacket(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , 0 , 0 , sq_GetObjectHeight(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) / 2);
}
function onSourceKeyFrameFlag_appendage_mage_summonramos_atk(appendage , flagIndex)
{
 if(!appendage || flagIndex != 114) return;
 appendage.setValid(false);
 return;
}
function onStart_appendage_mage_summonramos_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
{
 appendage.setValid(false);
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , "monster/character/mage/ramos/animation/meal/2dotdamage_loop.ani" , ENUM_DRAWLAYER_NORMAL , true);
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , 2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getZPos() + sq_GetObjectHeight(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) / 2);
 sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 appendage.getVar("aniobj").clear_obj_vector();
 appendage.getVar("aniobj").push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
}
function onEnd_appendage_mage_summonramos_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getVar("aniobj").get_obj_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.setCurrentAnimation(sq_CreateAnimation("" , "monster/character/mage/ramos/animation/meal/2dotdamage_end.ani"));
}
