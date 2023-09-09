function onAttack_po_qq506807329new_swordman_24370(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;
	local BiKQCj07cYSHxEp = obj.getVar("skill").get_vector(0);
	switch (BiKQCj07cYSHxEp) {
	case 82:
		local WzLm1opoohOtuU7m = obj.getVar("state").get_vector(0);
		if (WzLm1opoohOtuU7m == 11 && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			local kallaAp = "character/swordman/appendage/ap_kallatar.nut";
			if (damager.getVar("kallaCount").size_vector() < 1) {
				damager.getVar("kallaCount").clear_vector();
				damager.getVar("kallaCount").push_vector(3);
			}
			else {
				local XFg9eHcj1DBhssde = damager.getVar("kallaCount").get_vector(0);
				if (XFg9eHcj1DBhssde < 3) damager.getVar("kallaCount").set_vector(0, XFg9eHcj1DBhssde + 1);
				else sq_SendDestroyPacketPassiveObject(obj);
			}

			local XFsszj1DBhssde = sq_GetCenterXPos(boundingBox);
			local ddeFsszj1DBhssde = sq_GetCenterZPos(boundingBox);
			local ddeFsszj1DBhsSDW = damager.getMyPassiveObjectCount(24370);
			if (ddeFsszj1DBhsSDW < 3) {
				local ddeFdsdeDBhsSDW = sq_getRandom(-20, 20);
				local ddeFdsdeDBhsSDW2 = obj.getVar("kalla").get_vector(4);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(82);
				sq_BinaryWriteDword(1);
				sq_BinaryWriteDword(obj.getVar("kalla").get_vector(0));
				sq_BinaryWriteDword(obj.getVar("kalla").get_vector(1));
				sq_BinaryWriteDword(obj.getVar("kalla").get_vector(2));
				sq_BinaryWriteDword(obj.getVar("kalla").get_vector(3));
				sq_SendCreatePassiveObjectPacket(damager, 24370, 0, ddeFdsdeDBhsSDW, 3, ddeFsszj1DBhssde, obj.getDirection());
			}
			sq_SendDestroyPacketPassiveObject(obj);
		}
		break;
	case 229:
		if (isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE)) return;
		if (obj.getVar().is_obj_vector(damager)) return;
		obj.getVar().push_obj_vector(damager);

		if (!CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/bloodboom/ap_bloodboom.nut")) CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/swordman/bloodboom/ap_bloodboom.nut");
		CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 229, true, "character/swordman/bloodboom/ap_bloodboom.nut", true);
		break;
	case 230:
		if (isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE)) return;
		local qtrXC5J4JE3UYEwLQ0tFcE = obj.getVar("subType").get_vector(0);
		switch (qtrXC5J4JE3UYEwLQ0tFcE) {
		case 2:
			if (!sq_IsHoldable(obj, damager)) return;
			local Xb_wlQk6zL45uQ_lKkDA = obj.getParent();
			if (!Xb_wlQk6zL45uQ_lKkDA) return;

			local lazZzXyzgbpgma = CNSquirrelAppendage.sq_GetAppendage(damager, "character/swordman/bloodmarble/ap_bloodmarble.nut");

			if (!lazZzXyzgbpgma) {

				lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 230, true, "character/swordman/bloodmarble/ap_bloodmarble.nut", true);
				sq_HoldAndDelayDie(damager, obj, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, lazZzXyzgbpgma);
			}

			if (lazZzXyzgbpgma) {
				local BXfchvWHWvVoQmf = lazZzXyzgbpgma.getVar();
				local DLfbeboMUwR5aSI = BXfchvWHWvVoQmf.size_vector();

				local fRbB3usFScZdnEYC0eQv = damager.getXPos();
				local JqhEgHtZvxJG = damager.getYPos();
				local wN1jizbQDOTVj = 10;

				local WP48wwcll7s = Xb_wlQk6zL45uQ_lKkDA.getXPos();
				local b7Cy13npQIXQC7ME2zA = Xb_wlQk6zL45uQ_lKkDA.getYPos();
				local MSIqksYTAmcX5E1jUvUW = Xb_wlQk6zL45uQ_lKkDA.getZPos();

				local ucJJct3eZj_fYOU = (fRbB3usFScZdnEYC0eQv > WP48wwcll7s) ? fRbB3usFScZdnEYC0eQv + sq_getRandom(40, 80) : fRbB3usFScZdnEYC0eQv - sq_getRandom(40, 80);
				local FHUgCQ0e_co5mVvD = JqhEgHtZvxJG;
				local hKyLsB7WkK8c = 20 + 70;
				for (local vCs0VO0exbcTJ_VNR = 0; vCs0VO0exbcTJ_VNR < DLfbeboMUwR5aSI; vCs0VO0exbcTJ_VNR += 11) {

					if (BXfchvWHWvVoQmf.get_vector(vCs0VO0exbcTJ_VNR) == -1) {
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR, 1);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 1, lazZzXyzgbpgma.getTimer().Get());
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 2, fRbB3usFScZdnEYC0eQv);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 3, JqhEgHtZvxJG);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 4, wN1jizbQDOTVj);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 5, ucJJct3eZj_fYOU);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 6, FHUgCQ0e_co5mVvD);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 7, hKyLsB7WkK8c);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 8, WP48wwcll7s);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 9, b7Cy13npQIXQC7ME2zA);
						BXfchvWHWvVoQmf.set_vector(vCs0VO0exbcTJ_VNR + 10, MSIqksYTAmcX5E1jUvUW);
						return;
					}
				}
				BXfchvWHWvVoQmf.push_vector(1);
				BXfchvWHWvVoQmf.push_vector(lazZzXyzgbpgma.getTimer().Get());
				BXfchvWHWvVoQmf.push_vector(fRbB3usFScZdnEYC0eQv);
				BXfchvWHWvVoQmf.push_vector(JqhEgHtZvxJG);
				BXfchvWHWvVoQmf.push_vector(wN1jizbQDOTVj);
				BXfchvWHWvVoQmf.push_vector(ucJJct3eZj_fYOU);
				BXfchvWHWvVoQmf.push_vector(FHUgCQ0e_co5mVvD);
				BXfchvWHWvVoQmf.push_vector(hKyLsB7WkK8c);
				BXfchvWHWvVoQmf.push_vector(WP48wwcll7s);
				BXfchvWHWvVoQmf.push_vector(b7Cy13npQIXQC7ME2zA);
				BXfchvWHWvVoQmf.push_vector(MSIqksYTAmcX5E1jUvUW);
				local VrrfLknjLnGzALUl4gSn0HDB = sq_GetCNRDObjectToCollisionObject(Xb_wlQk6zL45uQ_lKkDA);
				if (VrrfLknjLnGzALUl4gSn0HDB) {

					local jStcBwRFXtoa23XlcJlh0F = VrrfLknjLnGzALUl4gSn0HDB.getVar("rate");
					local NfCnr5B5kumnIaCVfqU = jStcBwRFXtoa23XlcJlh0F.get_vector(0);
					local Ig81aL6v_anGc7u72RjON8 = jStcBwRFXtoa23XlcJlh0F.get_vector(1);
					if (NfCnr5B5kumnIaCVfqU < Ig81aL6v_anGc7u72RjON8) jStcBwRFXtoa23XlcJlh0F.set_vector(0, NfCnr5B5kumnIaCVfqU + jStcBwRFXtoa23XlcJlh0F.get_vector(2));
				}
			}
			break;
		}
		break;
	case 236:
		if (isStuck || !damager || !damager.isObjectType(OBJECTTYPE_ACTIVE)) return;
		local exce7QC4yaN_QtZtd_k67O = obj.getVar("state").get_vector(0);
		switch (exce7QC4yaN_QtZtd_k67O) {
		case 10:
			if (sq_IsHoldable(obj, damager)) {

				if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/flashcut/ap_flashcut.nut")) CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/swordman/flashcut/ap_flashcut.nut");
				local lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 236, true, "character/swordman/flashcut/ap_flashcut.nut", true);

				//sq_HoldAndDelayDie(damager, obj, true, true, true, 400, 300, ENUM_DIRECTION_NEUTRAL, lazZzXyzgbpgma);
				obj.getVar().push_obj_vector(damager);
			}
			break;
		case 11:
			local iIZ9h4Ob2AsPlT4F1a = obj.getVar().get_vector(0);
			local k4c29shI0c1Zjickd = ["fcfinish01_eff_00.ani""fcfinish02_eff_00.ani""fcfinish03_eff_00.ani""fcfinish04_eff_00.ani""fcfinish05_eff_00.ani"];
			local FsUidzFSJf1C83CG9zTYAG0 = (iIZ9h4Ob2AsPlT4F1a > 0) ? k4c29shI0c1Zjickd[sq_getRandom(0, 3)] : k4c29shI0c1Zjickd[4];
			local S10LVkNeIZi_H3O = sq_CreateAnimation("character/swordman/effect/animation/flashcut/", FsUidzFSJf1C83CG9zTYAG0);
			local fhv2U6fMNW = sq_CreatePooledObject(S10LVkNeIZi_H3O, true);
			sq_SetCurrentDirection(fhv2U6fMNW, damager.getDirection());
			fhv2U6fMNW.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + sq_GetObjectHeight(damager) / 2);
			fhv2U6fMNW = sq_SetEnumDrawLayer(fhv2U6fMNW, ENUM_DRAWLAYER_NORMAL);
			sq_AddObject(obj, fhv2U6fMNW, OBJECTTYPE_DRAWONLY, false);
			break;
		}
		break;
	case 238:
		local wGPqVspQslVG = sq_GetCurrentFrameIndex(obj);
		if (wGPqVspQslVG > 10) return;

		if (isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE) || obj.getVar().is_obj_vector(damager)) return;

		if (sq_IsHoldable(obj, damager)) {
			local cHruFC_5SEhsoMU = obj.getVar().get_vector(1);
			local lazZzXyzgbpgma = CNSquirrelAppendage.sq_GetAppendage(damager, "character/swordman/slashofhell/ap_slashofhell.nut");
			if (!lazZzXyzgbpgma) {
				lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 238, true, "character/swordman/slashofhell/ap_slashofhell.nut", true);
				sq_HoldAndDelayDie(damager, obj, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, lazZzXyzgbpgma);
				lazZzXyzgbpgma.getVar().clear_vector();
			}
			lazZzXyzgbpgma.getVar().push_vector(lazZzXyzgbpgma.getTimer().Get());
			lazZzXyzgbpgma.getVar().push_vector(cHruFC_5SEhsoMU);
			lazZzXyzgbpgma.getVar().push_vector(sq_GetGroup(obj));
			lazZzXyzgbpgma.getVar().push_vector(sq_GetUniqueId(obj));
			obj.getVar().push_obj_vector(damager);
		}
		break;
	case 241:
		local qtrXC5J4JE3UYEwLQ0tFcE = obj.getVar("subType").get_vector(0);
		if (qtrXC5J4JE3UYEwLQ0tFcE == 2) {
			local exce7QC4yaN_QtZtd_k67O = obj.getVar("state").get_vector(0);
			if (exce7QC4yaN_QtZtd_k67O != 11) return;
			if (!damager || !damager.isObjectType(OBJECTTYPE_ACTIVE)) return;
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/zigadvent/ap_zigadvent.nut")) return;

			if (sq_IsHoldable(obj, damager)) {
				local lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 241, true, "character/swordman/zigadvent/ap_zigadvent.nut", true);

				sq_HoldAndDelayDie(damager, obj, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, lazZzXyzgbpgma);

				sq_MoveToAppendage(damager, obj, obj, 0, 0, 0, 1000, true, lazZzXyzgbpgma);
				obj.getVar().push_obj_vector(damager);
			}
		}
		break;
	case 243:

		if (!damager || isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE) || CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/vajra/ap_vajra.nut")) return;
		local lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 243, true, "character/swordman/vajra/ap_vajra.nut", true);
		lazZzXyzgbpgma.getVar().clear_vector();
		lazZzXyzgbpgma.getVar().push_vector(obj.getVar("addRate").get_vector(0));
		break;
	case 244:

		if (!damager || isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE) || CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/lightninggod/ap_lightninggod.nut")) return;
		local lazZzXyzgbpgma = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 244, true, "character/swordman/lightninggod/ap_lightninggod.nut", true);
		lazZzXyzgbpgma.getVar().clear_vector();
		lazZzXyzgbpgma.getVar().push_vector(obj.getVar("addRate").get_vector(0));
		break;
	case 246:
		local qtrXC5J4JE3UYEwLQ0tFcE = obj.getVar("subType").get_vector(0);
		if (qtrXC5J4JE3UYEwLQ0tFcE == 1) {
			if (obj.getVar().getBool(0) == false) {
				if (!damager || isStuck || !damager.isObjectType(OBJECTTYPE_ACTIVE)) return;
				obj.getVar().getBool(0, true);
				local S10LVkNeIZi_H3O = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/handlingsword_atk_eff_a.ani");
				local fhv2U6fMNW = sq_CreatePooledObject(S10LVkNeIZi_H3O, true);
				sq_SetCurrentDirection(fhv2U6fMNW, obj.getDirection());
				fhv2U6fMNW.setCurrentPos(damager.getXPos(), damager.getYPos(), damager.getZPos() + sq_GetHeightObject(damager) / 2);
				fhv2U6fMNW = sq_SetEnumDrawLayer(fhv2U6fMNW, ENUM_DRAWLAYER_NORMAL);
				sq_AddObject(obj, fhv2U6fMNW, OBJECTTYPE_DRAWONLY, false);
				local FxK8pRjBJ9045o_zb = [1.57078799, 1.396256, 1.134458];
				sq_SetCustomRotate(fhv2U6fMNW, FxK8pRjBJ9045o_zb[sq_getRandom(0, 2)]);
			}
		}
		break;
	}
};

function onKeyFrameFlag_po_qq506807329new_swordman_24370(P4uYQfp2HrQhDmWh0OeGozR, cctKI3ueg7NtnPwOwW3MP6M) {
	if (!P4uYQfp2HrQhDmWh0OeGozR) return false;
	local LGgNwQRekfy48 = P4uYQfp2HrQhDmWh0OeGozR.getVar("skill").get_vector(0);
	switch (LGgNwQRekfy48) {
	case 230:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		if (lSNf0YWfLibcEOhT == 1) {
			local hc01XUp0HxSD = P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0);
			if (hc01XUp0HxSD == 13 && cctKI3ueg7NtnPwOwW3MP6M == 1 && P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
				sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 60, 200);
				sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 0, 100, 0, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
			}
		}
		break;
	case 235:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		switch (lSNf0YWfLibcEOhT) {
		case 2:
			if (cctKI3ueg7NtnPwOwW3MP6M == 1 && P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 3, 50);
			break;
		}
		break;
	case 238:
		if (cctKI3ueg7NtnPwOwW3MP6M == 2) {
			sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 7, 720);
			local ykIMVGFeBQ8kl4YfeqKQUGjC = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(2);
			local b5RJeqhmBQLpJmN0_bbkoGt = sq_GetCurrentAnimation(P4uYQfp2HrQhDmWh0OeGozR);
			local MCqDZuo0D6xO9dA = b5RJeqhmBQLpJmN0_bbkoGt.getDelaySum(2, 10);
			P4uYQfp2HrQhDmWh0OeGozR.setTimeEvent(0, MCqDZuo0D6xO9dA / ykIMVGFeBQ8kl4YfeqKQUGjC, ykIMVGFeBQ8kl4YfeqKQUGjC, true);
		}
		else if (cctKI3ueg7NtnPwOwW3MP6M == 1) {
			sq_SetCurrentAttackInfoFromCustomIndex(P4uYQfp2HrQhDmWh0OeGozR, 17);
			local DZccF3dEZQIiXxQT = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(0);
			local fLi_TUUiLnA5uKRD7OhoAQ = sq_GetCurrentAttackInfo(P4uYQfp2HrQhDmWh0OeGozR);
			sq_SetCurrentAttackBonusRate(fLi_TUUiLnA5uKRD7OhoAQ, DZccF3dEZQIiXxQT);
		}
		break;
	case 239:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		if (lSNf0YWfLibcEOhT == 3) {
			if (P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0) == 10 && cctKI3ueg7NtnPwOwW3MP6M == 1) {
				P4uYQfp2HrQhDmWh0OeGozR.resetHitObjectList();
				sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 8, 50);
			}
			else if (P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0) == 11 && cctKI3ueg7NtnPwOwW3MP6M == 2) {
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
					sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 8, 400);
					sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 0, 100, 300, 200, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				}
			}
		}
		break;
	case 240:
		if (cctKI3ueg7NtnPwOwW3MP6M == 1) {
			sq_SetCurrentAttackInfoFromCustomIndex(P4uYQfp2HrQhDmWh0OeGozR, 22);
			RemoveAllFlash(P4uYQfp2HrQhDmWh0OeGozR);
			if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
				sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 0, 400, 400, 170, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 50, 100, 50, 180, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 9, 200);
			}
		}
		break;
	case 241:
		local D4cDDwd7YNPkSf6ySur = P4uYQfp2HrQhDmWh0OeGozR.getVar();
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		if (lSNf0YWfLibcEOhT == 2) {
			local TvvacszPynSMs = P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0);
			switch (TvvacszPynSMs) {
			case 12:
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject() && cctKI3ueg7NtnPwOwW3MP6M == 10) {

					sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 640, 80, 0, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
				}
				else if (cctKI3ueg7NtnPwOwW3MP6M == 2) {

					sq_SetCurrentAttackInfoFromCustomIndex(P4uYQfp2HrQhDmWh0OeGozR, 25);

					sq_CreateDrawOnlyObject(P4uYQfp2HrQhDmWh0OeGozR, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/handgrapexplosion/explosinback_1.ani", ENUM_DRAWLAYER_NORMAL, true);

					sq_CreateDrawOnlyObject(P4uYQfp2HrQhDmWh0OeGozR, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigfinish/handgrapexplosion/explosinfront_1.ani", ENUM_DRAWLAYER_NORMAL, true);
					if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
						sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 0, 80, 240, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_COVER);
						sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 7, 500);
					}

					local DMqyhurDVr4q_ZE_nFgxGQ = P4uYQfp2HrQhDmWh0OeGozR.getXPos();
					local vSZGIOWnAifSbc9nD3GQ = P4uYQfp2HrQhDmWh0OeGozR.getYPos();
					local gsdQ7u_MQK18yA = P4uYQfp2HrQhDmWh0OeGozR.getZPos();
					local Wzv4sYaZE85xhtRkM = 380;
					local v9hbtmkEQ9jsEiDY1pbAyTBl = 110;
					local b2FQANj28JW5_yNRA5wz = 400;
					local EGOSraXuSFrBGF = P4uYQfp2HrQhDmWh0OeGozR.getObjectManager();
					for (local O1Je_pzlwm24Q6cnS = 0; O1Je_pzlwm24Q6cnS < EGOSraXuSFrBGF.getCollisionObjectNumber(); O1Je_pzlwm24Q6cnS++) {
						local bXt4HbTvDg3f9wljMOy_zM4s = EGOSraXuSFrBGF.getCollisionObject(O1Je_pzlwm24Q6cnS);
						if (bXt4HbTvDg3f9wljMOy_zM4s && bXt4HbTvDg3f9wljMOy_zM4s.isObjectType(OBJECTTYPE_ACTIVE) && P4uYQfp2HrQhDmWh0OeGozR.isEnemy(bXt4HbTvDg3f9wljMOy_zM4s) && bXt4HbTvDg3f9wljMOy_zM4s.isInDamagableState(P4uYQfp2HrQhDmWh0OeGozR) && sq_Abs(bXt4HbTvDg3f9wljMOy_zM4s.getXPos() - DMqyhurDVr4q_ZE_nFgxGQ) <= Wzv4sYaZE85xhtRkM && sq_Abs(bXt4HbTvDg3f9wljMOy_zM4s.getYPos() - vSZGIOWnAifSbc9nD3GQ) <= v9hbtmkEQ9jsEiDY1pbAyTBl && sq_Abs(bXt4HbTvDg3f9wljMOy_zM4s.getZPos() - gsdQ7u_MQK18yA) <= b2FQANj28JW5_yNRA5wz) {
							local aqua9utlBdXoQrpmzv = sq_GetCNRDObjectToActiveObject(bXt4HbTvDg3f9wljMOy_zM4s);

							if (!aqua9utlBdXoQrpmzv.isDead()) sq_SendHitObjectPacketWithNoStuck(P4uYQfp2HrQhDmWh0OeGozR, bXt4HbTvDg3f9wljMOy_zM4s, 0, 0, sq_GetObjectHeight(bXt4HbTvDg3f9wljMOy_zM4s) / 2);
						}
					}
				}
				else if (cctKI3ueg7NtnPwOwW3MP6M == 4) {

					local cGjLE98FoDv = P4uYQfp2HrQhDmWh0OeGozR.getVar();
					local LZbRdfeR7HCeJm7gc = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_obj_vector_size();
					for (local O1Je_pzlwm24Q6cnS = 0; O1Je_pzlwm24Q6cnS < LZbRdfeR7HCeJm7gc; O1Je_pzlwm24Q6cnS++) {
						local TZt131Aodsv1KBGK3A1EYXtS = cGjLE98FoDv.get_obj_vector(O1Je_pzlwm24Q6cnS);
						if (TZt131Aodsv1KBGK3A1EYXtS) CNSquirrelAppendage.sq_RemoveAppendage(TZt131Aodsv1KBGK3A1EYXtS, "character/swordman/zigadvent/ap_zigadvent.nut");
					}
				}
				break;
			}
		}
		break;
	case 243:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		local TvvacszPynSMs = P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0);
		switch (lSNf0YWfLibcEOhT) {
		case 0:
			if (TvvacszPynSMs == 14) {
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
					if (cctKI3ueg7NtnPwOwW3MP6M == 1) {
						local MCqDZuo0D6xO9dA = sq_GetCurrentAnimation(P4uYQfp2HrQhDmWh0OeGozR).getDelaySum(18, 30);
						sq_SetShake(P4uYQfp2HrQhDmWh0OeGozR, 10, MCqDZuo0D6xO9dA);
					}
					else if (cctKI3ueg7NtnPwOwW3MP6M == 2) {
						RemoveAllFlash(P4uYQfp2HrQhDmWh0OeGozR);
						local b5RJeqhmBQLpJmN0_bbkoGt = sq_GetCurrentAnimation(P4uYQfp2HrQhDmWh0OeGozR);
						local iidMHfSRMi3owoii = b5RJeqhmBQLpJmN0_bbkoGt.getDelaySum(23, 24);
						local tCSen83lU7TIO = b5RJeqhmBQLpJmN0_bbkoGt.getDelaySum(24, 25);
						local zJABb8iColzyADQRCMK9pNv = b5RJeqhmBQLpJmN0_bbkoGt.getDelaySum(25, 26);
						sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, iidMHfSRMi3owoii, tCSen83lU7TIO, zJABb8iColzyADQRCMK9pNv, 150, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					}
				}
				else if (cctKI3ueg7NtnPwOwW3MP6M == 2) RemoveAllFlash(P4uYQfp2HrQhDmWh0OeGozR);
			}
			break;
		case 1:
		case 2:

			if (TvvacszPynSMs == 10 && cctKI3ueg7NtnPwOwW3MP6M == 1) {
				sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 2, 50);
				sq_CreateDrawOnlyObject(P4uYQfp2HrQhDmWh0OeGozR, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/vajra/vajra_drop_bot_lightning.ani", ENUM_DRAWLAYER_NORMAL, true);
				local b5RJeqhmBQLpJmN0_bbkoGt = sq_CreateDrawOnlyObject(P4uYQfp2HrQhDmWh0OeGozR, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/vajra/vajra_bullet_finish.ani", ENUM_DRAWLAYER_BOTTOM, true);
				P4uYQfp2HrQhDmWh0OeGozR.getVar("aniobj").clear_obj_vector();
				P4uYQfp2HrQhDmWh0OeGozR.getVar("aniobj").push_obj_vector(b5RJeqhmBQLpJmN0_bbkoGt);
			}
			break;
		}
		break;
	case 244:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		local TvvacszPynSMs = P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0);
		if (lSNf0YWfLibcEOhT == 1) {
			switch (TvvacszPynSMs) {
			case 10:
				if (!P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) return;
				if (cctKI3ueg7NtnPwOwW3MP6M == 0) sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 200, 100, 100, 150, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				else if (cctKI3ueg7NtnPwOwW3MP6M == 1) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 4, 300);
				break;
			case 14:
				if (cctKI3ueg7NtnPwOwW3MP6M == 0) P4uYQfp2HrQhDmWh0OeGozR.stopTimeEvent(0);
				break;
			}
		}
		break;
	case 246:
		local lSNf0YWfLibcEOhT = P4uYQfp2HrQhDmWh0OeGozR.getVar("subType").get_vector(0);
		local TvvacszPynSMs = P4uYQfp2HrQhDmWh0OeGozR.getVar("state").get_vector(0);
		if (lSNf0YWfLibcEOhT == 2) {
			switch (TvvacszPynSMs) {
			case 10:
				if (cctKI3ueg7NtnPwOwW3MP6M == 1) if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 8, 200);
				break;
			case 11:
				switch (cctKI3ueg7NtnPwOwW3MP6M) {
				case 10:
					P4uYQfp2HrQhDmWh0OeGozR.resetHitObjectList();
					if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 2, 200);
					break;
				case 1:

					if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {

						sq_BinaryStartWrite();
						sq_BinaryWriteDword(246);
						sq_BinaryWriteDword(3);
						sq_BinaryWriteDword(P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(0));
						sq_BinaryWriteDword(P4uYQfp2HrQhDmWh0OeGozR.getVar().get_vector(1));
						sq_SendCreatePassiveObjectPacket(P4uYQfp2HrQhDmWh0OeGozR, 24370, 0, 0, 0, 0, P4uYQfp2HrQhDmWh0OeGozR.getDirection());

						sq_BinaryStartWrite();
						sq_BinaryWriteWord(1);
						sq_SendChangeSkillEffectPacket(P4uYQfp2HrQhDmWh0OeGozR, 246);
					}
					local ap2rALYl7fj46M3EK6I1Vjov = P4uYQfp2HrQhDmWh0OeGozR.getVar().get_obj_vector_size();
					if (ap2rALYl7fj46M3EK6I1Vjov > 0) {
						local D4cDDwd7YNPkSf6ySur = P4uYQfp2HrQhDmWh0OeGozR.getVar();
						for (local O1Je_pzlwm24Q6cnS = 0; O1Je_pzlwm24Q6cnS < ap2rALYl7fj46M3EK6I1Vjov; O1Je_pzlwm24Q6cnS++) {
							local aqua9utlBdXoQrpmzv = sq_GetCNRDObjectToActiveObject(D4cDDwd7YNPkSf6ySur.get_obj_vector(O1Je_pzlwm24Q6cnS));
							if (aqua9utlBdXoQrpmzv && !aqua9utlBdXoQrpmzv.isDead()) {
								local bN7QVuT5BX2tebBrs9WiduBP = CNSquirrelAppendage.sq_GetAppendage(aqua9utlBdXoQrpmzv, "character/swordman/handlingsword/ap_handlingsword_control.nut");
								if (bN7QVuT5BX2tebBrs9WiduBP) sq_MoveToAppendage(aqua9utlBdXoQrpmzv, P4uYQfp2HrQhDmWh0OeGozR, aqua9utlBdXoQrpmzv, 0, 0, aqua9utlBdXoQrpmzv.getZPos() / -1, 500, true, bN7QVuT5BX2tebBrs9WiduBP);
							}
						}
					}
					break;
				}
				break;
			}
		}
		else if (lSNf0YWfLibcEOhT == 3) {
			switch (cctKI3ueg7NtnPwOwW3MP6M) {
			case 1:
				P4uYQfp2HrQhDmWh0OeGozR.resetHitObjectList();
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 12, 50);
				break;
			case 2:
				sq_SetCurrentAttackInfoFromCustomIndex(P4uYQfp2HrQhDmWh0OeGozR, 40);
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
					sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 8, 200);
					sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 50, 100, 50, 80, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				}
				break;
			case 3:
				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 4, 500);
				break;
			case 4:

				if (P4uYQfp2HrQhDmWh0OeGozR.isMyControlObject()) {
					local ppJZfZyZ4s4hKJfkvDxR4Y8 = P4uYQfp2HrQhDmWh0OeGozR.getParent();
					if (ppJZfZyZ4s4hKJfkvDxR4Y8) ppJZfZyZ4s4hKJfkvDxR4Y8.sendDestroyPacket(true);
					sq_SetMyShake(P4uYQfp2HrQhDmWh0OeGozR, 25, 500);
					sq_flashScreen(P4uYQfp2HrQhDmWh0OeGozR, 0, 500, 300, 130, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				}
				sq_SetCurrentAttackInfoFromCustomIndex(P4uYQfp2HrQhDmWh0OeGozR, 41);
				break;
			}
		}
		break;
	}
	return true;
};

function onTimeEvent_po_qq506807329new_swordman_24370(obj, timeEventIndex, timeEventCount) {
	if (!obj) return false;
	local qPWlshGJBVmSHy9sBIC2P2 = obj.getVar("skill").get_vector(0);
	switch (qPWlshGJBVmSHy9sBIC2P2) {
	case 82:
		switch (timeEventIndex) {
		case 0:
			sq_SendDestroyPacketPassiveObject(obj);
			break;
		case 1:
			local ANILKgfhcQYbKnsde = obj.getVar("kalla").get_vector(1);
			local ANSDfhcQYbKnsde = obj.getParent();
			if (ANSDfhcQYbKnsde) {
				ANSDfhcQYbKnsde = sq_GetCNRDObjectToActiveObject(ANSDfhcQYbKnsde);
				if (timeEventCount < ANILKgfhcQYbKnsde) {
					local SDDfhcQYSDbKnFsde = 50;
					if (ANSDfhcQYbKnsde.getCurrentAnimation()) SDDfhcQYSDbKnFsde = ANSDfhcQYbKnsde.getObjectHeight() / 2;
					if (ANSDfhcQYbKnsde.isInDamagableState(obj)) sq_SendHitObjectPacket(obj, ANSDfhcQYbKnsde, 0, 0, SDDfhcQYSDbKnFsde);
				}
				else {
					local SDDfhSDAaDbKnFsde = ANSDfhcQYbKnsde.getVar("kallaCount").get_vector(0);
					ANSDfhcQYbKnsde.getVar("kallaCount").set_vector(0, SDDfhSDAaDbKnFsde - 1);
					sq_SendDestroyPacketPassiveObject(obj);
				}
			}
			else sq_SendDestroyPacketPassiveObject(obj);
			break;
		}
		break;
	case 243:
		switch (timeEventIndex) {
		case 0:
			if (obj.getVar("state").get_vector(0) != 11) return true;
			local ynh8vdplQPFdjCy = false;
			local h30lkJADjgvEMls5Mgx = obj.isMyControlObject();
			local BuoxRzM11ZPkO4EMPQXiGRO = sq_GetCNRDObjectToSQRCharacter(obj.getVar("moveObj").get_obj_vector(0));
			if (BuoxRzM11ZPkO4EMPQXiGRO && !BuoxRzM11ZPkO4EMPQXiGRO.isDead()) {
				local LIx8gOg1jsY = obj.getXPos();
				local GvJNLPSbY4 = obj.getYPos();
				local CJddhcr6pm9TV_KRpcO0djQ = BuoxRzM11ZPkO4EMPQXiGRO.getXPos();
				local aSVh5ZqzDFWo2 = BuoxRzM11ZPkO4EMPQXiGRO.getYPos();
				local _brydzEZXM05k2B = sq_Abs(LIx8gOg1jsY - CJddhcr6pm9TV_KRpcO0djQ);
				local Exy8qYmG0j = sq_Abs(GvJNLPSbY4 - aSVh5ZqzDFWo2);
				if (_brydzEZXM05k2B > 0) {
					local AL8hmWMvqG737Wp = _brydzEZXM05k2B / 80 + 1;

					if (LIx8gOg1jsY > CJddhcr6pm9TV_KRpcO0djQ) AL8hmWMvqG737Wp /= -1;
					sq_setCurrentAxisPos(obj, 0, LIx8gOg1jsY + AL8hmWMvqG737Wp);
				}
				if (Exy8qYmG0j > 0) {
					local Nh0k8cOy62XwaMhtC5V0Sm = Exy8qYmG0j / 80 + 1;

					if (GvJNLPSbY4 > aSVh5ZqzDFWo2) Nh0k8cOy62XwaMhtC5V0Sm /= -1;
					sq_setCurrentAxisPos(obj, 1, GvJNLPSbY4 + Nh0k8cOy62XwaMhtC5V0Sm);
				}

				obj.getVar("moveObj").set_vector(0, CJddhcr6pm9TV_KRpcO0djQ);
				obj.getVar("moveObj").set_vector(1, aSVh5ZqzDFWo2);
				local mzvFyjj7nKGEh0_y = obj.getVar().get_vector(9);

				if (!obj.isExistTimeEvent(1) && !obj.isExistTimeEvent(2) && mzvFyjj7nKGEh0_y > 0) {
					local oXovIFeehX92 = obj.getVar().get_vector(8);
					obj.setTimeEvent(1, oXovIFeehX92 + 1000, 0, false);
				}
			}
			else ynh8vdplQPFdjCy = true;
			local j6gBvMEOlJICdsvd0rVH = obj.getVar().get_vector(7);
			local ZLiBFIaWKbi5ZbOrlc1Rz = sq_GetObjectTime(obj);
			if (ZLiBFIaWKbi5ZbOrlc1Rz >= j6gBvMEOlJICdsvd0rVH) ynh8vdplQPFdjCy = true;

			if (ynh8vdplQPFdjCy == true && h30lkJADjgvEMls5Mgx) {

				local rEWskUJhUreVly70Poo7 = sq_GetGlobalIntVector();
				sq_IntVectorClear(rEWskUJhUreVly70Poo7);
				sq_IntVectorPush(rEWskUJhUreVly70Poo7, obj.getVar("moveObj").get_vector(0));
				sq_IntVectorPush(rEWskUJhUreVly70Poo7, obj.getVar("moveObj").get_vector(1));
				obj.addSetStatePacket(12, rEWskUJhUreVly70Poo7, STATE_PRIORITY_AUTO, false, "");
			}
			break;
		case 1:
			if (!obj.isMyControlObject()) break;
			local hjJzGH9nPCeu9FYslyT = obj.getVar().get_vector(10);
			local bK3ZB5l5lDPsd5DeDLRLU = sq_GetCNRDObjectToActiveObject(obj.sq_FindFirstTarget(-hjJzGH9nPCeu9FYslyT, hjJzGH9nPCeu9FYslyT, hjJzGH9nPCeu9FYslyT, obj.getZPos()));
			if (bK3ZB5l5lDPsd5DeDLRLU && !bK3ZB5l5lDPsd5DeDLRLU.isDead()) {
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(1);
				sq_BinaryWriteDword(sq_GetXPos(bK3ZB5l5lDPsd5DeDLRLU));
				sq_BinaryWriteDword(sq_GetYPos(bK3ZB5l5lDPsd5DeDLRLU));
				sq_SendChangeSkillEffectPacket(obj, 243);
			}
			break;
		case 2:
			local Np_YollUi2TdqldBvPd35B = obj.getVar();
			local mzvFyjj7nKGEh0_y = Np_YollUi2TdqldBvPd35B.get_vector(9);
			if (mzvFyjj7nKGEh0_y > 0) {
				if (obj.isMyControlObject()) {
					local XoG0TFcUO_VpJJdCcRD07 = obj.getXPos();
					local GtjM6OjKoQmW = obj.getVar("atkPos").get_vector(0);
					local dVsjplc9C8 = obj.getVar("atkPos").get_vector(1);
					local IAtOokHXRSbmWYUGuLOd = sq_ToRadian(
					sq_ToDegree(
					sq_Atan2(sq_Abs(GtjM6OjKoQmW - XoG0TFcUO_VpJJdCcRD07).tofloat(), (obj.getZPos()).tofloat())));
					if (obj.getDirection() == ENUM_DIRECTION_LEFT) IAtOokHXRSbmWYUGuLOd /= -1;
					if (XoG0TFcUO_VpJJdCcRD07 > GtjM6OjKoQmW) IAtOokHXRSbmWYUGuLOd /= -1;
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(243);
					sq_BinaryWriteDword(1);
					sq_BinaryWriteDword(GtjM6OjKoQmW);
					sq_BinaryWriteDword(dVsjplc9C8);
					sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(0));
					sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(3));
					sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(4));
					sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(5));
					sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(6));
					sq_BinaryWriteFloat(IAtOokHXRSbmWYUGuLOd);
					sq_BinaryWriteDword(obj.getVar("addRate").get_vector(0));
					sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, -1, 0, obj.getDirection());
				}
				Np_YollUi2TdqldBvPd35B.set_vector(9, mzvFyjj7nKGEh0_y - 1);
			}
			break;
		case 3:
			if (!obj.isMyControlObject()) break;
			local Np_YollUi2TdqldBvPd35B = obj.getVar();
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(243);
			sq_BinaryWriteDword(2);
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(0));
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(12));
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(3));
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(4));
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(5));
			sq_BinaryWriteDword(Np_YollUi2TdqldBvPd35B.get_vector(6));
			sq_BinaryWriteDword(obj.getVar("addRate").get_vector(0));
			sq_SendCreatePassiveObjectPacket(obj, 24370, 0, sq_getRandom(-80, 80), sq_getRandom(-35, 35), 0, obj.getDirection());
			break;
		}
		break;
	case 230:
		switch (timeEventIndex) {
		case 0:
			if (obj.isMyControlObject()) {
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(230);
				sq_BinaryWriteDword(2);
				sq_BinaryWriteDword(obj.getVar().get_vector(3));
				sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, obj.getXPos(), obj.getYPos(), 0);
			}
			break;
		case 1:
			obj.resetHitObjectList();
			break;
		}
		break;
	case 234:
		switch (timeEventIndex) {
		case 0:
			local jOdSSTYyorFNhN6P8tfs0DIz = obj.getVar().get_vector(1);
			if (jOdSSTYyorFNhN6P8tfs0DIz > 0) {
				obj.getVar().set_vector(1, jOdSSTYyorFNhN6P8tfs0DIz - 1);
				if (obj.isMyControlObject()) {

					for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < obj.getVar().get_obj_vector_size(); joabpKE5yzjRglGZfURpSVh++) {
						local _hRfaMb0ZZkdsPN = sq_GetCNRDObjectToActiveObject(obj.getVar().get_obj_vector(joabpKE5yzjRglGZfURpSVh));
						if (_hRfaMb0ZZkdsPN && !_hRfaMb0ZZkdsPN.isDead()) sq_SendHitObjectPacket(obj, _hRfaMb0ZZkdsPN, 0, 0, sq_GetObjectHeight(_hRfaMb0ZZkdsPN) / 2);
					}
				}
			}
			else if (jOdSSTYyorFNhN6P8tfs0DIz == 0) {
				obj.getVar().set_vector(1, jOdSSTYyorFNhN6P8tfs0DIz - 1);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 10);

				for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < obj.getVar().get_obj_vector_size(); joabpKE5yzjRglGZfURpSVh++) {
					local _hRfaMb0ZZkdsPN = sq_GetCNRDObjectToActiveObject(obj.getVar().get_obj_vector(joabpKE5yzjRglGZfURpSVh));
					if (_hRfaMb0ZZkdsPN && !_hRfaMb0ZZkdsPN.isDead()) {
						if (obj.isMyControlObject()) sq_SendHitObjectPacket(obj, _hRfaMb0ZZkdsPN, 0, 0, sq_GetObjectHeight(_hRfaMb0ZZkdsPN) / 2);

						local Su8ZDVUCYKHKakBOS3z = CNSquirrelAppendage.sq_GetAppendage(_hRfaMb0ZZkdsPN, "character/swordman/swordofmind/ap_swordofmind_attack.nut");

						if (Su8ZDVUCYKHKakBOS3z) {
							if (isSameObject(obj, Su8ZDVUCYKHKakBOS3z.getSource())) Su8ZDVUCYKHKakBOS3z.setValid(false);
						}

						local p49B6ZnostS6V_g = sq_CreateAnimation("", "character/swordman/effect/animation/swordofmind/last_hit.ani");
						local eyEBiRudhCNvl2DNM9zT7q = sq_CreatePooledObject(p49B6ZnostS6V_g, true);
						sq_SetCurrentDirection(eyEBiRudhCNvl2DNM9zT7q, obj.getDirection());
						eyEBiRudhCNvl2DNM9zT7q.setCurrentPos(_hRfaMb0ZZkdsPN.getXPos(), _hRfaMb0ZZkdsPN.getYPos(), _hRfaMb0ZZkdsPN.getZPos() + sq_GetObjectHeight(_hRfaMb0ZZkdsPN) / 2);
						eyEBiRudhCNvl2DNM9zT7q = sq_SetEnumDrawLayer(eyEBiRudhCNvl2DNM9zT7q, ENUM_DRAWLAYER_NORMAL);
						sq_AddObject(obj, eyEBiRudhCNvl2DNM9zT7q, OBJECTTYPE_DRAWONLY, false);
					}
				}
			}
			else if (obj.isMyControlObject()) {
				if (!obj.getVar().getBool(0)) {
					sq_SendDestroyPacketPassiveObject(obj);
					return true;
				}
				local Cggmj6OVa29Uclb7nGFne = 0;
				local wJpzF7DbSILxOmZ4JuOMRzp = 0;
				local gvl2VJsRQMdmyBp = 0;
				local oGozG1AMtzNvKromvV = 0;

				for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < obj.getVar().get_obj_vector_size(); joabpKE5yzjRglGZfURpSVh++) {
					local _hRfaMb0ZZkdsPN = sq_GetCNRDObjectToActiveObject(obj.getVar().get_obj_vector(joabpKE5yzjRglGZfURpSVh));
					if (_hRfaMb0ZZkdsPN && !_hRfaMb0ZZkdsPN.isDead()) {
						local um60DXT4QAhzgUf = _hRfaMb0ZZkdsPN.getHp();
						if (um60DXT4QAhzgUf > oGozG1AMtzNvKromvV) {

							oGozG1AMtzNvKromvV = um60DXT4QAhzgUf;
							Cggmj6OVa29Uclb7nGFne = _hRfaMb0ZZkdsPN.getXPos();
							wJpzF7DbSILxOmZ4JuOMRzp = _hRfaMb0ZZkdsPN.getYPos();
							gvl2VJsRQMdmyBp = _hRfaMb0ZZkdsPN.getZPos() + sq_GetObjectHeight(_hRfaMb0ZZkdsPN) / 2;
						}
					}
				}
				if (oGozG1AMtzNvKromvV != 0) {
					local rEWskUJhUreVly70Poo7 = sq_GetGlobalIntVector();
					sq_IntVectorClear(rEWskUJhUreVly70Poo7);
					sq_IntVectorPush(rEWskUJhUreVly70Poo7, Cggmj6OVa29Uclb7nGFne);
					sq_IntVectorPush(rEWskUJhUreVly70Poo7, wJpzF7DbSILxOmZ4JuOMRzp);
					sq_IntVectorPush(rEWskUJhUreVly70Poo7, gvl2VJsRQMdmyBp);
					obj.addSetStatePacket(11, rEWskUJhUreVly70Poo7, STATE_PRIORITY_AUTO, false, "");
				}
				else sq_SendDestroyPacketPassiveObject(obj);
			}
			break;
		}
		break;
	case 236:
		if (timeEventIndex == 0) {
			local Jy3BrgdCFbIv2aW7nNdW7 = false;
			local jOdSSTYyorFNhN6P8tfs0DIz = obj.getVar().get_vector(0);
			if (jOdSSTYyorFNhN6P8tfs0DIz <= 0) {
				removeAllAp_swordman_flashcut(obj);
				sq_SetCurrentAttackInfoFromCustomIndex(obj, 56);
				Jy3BrgdCFbIv2aW7nNdW7 = true;
			}
			obj.sq_PlaySound("R_FLASHCUT_HIT");
			obj.getVar().set_vector(0, jOdSSTYyorFNhN6P8tfs0DIz - 1);
			if (obj.isMyControlObject()) {
				local Yx9LQFsaULmbBfHjbMFwvU3 = obj.getVar();
				local FB8aUvQp07y5Gv = Yx9LQFsaULmbBfHjbMFwvU3.get_obj_vector_size();
				if (FB8aUvQp07y5Gv <= 0) sq_SendDestroyPacketPassiveObject(obj);
				for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < FB8aUvQp07y5Gv; joabpKE5yzjRglGZfURpSVh++) {
					local bK3ZB5l5lDPsd5DeDLRLU = sq_GetCNRDObjectToActiveObject(Yx9LQFsaULmbBfHjbMFwvU3.get_obj_vector(joabpKE5yzjRglGZfURpSVh));
					if (bK3ZB5l5lDPsd5DeDLRLU && !bK3ZB5l5lDPsd5DeDLRLU.isDead()) sq_SendHitObjectPacket(obj, bK3ZB5l5lDPsd5DeDLRLU, 0, 0, sq_GetObjectHeight(bK3ZB5l5lDPsd5DeDLRLU) / 2);
				}
				if (Jy3BrgdCFbIv2aW7nNdW7 == true) sq_SendDestroyPacketPassiveObject(obj);
			}
		}
		break;
	case 238:
		if (timeEventIndex == 0) obj.resetHitObjectList();
		break;
	case 239:
		switch (timeEventIndex) {
		case 0:
			local FJ0J0UQXiU = obj.getVar().get_vector(3);
			local pkePYSsYNgQ = obj.getVar().get_vector(6);

			FJ0J0UQXiU = FJ0J0UQXiU - FJ0J0UQXiU / 4;
			pkePYSsYNgQ = pkePYSsYNgQ - pkePYSsYNgQ / 3;
			local Cggmj6OVa29Uclb7nGFne = obj.getXPos();
			local wJpzF7DbSILxOmZ4JuOMRzp = obj.getYPos();
			local gvl2VJsRQMdmyBp = obj.getZPos();
			for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < 1; joabpKE5yzjRglGZfURpSVh++) {
				local nzrzPhw9TBWuw = sq_getRandom(FJ0J0UQXiU / -1, FJ0J0UQXiU);
				local WmmKaq_lVeRuPmw = sq_getRandom(pkePYSsYNgQ / -1, pkePYSsYNgQ);
				local IHy6X6SKc2Pb = (nzrzPhw9TBWuw > 0) ? ENUM_DIRECTION_RIGHT : ENUM_DIRECTION_LEFT;

				local p49B6ZnostS6V_g = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/ghost_dash.ani");
				local eyEBiRudhCNvl2DNM9zT7q = sq_CreatePooledObject(p49B6ZnostS6V_g, true);
				eyEBiRudhCNvl2DNM9zT7q = sq_SetEnumDrawLayer(eyEBiRudhCNvl2DNM9zT7q, ENUM_DRAWLAYER_NORMAL);
				eyEBiRudhCNvl2DNM9zT7q.setCurrentPos(Cggmj6OVa29Uclb7nGFne + nzrzPhw9TBWuw, wJpzF7DbSILxOmZ4JuOMRzp + WmmKaq_lVeRuPmw - 40, gvl2VJsRQMdmyBp);
				sq_SetCurrentDirection(eyEBiRudhCNvl2DNM9zT7q, IHy6X6SKc2Pb);
				sq_AddObject(obj, eyEBiRudhCNvl2DNM9zT7q, OBJECTTYPE_DRAWONLY, false);
			}
			if (!obj.isMyControlObject()) break;
			local yHoOE2ZXmA_1d7 = obj.getObjectManager();
			for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < yHoOE2ZXmA_1d7.getCollisionObjectNumber(); joabpKE5yzjRglGZfURpSVh++) {
				local W9qWqMeQL4OaBaL = yHoOE2ZXmA_1d7.getCollisionObject(joabpKE5yzjRglGZfURpSVh);
				if (W9qWqMeQL4OaBaL && W9qWqMeQL4OaBaL.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(W9qWqMeQL4OaBaL) && W9qWqMeQL4OaBaL.isInDamagableState(obj) && sq_Abs(W9qWqMeQL4OaBaL.getXPos() - Cggmj6OVa29Uclb7nGFne) <= FJ0J0UQXiU && sq_Abs(W9qWqMeQL4OaBaL.getYPos() - wJpzF7DbSILxOmZ4JuOMRzp) <= pkePYSsYNgQ && sq_Abs(W9qWqMeQL4OaBaL.getZPos() - gvl2VJsRQMdmyBp) <= 300) {
					local _hRfaMb0ZZkdsPN = sq_GetCNRDObjectToActiveObject(W9qWqMeQL4OaBaL);
					if (!_hRfaMb0ZZkdsPN.isDead()) {
						sq_SendHitObjectPacket(obj, W9qWqMeQL4OaBaL, 0, 0, sq_GetObjectHeight(W9qWqMeQL4OaBaL) / 2);
					}
				}
			}
			break;
		case 1:
			if (obj.isMyControlObject()) obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 2:
			obj.sq_PlaySound("PHANTOMBLADE_GHOST");
			local _6swxku_kZyt5v_NzX1zcO = (obj.getVar().get_vector(5)).tofloat() / 100.0;

			local HwCCZBPzNuU = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantom/slash_before.ani");
			HwCCZBPzNuU.setImageRateFromOriginal(_6swxku_kZyt5v_NzX1zcO, _6swxku_kZyt5v_NzX1zcO);
			HwCCZBPzNuU.setAutoLayerWorkAnimationAddSizeRate(_6swxku_kZyt5v_NzX1zcO);
			local m4LDOLIHynl4ok19vLVo = sq_CreatePooledObject(HwCCZBPzNuU, true);
			m4LDOLIHynl4ok19vLVo = sq_SetEnumDrawLayer(m4LDOLIHynl4ok19vLVo, ENUM_DRAWLAYER_NORMAL);
			m4LDOLIHynl4ok19vLVo.setCurrentPos(sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
			sq_AddObject(obj, m4LDOLIHynl4ok19vLVo, OBJECTTYPE_DRAWONLY, true);
			break;
		}
		break;
	case 241:
		if (timeEventIndex == 0) obj.resetHitObjectList();
		break;
	case 242:
		if (!obj.isMyControlObject()) break;
		if (timeEventIndex == 0) {
			local Np_YollUi2TdqldBvPd35B = obj.getVar();
			for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < Np_YollUi2TdqldBvPd35B.get_obj_vector_size(); joabpKE5yzjRglGZfURpSVh++) {
				local bK3ZB5l5lDPsd5DeDLRLU = Np_YollUi2TdqldBvPd35B.get_obj_vector(joabpKE5yzjRglGZfURpSVh);
				if (bK3ZB5l5lDPsd5DeDLRLU) {
					local _hRfaMb0ZZkdsPN = sq_GetCNRDObjectToActiveObject(bK3ZB5l5lDPsd5DeDLRLU);
					if (_hRfaMb0ZZkdsPN && !_hRfaMb0ZZkdsPN.isDead()) sq_SendHitObjectPacket(obj, _hRfaMb0ZZkdsPN, 0, 0, sq_GetObjectHeight(_hRfaMb0ZZkdsPN) / 2);
				}
			}
		}
		else if (timeEventIndex == 1) {

			obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 244:
		local o8qG_My98cF1nn2Z4oeRzuv = obj.getVar("subType").get_vector(0);
		if (o8qG_My98cF1nn2Z4oeRzuv == 1) {
			switch (timeEventIndex) {
			case 0:
				obj.resetHitObjectList();
				break;
			case 1:
				local Ng4LY7XSKxgqanws0 = obj.getVar();
				local Gka8XTW8oSw5lZERLW = Ng4LY7XSKxgqanws0.get_vector(0);
				if (obj.isMyControlObject()) {
					local Cggmj6OVa29Uclb7nGFne = obj.getXPos();
					local wJpzF7DbSILxOmZ4JuOMRzp = obj.getYPos();
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(244);
					sq_BinaryWriteDword(2);
					sq_BinaryWriteDword(Cggmj6OVa29Uclb7nGFne);
					sq_BinaryWriteDword(wJpzF7DbSILxOmZ4JuOMRzp);
					switch (Gka8XTW8oSw5lZERLW) {
					case 5:
						sq_BinaryWriteDword(3);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(1), Ng4LY7XSKxgqanws0.get_vector(2), 0, obj.getDirection());
						break;
					case 4:
						sq_BinaryWriteDword(4);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(3), Ng4LY7XSKxgqanws0.get_vector(4), 0, obj.getDirection());
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(244);
						sq_BinaryWriteDword(2);
						sq_BinaryWriteDword(Cggmj6OVa29Uclb7nGFne);
						sq_BinaryWriteDword(wJpzF7DbSILxOmZ4JuOMRzp);
						sq_BinaryWriteDword(6);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(5), Ng4LY7XSKxgqanws0.get_vector(6), 0, obj.getDirection());
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(244);
						sq_BinaryWriteDword(2);
						sq_BinaryWriteDword(Cggmj6OVa29Uclb7nGFne);
						sq_BinaryWriteDword(wJpzF7DbSILxOmZ4JuOMRzp);
						sq_BinaryWriteDword(0);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(7), Ng4LY7XSKxgqanws0.get_vector(8), 0, obj.getDirection());
						break;
					case 3:
						sq_BinaryWriteDword(5);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(9), Ng4LY7XSKxgqanws0.get_vector(10), 0, obj.getDirection());
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(244);
						sq_BinaryWriteDword(2);
						sq_BinaryWriteDword(Cggmj6OVa29Uclb7nGFne);
						sq_BinaryWriteDword(wJpzF7DbSILxOmZ4JuOMRzp);
						sq_BinaryWriteDword(1);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(11), Ng4LY7XSKxgqanws0.get_vector(12), 0, obj.getDirection());
						break;
					case 2:
						sq_BinaryWriteDword(7);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(13), Ng4LY7XSKxgqanws0.get_vector(14), 0, obj.getDirection());
						break;
					case 1:
						sq_BinaryWriteDword(2);
						sq_SendCreatePassiveObjectPacket(obj, 24370, 0, Ng4LY7XSKxgqanws0.get_vector(15), Ng4LY7XSKxgqanws0.get_vector(16), 0, obj.getDirection());
						break;
					}
				}
				Ng4LY7XSKxgqanws0.set_vector(0, Gka8XTW8oSw5lZERLW - 1);
				break;
			case 2:
				local mmgvj27x5Mexlh = obj.getMyPassiveObjectCount(24370);

				local PpKJbkMGSy = obj.getVar().get_vector(0);
				for (local joabpKE5yzjRglGZfURpSVh = 0; joabpKE5yzjRglGZfURpSVh < mmgvj27x5Mexlh; joabpKE5yzjRglGZfURpSVh++) {
					local W9qWqMeQL4OaBaL = obj.getMyPassiveObject(24370, joabpKE5yzjRglGZfURpSVh);
					local a4xjIrX6pJ99w8dhFO = W9qWqMeQL4OaBaL.getVar().get_vector(4);
					if (a4xjIrX6pJ99w8dhFO != PpKJbkMGSy) continue;

					if (obj.isMyControlObject()) W9qWqMeQL4OaBaL.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
					break;
				}
				obj.getVar().set_vector(0, PpKJbkMGSy + 1);
				break;
			}
		}
		break;
	case 47:
		if (timeEventIndex == 0) {
			setCurrentAnimationFromCutomIndex(obj, obj.getVar().get_vector(0));
			obj.sq_SetMoveParticle("Particle/wavemark.ptl", 0.0, 0.0);
		}
		break;
	case 67:
		if (timeEventIndex == 0) {
			setCurrentAnimationFromCutomIndex(obj, 64);
		}
		if (timeEventIndex == 1) {
			setCurrentAnimationFromCutomIndex(obj, 65);
		}
		break;
	}
	return false;
};

function onChangeSkillEffect_po_qq506807329new_swordman_24370(GjfQOkOrY2ZF31wpc9G, hWT9_AiWPgWQWV, utgNfAyf7kLE7vcjmgJs) {
	if (!GjfQOkOrY2ZF31wpc9G) return;
	switch (hWT9_AiWPgWQWV) {
	case 230:
		local HtWM97cikow7 = utgNfAyf7kLE7vcjmgJs.readWord();
		if (HtWM97cikow7 == 1) {
			GjfQOkOrY2ZF31wpc9G.getVar().setBool(0, true);
			GjfQOkOrY2ZF31wpc9G.sq_RemoveMoveParticle();
			GjfQOkOrY2ZF31wpc9G.sq_SetMoveParticle("particle/bloodmarblemove.ptl", 0.0, -50.0);
			sq_SetSpeedToMoveParticle(GjfQOkOrY2ZF31wpc9G, 0, 500);
		}
		break;
	case 238:
		local r47ekb2tbO87q4 = sq_GetObject(GjfQOkOrY2ZF31wpc9G, utgNfAyf7kLE7vcjmgJs.readDword(), utgNfAyf7kLE7vcjmgJs.readDword());
		if (r47ekb2tbO87q4) {
			local M2eSWns0GMtRS = sq_GetCNRDObjectToActiveObject(r47ekb2tbO87q4);
			if (M2eSWns0GMtRS && !M2eSWns0GMtRS.isDead()) {
				local P9UcGlkpdBp = sq_GetHeightObject(M2eSWns0GMtRS) / 2;
				if (GjfQOkOrY2ZF31wpc9G.isMyControlObject()) sq_SendHitObjectPacket(GjfQOkOrY2ZF31wpc9G, M2eSWns0GMtRS, 0, 0, P9UcGlkpdBp);

				local BublLM3iph5jbS = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/slashofhell/slashofhell_boom_dodge.ani");
				local ratrXi7KmlEdEFYUuliW = sq_CreatePooledObject(BublLM3iph5jbS, true);
				sq_SetCurrentDirection(ratrXi7KmlEdEFYUuliW, GjfQOkOrY2ZF31wpc9G.getDirection());
				ratrXi7KmlEdEFYUuliW.setCurrentPos(M2eSWns0GMtRS.getXPos(), M2eSWns0GMtRS.getYPos(), M2eSWns0GMtRS.getZPos() + P9UcGlkpdBp);
				ratrXi7KmlEdEFYUuliW = sq_SetEnumDrawLayer(ratrXi7KmlEdEFYUuliW, ENUM_DRAWLAYER_NORMAL);
				sq_AddObject(GjfQOkOrY2ZF31wpc9G, ratrXi7KmlEdEFYUuliW, OBJECTTYPE_DRAWONLY, false);
				sq_SetMyShake(GjfQOkOrY2ZF31wpc9G, 10, 160);
			}
			GjfQOkOrY2ZF31wpc9G.getVar().remove_obj_vector(r47ekb2tbO87q4);
		}
		break;
	case 243:
		local ms7yQxFu3yN = utgNfAyf7kLE7vcjmgJs.readDword();
		switch (ms7yQxFu3yN) {
		case 1:
			GjfQOkOrY2ZF31wpc9G.stopTimeEvent(1);
			local ratrXi7KmlEdEFYUuliW = (sq_getRandom(0, 100) < 50) ? sq_AddDrawOnlyAniFromParent(GjfQOkOrY2ZF31wpc9G, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/vajra/vajra_maincloud_eff_a.ani", 0, 0, 0) : sq_AddDrawOnlyAniFromParent(GjfQOkOrY2ZF31wpc9G, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/vajra/vajra_maincloud_eff_b.ani", 0, 0, 0);
			sq_moveWithParent(GjfQOkOrY2ZF31wpc9G, ratrXi7KmlEdEFYUuliW);
			GjfQOkOrY2ZF31wpc9G.getVar("atkPos").clear_vector();
			GjfQOkOrY2ZF31wpc9G.getVar("atkPos").push_vector(utgNfAyf7kLE7vcjmgJs.readDword());
			GjfQOkOrY2ZF31wpc9G.getVar("atkPos").push_vector(utgNfAyf7kLE7vcjmgJs.readDword());
			GjfQOkOrY2ZF31wpc9G.setTimeEvent(2, 200, 3, true);
			break;
		}
		break;
	}
};

function destroy_po_qq506807329new_swordman_24370(fQesC2FCRVFh_tCT1hRf) {
	if (!fQesC2FCRVFh_tCT1hRf) return;
	local zPYQiFoDfO5S0OrQu4 = fQesC2FCRVFh_tCT1hRf.getVar("skill").get_vector(0);
	switch (zPYQiFoDfO5S0OrQu4) {
	case 247:
	case 243:
	case 85:
		RemoveAllAni(fQesC2FCRVFh_tCT1hRf);
		break;
	case 236:
		removeAllAp_swordman_flashcut(fQesC2FCRVFh_tCT1hRf);
		break;
	case 246:
		local WmQfBvsEEK9_S36ZLnDE = fQesC2FCRVFh_tCT1hRf.getVar("subType").get_vector(0);
		switch (WmQfBvsEEK9_S36ZLnDE) {
		case 1:
			local m8yrOY_vI3DaV = fQesC2FCRVFh_tCT1hRf.getParent();
			if (m8yrOY_vI3DaV) {
				local qFsO4BqIVrPaOCHd2xlj2j = CNSquirrelAppendage.sq_GetAppendage(m8yrOY_vI3DaV, "character/swordman/handlingsword/ap_handlingsword_buff.nut");
				if (qFsO4BqIVrPaOCHd2xlj2j) {
					for (local otKd5CFgYHw55v = 0; otKd5CFgYHw55v < qFsO4BqIVrPaOCHd2xlj2j.getVar("home").size_vector(); otKd5CFgYHw55v += 4) {
						local SU5Gr2cfB5Os1iZvJmzwzr = qFsO4BqIVrPaOCHd2xlj2j.getVar("home").get_vector(otKd5CFgYHw55v);
						if (SU5Gr2cfB5Os1iZvJmzwzr == 0) {
							qFsO4BqIVrPaOCHd2xlj2j.getVar("home").set_vector(otKd5CFgYHw55v, qFsO4BqIVrPaOCHd2xlj2j.getTimer().Get());
							qFsO4BqIVrPaOCHd2xlj2j.getVar("home").set_vector(otKd5CFgYHw55v + 1, m8yrOY_vI3DaV.getXPos() + 300 / ([-1, 1])[sq_getRandom(0, 1)]);
							qFsO4BqIVrPaOCHd2xlj2j.getVar("home").set_vector(otKd5CFgYHw55v + 2, m8yrOY_vI3DaV.getYPos());
							qFsO4BqIVrPaOCHd2xlj2j.getVar("home").set_vector(otKd5CFgYHw55v + 3, 800);
							return;
						}
					}
					qFsO4BqIVrPaOCHd2xlj2j.getVar("home").push_vector(qFsO4BqIVrPaOCHd2xlj2j.getTimer().Get());
					qFsO4BqIVrPaOCHd2xlj2j.getVar("home").push_vector(m8yrOY_vI3DaV.getXPos() + 300 / ([-1, 1])[sq_getRandom(0, 1)]);
					qFsO4BqIVrPaOCHd2xlj2j.getVar("home").push_vector(m8yrOY_vI3DaV.getYPos());
					qFsO4BqIVrPaOCHd2xlj2j.getVar("home").push_vector(800);
				}
			}
			break;
		case 2:
			RemoveAllFlash(fQesC2FCRVFh_tCT1hRf);
			break;
		}
		break;
	}
};
