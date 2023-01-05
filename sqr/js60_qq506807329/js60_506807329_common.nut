
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪?为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮?啮竖要啮诸?啮谅可啮疮啮缄系啮踝萧
//啮?啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮?NUT啮编啮?啮篇啮猪?萧 啮踝萧啮踝萧郋啮?500啮?啮踝萧C啮缘啮?1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮?啮谆?改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮?啮踝萧 啮踝萧啮诿? 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请?啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮?啮箠啮疮啮踝萧啮?啮瘠

 
sq_RunScript("js60_qq506807329/run_script/my_monster_object.nut");

 
sq_RunScript("js60_qq506807329/run_script/my_passive_object.nut");

 
sq_RunScript("js60_qq506807329/run_script/range_object.nut");



 
function RemoveAllAni(iJDHWCWkfa8ySj_kh6FQ)
{
 
 local FH0AaVP8oLS8AtiWADBUMc = iJDHWCWkfa8ySj_kh6FQ.getVar("aniobj"); 
 local n72Y0Njs6kKh0S4iN = FH0AaVP8oLS8AtiWADBUMc.get_obj_vector_size(); 
 for(local h5lf61eOJYsJCXtsnRouPqL=0;h5lf61eOJYsJCXtsnRouPqL<n72Y0Njs6kKh0S4iN;h5lf61eOJYsJCXtsnRouPqL++)
 {
 local OOZHuJUxMGUj1500l = FH0AaVP8oLS8AtiWADBUMc.get_obj_vector(h5lf61eOJYsJCXtsnRouPqL);
 if(OOZHuJUxMGUj1500l)
 OOZHuJUxMGUj1500l.setValid(false); 
 
 }
 iJDHWCWkfa8ySj_kh6FQ.getVar("aniobj").clear_obj_vector(); 
} ;

 
function RemoveAllFlash(iJDHWCWkfa8ySj_kh6FQ)
{
 
 local FH0AaVP8oLS8AtiWADBUMc = iJDHWCWkfa8ySj_kh6FQ.getVar("flashobj"); 
 local n72Y0Njs6kKh0S4iN = FH0AaVP8oLS8AtiWADBUMc.get_obj_vector_size(); 
 for(local h5lf61eOJYsJCXtsnRouPqL=0;h5lf61eOJYsJCXtsnRouPqL<n72Y0Njs6kKh0S4iN;h5lf61eOJYsJCXtsnRouPqL++)
 {
 local OOZHuJUxMGUj1500l = FH0AaVP8oLS8AtiWADBUMc.get_obj_vector(h5lf61eOJYsJCXtsnRouPqL); 
 if(OOZHuJUxMGUj1500l) 
 {
 local uD0uvNqUrl_P97 = sq_GetCNRDObjectToFlashScreen(OOZHuJUxMGUj1500l); 
 if(uD0uvNqUrl_P97)
 uD0uvNqUrl_P97.fadeOut(); 
 }
 }
 iJDHWCWkfa8ySj_kh6FQ.getVar("flashobj").clear_obj_vector(); 
} ;

 
function CreateAniRate(iJDHWCWkfa8ySj_kh6FQ,FH0AaVP8oLS8AtiWADBUMc,n72Y0Njs6kKh0S4iN,h5lf61eOJYsJCXtsnRouPqL,OOZHuJUxMGUj1500l,uD0uvNqUrl_P97,BPh8fl0MKL6rG,nEiGj36vgwVTQE)
{
 local QyTmr5dEZ5J7F = sq_CreateAnimation("",FH0AaVP8oLS8AtiWADBUMc); 
 if(BPh8fl0MKL6rG!=false) 
 {
 QyTmr5dEZ5J7F.setImageRateFromOriginal(BPh8fl0MKL6rG, BPh8fl0MKL6rG); 
 QyTmr5dEZ5J7F.setAutoLayerWorkAnimationAddSizeRate(BPh8fl0MKL6rG); 
 }
 if(nEiGj36vgwVTQE!=false) 
 QyTmr5dEZ5J7F.setSpeedRate(nEiGj36vgwVTQE); 
 local cjAdfSKOVP46 = sq_CreatePooledObject(QyTmr5dEZ5J7F,true); 
 cjAdfSKOVP46 = sq_SetEnumDrawLayer(cjAdfSKOVP46, n72Y0Njs6kKh0S4iN); 
 sq_SetCurrentDirection(cjAdfSKOVP46, iJDHWCWkfa8ySj_kh6FQ.getDirection()); 
 cjAdfSKOVP46.setCurrentPos(h5lf61eOJYsJCXtsnRouPqL,OOZHuJUxMGUj1500l,uD0uvNqUrl_P97); 
 sq_AddObject(iJDHWCWkfa8ySj_kh6FQ, cjAdfSKOVP46, OBJECTTYPE_DRAWONLY, false); 
 return cjAdfSKOVP46; 
} ;

 
 
function getArcMoveValue(L1w2Q4Rhi6E,tRM9abMOFkhQ2,L91r4wbaCbx,Lt77pVnmot7HTMdRi)
{
 local UE0ctxg41kOSOlT = (-L91r4wbaCbx.tofloat() * 4) /( Lt77pVnmot7HTMdRi.tofloat() * Lt77pVnmot7HTMdRi.tofloat());
 return (UE0ctxg41kOSOlT.tofloat()*(tRM9abMOFkhQ2.tofloat() - Lt77pVnmot7HTMdRi.tofloat() / 2)*(tRM9abMOFkhQ2.tofloat() - Lt77pVnmot7HTMdRi.tofloat() / 2) + L91r4wbaCbx.tofloat()).tointeger();
} ;


function setCloneNewAni_qq506807329(L1w2Q4Rhi6E,tRM9abMOFkhQ2,L91r4wbaCbx,Lt77pVnmot7HTMdRi, UE0ctxg41kOSOlT, AAWY8x1zFE1em6JX2vCXxs, IAyX7LbvUqGiE2Eu7QbORlwc,UGPwbDdsSBVZWCEu5d2DHrJ,fGpBTfwnANc3Gs8g, BL6IfvUVkb69A6gB)
{
 local BAljOfDf9RhmzA = sq_CreateAnimation("", tRM9abMOFkhQ2); 
 local OpZdSALiT0eJ5 = sq_GetCustomAni(L1w2Q4Rhi6E, L91r4wbaCbx); 
 sq_Rewind(OpZdSALiT0eJ5); 
 
 if (UGPwbDdsSBVZWCEu5d2DHrJ == true) 
 {
 BAljOfDf9RhmzA.setImageRateFromOriginal(fGpBTfwnANc3Gs8g, fGpBTfwnANc3Gs8g); 
 BAljOfDf9RhmzA.setAutoLayerWorkAnimationAddSizeRate(fGpBTfwnANc3Gs8g); 
 }
 
 if(Lt77pVnmot7HTMdRi == true) 
 sq_SetAttackBoundingBoxSizeRate(BAljOfDf9RhmzA, UE0ctxg41kOSOlT, AAWY8x1zFE1em6JX2vCXxs, IAyX7LbvUqGiE2Eu7QbORlwc); 
 BAljOfDf9RhmzA.addLayerAnimation(BL6IfvUVkb69A6gB, OpZdSALiT0eJ5, false); 
 L1w2Q4Rhi6E.setCurrentAnimation(BAljOfDf9RhmzA); 
} ;


 
 
function getTargetAngle360_qq5q0q6q8q0q7q3q2q9(L1w2Q4Rhi6E, tRM9abMOFkhQ2)
{
 local L91r4wbaCbx = L1w2Q4Rhi6E.getXPos(); 
 local Lt77pVnmot7HTMdRi = tRM9abMOFkhQ2.getXPos(); 
 local UE0ctxg41kOSOlT = sq_GetShootingHorizonAngle(tRM9abMOFkhQ2, L1w2Q4Rhi6E.getYPos(), 0, 360, sq_Abs(Lt77pVnmot7HTMdRi - L91r4wbaCbx)); 
 local AAWY8x1zFE1em6JX2vCXxs = UE0ctxg41kOSOlT; 
 
 if(UE0ctxg41kOSOlT < 0)
 {
 if(L91r4wbaCbx < Lt77pVnmot7HTMdRi) AAWY8x1zFE1em6JX2vCXxs = 90.0 * 3 + (90.0 + UE0ctxg41kOSOlT);
 else AAWY8x1zFE1em6JX2vCXxs = 180.0 + UE0ctxg41kOSOlT / -1;
 }
 else if(L91r4wbaCbx > Lt77pVnmot7HTMdRi) AAWY8x1zFE1em6JX2vCXxs = 90.0 + (90.0 - UE0ctxg41kOSOlT);
 return AAWY8x1zFE1em6JX2vCXxs;
} ;

 
 
function getElementType_jsqq506807329(L1w2Q4Rhi6E,tRM9abMOFkhQ2)
{
 if(!L1w2Q4Rhi6E) return ENUM_ELEMENT_NONE;
 
 local L91r4wbaCbx = ENUM_ELEMENT_NONE; 
 local Lt77pVnmot7HTMdRi = (tRM9abMOFkhQ2)
 ?sq_GetCurrentAttackInfo(L1w2Q4Rhi6E)
 :L1w2Q4Rhi6E.sq_GetDefaultAttackInfo(0); 
 if(Lt77pVnmot7HTMdRi)
 {
 for(local UE0ctxg41kOSOlT = ENUM_ELEMENT_FIRE; UE0ctxg41kOSOlT < ENUM_ELEMENT_NONE; UE0ctxg41kOSOlT++)
 if(Lt77pVnmot7HTMdRi.isValidElement(UE0ctxg41kOSOlT)) 
 {
 L91r4wbaCbx = UE0ctxg41kOSOlT; 
 break;
 }
 }
 return L91r4wbaCbx;
} ;


 
 
function getActiveStatusCount_jsqq506807329(L1w2Q4Rhi6E)
{
 L1w2Q4Rhi6E = sq_GetCNRDObjectToActiveObject(L1w2Q4Rhi6E); 
 if(!L1w2Q4Rhi6E) return 0; 
 local tRM9abMOFkhQ2 = 0; 
 for(local L91r4wbaCbx = 0; L91r4wbaCbx < 18; L91r4wbaCbx++)
 {
 
 if(sq_IsValidActiveStatus(L1w2Q4Rhi6E, L91r4wbaCbx))
 tRM9abMOFkhQ2++;
 }
 return tRM9abMOFkhQ2; 
} ;


 
function setRgba_qq506807329(L1w2Q4Rhi6E,tRM9abMOFkhQ2,L91r4wbaCbx,Lt77pVnmot7HTMdRi,UE0ctxg41kOSOlT)
{
 if(!L1w2Q4Rhi6E) return;
 local AAWY8x1zFE1em6JX2vCXxs = L1w2Q4Rhi6E.getCurrentAnimation(); 
 if(!AAWY8x1zFE1em6JX2vCXxs)return;
 AAWY8x1zFE1em6JX2vCXxs.setRGBA(tRM9abMOFkhQ2, L91r4wbaCbx, Lt77pVnmot7HTMdRi, UE0ctxg41kOSOlT); 
 local IAyX7LbvUqGiE2Eu7QbORlwc = sq_AniLayerListSize(AAWY8x1zFE1em6JX2vCXxs); 
 for(local UGPwbDdsSBVZWCEu5d2DHrJ = 0; UGPwbDdsSBVZWCEu5d2DHrJ < IAyX7LbvUqGiE2Eu7QbORlwc; UGPwbDdsSBVZWCEu5d2DHrJ++)
 {
 local fGpBTfwnANc3Gs8g = sq_getAniLayerListObject(AAWY8x1zFE1em6JX2vCXxs, UGPwbDdsSBVZWCEu5d2DHrJ); 
 if(fGpBTfwnANc3Gs8g) fGpBTfwnANc3Gs8g.setRGBA(tRM9abMOFkhQ2, L91r4wbaCbx, Lt77pVnmot7HTMdRi, UE0ctxg41kOSOlT); 
 }
} ;

 
 
 
function createPooledObjEff_qq506807329(L1w2Q4Rhi6E, tRM9abMOFkhQ2,L91r4wbaCbx,Lt77pVnmot7HTMdRi,UE0ctxg41kOSOlT ,AAWY8x1zFE1em6JX2vCXxs,IAyX7LbvUqGiE2Eu7QbORlwc)
{
 if(!L1w2Q4Rhi6E) return null;
 local UGPwbDdsSBVZWCEu5d2DHrJ = sq_CreateAnimation("", tRM9abMOFkhQ2); 
 local fGpBTfwnANc3Gs8g = sq_CreatePooledObject(UGPwbDdsSBVZWCEu5d2DHrJ, true); 
 sq_SetCurrentDirection(fGpBTfwnANc3Gs8g, IAyX7LbvUqGiE2Eu7QbORlwc); 
 fGpBTfwnANc3Gs8g.setCurrentPos(L91r4wbaCbx, Lt77pVnmot7HTMdRi, UE0ctxg41kOSOlT); 
 fGpBTfwnANc3Gs8g = sq_SetEnumDrawLayer(fGpBTfwnANc3Gs8g, AAWY8x1zFE1em6JX2vCXxs); 
 sq_AddObject(L1w2Q4Rhi6E, fGpBTfwnANc3Gs8g, OBJECTTYPE_DRAWONLY, false); 
 return fGpBTfwnANc3Gs8g;
} ;




 
function sq_myFlashScreen_qq506807329(L1w2Q4Rhi6E, tRM9abMOFkhQ2, L91r4wbaCbx, Lt77pVnmot7HTMdRi, UE0ctxg41kOSOlT, AAWY8x1zFE1em6JX2vCXxs, IAyX7LbvUqGiE2Eu7QbORlwc, UGPwbDdsSBVZWCEu5d2DHrJ, fGpBTfwnANc3Gs8g)
{
 local BL6IfvUVkb69A6gB = (!fGpBTfwnANc3Gs8g) ? L1w2Q4Rhi6E.getVar("speedRate").getFloat(1) : fGpBTfwnANc3Gs8g;
 if(sq_IsMyControlObject(L1w2Q4Rhi6E))
 sq_flashScreen(L1w2Q4Rhi6E, (tRM9abMOFkhQ2 * BL6IfvUVkb69A6gB).tointeger(), (L91r4wbaCbx * BL6IfvUVkb69A6gB).tointeger(), (Lt77pVnmot7HTMdRi * BL6IfvUVkb69A6gB).tointeger(), UE0ctxg41kOSOlT, AAWY8x1zFE1em6JX2vCXxs, IAyX7LbvUqGiE2Eu7QbORlwc, UGPwbDdsSBVZWCEu5d2DHrJ);
} ;



 
function sq_mySetShake_qq506807329(L1w2Q4Rhi6E, tRM9abMOFkhQ2, L91r4wbaCbx, Lt77pVnmot7HTMdRi)
{
 local UE0ctxg41kOSOlT = (!Lt77pVnmot7HTMdRi) ? L1w2Q4Rhi6E.getVar("speedRate").getFloat(1) : Lt77pVnmot7HTMdRi;
 if(sq_IsMyControlObject(L1w2Q4Rhi6E))
 sq_SetShake(L1w2Q4Rhi6E, tRM9abMOFkhQ2, (L91r4wbaCbx * UE0ctxg41kOSOlT).tointeger());
} ;



 
function sq_CreateAnimation_SizeRate_SpeedRate(L1w2Q4Rhi6E,tRM9abMOFkhQ2,L91r4wbaCbx)
{
 local Lt77pVnmot7HTMdRi = sq_CreateAnimation("", L1w2Q4Rhi6E);
 if(tRM9abMOFkhQ2)
 {
 Lt77pVnmot7HTMdRi.setImageRateFromOriginal(tRM9abMOFkhQ2, tRM9abMOFkhQ2); 
 Lt77pVnmot7HTMdRi.setAutoLayerWorkAnimationAddSizeRate(tRM9abMOFkhQ2); 
 sq_SetAttackBoundingBoxSizeRate(Lt77pVnmot7HTMdRi, tRM9abMOFkhQ2, tRM9abMOFkhQ2, tRM9abMOFkhQ2); 
 }
 if(L91r4wbaCbx)
 {
 Lt77pVnmot7HTMdRi.setSpeedRate(L91r4wbaCbx); 
 }
 return Lt77pVnmot7HTMdRi;
} ;
 