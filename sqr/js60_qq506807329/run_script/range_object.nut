
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
function getRangeObject(EeWumyYgwX7thHML,MwJO908aJSmC7,UVCEFhtVvmi7dR,EFtUKWEJOg,bBPc5x4Ecpcrw,q2Yuk1TcpoNatuI05,sQBoe1xG3S9I,T2eJmNmifn)
{
 if (!EeWumyYgwX7thHML) return;
 local IjbSyGCxrp_EbPJRFTNXdEuf = MwJO908aJSmC7;
 if(MwJO908aJSmC7 ==-1) 
 IjbSyGCxrp_EbPJRFTNXdEuf=9999;
 
 EeWumyYgwX7thHML.getVar("AllRangeEnemy").clear_obj_vector();
 local wk82bCL10YDcPb = EeWumyYgwX7thHML.getVar("AllRangeEnemy"); 
 
 local LYcAWkU6AaDTg = EeWumyYgwX7thHML.getObjectManager();
 
 local Y1q9ztfFlUg8Wb43845I = LYcAWkU6AaDTg.getCollisionObjectNumber();
 
 local S7bFKdahPA = 0;
 local ndhTEdyaZ3rHsl = sq_GetXPos(EeWumyYgwX7thHML)+UVCEFhtVvmi7dR; 
 local i2UwOnIEXXTdEL3gAV7Uy7 = sq_GetYPos(EeWumyYgwX7thHML)+EFtUKWEJOg; 
 
 for(local bFJDJ_cowa1riPb3=0;bFJDJ_cowa1riPb3<Y1q9ztfFlUg8Wb43845I;bFJDJ_cowa1riPb3++)
 {
 
 local GAvAN_RlJUxZtGW1RthK = LYcAWkU6AaDTg.getCollisionObject(bFJDJ_cowa1riPb3);
 
 if(!GAvAN_RlJUxZtGW1RthK || !EeWumyYgwX7thHML.isEnemy(GAvAN_RlJUxZtGW1RthK) || !GAvAN_RlJUxZtGW1RthK.isObjectType(OBJECTTYPE_ACTIVE)) continue;
 local ZRhWz1WTDYeZhCvEUxFep = sq_GetXPos(GAvAN_RlJUxZtGW1RthK); 
 local j1jBbjeYx7wBX669cM1H40i0 = sq_GetYPos(GAvAN_RlJUxZtGW1RthK); 
 local C4hBSEYzLpgwvcqk7w4Il0 = sq_GetZPos(GAvAN_RlJUxZtGW1RthK); 
 if(C4hBSEYzLpgwvcqk7w4Il0>q2Yuk1TcpoNatuI05) continue; 
 if(sQBoe1xG3S9I!=0)
 if(sq_Abs(i2UwOnIEXXTdEL3gAV7Uy7-j1jBbjeYx7wBX669cM1H40i0)>sQBoe1xG3S9I) continue; 
 
 switch (T2eJmNmifn)
 {
 case 0: 
 if(ndhTEdyaZ3rHsl<ZRhWz1WTDYeZhCvEUxFep) continue; 
 break;
 case 1: 
 if(ndhTEdyaZ3rHsl>ZRhWz1WTDYeZhCvEUxFep) continue; 
 break;
 case 2: 
 if(i2UwOnIEXXTdEL3gAV7Uy7<j1jBbjeYx7wBX669cM1H40i0) continue; 
 break;
 case 3: 
 if(i2UwOnIEXXTdEL3gAV7Uy7>j1jBbjeYx7wBX669cM1H40i0) continue; 
 break;
 }
 
 local Qb_HwcVpAj7TsGOP = sq_GetDistance(ndhTEdyaZ3rHsl,i2UwOnIEXXTdEL3gAV7Uy7, ZRhWz1WTDYeZhCvEUxFep, j1jBbjeYx7wBX669cM1H40i0, true);
 
 if(Qb_HwcVpAj7TsGOP<=IjbSyGCxrp_EbPJRFTNXdEuf&&Qb_HwcVpAj7TsGOP>bBPc5x4Ecpcrw)
 {
 wk82bCL10YDcPb.push_obj_vector(GAvAN_RlJUxZtGW1RthK);
 S7bFKdahPA++;
 }
 }
 return S7bFKdahPA;
} ;


 
 
 
 
 
 
 
function setRangeObjectXPos(BIG2UNwyOBHne,kwnfMJgIyEMA2O,OyYp9ueRGl2ALHuK7DyrjEcY,Xulw3BCzu3Oqy438mAVB6v,MSLNFxm2AMzi0SkAv7uESn,XOe5LLQPAsgzjeM8MI1B,GF3f70jJJV6h)
{
 if(!BIG2UNwyOBHne) return;
 if(getRangeObject(BIG2UNwyOBHne,kwnfMJgIyEMA2O,0,0,Xulw3BCzu3Oqy438mAVB6v,MSLNFxm2AMzi0SkAv7uESn,XOe5LLQPAsgzjeM8MI1B,OyYp9ueRGl2ALHuK7DyrjEcY)<=0) return; 
 local _yWhOwquPBW = BIG2UNwyOBHne.getVar("AllRangeEnemy"); 
 local wbb_iCAWx6C9OP = _yWhOwquPBW.get_obj_vector_size(); 
 for(local oZCho3srPbQMJGB3Kk56xL=0;oZCho3srPbQMJGB3Kk56xL<wbb_iCAWx6C9OP;oZCho3srPbQMJGB3Kk56xL++)
 {
 local R0dHWZalIMa0fHbptIpGlI = _yWhOwquPBW.get_obj_vector(oZCho3srPbQMJGB3Kk56xL); 
 if(R0dHWZalIMa0fHbptIpGlI==null) continue; 
 R0dHWZalIMa0fHbptIpGlI = sq_GetCNRDObjectToActiveObject(R0dHWZalIMa0fHbptIpGlI); 
 local CGn34ORTdi2dgByAag4Z0vD = BIG2UNwyOBHne.getXPos(); 
 local da7Ljw4gK5l03JuS4a = BIG2UNwyOBHne.getYPos(); 
 local Dsl8fMBMhgJCg1MGAQSrweTv = R0dHWZalIMa0fHbptIpGlI.getXPos(); 
 local mtUc8aGUn3tFeA = R0dHWZalIMa0fHbptIpGlI.getYPos(); 
 local nrU00q4_51vqa7FbIVHXSiz = sq_Abs(CGn34ORTdi2dgByAag4Z0vD - Dsl8fMBMhgJCg1MGAQSrweTv); 
 local e1yKNA0nKZSMbR = sq_Abs(da7Ljw4gK5l03JuS4a - mtUc8aGUn3tFeA); 
 if(nrU00q4_51vqa7FbIVHXSiz>0)
 {
 local kwnfMJgIyEMA2O = GF3f70jJJV6h;
 while (nrU00q4_51vqa7FbIVHXSiz<=kwnfMJgIyEMA2O)
 kwnfMJgIyEMA2O -= 1;
 
 if(CGn34ORTdi2dgByAag4Z0vD<Dsl8fMBMhgJCg1MGAQSrweTv) kwnfMJgIyEMA2O = kwnfMJgIyEMA2O/-1;
 if(R0dHWZalIMa0fHbptIpGlI.isMovablePos(Dsl8fMBMhgJCg1MGAQSrweTv+kwnfMJgIyEMA2O, mtUc8aGUn3tFeA)) 
 sq_setCurrentAxisPos(R0dHWZalIMa0fHbptIpGlI, 0, Dsl8fMBMhgJCg1MGAQSrweTv+kwnfMJgIyEMA2O); 
 }
 if(e1yKNA0nKZSMbR>0)
 {
 local kwnfMJgIyEMA2O = GF3f70jJJV6h;
 while (e1yKNA0nKZSMbR<=kwnfMJgIyEMA2O)
 kwnfMJgIyEMA2O -= 1;
 
 if(da7Ljw4gK5l03JuS4a<mtUc8aGUn3tFeA) kwnfMJgIyEMA2O = kwnfMJgIyEMA2O/-1;
 if(R0dHWZalIMa0fHbptIpGlI.isMovablePos(Dsl8fMBMhgJCg1MGAQSrweTv, mtUc8aGUn3tFeA+kwnfMJgIyEMA2O)) 
 sq_setCurrentAxisPos(R0dHWZalIMa0fHbptIpGlI, 1, mtUc8aGUn3tFeA+kwnfMJgIyEMA2O); 
 }
 }
} ;


 
 
 
 
 
 
 
function setRangeObjectPosEx(ILruY8rtEApnbvaClGw,jgJwuxN8Zml5OANlbbbpw0RI,R1HsiH7V2py21_qw4d3itJGn,xViLDpS8yOz9GWAa9YjOjcb,i6YQjOPryzXXK4u,QCFoO1iSpB4qfKlZgXPUTqOv,dXsIKz5gjrcOyU6HCuzRnKh0,QBsWdprupl,N3zz_DBTBw8t)
{
 if(!ILruY8rtEApnbvaClGw) return;
 if(getRangeObject(ILruY8rtEApnbvaClGw,jgJwuxN8Zml5OANlbbbpw0RI,R1HsiH7V2py21_qw4d3itJGn,xViLDpS8yOz9GWAa9YjOjcb,QCFoO1iSpB4qfKlZgXPUTqOv,dXsIKz5gjrcOyU6HCuzRnKh0,QBsWdprupl,i6YQjOPryzXXK4u)<=0) return; 
 local ZPCtXkgcaIsvAG4XolV = ILruY8rtEApnbvaClGw.getVar("AllRangeEnemy"); 
 local MLKF0TDXD3JfO = ZPCtXkgcaIsvAG4XolV.get_obj_vector_size(); 
 for(local DRhMdL3TEf8BuMZAYPe1R=0;DRhMdL3TEf8BuMZAYPe1R<MLKF0TDXD3JfO;DRhMdL3TEf8BuMZAYPe1R++)
 {
 local X7tuUxAiLNG_4kca559ayzT3 = ZPCtXkgcaIsvAG4XolV.get_obj_vector(DRhMdL3TEf8BuMZAYPe1R); 
 if(X7tuUxAiLNG_4kca559ayzT3==null) continue; 
 X7tuUxAiLNG_4kca559ayzT3 = sq_GetCNRDObjectToActiveObject(X7tuUxAiLNG_4kca559ayzT3); 
 local J11h6wI6ASiS6wm = ILruY8rtEApnbvaClGw.getXPos()+R1HsiH7V2py21_qw4d3itJGn; 
 local lvw9uXktsT6LpAhzwZZzOLA = ILruY8rtEApnbvaClGw.getYPos()+xViLDpS8yOz9GWAa9YjOjcb; 
 local yXaIrmMXQhXNzX7XQF4l4 = X7tuUxAiLNG_4kca559ayzT3.getXPos(); 
 local H_sGmtp6rzSg2dmS1DYeiX = X7tuUxAiLNG_4kca559ayzT3.getYPos(); 
 local b_iD_ZCGoPi7ssh_SWxeke = sq_Abs(J11h6wI6ASiS6wm - yXaIrmMXQhXNzX7XQF4l4); 
 local ZSaHDpGLnL9 = sq_Abs(lvw9uXktsT6LpAhzwZZzOLA - H_sGmtp6rzSg2dmS1DYeiX); 
 if(b_iD_ZCGoPi7ssh_SWxeke>0)
 {
 local jgJwuxN8Zml5OANlbbbpw0RI = N3zz_DBTBw8t;
 while (b_iD_ZCGoPi7ssh_SWxeke<=jgJwuxN8Zml5OANlbbbpw0RI)
 jgJwuxN8Zml5OANlbbbpw0RI -= 1;
 
 if(J11h6wI6ASiS6wm<yXaIrmMXQhXNzX7XQF4l4) jgJwuxN8Zml5OANlbbbpw0RI = jgJwuxN8Zml5OANlbbbpw0RI/-1;
 if(X7tuUxAiLNG_4kca559ayzT3.isMovablePos(yXaIrmMXQhXNzX7XQF4l4+jgJwuxN8Zml5OANlbbbpw0RI, H_sGmtp6rzSg2dmS1DYeiX)) 
 sq_setCurrentAxisPos(X7tuUxAiLNG_4kca559ayzT3, 0, yXaIrmMXQhXNzX7XQF4l4+jgJwuxN8Zml5OANlbbbpw0RI); 
 }
 if(ZSaHDpGLnL9>0)
 {
 local jgJwuxN8Zml5OANlbbbpw0RI = N3zz_DBTBw8t;
 while (ZSaHDpGLnL9<=jgJwuxN8Zml5OANlbbbpw0RI)
 jgJwuxN8Zml5OANlbbbpw0RI -= 1;
 
 if(lvw9uXktsT6LpAhzwZZzOLA<H_sGmtp6rzSg2dmS1DYeiX) jgJwuxN8Zml5OANlbbbpw0RI = jgJwuxN8Zml5OANlbbbpw0RI/-1;
 if(X7tuUxAiLNG_4kca559ayzT3.isMovablePos(yXaIrmMXQhXNzX7XQF4l4, H_sGmtp6rzSg2dmS1DYeiX+jgJwuxN8Zml5OANlbbbpw0RI)) 
 sq_setCurrentAxisPos(X7tuUxAiLNG_4kca559ayzT3, 1, H_sGmtp6rzSg2dmS1DYeiX+jgJwuxN8Zml5OANlbbbpw0RI); 
 }
 }
} ;  