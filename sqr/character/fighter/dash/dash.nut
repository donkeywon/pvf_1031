//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function onAfterSetState_FighterDashAttack(obj , state , datas , isResetTimer)
{
 if (!obj) return;
 obj.getVar("info").clear_vector();
 if (CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 
{
 obj.getVar("info").push_vector(1);
 obj.getVar("info").push_vector(1);
 obj.getVar("info").push_vector(obj.getXPos());
 obj.getVar("info").push_vector(155);
 obj.getVar("info").push_vector(obj.getZPos());
 obj.getVar("info").push_vector(10);
 obj.getVar("info").push_vector(0);
 obj.getVar("info").push_vector(1);
 obj.getVar("time").clear_ct_vector();
 obj.getVar("time").push_ct_vector();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.getVar("time").get_ct_vector(0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Reset();
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Start(10000 , 0);
 sq_CreateDrawOnlyObject(obj , "character/fighter/effect/animation/poisonsnake/dash_dust.ani" , ENUM_DRAWLAYER_NORMAL , true);
 obj.sq_SetCurrentAttackBonusRate(obj.sq_GetBonusRateWithPassive(SKILL_POISONSNAKE , STATE_POISONSNAKE , 7 , 1.0));
 
}
}
function onProc_FighterDashAttack(obj)
{
 if(!obj) return;
 if(!obj.isMyControlObject()) return;
 if(obj.getVar("info").get_vector(0) == 1)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.getCurrentAnimation();
 if(obj.getVar("info").get_vector(1) > 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getDelaySum(false);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = obj.getVar("info").get_vector(2);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = obj.getVar("info").get_vector(3);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 = sq_GetAccel(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , true);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 , obj.getDirection() , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);
 if(obj.isMovablePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 , obj.getYPos()))
 sq_setCurrentAxisPos(obj , 0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);
 else
 obj.getVar("info").set_vector(1 , 0);
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = obj.getVar("time").get_ct_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.Get();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 = obj.getVar("info").get_vector(4);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 = obj.getVar("info").get_vector(5);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 = sq_GetUniformVelocity(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getDelaySum(obj.getVar("info").get_vector(6) , obj.getVar("info").get_vector(7)));
 sq_setCurrentAxisPos(obj , 2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 + Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);
 
}
 
}
}
function onKeyFrameFlag_FighterDashAttack(obj , flagIndex)
{
 if(!obj) return false;
 if(obj.getVar("info").get_vector(0) == 1)
 
{
 if(flagIndex == 3)
 
{
 obj.getVar("info").set_vector(4 , obj.getZPos());
 obj.getVar("info").set_vector(5 , -10);
 obj.getVar("info").set_vector(6 , 2);
 obj.getVar("info").set_vector(7 , 3);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = obj.getVar("time").get_ct_vector(0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Reset();
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Start(10000 , 0);
 
}
else if(flagIndex == 2)
 
{
 sq_CreateDrawOnlyObject(obj , "character/fighter/effect/animation/poisonsnake/dashbody_effect.ani" , ENUM_DRAWLAYER_NORMAL , true);
 
}
 else if(flagIndex == 1)
 
{
 sq_SetMyShake(obj , 1 , 100);
 sq_flashScreen(obj , 0 , 0 , 200 , 70 , sq_RGB(0 , 0 , 0) , GRAPHICEFFECT_NONE , ENUM_DRAWLAYER_BOTTOM);
 
}
 
}
 return true;
}
function onEndState_FighterDashAttack(obj , new_state)
{
 if(!obj) return;
 if(new_state != 15)
 
{
 obj.getVar("info").clear_vector();
 obj.getVar("time").clear_ct_vector();
 
}
}
