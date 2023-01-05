
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠



 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function setCustomData_po_qq506807329new_atmage_24377(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv)
{
 if(!KTPV6RpNFZL8ZIefMPHgQ) return;
 local netZD7Dbmq = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("skill").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("skill").push_vector(netZD7Dbmq);
 switch(netZD7Dbmq)
 {
 case 243: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 sq_ChangeDrawLayer(KTPV6RpNFZL8ZIefMPHgQ, ENUM_DRAWLAYER_BOTTOM); 
 local CN4JYsjoyeLMCgxOV = sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword());
 sq_SetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, CN4JYsjoyeLMCgxOV);
 KTPV6RpNFZL8ZIefMPHgQ.getVar().setFloat(0,JDoY8JKNkL_zr2HEdZNHDv.readFloat()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 244: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 2), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword()/100.0; 
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/bigorb_orbd.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/projectile_dodge.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local Ca1tcSMgeXsB0 = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/explosion/explosion_dodge.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(Ca1tcSMgeXsB0); 
 local QsIpP8bWywLUfPc0Dc9 = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 local Ijc9lieNnx8diGDH = 150; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(KTPV6RpNFZL8ZIefMPHgQ.getXPos()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(QsIpP8bWywLUfPc0Dc9); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(Ijc9lieNnx8diGDH); 
 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_timer_vector();
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_timer_vector();
 local s9iIo4JfJfuXw = KTPV6RpNFZL8ZIefMPHgQ.getVar().get_timer_vector(0);
 s9iIo4JfJfuXw.setParameter(Ijc9lieNnx8diGDH/(QsIpP8bWywLUfPc0Dc9/65), -1); 
 s9iIo4JfJfuXw.resetInstant(0); 
 KTPV6RpNFZL8ZIefMPHgQ.sq_PlaySound("R_DARKSHOT_HIT"); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 245: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 3), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 4), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword() / 100.0; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/ascolorball_00.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/asblackball_00.ani",TeHNQv2_FTP7tNIglnN38eP,false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.sq_PlaySound("R_DARKSHOT_HIT"); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 case 2:
 local CN4JYsjoyeLMCgxOV = sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 5); 
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword());
 sq_SetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, CN4JYsjoyeLMCgxOV);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/explosion_01.ani"); 
 KTPV6RpNFZL8ZIefMPHgQ.setCurrentAnimation(A9yL4uSpZsRY9BGMY);
 break;
 }
 break;
 case 246: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local Xf9WUoK3kgOAY_oA = KTPV6RpNFZL8ZIefMPHgQ.getTopCharacter(); 
 if(Xf9WUoK3kgOAY_oA)
 {
 
 Xf9WUoK3kgOAY_oA.getVar().clear_obj_vector(); 
 Xf9WUoK3kgOAY_oA.getVar().push_obj_vector(KTPV6RpNFZL8ZIefMPHgQ); 
 }
 sq_SetCurrentAttackInfoFromCustomIndex(KTPV6RpNFZL8ZIefMPHgQ, 6); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword() / 100.0; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atshardmagnum/shardmagnumstep1_01iceboom4.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atshardmagnum/shardmagnumstep2_02handglow.ani",TeHNQv2_FTP7tNIglnN38eP,false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 setCurrentAnimationFromCutomIndex(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 break;
 }
 break; 
 case 247: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readFloat(); 
 local DXVjRWliS1ZHpECo = JDoY8JKNkL_zr2HEdZNHDv.readFloat(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_front.ani", TeHNQv2_FTP7tNIglnN38eP, DXVjRWliS1ZHpECo); 
 local w9xFqW7mKRsOSAE1gCfDe = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_back.ani", TeHNQv2_FTP7tNIglnN38eP, DXVjRWliS1ZHpECo); 
 A9yL4uSpZsRY9BGMY.addLayerAnimation(-1, w9xFqW7mKRsOSAE1gCfDe, true); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 setCurrentAnimationFromCutomIndex(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 sq_SetCurrentAttackInfoFromCustomIndex(KTPV6RpNFZL8ZIefMPHgQ, 8); 
 local CN4JYsjoyeLMCgxOV = sq_GetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ);
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 break;
 }
 break;
 case 248: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/arrow_shoot.ani", false, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_first.ani", false, false); 
 local Ca1tcSMgeXsB0 = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_second.ani", false, false); 
 local FOvaeRcF9jb = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_third.ani", false, false); 
 local HNS9e0qzjNGDo = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/explosion/judekatheeternal_explosion.ani", false, false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(Ca1tcSMgeXsB0); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(FOvaeRcF9jb); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(HNS9e0qzjNGDo); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 9), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ,10), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 11), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().setBool(0,false); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_obj_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 }
} ;
 
