//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
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
