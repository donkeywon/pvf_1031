
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
 
function onEndCurrentAni_po_qq506807329new_atfighter_24375(dkVrZM7aZsEDVrpY5taBFQ)
{
 if(!dkVrZM7aZsEDVrpY5taBFQ) return;
 local l2ptfUCns0I3g7IarGUYL = dkVrZM7aZsEDVrpY5taBFQ.getVar("skill").get_vector(0);
 switch(l2ptfUCns0I3g7IarGUYL)
 {
    case 117:
        if (obj.getState() == 10)
            obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
        break;
    case 67:
        if (obj.getState() == 10)
            obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
        else if (obj.getState() == 11)
            obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
        else if (obj.getState() == 12)
        {
            local pCount = obj.getVar("bonus").get_vector(3);
            if (pCount > 0)
            {
                obj.getVar("bonus").set_vector(3, pCount - 1);
                obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
            }
            else
                obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
        }
        else if (obj.getState() == 13)
        {
            local Path = "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcel_end_15.ani";
            createAnimationPooledEx(obj, Path, 1, false, obj.getXPos(), obj.getYPos(), obj.getZPos(), false);
            sq_SendDestroyPacketPassiveObject(obj);
        }
        break;
    case 90:
        sq_SendDestroyPacketPassiveObject(obj);
        break;
    case 15:
        local Path = "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcem_loop_12.ani";
        createAnimationPooledEx(obj, Path, 1, false, obj.getXPos(), obj.getYPos(), obj.getZPos(), false);
        sq_SendDestroyPacketPassiveObject(obj);
        break;
    case 16:
        if (obj.getState() == 11)
        {
            obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
        }
        break;
 case 220: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 223: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 226: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 227: 
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 local Gt9CnhX696VZE = sq_GetCustomAttackInfo(dkVrZM7aZsEDVrpY5taBFQ, 3); 
 sq_SetCurrentAttackBonusRate(Gt9CnhX696VZE, dkVrZM7aZsEDVrpY5taBFQ.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(dkVrZM7aZsEDVrpY5taBFQ, Gt9CnhX696VZE); 
 local Cp_DhpdPRjPbbSz31U = 10; 
 local nOwFzf7sZ8B = 200; 
 dkVrZM7aZsEDVrpY5taBFQ.getVar().push_timer_vector();
 local HNWUkSZmxC2WPw0Z8T54 = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_timer_vector(1);
 HNWUkSZmxC2WPw0Z8T54.setParameter(nOwFzf7sZ8B, Cp_DhpdPRjPbbSz31U); 
 HNWUkSZmxC2WPw0Z8T54.resetInstant(0); 
 HNWUkSZmxC2WPw0Z8T54.setEventOnStart(true); 
 break;
 case 2:
 local J9LObvgoNzQUU = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 switch(J9LObvgoNzQUU)
 {
 case 10:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 }
 break;
 case 228: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 229: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 local J9LObvgoNzQUU = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 if(J9LObvgoNzQUU != 13)
 dkVrZM7aZsEDVrpY5taBFQ.addSetStatePacket(J9LObvgoNzQUU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 case 230: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 2:
 case 3:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 case 231: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 if(dkVrZM7aZsEDVrpY5taBFQ.getState() != 10)break;
 local IiNgFevJl1cr = dkVrZM7aZsEDVrpY5taBFQ.getVar("state").get_vector(0); 
 if(IiNgFevJl1cr != 15)
 {
 local dV8JoTPBcOoy8cMzlw4SW = IiNgFevJl1cr + 1; 
 dkVrZM7aZsEDVrpY5taBFQ.getVar("state").set_vector(0, dV8JoTPBcOoy8cMzlw4SW); 
 local fJGqQOiY39RoLibwSo = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(fJGqQOiY39RoLibwSo); 
 sq_IntVectorPush(fJGqQOiY39RoLibwSo, dV8JoTPBcOoy8cMzlw4SW); 
 dkVrZM7aZsEDVrpY5taBFQ.addSetStatePacket(10, fJGqQOiY39RoLibwSo, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 }
} ;

 