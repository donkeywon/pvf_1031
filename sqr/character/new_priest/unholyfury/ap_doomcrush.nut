//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_priest_doomcrush")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_priest_doomcrush")
}
function proc_appendage_priest_doomcrush(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2).getSkillSubState();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getState() != STATE_PRIEST_DOOMCRUSH || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == 2) 
{
 appendage.setValid(false);
 return;
 
}
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 0 , sq_GetDistancePos(sq_GetXPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) , sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) , 125));
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 1 , sq_GetYPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2));
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 2 , sq_GetZPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) + 20);
}
function onEnd_appendage_priest_doomcrush(appendage)
{
 if(!appendage) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 sq_SimpleMoveToNearMovablePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 200);
 
 sq_IntVectorClear(sq_GetGlobalIntVector());
 sq_IntVectorPush(sq_GetGlobalIntVector() , sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1));
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_IntVectorPush(sq_GetGlobalIntVector() , 1);
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_IntVectorPush(sq_GetGlobalIntVector() , 450);
 sq_AddSetStatePacketActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , STATE_DOWN , sq_GetGlobalIntVector() , STATE_PRIORITY_FORCE);
}
 
