
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪能为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮羯啮竖要啮诸加啮谅可啮疮啮缄系啮踝萧
//啮瑾啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮缇NUT啮编啮缇啮篇啮猪荔萧 啮踝萧啮踝萧郋啮?500啮瑾啮踝萧C啮缘啮羯1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮窑啮谆修改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮稽啮踝萧 啮踝萧啮诿品 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请程啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮骂啮箠啮疮啮踝萧啮缇啮瘠


 
 
function setState_po_qq506807329new_atfighter_24375(obj, H6tPQNIda8hTp1UCu6_t6WN2, RBxvFgfMoFLiLh)
{
 if(!obj) return;
 local wGot9ggxEU7jFn = obj.getVar("skill").get_vector(0);
 switch(wGot9ggxEU7jFn)
 {
case 117:
        if (H6tPQNIda8hTp1UCu6_t6WN2 == 10)
        {
            local attackInfo = sq_GetCustomAttackInfo(obj, 0);
            sq_SetCurrentAttackBonusRate(attackInfo, obj.getVar("bonus").get_vector(0));
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        else if (H6tPQNIda8hTp1UCu6_t6WN2 == 11)
        {
            local animation = sq_CreateAnimation("", "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcem_end_15.ani");
            obj.setCurrentAnimation(animation);
            if (obj.getVar().getBool(0))
                obj.setTimeEvent(1, 1500, 1, false);
            else
                obj.setTimeEvent(1, 800, 1, false);
        }
        break;
    case 67:
        if (H6tPQNIda8hTp1UCu6_t6WN2 == 10)
        {
            local animation = sq_CreateAnimation("", "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcel_loop_09.ani");
            obj.setCurrentAnimation(animation);
            local CSmFB8iuPU8v9 = obj.getVar("bonus").get_vector(0);
            local attackInfo = sq_GetCustomAttackInfo(obj, 0);
            sq_SetCurrentAttackBonusRate(attackInfo, CSmFB8iuPU8v9);
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        else if (H6tPQNIda8hTp1UCu6_t6WN2 == 11)
        {
            local animation = sq_CreateAnimation("", "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcel_loop_09.ani");
            obj.setCurrentAnimation(animation);
            local CSmFB8iuPU8v9 = obj.getVar("bonus").get_vector(0);
            local attackInfo = sq_GetCustomAttackInfo(obj, 0);
            sq_SetCurrentAttackBonusRate(attackInfo, CSmFB8iuPU8v9);
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        else if (H6tPQNIda8hTp1UCu6_t6WN2 == 12)
        {
            local animation = sq_CreateAnimation("", "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcel_loop_09.ani");
            obj.setCurrentAnimation(animation);
            local CSmFB8iuPU8v9 = obj.getVar("bonus").get_vector(1);
            local attackInfo = sq_GetCustomAttackInfo(obj, 0);
            sq_SetCurrentAttackBonusRate(attackInfo, CSmFB8iuPU8v9);
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        else if (H6tPQNIda8hTp1UCu6_t6WN2 == 13)
        {
            local animation = sq_CreateAnimation("", "passiveobject/chang_qing_skill/atfighter/animation/atspiralgaleforce/forcel_loop_09.ani");
            obj.setCurrentAnimation(animation);
            local CSmFB8iuPU8v9 = obj.getVar("bonus").get_vector(2);
            local attackInfo = sq_GetCustomAttackInfo(obj, 0);
            sq_SetCurrentAttackBonusRate(attackInfo, CSmFB8iuPU8v9);
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        break;
 case 227: 
 switch(H6tPQNIda8hTp1UCu6_t6WN2)
 {
 case 10:
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosionb_dust.ani");
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(obj, 5); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, obj.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(obj, CXwzLKYMQjkEA5kgoJMAx); 
 sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/stonewreckagefloor_crack.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosionbground_shock.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_AddDrawOnlyAniFromParent(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/stonewreckagefront_stone.ani", 0, -1, 0); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atruinrainbigstone.ptl", obj, 0, 0, 40, true, 1, 0, 1); 
 sq_SetMyShake(obj, 20, 200); 
 obj.sq_PlaySound("RUINRAIN_ROCK"); 
 break;
 }
 break;
 case 229: 
 local SftG2AA6dQK = obj.getXPos(); 
 local hbKba_XFlyQR4bBo = obj.getYPos(); 
 local zpmyFwHy4GCtx4LP = obj.getZPos(); 
 switch(H6tPQNIda8hTp1UCu6_t6WN2)
 {
 case 10: 
 onSetAllApObjPos_atfighter_cyclonecrash(obj, true, 0, 0, 50, 0, true, 180.0, true, obj.getDirection()); 
 local JCnSc_KOYzGWAvF = 0.6727272727; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrash_front_05.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashfronteffect_front_08.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, false, false); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrash_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 sq_SetMyShake(obj, 8, 500); 
 if(obj.isMyControlObject()) 
 sq_flashScreen(obj, 0, 80, 80, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 case 11: 
 local JCnSc_KOYzGWAvF = 0.6851851852; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_front_01.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_back_02.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo - 2, zpmyFwHy4GCtx4LP, JCnSc_KOYzGWAvF, false); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloopsmoke_front_01.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.65, false); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(obj, 8); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, obj.getVar().get_vector(2)); 
 sq_SetCurrentAttackInfo(obj, CXwzLKYMQjkEA5kgoJMAx); 
 local xjjVVsvd6S_UJmCBxHpX1g = obj.getVar().get_vector(1); 
 local s_ykaolLlhStNr6PQf = p8wk10eJnS2Y0yGRgIIeop.getDelaySum(false); 
 obj.getVar().clear_timer_vector();
 obj.getVar().push_timer_vector();
 local Pj5kR_bbSdsRH_XeV = obj.getVar().get_timer_vector(0);
 Pj5kR_bbSdsRH_XeV.setParameter(s_ykaolLlhStNr6PQf / xjjVVsvd6S_UJmCBxHpX1g, xjjVVsvd6S_UJmCBxHpX1g); 
 Pj5kR_bbSdsRH_XeV.resetInstant(0); 
 Pj5kR_bbSdsRH_XeV.setEventOnStart(true); 
 break;
 case 12: 
 local JCnSc_KOYzGWAvF = 0.6851851852; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_front_01.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_bottom_t00.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_back_01.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo - 2, zpmyFwHy4GCtx4LP, JCnSc_KOYzGWAvF, false); 
 if(obj.isMyControlObject()) 
 sq_flashScreen(obj, p8wk10eJnS2Y0yGRgIIeop.getDelaySum(false), 0, 0, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 case 13: 
 onSetAllApObjPos_atfighter_cyclonecrash(obj, true, 0, 0, 0, 0, false, 0.0, false, 0); 
 onDeleteAllApAndRestoreRotate_atfighter_cyclonecrash(obj); 
 local JCnSc_KOYzGWAvF = 0.74; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend02_front_21.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(obj, 9); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, obj.getVar().get_vector(3)); 
 sq_SetCurrentAttackInfo(obj, CXwzLKYMQjkEA5kgoJMAx); 
 CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend02_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.67, false); 
 sq_SetMyShake(obj, 8, 300); 
 if(obj.isMyControlObject()) 
 sq_flashScreen(obj, 0, 80, 0, 229, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 }
 break;
 case 231: 
 local hNDVwF85q8IhnO57wbGebwz0 = obj.getVar("subType").get_vector(0); 
 switch(hNDVwF85q8IhnO57wbGebwz0)
 {
 case 1:
 if(H6tPQNIda8hTp1UCu6_t6WN2 != 10)break;
 local AepQ6XJv6Q = sq_GetVectorData(RBxvFgfMoFLiLh, 0); 
 local n8XbBRhlIUycXt5MKkz6x = "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/finalextremestrike/b" + AepQ6XJv6Q.tostring() + "_body.ani";
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", n8XbBRhlIUycXt5MKkz6x);
 p8wk10eJnS2Y0yGRgIIeop.setSpeedRate((obj.getVar("speed").get_vector(0)).tofloat()); 
 obj.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 if(AepQ6XJv6Q < 10)
 sq_SetMyShake(obj, 7, 80); 
 else
 sq_SetMyShake(obj, 7, 40); 
 sq_SetCurrentAttackInfoFromCustomIndex(obj, 14); 
 break;
 }
 break;
 }
} ;
 