function procAppend_po_qq506807329new_swordman_24370(obj) {
	if (!obj) return;
	local fRVo4unILLthG73N4SpAX = obj.getVar("skill").get_vector(0);
	switch (fRVo4unILLthG73N4SpAX) {
	case 230:
		local ghvT8TgWt2aYbl9AEAY8 = obj.getVar("state").get_vector(0);
		switch (ghvT8TgWt2aYbl9AEAY8) {
		case 10:
			local cBSBV6Tn0lQLmsvFj8CouRe = sq_GetObjectTime(obj);
			local iQWGa9Q4FFL = obj.getVar().get_vector(0);

			if (cBSBV6Tn0lQLmsvFj8CouRe >= iQWGa9Q4FFL + 1000) {
				if (obj.isMyControlObject()) obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
			}

			else {
				if (cBSBV6Tn0lQLmsvFj8CouRe >= iQWGa9Q4FFL && obj.isExistTimeEvent(0)) obj.stopTimeEvent(0);
				local GOebS3tQAFM7TNeW = obj.getVar().get_timer_vector(0);
				if (GOebS3tQAFM7TNeW) {
					if (GOebS3tQAFM7TNeW.isOnEvent(cBSBV6Tn0lQLmsvFj8CouRe) == true) {
						local LYDAYFscKtLZc5Dz31OVf = obj.getCurrentAnimation();
						local ahRsdExqfBNaV86O6X = sq_GetUniformVelocity(100, obj.getVar("rate").get_vector(0), cBSBV6Tn0lQLmsvFj8CouRe, iQWGa9Q4FFL + 1000);
						local wXJdIyIeTQVxUfolf7ajA1 = ahRsdExqfBNaV86O6X.tofloat() / 100.0;
						LYDAYFscKtLZc5Dz31OVf.setImageRateFromOriginal(wXJdIyIeTQVxUfolf7ajA1, wXJdIyIeTQVxUfolf7ajA1);
						LYDAYFscKtLZc5Dz31OVf.setAutoLayerWorkAnimationAddSizeRate(wXJdIyIeTQVxUfolf7ajA1);
					}
				}
			}
			break;
		case 11:
			if (obj.isMyControlObject()) if (obj.getZPos() <= 0) obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
			break;
		}
		break;
	case 234:
		if (!obj.isMyControlObject()) return;
		local ghvT8TgWt2aYbl9AEAY8 = obj.getVar("state").get_vector(0);
		if (!ghvT8TgWt2aYbl9AEAY8 && ghvT8TgWt2aYbl9AEAY8 != 10) {
			if (sq_GetObjectTime(obj) > 200) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 235:
		local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
		switch (bzoBRIPWDx70rMlF3v) {
		case 2:
			if (obj.getVar().size_vector() <= 0) return;
			local gt_IW1Y4aetSaw6hkR = sq_GetCurrentAnimation(obj);
			local WNTSqpNdkgQ92 = sq_GetCurrentTime(gt_IW1Y4aetSaw6hkR);
			local LmslDICMEggb = gt_IW1Y4aetSaw6hkR.getDelaySum(0, 0);
			local HH6m09H0ERxJgTUrUS2wW = sq_GetUniformVelocity(obj.getVar().get_vector(0), 0, WNTSqpNdkgQ92, LmslDICMEggb);
			sq_setCurrentAxisPos(obj, 2, HH6m09H0ERxJgTUrUS2wW);
			if (WNTSqpNdkgQ92 >= LmslDICMEggb) obj.getVar().clear_vector();
			break;
		}
		break;
	case 236:
		if (!obj.isMyControlObject()) return;
		local USNYBansydEmwbaHm = obj.getParent();
		if (obj.getVar("state").get_vector(0) == 10 && (!USNYBansydEmwbaHm || USNYBansydEmwbaHm.getState() == STATE_DIE)) {
			sq_SendDestroyPacketPassiveObject(obj);
		}
		break;
	case 238:
		if (!obj.isMyControlObject()) return;
		if (sq_GetCurrentFrameIndex(obj) < 11) return;

		if (obj.getVar().get_obj_vector_size() <= 0) sq_SendDestroyPacketPassiveObject(obj);
		break;
	case 242:
		if (obj.isMyControlObject()) {
			local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
			if (bzoBRIPWDx70rMlF3v == 1 && obj.getVar().getBool(0) == true) if (obj.getVar().get_obj_vector_size() <= 0) sq_SendDestroyPacketPassiveObject(obj);
		}
		break;
	case 243:
		local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
		local nyUZdiX4FjE0ukZaMrtGPIMm = obj.getVar("state").get_vector(0);
		switch (bzoBRIPWDx70rMlF3v) {
		case 0:
			switch (nyUZdiX4FjE0ukZaMrtGPIMm) {
			case 12:
				local xmW6L4zpgY3bzu4pkYKD6 = obj.getVar("moveObj");
				local WNTSqpNdkgQ92 = sq_GetObjectTime(obj) - xmW6L4zpgY3bzu4pkYKD6.get_vector(0);
				local LmslDICMEggb = 1000;
				local Hksod0zAcTh5ED1jIFANS8o = sq_GetUniformVelocity(xmW6L4zpgY3bzu4pkYKD6.get_vector(1), xmW6L4zpgY3bzu4pkYKD6.get_vector(3), WNTSqpNdkgQ92, LmslDICMEggb);
				local EboY_VERPZ1sqYGxG = sq_GetUniformVelocity(xmW6L4zpgY3bzu4pkYKD6.get_vector(2), xmW6L4zpgY3bzu4pkYKD6.get_vector(4), WNTSqpNdkgQ92, LmslDICMEggb);
				sq_setCurrentAxisPos(obj, 0, Hksod0zAcTh5ED1jIFANS8o);
				sq_setCurrentAxisPos(obj, 1, EboY_VERPZ1sqYGxG);
				if (WNTSqpNdkgQ92 >= LmslDICMEggb && obj.isMyControlObject()) obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
				break;
			case 13:
				if (!obj.isExistTimeEvent(3) && obj.isMyControlObject()) obj.addSetStatePacket(14, null, STATE_PRIORITY_AUTO, false, "");
				break;
			}
			break;
		case 1:
			if (nyUZdiX4FjE0ukZaMrtGPIMm == 10) {
				local xmW6L4zpgY3bzu4pkYKD6 = obj.getVar("move");
				local gt_IW1Y4aetSaw6hkR = obj.getCurrentAnimation();
				local WNTSqpNdkgQ92 = sq_GetCurrentTime(gt_IW1Y4aetSaw6hkR);
				local LmslDICMEggb = gt_IW1Y4aetSaw6hkR.getDelaySum(0, 0);
				local Hksod0zAcTh5ED1jIFANS8o = sq_GetUniformVelocity(xmW6L4zpgY3bzu4pkYKD6.get_vector(0), xmW6L4zpgY3bzu4pkYKD6.get_vector(3), WNTSqpNdkgQ92, LmslDICMEggb);
				local EboY_VERPZ1sqYGxG = sq_GetUniformVelocity(xmW6L4zpgY3bzu4pkYKD6.get_vector(1), xmW6L4zpgY3bzu4pkYKD6.get_vector(4), WNTSqpNdkgQ92, LmslDICMEggb);
				local HH6m09H0ERxJgTUrUS2wW = sq_GetUniformVelocity(xmW6L4zpgY3bzu4pkYKD6.get_vector(2), 0, WNTSqpNdkgQ92, LmslDICMEggb);
				obj.setCurrentPos(Hksod0zAcTh5ED1jIFANS8o, EboY_VERPZ1sqYGxG, HH6m09H0ERxJgTUrUS2wW);
			}
			break;
		case 2:
			if (nyUZdiX4FjE0ukZaMrtGPIMm == 10) {
				local gt_IW1Y4aetSaw6hkR = obj.getCurrentAnimation();
				local WNTSqpNdkgQ92 = sq_GetCurrentTime(gt_IW1Y4aetSaw6hkR);
				local LmslDICMEggb = 80;
				local HH6m09H0ERxJgTUrUS2wW = sq_GetUniformVelocity(obj.getVar("move").get_vector(0), 0, WNTSqpNdkgQ92, LmslDICMEggb);
				sq_setCurrentAxisPos(obj, 2, HH6m09H0ERxJgTUrUS2wW);
			}
			break;
		}
		break;
	case 244:
		local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
		local nyUZdiX4FjE0ukZaMrtGPIMm = obj.getVar("state").get_vector(0);
		if (bzoBRIPWDx70rMlF3v == 1) {

			if (nyUZdiX4FjE0ukZaMrtGPIMm < 14) setRangeObjectXPos(obj, 360, ENUM_DIRECTION_NEUTRAL, 0, 700, 0, 2);
			if (!obj.isMyControlObject()) return;
			if (nyUZdiX4FjE0ukZaMrtGPIMm == 11) {
				local vz92fpZA6p513we = obj.getMyPassiveObjectCount(24370);
				if (vz92fpZA6p513we == 8) {
					local itGKFbGLJyD0VZy3cxo5TUdP = 0;
					for (local io4lsSMHaar3LmXY = 0; io4lsSMHaar3LmXY < vz92fpZA6p513we; io4lsSMHaar3LmXY++) {
						local a7bLHt41vQZ7dl = obj.getMyPassiveObject(24370, io4lsSMHaar3LmXY);
						local ejTtAjccGeWn1_RVhjdxyen = a7bLHt41vQZ7dl.getState();
						if (ejTtAjccGeWn1_RVhjdxyen != 11) return;
						itGKFbGLJyD0VZy3cxo5TUdP++;
					}
					if (itGKFbGLJyD0VZy3cxo5TUdP == 8) obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
				}
			}
			else if (nyUZdiX4FjE0ukZaMrtGPIMm == 13) {
				local vz92fpZA6p513we = obj.getMyPassiveObjectCount(24370);
				if (vz92fpZA6p513we <= 0) obj.addSetStatePacket(14, null, STATE_PRIORITY_AUTO, false, "");
			}
		}
		else if (bzoBRIPWDx70rMlF3v == 2) {
			if (nyUZdiX4FjE0ukZaMrtGPIMm == 13) {
				local WNTSqpNdkgQ92 = sq_GetObjectTime(obj) - obj.getVar("time").get_vector(0);
				local LmslDICMEggb = 300;
				local ufNgBnW_MZO9QRxrL2p1qW0 = obj.getVar();
				local Hksod0zAcTh5ED1jIFANS8o = sq_GetAccel(ufNgBnW_MZO9QRxrL2p1qW0.get_vector(0), ufNgBnW_MZO9QRxrL2p1qW0.get_vector(2), WNTSqpNdkgQ92, LmslDICMEggb, true);
				local EboY_VERPZ1sqYGxG = sq_GetAccel(ufNgBnW_MZO9QRxrL2p1qW0.get_vector(1), ufNgBnW_MZO9QRxrL2p1qW0.get_vector(3), WNTSqpNdkgQ92, LmslDICMEggb, true);
				local HH6m09H0ERxJgTUrUS2wW = sq_GetAccel(0, 500, WNTSqpNdkgQ92, LmslDICMEggb, true);
				obj.setCurrentPos(Hksod0zAcTh5ED1jIFANS8o, EboY_VERPZ1sqYGxG, HH6m09H0ERxJgTUrUS2wW);
				if (WNTSqpNdkgQ92 >= LmslDICMEggb && obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
			}
		}
		break;
	case 247:
		local nyUZdiX4FjE0ukZaMrtGPIMm = obj.getVar("state").get_vector(0);
		if (nyUZdiX4FjE0ukZaMrtGPIMm < 12) {
			local ufNgBnW_MZO9QRxrL2p1qW0 = obj.getVar();
			local BF2983oX6z4Bku4u_8sw = ufNgBnW_MZO9QRxrL2p1qW0.get_vector(1);
			if (sq_GetObjectTime(obj) <= BF2983oX6z4Bku4u_8sw) {
				local Xm_uuS9sQkQ4J6F72_5fcA = ufNgBnW_MZO9QRxrL2p1qW0.get_vector(0);
				local t3f0PMiJxcJ3 = ufNgBnW_MZO9QRxrL2p1qW0.get_vector(2);

				setRangeObjectXPos(obj, Xm_uuS9sQkQ4J6F72_5fcA, ENUM_DIRECTION_NEUTRAL, 0, 400, 0, t3f0PMiJxcJ3);
			}
			else if (obj.isMyControlObject()) obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 248:
		local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
		if (bzoBRIPWDx70rMlF3v == 3) {
			local nyUZdiX4FjE0ukZaMrtGPIMm = obj.getState();
			if (nyUZdiX4FjE0ukZaMrtGPIMm == 10) {
				local WNTSqpNdkgQ92 = sq_GetObjectTime(obj);
				local LmslDICMEggb = obj.getVar().get_vector(2);
				if (WNTSqpNdkgQ92 > LmslDICMEggb) {
					if (obj.isMyControlObject()) obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
					return;
				}
				local USNYBansydEmwbaHm = obj.getParent();
				if (!USNYBansydEmwbaHm) return;

				local Hksod0zAcTh5ED1jIFANS8o = sq_GetAccel(obj.getVar().get_vector(0), USNYBansydEmwbaHm.getXPos(), WNTSqpNdkgQ92, LmslDICMEggb, false);
				local EboY_VERPZ1sqYGxG = sq_GetAccel(obj.getVar().get_vector(1), USNYBansydEmwbaHm.getYPos(), WNTSqpNdkgQ92, LmslDICMEggb, false);
				sq_setCurrentAxisPos(obj, 0, Hksod0zAcTh5ED1jIFANS8o);
				sq_setCurrentAxisPos(obj, 1, EboY_VERPZ1sqYGxG);
			}
		}
		else if (bzoBRIPWDx70rMlF3v == 6) {
			if (obj.getVar().getBool(0) == false) {
				local WNTSqpNdkgQ92 = sq_GetObjectTime(obj);
				local LmslDICMEggb = 300;
				local HH6m09H0ERxJgTUrUS2wW = sq_GetUniformVelocity(1000, 0, WNTSqpNdkgQ92, LmslDICMEggb);
				sq_setCurrentAxisPos(obj, 2, HH6m09H0ERxJgTUrUS2wW);
				if (WNTSqpNdkgQ92 >= LmslDICMEggb) {
					local SnVj6ZSkCcbXD = obj.getVar().get_vector(0);
					local bREJP7lOYkm9z = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/bigswordboom" + SnVj6ZSkCcbXD.tostring() + "_sword.ani");
					obj.setCurrentAnimation(bREJP7lOYkm9z);

					sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/bigswordboom_01.ani", ENUM_DRAWLAYER_NORMAL, true);

					local HXgzwymnZ32dpjp4 = obj.getVar().get_vector(1);
					if (HXgzwymnZ32dpjp4 == 2 || HXgzwymnZ32dpjp4 == 5) {
						if (obj.isMyControlObject()) {
							sq_BinaryStartWrite();
							sq_BinaryWriteDword(248);
							sq_BinaryWriteDword(7);
							sq_BinaryWriteDword(HXgzwymnZ32dpjp4);
							sq_BinaryWriteDword(obj.getVar().get_vector(2));
							sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
						}
					}
					obj.getVar().setBool(0, true);
				}
			}
		}
		break;
	case 85:
		local bzoBRIPWDx70rMlF3v = obj.getVar("subType").get_vector(0);
		switch (bzoBRIPWDx70rMlF3v) {
		case 1:
			local USNYBansydEmwbaHm = obj.getParent();
			if (!USNYBansydEmwbaHm || !USNYBansydEmwbaHm.isObjectType(OBJECTTYPE_PASSIVE)) {
				if (obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
				return;
			}

			local nyUZdiX4FjE0ukZaMrtGPIMm = USNYBansydEmwbaHm.getState();
			if (obj.getVar().getBool(0) == false) if (USNYBansydEmwbaHm.getYPos() != 0) {
				sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterstarta_01.ani", ENUM_DRAWLAYER_NORMAL, true);
				obj.getVar().setBool(0, true);
			}
			switch (nyUZdiX4FjE0ukZaMrtGPIMm) {
			case 4:
				if (obj.getVar("aniobj").get_obj_vector_size() <= 0) {
					local SxmYhe5NMDoB5zky = sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterloopfloor_06.ani", ENUM_DRAWLAYER_BOTTOM, false);
					obj.getVar("aniobj").push_obj_vector(SxmYhe5NMDoB5zky);
					local eZ8IYPEorxFL9Tn = sq_GetCNRDObjectToSQRCharacter(obj.getTopCharacter());
					if (eZ8IYPEorxFL9Tn && eZ8IYPEorxFL9Tn.getState() == 46) {
						if (eZ8IYPEorxFL9Tn.isMyControlObject()) eZ8IYPEorxFL9Tn.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
					}
				}
				else {
					local SxmYhe5NMDoB5zky = obj.getVar("aniobj").get_obj_vector(0);
					local kA3SBdeOp6H7Aoklg8 = SxmYhe5NMDoB5zky.getCurrentAnimation();
					if (sq_IsEnd(kA3SBdeOp6H7Aoklg8)) sq_Rewind(kA3SBdeOp6H7Aoklg8);
				}
				local LYDAYFscKtLZc5Dz31OVf = USNYBansydEmwbaHm.getCurrentAnimation();
				if (sq_IsEnd(LYDAYFscKtLZc5Dz31OVf)) sq_Rewind(LYDAYFscKtLZc5Dz31OVf);
				break;
			case 5:
				if (USNYBansydEmwbaHm.getZPos() != 1000) {
					sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterendfloor_07.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/hellbenterr/hellbenterend_00.ani", ENUM_DRAWLAYER_NORMAL, true);
					if (obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
				}

				sq_setCurrentAxisPos(USNYBansydEmwbaHm, 2, 1000);
				break;
			}
			break;
		}
		break;
	}
};
