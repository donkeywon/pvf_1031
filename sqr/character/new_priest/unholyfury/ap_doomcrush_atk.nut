//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart" , "onStart_appendage_priest_doomcrush_atk")
 appendage.sq_AddFunctionName("proc" , "proc_appendage_priest_doomcrush_atk")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_priest_doomcrush_atk")
}
function onStart_appendage_priest_doomcrush_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_GetCNRDObjectToCollisionObject(appendage.getSource());
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) 
{
 appendage.setValid(false);
 return;
 
}
 
 appendage.sq_var.clear_timer_vector();
 appendage.sq_var.push_timer_vector();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.sq_var.get_timer_vector(0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.setParameter(220 , -1);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.resetInstant(0);
 appendage.sq_var.setInt(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getVar().get_vector(0));
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , "character/priest/effect/animation/doomcrush/doomcrush_f_01attack.ani" , ENUM_DRAWLAYER_NORMAL , true);
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 , 2 , sq_GetZPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) + 15);
 sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);
 appendage.sq_var.clear_obj_vector();
 appendage.sq_var.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);
}
function proc_appendage_priest_doomcrush_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) 
{
 appendage.setValid(false);
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.sq_var.get_timer_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3)
 
{
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.isOnEvent(appendage.getTimer().Get()) == true)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = appendage.sq_var.getInt(0);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = sq_GetCNRDObjectToCollisionObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2).getMyPassiveObject(24374 , 0);
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.isDead() && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() != STATE_DIE && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 > 0 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5)
 
{
 sq_SendHitObjectPacket(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 0 , 0 , sq_GetObjectHeight(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) / 2);
 appendage.sq_var.setInt(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 -1);
 
}
else
 
{
 appendage.setValid(false);
 return;
 
}
 
}
 
}
}
function onEnd_appendage_priest_doomcrush_atk(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.sq_var.get_obj_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.setValid(false);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = sq_GetCNRDObjectToCollisionObject(appendage.getSource());
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3) 
{
 appendage.setValid(false);
 return;
 
}
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("atkobj").is_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2))
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("atkobj").remove_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
}
