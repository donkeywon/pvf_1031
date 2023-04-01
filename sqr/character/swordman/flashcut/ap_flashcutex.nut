
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_flashcutex")
 appendage.sq_AddFunctionName("onEnd" , "onEnd_appendage_flashcutex")
}
function proc_appendage_flashcutex(appendage)
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
 
 if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.isMyControlObject() && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getState() != STATE_DIE && !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.isDead() || STATE_DIE)
 
{
 sq_IntVectorClear(sq_GetGlobalIntVector());
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_IntVectorPush(sq_GetGlobalIntVector() , 0);
 sq_AddSetStatePacketActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 , STATE_HOLD , sq_GetGlobalIntVector() , STATE_PRIORITY_FORCE);
 
}
 
}
}
function onEnd_appendage_flashcutex(appendage)
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
