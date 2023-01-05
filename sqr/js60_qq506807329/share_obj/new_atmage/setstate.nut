
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
 
function setState_po_qq506807329new_atmage_24377(ulpO7loMZ5f8mxrT, hRuY8re0Cr, N3rkQZvFCZuWvUN5)
{
 if(!ulpO7loMZ5f8mxrT) return;
 ulpO7loMZ5f8mxrT.getVar("state").clear_vector(); 
 ulpO7loMZ5f8mxrT.getVar("state").push_vector(hRuY8re0Cr);
 local wBYSXC9udAMy6OrtL1JZVmY = ulpO7loMZ5f8mxrT.getVar("skill").get_vector(0);
 local vAw11S_w7iMNnY384qt9bnGq = ulpO7loMZ5f8mxrT.getVar("subType").get_vector(0); 
 switch(wBYSXC9udAMy6OrtL1JZVmY)
 {
 case 243: 
 switch(vAw11S_w7iMNnY384qt9bnGq)
 {
 case 1:
 switch(hRuY8re0Cr)
 {
 case 10:
 local zTT7r_ziIs = ulpO7loMZ5f8mxrT.getVar().getFloat(0); 
 local D7yWSG8JPyUe = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/magiccirclebttomstart_00.ani"); 
 D7yWSG8JPyUe.setImageRateFromOriginal(zTT7r_ziIs, zTT7r_ziIs); 
 D7yWSG8JPyUe.setAutoLayerWorkAnimationAddSizeRate(zTT7r_ziIs); 
 sq_SetAttackBoundingBoxSizeRate(D7yWSG8JPyUe, zTT7r_ziIs, zTT7r_ziIs, zTT7r_ziIs); 
 ulpO7loMZ5f8mxrT.setCurrentAnimation(D7yWSG8JPyUe);
 local SGSabkZV0NU6d4XivIKaZhBC = CreateAniRate(ulpO7loMZ5f8mxrT, "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/magiccirclebackstart_00.ani", ENUM_DRAWLAYER_NORMAL, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), zTT7r_ziIs, false); 
 CreateAniRate(ulpO7loMZ5f8mxrT, "character/mage/effect/animation/atelementalfield/atelementalfield_begin_front_buster001.ani", ENUM_DRAWLAYER_NORMAL, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), zTT7r_ziIs, false); 
 local xAhMkHUkUjjt8SulyPq = CreateAniRate(ulpO7loMZ5f8mxrT, "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/background/atelementalfield_background_starforce001.ani", ENUM_DRAWLAYER_BOTTOM, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), zTT7r_ziIs, false); 
 CreateAniRate(ulpO7loMZ5f8mxrT, "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/begin_spark01.ani", ENUM_DRAWLAYER_BOTTOM, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), zTT7r_ziIs, false); 
 RemoveAllAni(ulpO7loMZ5f8mxrT); 
 ulpO7loMZ5f8mxrT.getVar("aniobj").push_obj_vector(SGSabkZV0NU6d4XivIKaZhBC); 
 ulpO7loMZ5f8mxrT.getVar("aniobj").push_obj_vector(xAhMkHUkUjjt8SulyPq); 
 local mhAtnrmHZ5oKJI8IzV = ulpO7loMZ5f8mxrT.getVar().get_vector(0); 
 ulpO7loMZ5f8mxrT.setTimeEvent(0, mhAtnrmHZ5oKJI8IzV, 1, false); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 if(mhAtnrmHZ5oKJI8IzV>=400)
 sq_flashScreen(ulpO7loMZ5f8mxrT, 0, mhAtnrmHZ5oKJI8IzV-400, 400, 76, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 else
 sq_flashScreen(ulpO7loMZ5f8mxrT, 0, 0, mhAtnrmHZ5oKJI8IzV, 76, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 11:
 local zTT7r_ziIs = ulpO7loMZ5f8mxrT.getVar().getFloat(0); 
 local D7yWSG8JPyUe = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/magiccirclebottomloop01_00.ani"); 
 D7yWSG8JPyUe.setImageRateFromOriginal(zTT7r_ziIs, zTT7r_ziIs); 
 D7yWSG8JPyUe.setAutoLayerWorkAnimationAddSizeRate(zTT7r_ziIs); 
 ulpO7loMZ5f8mxrT.setCurrentAnimation(D7yWSG8JPyUe);
 local SGSabkZV0NU6d4XivIKaZhBC = CreateAniRate(ulpO7loMZ5f8mxrT, "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/magiccirclebackloop_00.ani", ENUM_DRAWLAYER_NORMAL, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), zTT7r_ziIs, false); 
 sq_moveWithParent(ulpO7loMZ5f8mxrT, SGSabkZV0NU6d4XivIKaZhBC); 
 RemoveAllAni(ulpO7loMZ5f8mxrT); 
 ulpO7loMZ5f8mxrT.getVar("aniobj").push_obj_vector(SGSabkZV0NU6d4XivIKaZhBC); 
 break;
 case 12:
 ulpO7loMZ5f8mxrT.getVar("time").clear_vector(); 
 ulpO7loMZ5f8mxrT.getVar("time").push_vector(sq_GetObjectTime(ulpO7loMZ5f8mxrT)); 
 ulpO7loMZ5f8mxrT.getVar("time").push_vector(300); 
 break;
 }
 break;
 }
 break;
 case 244: 
 switch(vAw11S_w7iMNnY384qt9bnGq)
 {
 case 1:
 switch(hRuY8re0Cr)
 {
 case 10:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 0);
 break;
 case 11:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 1);
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 1); 
 ulpO7loMZ5f8mxrT.getVar("move").push_vector(sq_GetObjectTime(ulpO7loMZ5f8mxrT)); 
 break;
 case 12:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 2);
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 2); 
 sq_SetMyShake(ulpO7loMZ5f8mxrT, 6, 240); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 sq_flashScreen(ulpO7loMZ5f8mxrT, 60, 60, 600, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 }
 break;
 case 245: 
 switch(vAw11S_w7iMNnY384qt9bnGq)
 {
 case 1:
 switch(hRuY8re0Cr)
 {
 case 10: 
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 0);
 break;
 case 11: 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 3); 
 local y6vCTBa0Lab = sq_GetCurrentAnimation(ulpO7loMZ5f8mxrT);
 if(y6vCTBa0Lab)
 {
 local HaiCkChTRb6cvBZzXOFF7 = sq_CreateAnimation_SizeRate_SpeedRate("character/mage/effect/animation/atarmageddonstrike/p1/nnaddasatkeff1.ani", ulpO7loMZ5f8mxrT.getVar("sizeRate").getFloat(0) * 0.5714285714285714, false); 
 
 y6vCTBa0Lab.addLayerAnimation(10000, HaiCkChTRb6cvBZzXOFF7, true); 
 }
 break;
 case 12: 
 sq_setCurrentAxisPos(ulpO7loMZ5f8mxrT, 2, 0); 
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 1);
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 4); 
 local SEmJLZir994iItLS = sq_GetVectorData(N3rkQZvFCZuWvUN5, 0); 
 if(!SEmJLZir994iItLS)SEmJLZir994iItLS = 100;
 local y6vCTBa0Lab = sq_GetCurrentAnimation(ulpO7loMZ5f8mxrT);
 y6vCTBa0Lab.setSpeedRate(SEmJLZir994iItLS.tofloat()); 
 
 sq_SetMyShake(ulpO7loMZ5f8mxrT, 8, 900); 
 break;
 }
 break;
 }
 break;
 case 246: 
 switch(vAw11S_w7iMNnY384qt9bnGq)
 {
 case 1:
 switch(hRuY8re0Cr)
 {
 case 10: 
 sq_setCurrentAxisPos(ulpO7loMZ5f8mxrT, 2, 60); 
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 1); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 7); 
 local zhfNktuYE8KwHZB8E = sq_GetCurrentAttackInfo(ulpO7loMZ5f8mxrT);
 sq_SetCurrentAttackBonusRate(zhfNktuYE8KwHZB8E, sq_GetVectorData(N3rkQZvFCZuWvUN5, 0)); 
 sq_SetChangeStatusIntoAttackInfo(zhfNktuYE8KwHZB8E, 0, ACTIVESTATUS_FREEZE, sq_GetVectorData(N3rkQZvFCZuWvUN5, 1), sq_GetVectorData(N3rkQZvFCZuWvUN5, 2), sq_GetVectorData(N3rkQZvFCZuWvUN5, 3)); 
 ulpO7loMZ5f8mxrT.getVar("damageRate").clear_vector(); 
 ulpO7loMZ5f8mxrT.getVar("damageRate").push_vector(sq_GetVectorData(N3rkQZvFCZuWvUN5, 4)); 
 ulpO7loMZ5f8mxrT.getVar("parentObj").clear_vector(); 
 ulpO7loMZ5f8mxrT.getVar("parentObj").push_vector(sq_GetVectorData(N3rkQZvFCZuWvUN5, 5)); 
 ulpO7loMZ5f8mxrT.getVar("parentObj").push_vector(sq_GetVectorData(N3rkQZvFCZuWvUN5, 6)); 
 break;
 }
 break;
 }
 break;
 case 248: 
 switch(vAw11S_w7iMNnY384qt9bnGq)
 {
 case 1:
 switch(hRuY8re0Cr)
 {
 case 10:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 0); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 9); 
 sq_SetVelocity(ulpO7loMZ5f8mxrT, 0, sq_GetDistancePos(0, ulpO7loMZ5f8mxrT.getDirection(), 3000).tofloat()); 
 break;
 case 11:
 sq_SetVelocity(ulpO7loMZ5f8mxrT, 0, 0.0); 
 ulpO7loMZ5f8mxrT.setCurrentPos(sq_GetVectorData(N3rkQZvFCZuWvUN5, 0), sq_GetVectorData(N3rkQZvFCZuWvUN5, 1)+1, sq_GetVectorData(N3rkQZvFCZuWvUN5, 2)); 
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 1); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 10); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 {
 sq_SetShake(ulpO7loMZ5f8mxrT, 10, 500); 
 sq_flashScreen(ulpO7loMZ5f8mxrT, 0, 120, 200, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 12:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 2); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 10); 
 local zhfNktuYE8KwHZB8E = sq_GetCurrentAttackInfo(ulpO7loMZ5f8mxrT);
 sq_SetCurrentAttackBonusRate(zhfNktuYE8KwHZB8E, ulpO7loMZ5f8mxrT.getVar().get_vector(0)); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 sq_SetShake(ulpO7loMZ5f8mxrT, 3, 400); 
 break;
 case 13:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 3); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 10); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 sq_SetShake(ulpO7loMZ5f8mxrT, 7, 300); 
 break;
 case 14:
 setCurrentAnimationFromCutomIndex(ulpO7loMZ5f8mxrT, 4); 
 sq_SetCurrentAttackInfoFromCustomIndex(ulpO7loMZ5f8mxrT, 11); 
 if(ulpO7loMZ5f8mxrT.isMyControlObject())
 {
 sq_SetShake(ulpO7loMZ5f8mxrT, 10, 500); 
 sq_flashScreen(ulpO7loMZ5f8mxrT, 0, 80, 500, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 break;
 }
 break;
 }
} ;
 

  