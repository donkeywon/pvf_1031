//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�2000�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart" , "onStart_appendage_hellbenter")
 appendage.sq_AddFunctionName("proc" , "proc_appendage_hellbenter")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_hellbenter")
}
function onStart_appendage_hellbenter(appendage)
{
 if (!appendage) return;
 appendage.getVar("aniobj").clear_obj_vector();
 appendage.getVar("isAtk").setBool(0 , false);
}
function proc_appendage_hellbenter(appendage)
{
 if (!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = sq_GetCNRDObjectToCollisionObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getState();
 if (appendage.getVar("isAtk").getBool(0) == false)
 if (sq_GetYPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3) != 0)
 
{
 sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterstarta_01.ani" , ENUM_DRAWLAYER_NORMAL , true);
 appendage.getVar("isAtk").setBool(0 , true);
 
}
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 == 4)
 
{
 if (appendage.getVar("aniobj").get_obj_vector_size() <= 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterloopfloor_06.ani" , ENUM_DRAWLAYER_BOTTOM , false);
 appendage.getVar("aniobj").push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);
 sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1).sq_AddSetStatePacket(STATE_STAND , STATE_PRIORITY_USER , false);
 
}
 else
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = appendage.getVar("aniobj").get_obj_vector(0);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.getCurrentAnimation();
 if (sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7))
 sq_Rewind(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getCurrentAnimation();
 if (sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8))
 sq_Rewind(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8);
 
}
 else if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 == 5)
 
{
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getZPos() != 1000)
 
{
 RemoveAllAni(appendage);
 sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterendfloor_07.ani" , ENUM_DRAWLAYER_BOTTOM , true);
 sq_CreateDrawOnlyObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterend_00.ani" , ENUM_DRAWLAYER_NORMAL , true);
 
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , 2 , 1000);
 
}
 
}
}
function onEnd_appendage_hellbenter(appendage)
{
 if (!appendage) return;
 RemoveAllAni(appendage);
}
