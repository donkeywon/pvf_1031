function setState_po_qq506807329new_swordman_24370(obj, state, datas) {
	if (!obj) return;
	obj.getVar("state").clear_vector();
	obj.getVar("state").push_vector(state);
	local ERYATPBqaVfee = obj.getVar("skill").get_vector(0);
	switch (ERYATPBqaVfee) {
	case 82:
		switch (state) {
		case 11:
			local MZJkWei3Cksd2dWU5u = obj.getVar("kalla").get_vector(0);
			local MZJkWei3Cksd2dWU5u2 = obj.getVar("kalla").get_vector(4);
			local sdeZJkWei3Cksd2dWU5u = 1500;
			local SWEZJkWei3Cksd2dWU5u = sq_CreateAnimation("", "passiveobject/character/swordman/Animation/Kalla/ShadowLand.ani");
			local SWEZJkWei3Cksd2dWsd = sq_CreateAnimation("passiveobject/character/swordman/Animation/Kalla/", "ShadowLandDodge.ani");
			SWEZJkWei3Cksd2dWU5u.addLayerAnimation(1, SWEZJkWei3Cksd2dWsd, true);
			obj.setCurrentAnimation(SWEZJkWei3Cksd2dWU5u);
			local SWEww3Wei3Cksd2dWsd = sq_GetCustomAttackInfo(obj, 15);
			sq_SetCurrentAttackPower(SWEww3Wei3Cksd2dWsd, MZJkWei3Cksd2dWU5u);
			sq_SetCurrentAttackInfo(obj, SWEww3Wei3Cksd2dWsd);
			obj.setTimeEvent(0, sdeZJkWei3Cksd2dWU5u, 1, false);
			obj.sq_SetMoveParticle("Particle/kalla.ptl", 0.0, 0.0);
			break;
		case 12:
			local SWEww3Wei3Cksd2dW3s = obj.getVar("kalla").get_vector(1);
			local sdeZJkWei3Cksd2dWU5u = obj.getVar("kalla").get_vector(2);
			local SWWFWei3Cksd2dW3s = obj.getVar("kalla").get_vector(3);
			local SWWFWei3Cksd = obj.getParent();
			if (SWWFWei3Cksd) sq_moveWithParent(SWWFWei3Cksd, obj);
			local SWEZJkWei3Cksd2dWU5u = sq_CreateAnimation("", "passiveobject/character/swordman/Animation/Kalla/firedodgeloop.ani");
			SWEZJkWei3Cksd2dWU5u.setSpeedRate(80.0);
			local SWSWFWei3Cksd2dW3s = sq_CreateAnimation("passiveobject/character/swordman/Animation/Kalla/", "firenormalloop.ani");
			SWSWFWei3Cksd2dW3s.setSpeedRate(80.0);
			SWEZJkWei3Cksd2dWU5u.addLayerAnimation(1, SWSWFWei3Cksd2dW3s, true);
			obj.setCurrentAnimation(SWEZJkWei3Cksd2dWU5u);
			local SWEww3Wei3Cksd2dWsd = sq_GetCustomAttackInfo(obj, 14);
			sq_SetCurrentAttackPower(SWEww3Wei3Cksd2dWsd, SWWFWei3Cksd2dW3s);
			sq_SetCurrentAttackInfo(obj, SWEww3Wei3Cksd2dWsd);
			obj.setTimeEvent(1, sdeZJkWei3Cksd2dWU5u, SWEww3Wei3Cksd2dW3s + 1, false);
			break;
		}
		break;
	case 242:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		switch (WpKZKySfahC6R26wQVVvcI) {
		case 1:
			if (state == 10) {
				local _YOLMPJEs387UynZ = obj.getVar();
				local QqpuHn5C49sl = _YOLMPJEs387UynZ.get_vector(0);
				local SsJLKt8gDYxFQ2 = _YOLMPJEs387UynZ.get_vector(1);
				local VkB21A1sgeq6RNCmx = _YOLMPJEs387UynZ.get_vector(2);
				local rdFoGgpSGPcG = _YOLMPJEs387UynZ.get_vector(3);
				local dvQ_TrpjbU0kUU7vj = _YOLMPJEs387UynZ.get_vector(4);
				for (local y0RvIPERnPiBoJmPVW2Nus = 0; y0RvIPERnPiBoJmPVW2Nus < _YOLMPJEs387UynZ.get_obj_vector_size(); y0RvIPERnPiBoJmPVW2Nus++) {
					local FnUFL8OeyfKg = _YOLMPJEs387UynZ.get_obj_vector(y0RvIPERnPiBoJmPVW2Nus);
					if (FnUFL8OeyfKg) {
						local LPJLg1UQ9QgqLBAvzzWSHL = sq_GetCNRDObjectToActiveObject(FnUFL8OeyfKg);
						if (LPJLg1UQ9QgqLBAvzzWSHL && !LPJLg1UQ9QgqLBAvzzWSHL.isDead()) {
							if (obj.isMyControlObject()) {
								sq_BinaryStartWrite();
								sq_BinaryWriteDword(242);
								sq_BinaryWriteDword(2);
								sq_BinaryWriteDword(dvQ_TrpjbU0kUU7vj);
								sq_BinaryWriteDword(QqpuHn5C49sl);
								sq_BinaryWriteDword(SsJLKt8gDYxFQ2);
								sq_BinaryWriteDword(VkB21A1sgeq6RNCmx);
								sq_BinaryWriteDword(rdFoGgpSGPcG);

								local qVScJb2mlkSZeDwQyUWWNoEM = sq_GetObjectHeight(LPJLg1UQ9QgqLBAvzzWSHL);
								local MUDCyT_NSHVR = 130.0;
								local L371VA73bSiZd4ro1 = qVScJb2mlkSZeDwQyUWWNoEM / MUDCyT_NSHVR;
								sq_BinaryWriteFloat(L371VA73bSiZd4ro1);
								sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, LPJLg1UQ9QgqLBAvzzWSHL.getXPos(), LPJLg1UQ9QgqLBAvzzWSHL.getYPos(), LPJLg1UQ9QgqLBAvzzWSHL.getZPos() + sq_GetObjectHeight(LPJLg1UQ9QgqLBAvzzWSHL) / 2);
							}
							local jSpLKuTeGSVlByBPKnxC = CNSquirrelAppendage.sq_GetAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/indaramang/ap_indaramang.nut");
							if (jSpLKuTeGSVlByBPKnxC && isSameObject(obj, jSpLKuTeGSVlByBPKnxC.getSource())) CNSquirrelAppendage.sq_RemoveAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/indaramang/ap_indaramang.nut");
						}
					}
				}

				obj.getVar().clear_obj_vector();
			}
			break;
		}
		break;
	case 230:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		switch (WpKZKySfahC6R26wQVVvcI) {
		case 1:
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 2);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 3);
				obj.setTimeEvent(0, 600, 0, true);

				obj.getVar().clear_timer_vector();
				obj.getVar().push_timer_vector();
				local MeKfAVd85H2BE = obj.getVar().get_timer_vector(0);
				MeKfAVd85H2BE.setParameter(50, -1);
				MeKfAVd85H2BE.resetInstant(0);
				break;
			case 11:
				obj.removeAllTimeEvent();
				setCurrentAnimationFromCutomIndex(obj, 2);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 4);
				local PG5dkLwkVDEot = obj.getCurrentAnimation();
				local L371VA73bSiZd4ro1 = (obj.getVar("rate").get_vector(0)).tofloat() / 100.0;
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				sq_SetAttackBoundingBoxSizeRate(PG5dkLwkVDEot, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				obj.setTimeEvent(1, 200, 0, false);
				obj.sq_SetMoveParticle("particle/bloodmarblemove.ptl", 0.0, -50.0);
				sq_SetSpeedToMoveParticle(obj, 0, 100);
				break;
			case 12:
				obj.removeAllTimeEvent();
				setCurrentAnimationFromCutomIndex(obj, 3);
				local PG5dkLwkVDEot = obj.getCurrentAnimation();
				local L371VA73bSiZd4ro1 = (obj.getVar("rate").get_vector(0)).tofloat() / 100.0;
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/miniexplosionround.ani", ENUM_DRAWLAYER_BOTTOM, obj.getXPos(), obj.getYPos(), obj.getZPos(), L371VA73bSiZd4ro1, false);
				sq_SetMyShake(obj, 10, 150);
				break;
			case 13:
				setCurrentAnimationFromCutomIndex(obj, 4);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 5);
				local c45l3xs5bFey87M83eqNFU7 = obj.getVar("rate").get_vector(0);
				local AYJkkFthGc = obj.getVar("rate").get_vector(1);

				local jZBHR1yTSvyr57Iy = 3 + sq_GetUniformVelocity(1, 3, c45l3xs5bFey87M83eqNFU7 - 100, AYJkkFthGc - 100);
				local ZB5AB3ShYXTSnF = sq_GetCurrentAttackInfo(obj);
				sq_SetCurrentAttackBonusRate(ZB5AB3ShYXTSnF, obj.getVar().get_vector(jZBHR1yTSvyr57Iy));
				local PG5dkLwkVDEot = obj.getCurrentAnimation();
				local L371VA73bSiZd4ro1 = c45l3xs5bFey87M83eqNFU7.tofloat() / 100.0;
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				sq_SetAttackBoundingBoxSizeRate(PG5dkLwkVDEot, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				CreateAniRate(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/bloodmarbleexplosion_finish_floor.ani", ENUM_DRAWLAYER_BOTTOM, obj.getXPos(), obj.getYPos(), obj.getZPos(), L371VA73bSiZd4ro1, false);
				sq_SetMyShake(obj, 6, PG5dkLwkVDEot.getDelaySum(0, 6));
				break;
			}
			break;
		}
		break;
	case 234:
		switch (state) {
		case 10:

			for (local y0RvIPERnPiBoJmPVW2Nus = 0; y0RvIPERnPiBoJmPVW2Nus < obj.getVar().get_obj_vector_size(); y0RvIPERnPiBoJmPVW2Nus++) {
				local LPJLg1UQ9QgqLBAvzzWSHL = sq_GetCNRDObjectToActiveObject(obj.getVar().get_obj_vector(y0RvIPERnPiBoJmPVW2Nus));
				if (LPJLg1UQ9QgqLBAvzzWSHL && !LPJLg1UQ9QgqLBAvzzWSHL.isDead()) {

					if (CNSquirrelAppendage.sq_IsAppendAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/swordofmind/ap_swordofmind_attack.nut")) CNSquirrelAppendage.sq_RemoveAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/swordofmind/ap_swordofmind_attack.nut");

					CNSquirrelAppendage.sq_AppendAppendage(LPJLg1UQ9QgqLBAvzzWSHL, obj, 234, true, "character/swordman/swordofmind/ap_swordofmind_attack.nut", true);
				}
			}
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 9);

			obj.setTimeEvent(0, 120, 0, true);
			break;
		case 11:
			obj.removeAllTimeEvent();

			obj.setCurrentPos(sq_GetVectorData(datas, 0), sq_GetVectorData(datas, 1), sq_GetVectorData(datas, 2));
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 11);
			setCurrentAnimationFromCutomIndex(obj, 19);
			if (obj.isMyControlObject()) {
				sq_flashScreen(obj, 0, 120, 180, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				sq_SetMyShake(obj, 7, 150);
			}
			break;
		}
		break;
	case 236:
		switch (state) {
		case 10:
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 14);
			setCurrentAnimationFromCutomIndex(obj, 28);
			break;
		case 11:
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 55);
			obj.setTimeEvent(0, 100, 0, true);
			break;
		}
		break;
	case 239:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		if (WpKZKySfahC6R26wQVVvcI == 1) {
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 31);

				local gZl3nOInlegc81tMDwEmg = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/magic_circle_start.ani");
				local P6EIWHI3ApXb82cvuylRa = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/slash_before.ani");

				local L371VA73bSiZd4ro1 = (obj.getVar().get_vector(5)).tofloat() / 100.0;
				local PG5dkLwkVDEot = sq_GetCurrentAnimation(obj);
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				gZl3nOInlegc81tMDwEmg.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				gZl3nOInlegc81tMDwEmg.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				P6EIWHI3ApXb82cvuylRa.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				P6EIWHI3ApXb82cvuylRa.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				local z7DjtRGVpYPR32j8EH94h8Q = sq_CreatePooledObject(gZl3nOInlegc81tMDwEmg, true);
				local BMgw9hNcwDCdR6_PTVGe8 = sq_CreatePooledObject(P6EIWHI3ApXb82cvuylRa, true);
				z7DjtRGVpYPR32j8EH94h8Q = sq_SetEnumDrawLayer(z7DjtRGVpYPR32j8EH94h8Q, ENUM_DRAWLAYER_BOTTOM);
				BMgw9hNcwDCdR6_PTVGe8 = sq_SetEnumDrawLayer(BMgw9hNcwDCdR6_PTVGe8, ENUM_DRAWLAYER_NORMAL);
				z7DjtRGVpYPR32j8EH94h8Q.setCurrentPos(sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
				BMgw9hNcwDCdR6_PTVGe8.setCurrentPos(sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
				sq_AddObject(obj, z7DjtRGVpYPR32j8EH94h8Q, OBJECTTYPE_DRAWONLY, false);
				sq_AddObject(obj, BMgw9hNcwDCdR6_PTVGe8, OBJECTTYPE_DRAWONLY, false);

				local c2ezufswvtb_xyyEFXOrk = (obj.getVar().get_vector(2)) / 8 * 6;
				obj.setTimeEvent(1, c2ezufswvtb_xyyEFXOrk, 1, false);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 32);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 18);
				sq_SetAttackInfoForceHitStunTime(sq_GetCurrentAttackInfo(obj), obj.getVar().get_vector(4));

				local gZl3nOInlegc81tMDwEmg = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/magic_circle_loop.ani");
				local L371VA73bSiZd4ro1 = (obj.getVar().get_vector(5)).tofloat() / 100.0;
				gZl3nOInlegc81tMDwEmg.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				gZl3nOInlegc81tMDwEmg.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				local z7DjtRGVpYPR32j8EH94h8Q = sq_CreatePooledObject(gZl3nOInlegc81tMDwEmg, true);
				z7DjtRGVpYPR32j8EH94h8Q = sq_SetEnumDrawLayer(z7DjtRGVpYPR32j8EH94h8Q, ENUM_DRAWLAYER_BOTTOM);
				z7DjtRGVpYPR32j8EH94h8Q.setCurrentPos(sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
				sq_AddObject(obj, z7DjtRGVpYPR32j8EH94h8Q, OBJECTTYPE_DRAWONLY, false);

				obj.getVar("aniobj").clear_obj_vector();
				obj.getVar("aniobj").push_obj_vector(z7DjtRGVpYPR32j8EH94h8Q);
				obj.setTimeEvent(0, obj.getVar().get_vector(7), 0, true);

				local PG5dkLwkVDEot = sq_GetCurrentAnimation(obj);
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);

				obj.setTimeEvent(2, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/slash_before.ani").getDelaySum(false), 0, true);
				break;
			case 12:
				obj.removeAllTimeEvent();
				if (obj.isMyControlObject()) {
					local _YOLMPJEs387UynZ = obj.getVar();
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(239);
					sq_BinaryWriteDword(3);
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(4));
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(0));
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(1));
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(5));
					sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
				}
				break;
			case 13:
				setCurrentAnimationFromCutomIndex(obj, 33);

				local L371VA73bSiZd4ro1 = (obj.getVar().get_vector(5)).tofloat() / 100.0;
				local PG5dkLwkVDEot = sq_GetCurrentAnimation(obj);
				PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				RemoveAllAni(obj);
				local gZl3nOInlegc81tMDwEmg = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/magic_circle_end.ani");
				gZl3nOInlegc81tMDwEmg.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
				gZl3nOInlegc81tMDwEmg.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
				local z7DjtRGVpYPR32j8EH94h8Q = sq_CreatePooledObject(gZl3nOInlegc81tMDwEmg, true);
				z7DjtRGVpYPR32j8EH94h8Q = sq_SetEnumDrawLayer(z7DjtRGVpYPR32j8EH94h8Q, ENUM_DRAWLAYER_BOTTOM);
				z7DjtRGVpYPR32j8EH94h8Q.setCurrentPos(sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
				sq_AddObject(obj, z7DjtRGVpYPR32j8EH94h8Q, OBJECTTYPE_DRAWONLY, false);
				RemoveAllFlash(obj);
				if (obj.isMyControlObject()) sq_flashScreen(obj, 0, 0, PG5dkLwkVDEot.getDelaySum(false), 130, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				break;
			}
		}
		else if (WpKZKySfahC6R26wQVVvcI = 3) {
			local mnpdhrVJrwpWjrDtwePws = obj.getVar().get_vector(1);
			if (state == 10) {
				setCurrentAnimationFromCutomIndex(obj, 34);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 19);
			}
			else if (state == 11) {
				setCurrentAnimationFromCutomIndex(obj, 35);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 20);
				sq_setCurrentAxisPos(obj, 2, sq_GetZPos(obj) + 60);
			}
			local L371VA73bSiZd4ro1 = (obj.getVar().get_vector(0)).tofloat() / 100.0;
			local PG5dkLwkVDEot = sq_GetCurrentAnimation(obj);
			PG5dkLwkVDEot.setImageRateFromOriginal(L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);
			PG5dkLwkVDEot.setAutoLayerWorkAnimationAddSizeRate(L371VA73bSiZd4ro1);
			sq_SetAttackBoundingBoxSizeRate(PG5dkLwkVDEot, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1, L371VA73bSiZd4ro1);

			if (state == 11) PG5dkLwkVDEot.setSpeedRate(115.0);
		}
		break;
	case 241:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		if (WpKZKySfahC6R26wQVVvcI == 2) {
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 37);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigstart/zigstartfront_smoke3.ani", ENUM_DRAWLAYER_NORMAL, true);

				sq_AddDrawOnlyAniFromParent(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigstart/zigstartback_smoke2.ani", 0, -1, 0);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 38);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 23);
				if (obj.isMyControlObject()) {
					sq_flashScreen(obj, 0, 80, 160, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_COVER);
					sq_SetMyShake(obj, 8, 300);
				}
				break;
			case 12:
				setCurrentAnimationFromCutomIndex(obj, 39);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 24);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/floor/zigfinishfloor_1.ani", ENUM_DRAWLAYER_BOTTOM, true);

				sq_AddDrawOnlyAniFromParent(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/body/zigfinishbodyfront_1.ani", 0, 1, 0);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/zigfinishfront_1.ani", ENUM_DRAWLAYER_COVER, true);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/zigfinishback_1.ani", ENUM_DRAWLAYER_NORMAL, true);
				if (obj.isMyControlObject()) {
					sq_flashScreen(obj, 0, 80, 160, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
					sq_SetMyShake(obj, 5, 300);
				}
				break;
			}
		}
		break;
	case 243:
		local _YOLMPJEs387UynZ = obj.getVar();
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		switch (WpKZKySfahC6R26wQVVvcI) {
		case 0:
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 69);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 70);
				obj.setTimeEvent(0, 30, 0, true);
				local Kk7qQwIH5bwGCY = _YOLMPJEs387UynZ.get_vector(8);
				obj.setTimeEvent(1, Kk7qQwIH5bwGCY, 0, true);
				break;
			case 12:
				obj.removeAllTimeEvent();
				obj.getVar("moveObj").clear_vector();
				local FJt7q18PMFZ6j2 = obj.getVar("moveObj");
				FJt7q18PMFZ6j2.push_vector(sq_GetObjectTime(obj));
				FJt7q18PMFZ6j2.push_vector(obj.getXPos());
				FJt7q18PMFZ6j2.push_vector(obj.getYPos());
				FJt7q18PMFZ6j2.push_vector(sq_GetVectorData(datas, 0));
				FJt7q18PMFZ6j2.push_vector(sq_GetVectorData(datas, 1));
				break;
			case 13:
				local Wn6yS7kHKa6qX91Ry5eQE8Fp = _YOLMPJEs387UynZ.get_vector(9);
				local AP8gO4uD80TIY = _YOLMPJEs387UynZ.get_vector(11);
				obj.setTimeEvent(3, 100, Wn6yS7kHKa6qX91Ry5eQE8Fp + AP8gO4uD80TIY, true);
				break;
			case 14:
				setCurrentAnimationFromCutomIndex(obj, 71);
				if (obj.isMyControlObject()) {
					local pp0fG4LyQN9T1tzsgDF_3ho = _YOLMPJEs387UynZ.get_vector(3);
					local SsJLKt8gDYxFQ2 = _YOLMPJEs387UynZ.get_vector(4);
					local VkB21A1sgeq6RNCmx = _YOLMPJEs387UynZ.get_vector(5);
					local rdFoGgpSGPcG = _YOLMPJEs387UynZ.get_vector(6);
					local awARFnREu7e6eF5Mbv2Xouu = obj.getVar("addRate").get_vector(0);
					local Ek0CMOE1_w = obj.getXPos();
					local u3M5d3yvXd6slfxX3qqmVC = obj.getYPos();
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(243);
					sq_BinaryWriteDword(3);
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(1));
					sq_BinaryWriteDword(pp0fG4LyQN9T1tzsgDF_3ho);
					sq_BinaryWriteDword(SsJLKt8gDYxFQ2);
					sq_BinaryWriteDword(VkB21A1sgeq6RNCmx);
					sq_BinaryWriteDword(rdFoGgpSGPcG);
					sq_BinaryWriteDword(awARFnREu7e6eF5Mbv2Xouu);
					sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, Ek0CMOE1_w, u3M5d3yvXd6slfxX3qqmVC + 1, 0);
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(243);
					sq_BinaryWriteDword(4);
					sq_BinaryWriteDword(_YOLMPJEs387UynZ.get_vector(2));
					sq_BinaryWriteDword(pp0fG4LyQN9T1tzsgDF_3ho);
					sq_BinaryWriteDword(SsJLKt8gDYxFQ2);
					sq_BinaryWriteDword(VkB21A1sgeq6RNCmx);
					sq_BinaryWriteDword(rdFoGgpSGPcG);
					sq_BinaryWriteDword(awARFnREu7e6eF5Mbv2Xouu);
					sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, Ek0CMOE1_w, u3M5d3yvXd6slfxX3qqmVC + 2, 0);
					local tdbORncw71VMVmjIK2Sd = sq_GetCurrentAnimation(obj).getDelaySum(0, 0);
					local b6nncHnKHECwfXAJsRNg = sq_flashScreen(obj, tdbORncw71VMVmjIK2Sd, 99999, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					obj.getVar("flashobj").clear_obj_vector();
					obj.getVar("flashobj").push_obj_vector(b6nncHnKHECwfXAJsRNg);
				}
				obj.sq_PlaySound("VAJRA_CHANGE");
				break;
			}
			break;
		case 1:
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, sq_getRandom(42, 44));
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 29);
				local gZl3nOInlegc81tMDwEmg = obj.getCurrentAnimation();
				gZl3nOInlegc81tMDwEmg.setFrameDelay(1, 1000, true);
				sq_Rewind(gZl3nOInlegc81tMDwEmg);
				break;
			case 11:
				obj.setCustomRotate(false, 0.0);
				setCurrentAnimationFromCutomIndex(obj, 45);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 30);
				break;
			}
			break;
		case 2:
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, sq_getRandom(42, 44));
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 29);
				local gZl3nOInlegc81tMDwEmg = obj.getCurrentAnimation();
				gZl3nOInlegc81tMDwEmg.setFrameDelay(1, 1300, true);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 45);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 30);
				break;
			}
			break;
		}
		break;
	case 244:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		if (WpKZKySfahC6R26wQVVvcI == 1) {
			local _YOLMPJEs387UynZ = obj.getVar();
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 48);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 33);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_create/1/floor/1_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 49);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 34);
				obj.setTimeEvent(0, 120, 0, false);

				local z7DjtRGVpYPR32j8EH94h8Q = sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_create/2/floor/2_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				obj.getVar("aniobj").clear_obj_vector();
				obj.getVar("aniobj").push_obj_vector(z7DjtRGVpYPR32j8EH94h8Q);
				obj.getVar().clear_vector();
				local N1wy2NGsoqejr0aCb = obj.getVar();
				N1wy2NGsoqejr0aCb.push_vector(5);
				N1wy2NGsoqejr0aCb.push_vector(-225);
				N1wy2NGsoqejr0aCb.push_vector(70);
				N1wy2NGsoqejr0aCb.push_vector(-320);
				N1wy2NGsoqejr0aCb.push_vector(0);
				N1wy2NGsoqejr0aCb.push_vector(0);
				N1wy2NGsoqejr0aCb.push_vector(-100);
				N1wy2NGsoqejr0aCb.push_vector(315);
				N1wy2NGsoqejr0aCb.push_vector(0);
				N1wy2NGsoqejr0aCb.push_vector(-225);
				N1wy2NGsoqejr0aCb.push_vector(-70);
				N1wy2NGsoqejr0aCb.push_vector(225);
				N1wy2NGsoqejr0aCb.push_vector(70);
				N1wy2NGsoqejr0aCb.push_vector(225);
				N1wy2NGsoqejr0aCb.push_vector(-70);
				N1wy2NGsoqejr0aCb.push_vector(0);
				N1wy2NGsoqejr0aCb.push_vector(100);
				obj.setTimeEvent(1, 120, 5, false);
				break;
			case 12:
				setCurrentAnimationFromCutomIndex(obj, 50);
				RemoveAllAni(obj);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_create/3/floor/3_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				obj.setTimeEvent(2, 100, obj.getMyPassiveObjectCount(24370), false);
				if (obj.isMyControlObject()) {
					local b6nncHnKHECwfXAJsRNg = sq_flashScreen(obj, 100, 9999, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					obj.getVar("flashobj").clear_obj_vector();
					obj.getVar("flashobj").push_obj_vector(b6nncHnKHECwfXAJsRNg);
				}
				break;
			case 13:
				setCurrentAnimationFromCutomIndex(obj, 51);

				local z7DjtRGVpYPR32j8EH94h8Q = sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_create/4/floor/4_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				obj.getVar("aniobj").clear_obj_vector();
				obj.getVar("aniobj").push_obj_vector(z7DjtRGVpYPR32j8EH94h8Q);
				break;
			case 14:
				setCurrentAnimationFromCutomIndex(obj, 52);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 35);
				RemoveAllAni(obj);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_create/5/floor/floor_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				if (obj.isMyControlObject()) {
					local b6nncHnKHECwfXAJsRNg = sq_flashScreen(obj, 200, 9999, 0, 170, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					obj.getVar("flashobj").push_obj_vector(b6nncHnKHECwfXAJsRNg);
				}
				break;
			case 15:
				setCurrentAnimationFromCutomIndex(obj, 53);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 36);

				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/lightninggod/lightning_exp/floor/floor_magic.ani", ENUM_DRAWLAYER_BOTTOM, true);
				RemoveAllFlash(obj);
				if (obj.isMyControlObject()) {
					local gZl3nOInlegc81tMDwEmg = sq_GetCurrentAnimation(obj);
					local JzCMQkxT4mdID = gZl3nOInlegc81tMDwEmg.getDelaySum(0, 6);
					local dajKvcpQp_8Wy = gZl3nOInlegc81tMDwEmg.getDelaySum(false);
					local n4LG4XmctgG = dajKvcpQp_8Wy - JzCMQkxT4mdID;;
					sq_flashScreen(obj, 0, JzCMQkxT4mdID, n4LG4XmctgG, 250, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					sq_SetMyShake(obj, 10, dajKvcpQp_8Wy);
				}
				break;
			}
		}
		else if (WpKZKySfahC6R26wQVVvcI == 2) {
			switch (state) {
			case 10:
				setCurrentAnimationFromCutomIndex(obj, 54);
				break;
			case 11:
				setCurrentAnimationFromCutomIndex(obj, 55);
				sq_SetMyShake(obj, 5, 100);
				break;
			case 12:
				setCurrentAnimationFromCutomIndex(obj, 56);
				break;
			case 13:
				setCurrentAnimationFromCutomIndex(obj, 57);
				obj.getVar("time").clear_vector();
				obj.getVar("time").push_vector(sq_GetObjectTime(obj));
				break;
			}
		}
		break;
	case 246:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		local _YOLMPJEs387UynZ = obj.getVar();
		switch (WpKZKySfahC6R26wQVVvcI) {
		case 1:
			switch (state) {
			case 10:
				obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Launch_Eff_G.ani"));
				break;
			case 11:
				local FnUFL8OeyfKg = sq_GetObject(obj, _YOLMPJEs387UynZ.get_vector(0), _YOLMPJEs387UynZ.get_vector(1));
				if (FnUFL8OeyfKg && !sq_GetCNRDObjectToActiveObject(FnUFL8OeyfKg).isDead()) obj.setCurrentPos(FnUFL8OeyfKg.getXPos(), FnUFL8OeyfKg.getYPos() + 1, FnUFL8OeyfKg.getZPos() + sq_GetHeightObject(FnUFL8OeyfKg) / 2);
				else obj.setCurrentPos(_YOLMPJEs387UynZ.get_vector(2), _YOLMPJEs387UynZ.get_vector(3) + 1, _YOLMPJEs387UynZ.get_vector(4));
				setCurrentAnimationFromCutomIndex(obj, 58);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 37);
				local YtsvuwhexsTIU_S79GUPx4 = [1.57078799, 0.959926, 1.3438964, 1.7976796, 2.18165];
				sq_SetCustomRotate(obj, YtsvuwhexsTIU_S79GUPx4[sq_getRandom(0, 4)]);
				obj.getVar().setBool(0, false);
				break;
			}
			break;
		case 2:
			switch (state) {
			case 10:
				local gZl3nOInlegc81tMDwEmg = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/handlingsword_finish_start_sword_normal_a.ani");
				obj.setCurrentAnimation(gZl3nOInlegc81tMDwEmg);
				gZl3nOInlegc81tMDwEmg.setSpeedRate(150.0);
				if (obj.isMyControlObject()) {

					local b6nncHnKHECwfXAJsRNg = sq_flashScreen(obj, gZl3nOInlegc81tMDwEmg.getDelaySum(false), 99990, 0, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					obj.getVar("flashobj").clear_obj_vector();
					obj.getVar("flashobj").push_obj_vector(b6nncHnKHECwfXAJsRNg);
				}
				break;
			case 11:
				obj.getVar().clear_obj_vector();
				local RRJsvJZLOOrp = 0;
				local NKtzJ6URPR2e = sq_GetVectorData(datas, RRJsvJZLOOrp);
				for (RRJsvJZLOOrp = 1; RRJsvJZLOOrp <= NKtzJ6URPR2e; RRJsvJZLOOrp += 2) {
					local LPJLg1UQ9QgqLBAvzzWSHL = sq_GetCNRDObjectToActiveObject(sq_GetObject(obj, sq_GetVectorData(datas, RRJsvJZLOOrp), sq_GetVectorData(datas, RRJsvJZLOOrp + 1)));
					if (!LPJLg1UQ9QgqLBAvzzWSHL.isDead()) {

						if (CNSquirrelAppendage.sq_IsAppendAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/handlingsword/ap_handlingsword_control.nut")) CNSquirrelAppendage.sq_RemoveAppendage(LPJLg1UQ9QgqLBAvzzWSHL, "character/swordman/handlingsword/ap_handlingsword_control.nut");
						local lx_kPyj_ymeQJ_F = CNSquirrelAppendage.sq_AppendAppendage(LPJLg1UQ9QgqLBAvzzWSHL, obj, 246, true, "character/swordman/handlingsword/ap_handlingsword_control.nut", true);
						sq_HoldAndDelayDie(LPJLg1UQ9QgqLBAvzzWSHL, obj, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, lx_kPyj_ymeQJ_F);
						if (sq_IsGrabable(obj, LPJLg1UQ9QgqLBAvzzWSHL) && !sq_IsFixture(LPJLg1UQ9QgqLBAvzzWSHL)) sq_MoveToAppendage(LPJLg1UQ9QgqLBAvzzWSHL, obj, LPJLg1UQ9QgqLBAvzzWSHL, 0, 0, LPJLg1UQ9QgqLBAvzzWSHL.getZPos() / -1 + 50, 500, true, lx_kPyj_ymeQJ_F);
						obj.getVar().push_obj_vector(LPJLg1UQ9QgqLBAvzzWSHL);
					}
				}
				sq_SetCurrentPos(obj, sq_GetVectorData(datas, RRJsvJZLOOrp), sq_GetVectorData(datas, RRJsvJZLOOrp + 1), 0);
				setCurrentAnimationFromCutomIndex(obj, 59);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 38);
				break;
			}
			break;
		}
		break;
	case 247:
		switch (state) {
		case 10:
			obj.setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/groundstart_00.ani"));
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			local r7vLWiIi58UQ = sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/tombstoneswamp/tombstonestart_03.ani", ENUM_DRAWLAYER_NORMAL, false);
			local BMgw9hNcwDCdR6_PTVGe8 = sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/tombstoneswamp/tombstonestart_03.ani", ENUM_DRAWLAYER_NORMAL, false);
			local LAQI3GD4GOsQ = sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/tombstoneswamp/tombstonestart_03.ani", ENUM_DRAWLAYER_NORMAL, false);
			local Lg3i5EzPyV38gox6Ak = obj.getXPos();
			local ucAKWW39QeScUhmAP7 = obj.getYPos();
			sq_setCurrentAxisPos(r7vLWiIi58UQ, 1, ucAKWW39QeScUhmAP7 - 60);
			sq_setCurrentAxisPos(BMgw9hNcwDCdR6_PTVGe8, 0, Lg3i5EzPyV38gox6Ak - 150);
			sq_setCurrentAxisPos(BMgw9hNcwDCdR6_PTVGe8, 1, ucAKWW39QeScUhmAP7 + 50);
			sq_setCurrentAxisPos(LAQI3GD4GOsQ, 0, Lg3i5EzPyV38gox6Ak + 150);
			sq_setCurrentAxisPos(LAQI3GD4GOsQ, 1, ucAKWW39QeScUhmAP7 + 50);

			obj.getVar("aniobj").clear_obj_vector();
			obj.getVar("aniobj").push_obj_vector(r7vLWiIi58UQ);
			obj.getVar("aniobj").push_obj_vector(BMgw9hNcwDCdR6_PTVGe8);
			obj.getVar("aniobj").push_obj_vector(LAQI3GD4GOsQ);
			break;
		case 11:
			obj.setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/groundloop_00.ani"));

			(obj.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneloop_02.ani"));
			(obj.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneloop_02.ani"));
			(obj.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneloop_02.ani"));
			break;
		case 12:
			obj.setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/groundend_00.ani"));
			break;
		case 13:
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
			setCurrentAnimationFromCutomIndex(obj, 68);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 45);

			sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/tombstoneswamp/tombstoneenda_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/tombstoneswamp/tombstoneendb_01.ani", ENUM_DRAWLAYER_NORMAL, true);

			(obj.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneendc_00.ani"));
			(obj.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneendc_00.ani"));
			(obj.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("", "character/swordman/effect/animation/tombstoneswamp/tombstoneendc_00.ani"));
			sq_SetMyShake(obj, 15, 240);
			break;
		}
		break;
	case 248:
		local WpKZKySfahC6R26wQVVvcI = obj.getVar("subType").get_vector(0);
		switch (WpKZKySfahC6R26wQVVvcI) {
		case 3:
			if (state == 10) {
				obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_dragon_02.ani"));
			}
			else if (state == 11) {
				obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_dragon_vanish_02.ani"));
			}
			break;
		}
		break;
	}
};
