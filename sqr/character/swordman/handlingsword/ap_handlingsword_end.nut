//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_handlingsword_end")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_handlingsword_end")
 appendage.sq_AddFunctionName("onChangeState" , "onChangeState_appendage_handlingsword_end")
}
function onChangeState_appendage_handlingsword_end(appendage , oldState , newState , datas)
{
 
 if(!appendage) return;
 
 appendage.getVar("state").clear_vector();
 appendage.getVar("state").push_vector(1);
 appendage.getVar("time").clear_ct_vector();
 appendage.getVar("time").push_ct_vector();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getVar("time").get_ct_vector(0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Reset();
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.Start(10000 , 0);
}
function proc_appendage_handlingsword_end(appendage)
{
 if(!appendage || !appendage.isValid()) 
{
 return; 
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() != STATE_HOLD)
 
{
 
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.isMyControlObject() && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() != STATE_DIE && !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.isDead())
 
{
 sq_IntVectorClear(sq_GetGlobalIntVector());
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_AddSetStatePacketActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , STATE_HOLD , sq_GetGlobalIntVector() , STATE_PRIORITY_FORCE);
 
}
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.getVar("state").get_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == 0)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = appendage.getTimer().Get();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = 800;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 = 0; 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = 50;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = sq_GetAccel(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , true);
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getState() == PASSIVEOBJ_SUB_STATE_2)
 appendage.setState(1 , sq_GetGlobalIntVector());
 
}
else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == 1)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = appendage.getVar("time").get_ct_vector(0).Get();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = 800;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 = 50; 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = 0;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = sq_GetAccel(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , true);
 sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , 2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 == 0)
 
{
 appendage.getVar("state").set_vector(0 , 2);
 appendage.getVar("time").clear_ct_vector();
 
}
 
}
}
function onEnd_appendage_handlingsword_end(appendage)
{
 if(!appendage) 
{
 return;
 
}
 
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1) 
{
 appendage.setValid(false);
 return;
 
}
 
 
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() == STATE_HOLD) 
{
 appendage.setValid(false);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.sendStateOnlyPacket(STATE_STAND);
 
}
}
