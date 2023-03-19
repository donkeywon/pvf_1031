//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
//嚴禁倒賣狗，此nut技能為眾籌所屬。只買眾籌，另外需要參加者可以聯繫我
//作者：劍聖60 QQ506807329   收徒NUT編程寫技能 手把手教學2000一位。另外1000學費基礎到大神，常用修改 例如：抽獎機 魔盒 消耗品 裝備 副本 城鎮 NPC NPK 怪物 寵物 act obj  UI教程全都有，不會可以遠程。
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_handlingsword")
 appendage.sq_AddFunctionName("onAttackParent" , "onAttackParent_appendage_handlingsword")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_handlingsword")
 appendage.sq_AddFunctionName("onStart" , "onStart_appendage_handlingsword")
 appendage.sq_AddFunctionName("onStartMap" , "onStartMap_appendage_handlingsword")
}
function onStartMap_appendage_handlingsword(appendage)
{
 if(!appendage)
 return;
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1||!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2)
 return;
 
 createsAniObjHandlingsword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getVar("sword").get_vector(0);
 createsLoopAniHandlingsword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , true);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getVar("sword").set_vector(0 , 5);
}
function onStart_appendage_handlingsword(appendage)
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getSource();
 if (!appendage||!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1||!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2) 
{
 return;
 
}
 appendage.getVar("atkcount").clear_vector();
 appendage.getVar("atkcount").push_vector(0);
}
function onAttackParent_appendage_handlingsword(appendage , realAttacker , damager , boundingBox , isStuck)
{
 if(!appendage || !damager ||isStuck) 
{
 return;
 
}
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getAppendageInfo().getValidTime();
 if (appendage.getTimer().Get() < Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 -Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 / 13)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_GetCNRDObjectToSQRCharacter(realAttacker);
 if(damager
 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.isEnemy(damager)
 && damager.isObjectType(OBJECTTYPE_ACTIVE))
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = appendage.getSource();
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("aniobj").get_obj_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4.getCurrentAnimation() == null)return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("sword").get_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 <= 0) return;
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 = appendage.getVar("atkcount").get_vector(0);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 <= 0) return;
 appendage.getVar("atkcount").set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 -1);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 = sq_GetGroup(damager);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 = sq_GetUniqueId(damager);
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 = Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar().get_vector(0);
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(SKILL_HANDLINGSWORD); 
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9); 
 sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7); 
 sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8); 
 sq_SendCreatePassiveObjectPacket(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 , 24370 , 0 , 0 , 0 , 0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getDirection());
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.getVar("sword").set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 -1);
 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 = sq_GetGlobalIntVector();
 sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);
 sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 , 0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 , STATE_PRIORITY_AUTO , false , "");
 
}
 
}
}
function onEnd_appendage_handlingsword(appendage)
{
 if (!appendage) 
{
 return;
 
}
 
 EndSetAppendageHandlingsword(appendage);
}
function proc_appendage_handlingsword(appendage)
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
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.isDead())
 EndSetAppendageHandlingsword(appendage);
}
function EndSetAppendageHandlingsword(appendage)
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getSource();
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() != PASSIVEOBJ_SUB_STATE_1)
 
{
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_GetGlobalIntVector();
 sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);
 sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , 0);
 Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 , STATE_PRIORITY_AUTO , false , "");
 
}
 if(appendage)
 appendage.setValid(false);
}
