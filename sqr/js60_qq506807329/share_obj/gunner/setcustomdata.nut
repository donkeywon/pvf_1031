
//啮磐啮确啮谊卖狗啮璀啮踝萧nut啮猪?为啮踝萧啮缓啮踝萧啮竖。啮线啮磋啮踝萧啮缓啮璀啮缘啮?啮竖要啮诸?啮谅可啮疮啮缄系啮踝萧
//啮?啮谅：啮瘠啮缘60 QQ506807329   啮踝萧啮?NUT啮编啮?啮篇啮猪?萧 啮踝萧啮踝萧郋啮?500啮?啮踝萧C啮缘啮?1000啮褒费啮踝萧础啮踝萧j啮踝萧啮璀啮?啮谆?改萧 啮课如啮瘦啮踝萧啮踝萧啮?啮?啮踝萧 啮踝萧啮诿? 啮谊喉萧 啮复伐萧 啮踝萧啮踝萧 NPC NPK 啮褒迎萧 啮范啮踝萧 act obj  UI啮请?啮踝萧啮踝萧啮踝萧啮璀啮踝萧啮?啮箠啮疮啮踝萧啮?啮瘠

function procAppend(obj)
{


	if (!obj) return;

	if(obj.sq_GetState() == 169)
	{
		//printp("obj.getVar().get_vector(1)="+obj.getVar().get_vector(1)+"\n");
		if(obj.getZPos()==0 )
		{
		 obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}

	}

}

function po_stylishbackstepheadshot(obj)
{
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);

	obj.getVar("pos").clear_vector();
	obj.getVar("pos").push_vector(x);
	obj.getVar("pos").push_vector(y);
	obj.getVar("pos").push_vector(z);

	local parentChr = obj.getTopCharacter();
		local level = sq_GetSkillLevel(parentChr, 5);
		//local hit =  sq_GetIntData(parentChr, 73, 17, level);
		local attackBonusRate =  sq_GetLevelData(parentChr, 5, 0, level);
	
		//sq_SetCurrentAttackInfoFromCustomIndex(obj, 0); 

		local pAttack = sq_GetCurrentAttackInfo(obj);
	    local ani = sq_CreateAnimation("", "passiveobject/actionobject/monster/anton/phase1/strongleg/dimensionsoul/animation/bulletpistol.ani"); 	
	 	obj.setCurrentAnimation(ani); 	
		 sq_SetCustomRotate(obj, sq_ToRadian(-25.0));//曒錓豗葨 鉡黈
	//sq_SetCurrentAttackInfoFromCustomIndex(obj, 0); 
		sq_SetCurrentAttackBonusRate(pAttack, attackBonusRate);
		//sq_SetCurrentAttackeHitStunTime(pAttack, 10);
		//return;
		//obj.setTimeEvent(1, 100, 5,true);
		//	obj.setTimeEvent(0, 100, hit,false);

		local atkCount = 5;
		local atkTime = 100;
		obj.getVar().clear_timer_vector();
		obj.getVar().push_timer_vector();
		local t = obj.getVar().get_timer_vector(0);
		t.setParameter(atkTime,5);
		t.resetInstant(0);
		t.setEventOnStart(true);

		return;

}
 function procpo_shut(obj)
{

	
	local pAni = obj.getCurrentAnimation();
	local frmIndex = sq_GetAnimationFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	local objX = sq_GetXPos(obj);
	local objY = sq_GetYPos(obj);
	local parentObj = obj.getParent();
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();

	
	local srcX = obj.getVar("pos").get_vector(0);
	local srcZ = obj.getVar("pos").get_vector(2);
	//printp("srcZ="+srcZ+"\n");
	local v = sq_GetUniformVelocity(0, 600, currentT, 800);
	local vz = sq_GetUniformVelocity(srcZ, 0, currentT, 400);
	local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
	//local dstZ = sq_GetDistancePos(srcZ, obj.getDirection(), vz);
	sq_setCurrentAxisPos(obj, 0, dstX);
	sq_setCurrentAxisPos(obj, 2, vz);//𫗣鷍衿阒z韘爦
	//printp("dstZ="+dstZ+"\n\n");
	if(vz == 0)
	{
		sq_SendDestroyPacketPassiveObject(obj);
		//printp("vz="+vz+"\n\n");
	}



}
 
 
function setCustomData_po_qq506807329new_gunner_24371(obj, receiveData)
{
 if(!obj) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local dAvhuXQ64_eoV8VoCrwC8Q = receiveData.readDword(); 
 obj.getVar("skill").clear_vector(); 
 obj.getVar("skill").push_vector(dAvhuXQ64_eoV8VoCrwC8Q);
 switch(dAvhuXQ64_eoV8VoCrwC8Q) 
 {
 case 169:
po_stylishbackstepheadshot(obj);
 case 232: 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 0); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 1), receiveData.readDword()); 
 obj.getVar("move").clear_vector(); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 obj.sq_SetMoveParticle("particle/msc7.ptl", 0.0, 0.0); 
 sq_SetSpeedToMoveParticle(obj, 0, receiveData.readDword()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 233: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 2), receiveData.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 3), receiveData.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 5), receiveData.readDword());
 obj.getVar().clear_obj_vector(); 
 obj.getVar().push_obj_vector(obj.getTopCharacter()); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani"); 
 local pd5tcg5lVLri = 1.20833333; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 sq_SetAttackBoundingBoxSizeRate(NUcGAYB0gMxueW2a, pd5tcg5lVLri, pd5tcg5lVLri, pd5tcg5lVLri); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 4); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(BSH312D3zSZDte1xy_1Mkbo, 0, ACTIVESTATUS_STUN, receiveData.readDword(), receiveData.readDword(), receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 3:
 sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani"); 
 local pd5tcg5lVLri = 0.625; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 sq_SetAttackBoundingBoxSizeRate(NUcGAYB0gMxueW2a, pd5tcg5lVLri, pd5tcg5lVLri, pd5tcg5lVLri); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 4); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 }
 break;
 case 234: 
 local DKPS2p9JUZpvWcL8PbkAzDan = obj.getTopCharacter(); 
 if(DKPS2p9JUZpvWcL8PbkAzDan) sq_moveWithParent(DKPS2p9JUZpvWcL8PbkAzDan, obj); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserloop_00.ani");
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 6); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 obj.setTimeEvent(0, receiveData.readDword(), -1, false); 
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(receiveData.readDword()); 
 obj.sq_PlaySound("P_ICECANNON_SHOT"); 
 break;
 case 235: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkaeff_laser.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 break;
 case 2: 
 sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexpla_floordodge_a.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexplb_light_a.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 7); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 }
 break;
 case 236: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/deadlyapproach/shooteffect_1.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 8); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 237: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack01_12.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 sq_SetCurrentAttackInfoFromCustomIndex(obj, 9); 
 break;
 case 2: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack02_hitf_02.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 10); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 local v7nUkcMLFhj9rm48iy9f7J = receiveData.readDword() - 1; 
 local XD3gEj67qR2eoOD9jqgICFui = NUcGAYB0gMxueW2a.getDelaySum(0, 7); 
 obj.setTimeEvent(0, XD3gEj67qR2eoOD9jqgICFui / v7nUkcMLFhj9rm48iy9f7J, v7nUkcMLFhj9rm48iy9f7J, false); 
 break;
 }
 break;
 case 239: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/fastdraw/fastdraw_bullet_normal.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 11); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 local DeP925vDyp1 = receiveData.readDword(); 
 if(DeP925vDyp1 == ENUM_DIRECTION_UP) 
 {
 
 local vHqaE82LDpGB_EbA6DcN = sq_GetCNRDObjectToActiveObject(obj.sq_FindFirstTarget(150, 600, 50, 110));
 if(vHqaE82LDpGB_EbA6DcN && !vHqaE82LDpGB_EbA6DcN.isDead()) 
 {
 local YRiMk7QfEL2j_ZjdLDYfTah = sq_GetShootingHorizonAngle(vHqaE82LDpGB_EbA6DcN, obj.getYPos(), 0, 360, abs(vHqaE82LDpGB_EbA6DcN.getXPos() - obj.getXPos()));
 obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", YRiMk7QfEL2j_ZjdLDYfTah, sq_getRandom(0, -2).tofloat());
 }
 else
 obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", sq_getRandom(0, -2).tofloat(), sq_getRandom(0, -2).tofloat());
 }
 else 
 {
 obj.sq_SetMoveParticle("particle/fastdrawbulletdown.ptl", sq_getRandom(0, -5).tofloat(), sq_getRandom(-15, -25).tofloat());
 sq_SetCustomRotate(obj, -0.349064); 
 }
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(DeP925vDyp1); 
 break;
 case 240: 
 local H9jmFYxH3FHeXdq = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seventhflow/seventhflow"; 
 local ncqkDb0A6g = 12; 
 
 switch(receiveData.readDword())
 {
 case 1: H9jmFYxH3FHeXdq += "1shoot.ani"; obj.setTimeEvent(0, 30, 1, false); break;
 case 2: H9jmFYxH3FHeXdq += "2shoot.ani"; obj.setTimeEvent(0, 30, 1, false); break;
 case 3: H9jmFYxH3FHeXdq += "3shoot.ani"; obj.setTimeEvent(0, 30, 1, false); break;
 case 4: H9jmFYxH3FHeXdq += "4shoot.ani"; obj.setTimeEvent(0, 30, 1, false); break;
 case 5: H9jmFYxH3FHeXdq += "5shoot.ani"; break;
 case 6: H9jmFYxH3FHeXdq += "6shoot.ani"; break;
 case 7: H9jmFYxH3FHeXdq += "last.ani"; ncqkDb0A6g = 13; break;
 }
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", H9jmFYxH3FHeXdq); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, ncqkDb0A6g); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 241: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bulletpistolcarbine.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 14); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 BSH312D3zSZDte1xy_1Mkbo.setElement(receiveData.readWord()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 
 local vHqaE82LDpGB_EbA6DcN = sq_GetCNRDObjectToActiveObject(obj.sq_FindFirstTarget(150, 600, 50, 110)); 
 if(vHqaE82LDpGB_EbA6DcN && !vHqaE82LDpGB_EbA6DcN.isDead()) 
 {
 local YRiMk7QfEL2j_ZjdLDYfTah = sq_GetShootingHorizonAngle(vHqaE82LDpGB_EbA6DcN, obj.getYPos(), 0, 360, abs(vHqaE82LDpGB_EbA6DcN.getXPos() - obj.getXPos()));
 obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", YRiMk7QfEL2j_ZjdLDYfTah, sq_getRandom(0, -2).tofloat());
 }
 else
 obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", sq_getRandom(0, -2).tofloat(), sq_getRandom(0, -2).tofloat());
 break;
 case 242: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 15), receiveData.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 16), receiveData.readDword()); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 local pd5tcg5lVLri = receiveData.readDword(); 
 local NNpdCQWyjEd0uZVKpS6C26 = pd5tcg5lVLri.tofloat() / 100.0; 
 local dGDQiVvp0n92FnxWmTL53F = (180.0 * NNpdCQWyjEd0uZVKpS6C26).tointeger(); 
 local KAThx5SpHK94m8_ppXpsl7J = (60.0 * NNpdCQWyjEd0uZVKpS6C26).tointeger(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(pd5tcg5lVLri); 
 hOxLre7OTHWTlJn3oVPn.push_vector(dGDQiVvp0n92FnxWmTL53F); 
 hOxLre7OTHWTlJn3oVPn.push_vector(KAThx5SpHK94m8_ppXpsl7J); 
 
 switch(receiveData.readWord())
 {
 case 1: obj.sq_SetMoveParticle("particle/grenadecenter.ptl", 0.0, 0.0); break; 
 case 2: obj.sq_SetMoveParticle("particle/grenadedown.ptl", 0.0, 0.0); break; 
 case 3: obj.sq_SetMoveParticle("particle/grenadeup.ptl", 0.0, 0.0); break; 
 }
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 243: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(obj.getXPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(obj.getYPos()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangershell.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local ncqkDb0A6g = receiveData.readWord(); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, ncqkDb0A6g); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(obj.getXPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(obj.getYPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(ncqkDb0A6g); 
 local hZvpE9dO78T3H6IgG9 = receiveData.readWord(); 
 sq_SetCustomRotate(obj, sq_ToRadian(hZvpE9dO78T3H6IgG9.tofloat())); 
 hOxLre7OTHWTlJn3oVPn.push_vector(hZvpE9dO78T3H6IgG9); 
 obj.setTimeEvent(1, 100, 0, false); 
 obj.setTimeEvent(2, 20, 0, false); 
 }
 break;
 case 244: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 
 if(receiveData.readWord() == 1) 
 obj.sq_SetMoveParticle("particle/grenadecenter.ptl", 0.0, 0.0);
 else 
 obj.sq_SetMoveParticle("particle/grenadedown.ptl", 0.0, 0.0);
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 22), receiveData.readDword()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/shot01.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 21); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 BSH312D3zSZDte1xy_1Mkbo.setElement(receiveData.readWord()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 }
 break;
 case 245: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 local DeP925vDyp1 = receiveData.readWord(); 
 local DKPS2p9JUZpvWcL8PbkAzDan = obj.getTopCharacter();
 if(DKPS2p9JUZpvWcL8PbkAzDan)DKPS2p9JUZpvWcL8PbkAzDan.setDirection(DeP925vDyp1); 
 obj.setDirection(DeP925vDyp1); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 23), receiveData.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 24), receiveData.readDword()); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM); 
 local CLJDjqfE2EVE9 = receiveData.readDword(); 
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(CLJDjqfE2EVE9); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorloop/floorloop_floornormal.ani"); 
 local pd5tcg5lVLri = CLJDjqfE2EVE9.tofloat() / 350.0; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 obj.setTimeEvent(3, 2000, 1, false); 
 }
 break;
 case 246: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 26), receiveData.readDword()); 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 
 obj.getVar("atkcount").clear_vector(); 
 obj.getVar("atkcount").push_vector(0); 
 obj.getVar("atkcount").push_vector(0); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 if(obj.isMyControlObject())
 {
 local cnLKS6BmoqQkC7d3_fd9Zd = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(cnLKS6BmoqQkC7d3_fd9Zd); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(100, 450)); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(30, 160)); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(700, 1500)); 
 obj.addSetStatePacket(10, cnLKS6BmoqQkC7d3_fd9Zd, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/attackareadummy.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 25); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 local OdcTEvub5J1s91Lp = obj.getObjectManager(); 
 local VIY4NYafDJIbThjeSzY = OdcTEvub5J1s91Lp.getCollisionObjectNumber(); 
 for(local Pb4_1tOkG325A1XKwf = 0; Pb4_1tOkG325A1XKwf < VIY4NYafDJIbThjeSzY; Pb4_1tOkG325A1XKwf++)
 {
 local AquJIQ0kkW8gmeDBhEU2 = OdcTEvub5J1s91Lp.getCollisionObject(Pb4_1tOkG325A1XKwf); 
 
 if(!AquJIQ0kkW8gmeDBhEU2 || !obj.isEnemy(AquJIQ0kkW8gmeDBhEU2)) continue;
 sq_AddHitObject(obj, AquJIQ0kkW8gmeDBhEU2); 
 }
 obj.setTimeEvent(0, 70, 0, false); 
 break;
 }
 break;
 case 247: 
 local lI5XAVV7Ex = receiveData.readDword(); 
 obj.getVar("subType").clear_vector(); 
 obj.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 obj.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = obj.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(receiveData.readWord()); 
 if(obj.isMyControlObject())
 obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummyexplosion.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 28); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 local OIUmvF0yo22yS3Qofy = receiveData.readDword() - 1; 
 obj.setTimeEvent(5, NUcGAYB0gMxueW2a.getDelaySum(false) / OIUmvF0yo22yS3Qofy, OIUmvF0yo22yS3Qofy, false); 
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummy.ani"); 
 obj.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(obj, 27); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, receiveData.readDword()); 
 sq_SetCurrentAttackInfo(obj, BSH312D3zSZDte1xy_1Mkbo); 
 obj.getVar().clear_vector(); 
 obj.getVar().push_vector(receiveData.readDword()); 
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
