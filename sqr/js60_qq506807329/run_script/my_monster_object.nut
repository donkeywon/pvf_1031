
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠

 

function getMyMonsterObject_Character_jsqq506807329(EeWumyYgwX7thHML, MwJO908aJSmC7, UVCEFhtVvmi7dR)
{
 if(!EeWumyYgwX7thHML) return null;
 local EFtUKWEJOg = EeWumyYgwX7thHML.getObjectManager(); 
 for(local bBPc5x4Ecpcrw = 0; bBPc5x4Ecpcrw < EFtUKWEJOg.getCollisionObjectNumber(); bBPc5x4Ecpcrw++)
 {
 local q2Yuk1TcpoNatuI05 = EFtUKWEJOg.getCollisionObject(bBPc5x4Ecpcrw); 
 if(q2Yuk1TcpoNatuI05 
 && q2Yuk1TcpoNatuI05.isObjectType(OBJECTTYPE_MONSTER) 
 && !EeWumyYgwX7thHML.isEnemy(q2Yuk1TcpoNatuI05) 
 && q2Yuk1TcpoNatuI05.getCollisionObjectIndex() == MwJO908aJSmC7) 
 {
 local sQBoe1xG3S9I = sq_GetCNRDObjectToActiveObject(q2Yuk1TcpoNatuI05); 
 if(sQBoe1xG3S9I && !sQBoe1xG3S9I.isDead()) 
 {
 local T2eJmNmifn = CNSquirrelAppendage.sq_GetAppendage(sQBoe1xG3S9I, UVCEFhtVvmi7dR); 
 if(!T2eJmNmifn)continue; 
 if(isSameObject(EeWumyYgwX7thHML, T2eJmNmifn.getVar("sqrChr").get_obj_vector(0))) 
 return sQBoe1xG3S9I;
 }
 }
 }
 return null;
} ;
