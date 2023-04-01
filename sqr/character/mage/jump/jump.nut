//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
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
