
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
 
function onEndCurrentAni_po_qq506807329new_mage_24372(A4ZZlVhqV6)
{
 if(!A4ZZlVhqV6) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local aTXgCO5MIXMm9XRC2 = A4ZZlVhqV6.getVar("skill").get_vector(0);
 switch(aTXgCO5MIXMm9XRC2)
 {
 case 245: 
 if(!A4ZZlVhqV6.isMyControlObject()) return;
 if(A4ZZlVhqV6.getVar().get_obj_vector_size() <= 0) 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 else
 A4ZZlVhqV6.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 247: 
 if(A4ZZlVhqV6.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 249: 
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(A4ZZlVhqV6.isMyControlObject() && PfQkLZrEBwQpBgT4o == 10)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 250: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10)
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else if(PfQkLZrEBwQpBgT4o == 11)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 251: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 13)
 A4ZZlVhqV6.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else if(PfQkLZrEBwQpBgT4o == 14)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 252: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0);
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 1:
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10:
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 }
 break;
 case 253: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10) 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 131: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getState(); 
 if(PfQkLZrEBwQpBgT4o != 13)
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 133: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10) 
 {
 local xethX82VAryurBt1LeE2sx = A4ZZlVhqV6.sq_FindFirstTarget(-400, 400, 400, 400); 
 if(xethX82VAryurBt1LeE2sx) 
 {
 local ggquBgodiTGucejLfl = sq_GetGlobalIntVector();
 sq_IntVectorClear(ggquBgodiTGucejLfl);
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getXPos()); 
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getYPos()); 
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getZPos() + sq_GetObjectHeight(xethX82VAryurBt1LeE2sx) / 2); 
 A4ZZlVhqV6.addSetStatePacket(11, ggquBgodiTGucejLfl, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 A4ZZlVhqV6.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 134: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 132: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0);
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10:
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 135: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10: 
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 136: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 2: 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 139: 
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0); 
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 1: 
 if(PfQkLZrEBwQpBgT4o != 13) 
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 3: 
 if(PfQkLZrEBwQpBgT4o != 12) 
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 }
} ;
 
