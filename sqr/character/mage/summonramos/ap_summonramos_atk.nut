//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
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
