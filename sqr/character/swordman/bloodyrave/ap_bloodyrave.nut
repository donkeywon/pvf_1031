//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_bloodyrave")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_bloodyrave")
}
function proc_appendage_bloodyrave(appendage)
{
 if(!appendage || !appendage.isValid()) 
{
 return; 
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 if(appendage.getVar("bloodyrave").get_obj_vector_size() <= 0 && appendage.getVar("obj").size_vector() <= 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getMyPassiveObjectCount(20041);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 > 0)
 
{
 for(local i = 0;i < Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2;i++)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getMyPassiveObject(20041 , i);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 && sq_GetCurrentFrameIndex(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3) == 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = sq_GetGroup(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = sq_GetUniqueId(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);
 appendage.getVar("obj").clear_vector();
 appendage.getVar("obj").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);
 appendage.getVar("obj").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);
 appendage.getVar("bloodyrave").clear_obj_vector();
 appendage.getVar("bloodyrave").push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);
 return;
 
}
 
}
 
}
 
}
else
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.getVar("bloodyrave").get_obj_vector(0);
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3)
 
{
 appendage.setValid(false);
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.sq_GetState();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getCurrentAnimation();
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 != 43 && sq_GetAnimationFrameIndex(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8) == 0)
 
{
 appendage.setValid(false);
 
}
else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 != 43)
 appendage.setValid(false);
 
}
}
function onEnd_appendage_bloodyrave(appendage)
{
 if (!appendage) 
{
 return;
 
}
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getMyPassiveObjectCount(20041);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 > 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.getVar("obj").get_vector(0);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = appendage.getVar("obj").get_vector(1);
 for(local i = 0;i < Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2;i++)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getMyPassiveObject(20041 , i);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 = sq_GetGroup(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = sq_GetUniqueId(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 == Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 && sq_GetCurrentFrameIndex(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5) == 0)
 
{
 sq_SendDestroyPacketPassiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);
 return;
 
}
 
}
 
}
}
