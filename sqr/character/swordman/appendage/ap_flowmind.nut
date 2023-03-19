//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart" , "onStart_appendage_flowmind")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_flowmind")
}
function onStart_appendage_flowmind(appendage)
{
 if (!appendage) 
{
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
 sq_SetCustomDamageType(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , true , 1);
}
function onEnd_appendage_flowmind(appendage)
{
 if (!appendage) 
{
 return;
 
}
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)
 sq_SetCustomDamageType(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , false , 1);
}
