
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
 
function onEndCurrentAni_po_qq506807329new_atmage_24377(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 local ZEJlR93Xfq3u0L_E3MG4q = wFIP1mA9lyqJj.getVar("skill").get_vector(0);
 local JmYGXVlARzl = wFIP1mA9lyqJj.getVar("subType").get_vector(0); 
 local PpBEN997hbYDnZ9Kee1 = wFIP1mA9lyqJj.getVar("state").get_vector(0); 
 switch(ZEJlR93Xfq3u0L_E3MG4q)
 {
 case 243: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 12)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1+1, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 244: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 12)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1 + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 245: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 == 12)
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 246: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 == 10)
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 247: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 248: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 14)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1 + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 }
} ;

