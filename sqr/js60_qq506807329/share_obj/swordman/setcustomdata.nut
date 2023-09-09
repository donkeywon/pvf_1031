function setCustomData_po_qq506807329new_swordman_24370(obj, receiveData) {
	if (!obj) return;
	local EPeWqG6pf79 = receiveData.readDword();
	obj.getVar("skill").clear_vector();
	obj.getVar("skill").push_vector(EPeWqG6pf79);
	switch (EPeWqG6pf79) {
	case 229:
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 0);
		setCurrentAnimationFromCutomIndex(obj, 0);
		local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
		local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(obj);
		local XWgcW8xB11Z9tE38zPRx = (receiveData.readDword()).tofloat() / 100.0;
		AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx);
		sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
		obj.getVar().clear_obj_vector();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(receiveData.readDword());
		obj.getVar().push_vector(receiveData.readDword());

		if (receiveData.readBool() == true) {

			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, receiveData.readDword(), receiveData.readDword(), receiveData.readDword(), receiveData.readDword());
		}
		break;
	case 231:
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 1);
		setCurrentAnimationFromCutomIndex(obj, 1);
		local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
		local AZ0oT64ywiBlOme = obj.getCurrentAnimation();
		local XWgcW8xB11Z9tE38zPRx = (receiveData.readDword()).tofloat() / 100.0;
		AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx);
		sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		break;
	case 230:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		if (QRN462W9pUj == 1) {

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 4), receiveData.readDword());
			obj.getVar().clear_vector();
			local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(0);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(0);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			local XWgcW8xB11Z9tE38zPRx = receiveData.readDword();
			obj.getVar("rate").clear_vector();
			local Ntlk8t_IOs7UzaUiIGpqaUZ = obj.getVar("rate");
			Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector(100);
			Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector(XWgcW8xB11Z9tE38zPRx);
			Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector((XWgcW8xB11Z9tE38zPRx - 100) / 10);
			obj.getVar().setBool(0, false);
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		else if (QRN462W9pUj == 2) {
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			setCurrentAnimationFromCutomIndex(obj, 67);
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 44);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			sq_SetMyShake(obj, 2, 100);
		}
		break;
	case 232:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		if (QRN462W9pUj > 0) {
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 7);
			setCurrentAnimationFromCutomIndex(obj, 5 + QRN462W9pUj);
		}
		else {
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 6);
			setCurrentAnimationFromCutomIndex(obj, 5);
		}
		local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(OUIPGgxWtgcQn1a, receiveData.readDword());

		local s80Twh1qMM = sq_GetCurrentAnimation(obj);
		s80Twh1qMM.setSpeedRate((receiveData.readDword()).tofloat());
		break;
	case 233:
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 8);
		setCurrentAnimationFromCutomIndex(obj, 10);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), receiveData.readDword());
		break;
	case 82:
		local type = receiveData.readDword();
		local Damage = receiveData.readDword();
		local count = receiveData.readDword();
		local interval = receiveData.readDword();
		local Damage2 = receiveData.readDword();
		local Dmage3 = 10000;

		obj.getVar("kalla").clear_vector();
		obj.getVar("kalla").push_vector(Damage);
		obj.getVar("kalla").push_vector(count);
		obj.getVar("kalla").push_vector(interval);
		obj.getVar("kalla").push_vector(Damage2);
		obj.getVar("kalla").push_vector(Dmage3);

		if (type == 0) obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
		else obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
		break;
	case 234:
		local i3Z003zQrTyBM = obj.getTopCharacter();
		if (i3Z003zQrTyBM && i3Z003zQrTyBM.getState() == 234) {
			i3Z003zQrTyBM.getVar().clear_obj_vector();
			i3Z003zQrTyBM.getVar().push_obj_vector(obj);
		}
		local rmnfWlzKy8jbFD = receiveData.readDword();
		local cKlGYRNQIqig = receiveData.readDword();
		local mfMe0s6KxGgnFoGA = receiveData.readDword();
		local muIhHGF8aI7_Kep30d = receiveData.readDword();
		local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(obj, 9);
		local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(obj, 10);
		local zB9PvpsNIpM9JGUl = sq_GetCustomAttackInfo(obj, 11);

		sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, mfMe0s6KxGgnFoGA);

		sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, muIhHGF8aI7_Kep30d);

		sq_SetCurrentAttackBonusRate(zB9PvpsNIpM9JGUl, muIhHGF8aI7_Kep30d);
		switch (rmnfWlzKy8jbFD) {
		case 2:
			local nMD6gyyDPeINFG = receiveData.readDword();
			local aro2OX5D9GyEEr70s = receiveData.readDword();
			local YoA6dMOCNF6Y_XxcBRc = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc);
			sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc);
			break;
		case 5:
			local GgfeEo9RTnEwsswbA6K = receiveData.readDword();
			local lFVpYxHs86uccO = receiveData.readDword();
			local sVbx3H4uhqVaYPNDKSwoMl = receiveData.readDword();
			local E8xHcbo6UE = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl);
			sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl);
			break;
		case 1:
			local MErEHcubb8Aq9Rqsj = receiveData.readDword();
			local jjZSK_dm0QP74yIqAdntV = receiveData.readDword();
			local qlVVGMawaeLdfeErSrut = receiveData.readDword();
			local AGh4cz_ZHFeGRhkJC = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut);
			sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut);
			break;
		}
		obj.getVar().setBool(0, receiveData.readBool());
		obj.getVar().clear_obj_vector();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(rmnfWlzKy8jbFD);
		obj.getVar().push_vector(cKlGYRNQIqig);
		break;
	case 235:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		switch (QRN462W9pUj) {
		case 1:
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 13);
			setCurrentAnimationFromCutomIndex(obj, 27);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			break;
		case 2:
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 12);
			setCurrentAnimationFromCutomIndex(obj, sq_getRandom(20, 26));
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			local Hp3XLXvP7Q9 = receiveData.readDword();
			if (Hp3XLXvP7Q9 == 1) sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, receiveData.readDword(), receiveData.readDword(), receiveData.readDword(), receiveData.readDword());
			obj.getVar().clear_vector();
			obj.getVar().push_vector(obj.getZPos());
			break;
		case 3:
			break;
		}
		break;
	case 236:

		sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 14), receiveData.readDword());

		sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 55), receiveData.readDword());

		sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 56), receiveData.readDword());
		obj.getVar().clear_obj_vector();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(receiveData.readDword());
		if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		break;
	case 237:
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 15);
		setCurrentAnimationFromCutomIndex(obj, 29);
		local Sg8Fp5IcLgfc = receiveData.readDword();
		local ECBpNkloOg4D806qP8mr = receiveData.readDword();
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), ECBpNkloOg4D806qP8mr);
		local AZ0oT64ywiBlOme = obj.getCurrentAnimation();
		local XWgcW8xB11Z9tE38zPRx = Sg8Fp5IcLgfc.tofloat() / 100.0;
		AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx);
		sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		break;
	case 238:
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 16);
		setCurrentAnimationFromCutomIndex(obj, 30);
		local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
		local sCU7EpNjvTi2 = receiveData.readDword();
		local vM4HE588y147 = receiveData.readDword();
		local RdKYxv_CFyhxPJogFn_Hbk = receiveData.readDword();

		obj.getVar().clear_vector();
		local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(sCU7EpNjvTi2);
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(vM4HE588y147);
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(RdKYxv_CFyhxPJogFn_Hbk);

		obj.getVar().clear_obj_vector();
		break;
	case 239:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		switch (QRN462W9pUj) {
		case 1:
			if (obj.isMyControlObject()) {

				local CHdGxM4IJVg = sq_flashScreen(obj, 500, 99990, 0, 110, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				obj.getVar("flashobj").clear_obj_vector();
				obj.getVar("flashobj").push_obj_vector(CHdGxM4IJVg);
			}

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 18), receiveData.readDword());

			obj.getVar().clear_vector();
			local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 3:
			local cT4VkhYVdHdZKCw9Xb5J = receiveData.readDword();

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 19), receiveData.readDword());
			sq_SetAttackInfoForceHitStunTime(sq_GetCustomAttackInfo(obj, 19), cT4VkhYVdHdZKCw9Xb5J);

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 20), receiveData.readDword());
			sq_SetAttackInfoForceHitStunTime(sq_GetCustomAttackInfo(obj, 20), cT4VkhYVdHdZKCw9Xb5J);
			local tok5bCM5RpNiHQjRCx = receiveData.readDword();

			obj.getVar().clear_vector();
			obj.getVar().push_vector(tok5bCM5RpNiHQjRCx);
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		}
		break;
	case 240:
		local i3Z003zQrTyBM = obj.getTopCharacter();
		if (i3Z003zQrTyBM && obj.isMyControlObject()) {
			local CHdGxM4IJVg = i3Z003zQrTyBM.getVar("flashobj").get_obj_vector(0);
			obj.getVar("flashobj").clear_obj_vector();
			obj.getVar("flashobj").push_obj_vector(CHdGxM4IJVg);
			sq_flashScreen(obj, 0, 100, 50, 100, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
			sq_SetMyShake(obj, 8, 150);
		}
		local aysTWUy4_4 = receiveData.readDword();
		local QZM9zs40WedgVrgh91V = receiveData.readDword();
		local cbUTcqS_d5IbCkWh = receiveData.readDword();
		setCurrentAnimationFromCutomIndex(obj, 36);
		sq_SetCurrentAttackInfoFromCustomIndex(obj, 21);
		local XWgcW8xB11Z9tE38zPRx = aysTWUy4_4.tofloat() / 100.0;
		local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(obj);
		AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx);
		sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
		local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, QZM9zs40WedgVrgh91V);
		sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 22), cbUTcqS_d5IbCkWh);
		break;
	case 241:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		if (QRN462W9pUj == 1) {
			setCurrentAnimationFromCutomIndex(obj, 40);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 26);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			local EFiGcbc1FMINHJ = receiveData.readDword();
			local z_vMiazT8IJzaryISwcHDO = receiveData.readDword();
			local GS3c4gnowVjgRoKHM3886 = receiveData.readDword();
			local rwGboVDp14TtArrJhyW = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_CURSE, EFiGcbc1FMINHJ, z_vMiazT8IJzaryISwcHDO, GS3c4gnowVjgRoKHM3886, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW);

			obj.setTimeEvent(0, receiveData.readDword(), 0, false);
			sq_SetMyShake(obj, 2, 3500);
		}
		else if (QRN462W9pUj == 2) {

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 23), receiveData.readDword());

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 24), receiveData.readDword());

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 25), receiveData.readDword());
			local OnXJEgXfbSRQT6IL = receiveData.readDword();
			local E5EvZXsAgnRE9YXbO0vi = receiveData.readDword();
			local VX1hFil4WTba7L9_ZFYn5tKu = receiveData.readDword();
			local z5A2V6qWPEeQ76EXUGC6i = receiveData.readDword();
			obj.getVar().clear_vector();
			local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(OnXJEgXfbSRQT6IL);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(E5EvZXsAgnRE9YXbO0vi);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(VX1hFil4WTba7L9_ZFYn5tKu);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(z5A2V6qWPEeQ76EXUGC6i);
			obj.getVar().clear_obj_vector();
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 242:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		switch (QRN462W9pUj) {
		case 1:
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 27);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			local zPnRnD73nH6l = receiveData.readDword();
			local yQ94ZPbnY4LnsG = receiveData.readDword();
			local h_EzDiQlVOStf3axSg = receiveData.readDword();
			local eyaEmz7QOYU5eNbSnrR = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, zPnRnD73nH6l, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			local _b7td7c9caQ79PDdMf30 = receiveData.readDword();
			obj.setTimeEvent(0, _b7td7c9caQ79PDdMf30, 0, false);
			local SLGyRmuKpFi7OTv75uj = receiveData.readDword();
			obj.setTimeEvent(1, SLGyRmuKpFi7OTv75uj, 1, false);
			local M5f4mBzwqDqqR1oYaMAmtpwb = receiveData.readDword();
			obj.getVar().clear_vector();
			local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(zPnRnD73nH6l);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(yQ94ZPbnY4LnsG);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(h_EzDiQlVOStf3axSg);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(eyaEmz7QOYU5eNbSnrR);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(M5f4mBzwqDqqR1oYaMAmtpwb);
			obj.getVar().clear_obj_vector();

			local t5UbR7xIsLF7bLAYXJSm = obj.getXPos();
			local cVVZ2nWsI9Wi2z9RT = obj.getYPos();
			local avSAglDWSo1OYN7wI9SYQmZ = obj.getZPos();
			local OOeJxgW2yCm3SYb = 300;
			local ylFppMxRqLF_Z_sRE = 90;
			local tUyV6dO_lSh3j1E = 50;
			local R7FQ2UtmUEEW9 = obj.getObjectManager();
			for (local TVkdQLtwdkEpv = 0; TVkdQLtwdkEpv < R7FQ2UtmUEEW9.getCollisionObjectNumber(); TVkdQLtwdkEpv++) {
				local s6kSfEkrK2dhlIuxS6Jeq = R7FQ2UtmUEEW9.getCollisionObject(TVkdQLtwdkEpv);
				if (s6kSfEkrK2dhlIuxS6Jeq && s6kSfEkrK2dhlIuxS6Jeq.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(s6kSfEkrK2dhlIuxS6Jeq) && s6kSfEkrK2dhlIuxS6Jeq.isInDamagableState(obj) && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getXPos() - t5UbR7xIsLF7bLAYXJSm) <= OOeJxgW2yCm3SYb && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getYPos() - cVVZ2nWsI9Wi2z9RT) <= ylFppMxRqLF_Z_sRE && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getZPos() - avSAglDWSo1OYN7wI9SYQmZ) <= tUyV6dO_lSh3j1E) {
					local I4lS1fDsMA8xsQwLr = sq_GetCNRDObjectToActiveObject(s6kSfEkrK2dhlIuxS6Jeq);

					if (I4lS1fDsMA8xsQwLr && !I4lS1fDsMA8xsQwLr.isDead()) {

						if (CNSquirrelAppendage.sq_IsAppendAppendage(I4lS1fDsMA8xsQwLr, "character/swordman/indaramang/ap_indaramang.nut")) CNSquirrelAppendage.sq_RemoveAppendage(I4lS1fDsMA8xsQwLr, "character/swordman/indaramang/ap_indaramang.nut");

						CNSquirrelAppendage.sq_AppendAppendage(I4lS1fDsMA8xsQwLr, obj, 242, true, "character/swordman/indaramang/ap_indaramang.nut", true);
						hT2CAcuI7GVEBkmiz1MRY7pd.push_obj_vector(I4lS1fDsMA8xsQwLr);
					}
				}
			}
			obj.getVar().setBool(0, true);
			break;
		case 2:
			setCurrentAnimationFromCutomIndex(obj, 41);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 28);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, receiveData.readDword(), receiveData.readDword(), receiveData.readDword(), receiveData.readDword());
			local XWgcW8xB11Z9tE38zPRx = receiveData.readFloat();
			local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(obj);
			AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
			AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx);
			sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx);
			break;
		}
		break;
	case 243:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		obj.getVar().clear_vector();
		local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
		switch (QRN462W9pUj) {
		case 0:
			local lRLGXYfXptfLK5 = obj.getParent();
			obj.setMapFollowParent(lRLGXYfXptfLK5);
			obj.setMapFollowType(1);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			obj.getVar("moveObj").clear_obj_vector();
			obj.getVar("moveObj").push_obj_vector(lRLGXYfXptfLK5);

			obj.getVar("moveObj").clear_vector();
			obj.getVar("moveObj").push_vector(lRLGXYfXptfLK5.getXPos());
			obj.getVar("moveObj").push_vector(lRLGXYfXptfLK5.getYPos());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 1:
			obj.getVar("move").clear_vector();
			local utKcbpK8jSP3kfjT2zaJsC = obj.getVar("move");
			utKcbpK8jSP3kfjT2zaJsC.push_vector(obj.getXPos());
			utKcbpK8jSP3kfjT2zaJsC.push_vector(obj.getYPos());
			utKcbpK8jSP3kfjT2zaJsC.push_vector(obj.getZPos());
			utKcbpK8jSP3kfjT2zaJsC.push_vector(receiveData.readDword());
			utKcbpK8jSP3kfjT2zaJsC.push_vector(receiveData.readDword());

			local lTYgGg9MSyTBbA0G_x = receiveData.readDword();
			local b3wEBbZQahvuxeIvJ = receiveData.readDword();
			local yQ94ZPbnY4LnsG = receiveData.readDword();
			local h_EzDiQlVOStf3axSg = receiveData.readDword();
			local eyaEmz7QOYU5eNbSnrR = receiveData.readDword();
			local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(obj, 29);
			local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(obj, 30);
			sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, lTYgGg9MSyTBbA0G_x);
			sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, lTYgGg9MSyTBbA0G_x);
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			obj.setCustomRotate(true, receiveData.readFloat());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 2:
			local lTYgGg9MSyTBbA0G_x = receiveData.readDword();
			local VdYA6RfGv_yEfn7ze5sB85 = receiveData.readDword();

			local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(obj, 29);
			local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(obj, 30);
			sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, receiveData.readDword());
			sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, receiveData.readDword());
			local b3wEBbZQahvuxeIvJ = receiveData.readDword();
			local yQ94ZPbnY4LnsG = receiveData.readDword();
			local h_EzDiQlVOStf3axSg = receiveData.readDword();
			local eyaEmz7QOYU5eNbSnrR = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			obj.getVar("move").clear_vector();
			local utKcbpK8jSP3kfjT2zaJsC = obj.getVar("move");
			utKcbpK8jSP3kfjT2zaJsC.push_vector(obj.getZPos());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 3:
			setCurrentAnimationFromCutomIndex(obj, 46);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 31);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, receiveData.readDword(), receiveData.readDword(), receiveData.readDword(), receiveData.readDword());
			break;
		case 4:
			setCurrentAnimationFromCutomIndex(obj, 47);
			sq_SetCurrentAttackInfoFromCustomIndex(obj, 32);
			local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, receiveData.readDword(), receiveData.readDword(), receiveData.readDword(), receiveData.readDword());
			break;
		}
		obj.getVar("addRate").clear_vector();
		obj.getVar("addRate").push_vector(receiveData.readDword());
		break;
	case 244:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		obj.getVar().clear_vector();
		local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
		if (QRN462W9pUj == 1) {
			local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(obj, 33);
			local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(obj, 34);
			local zB9PvpsNIpM9JGUl = sq_GetCustomAttackInfo(obj, 35);
			local wAi7sx6xtRdV = sq_GetCustomAttackInfo(obj, 36);
			sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, receiveData.readDword());
			sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, receiveData.readDword());
			sq_SetCurrentAttackBonusRate(zB9PvpsNIpM9JGUl, receiveData.readDword());
			sq_SetCurrentAttackBonusRate(wAi7sx6xtRdV, receiveData.readDword());
			local b3wEBbZQahvuxeIvJ = receiveData.readDword();
			local yQ94ZPbnY4LnsG = receiveData.readDword();
			local h_EzDiQlVOStf3axSg = receiveData.readDword();
			local eyaEmz7QOYU5eNbSnrR = receiveData.readDword();
			sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			sq_SetChangeStatusIntoAttackInfo(wAi7sx6xtRdV, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
			obj.getVar("addRate").clear_vector();
			obj.getVar("addRate").push_vector(receiveData.readDword());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		else if (QRN462W9pUj == 2) {
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(obj.getXPos());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(obj.getYPos());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		}
		break;
	case 246:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		obj.getVar().clear_vector();
		local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
		switch (QRN462W9pUj) {
		case 1:
			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 37), receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 2:

			local lRLGXYfXptfLK5 = obj.getParent();
			if (lRLGXYfXptfLK5) if (CNSquirrelAppendage.sq_IsAppendAppendage(lRLGXYfXptfLK5, "character/swordman/handlingsword/ap_handlingsword_buff.nut")) CNSquirrelAppendage.sq_RemoveAppendage(lRLGXYfXptfLK5, "character/swordman/handlingsword/ap_handlingsword_buff.nut");
			local mfMe0s6KxGgnFoGA = receiveData.readDword();
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(mfMe0s6KxGgnFoGA);
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
			hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 38), mfMe0s6KxGgnFoGA);
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 3:
			setCurrentAnimationFromCutomIndex(obj, 60);
			local mfMe0s6KxGgnFoGA = receiveData.readDword();
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 39);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, mfMe0s6KxGgnFoGA);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 40), mfMe0s6KxGgnFoGA);

			sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 41), receiveData.readDword());
			break;
		}
		break;
	case 47:
		local Ai_AN40nj4 = receiveData.readBool();
		local power = receiveData.readDword();
		local attackinfo = 43;
		local ani = 64 + power;
		local attackInfo = sq_GetCustomAttackInfo(obj, attackinfo);
		sq_SetCurrentAttackBonusRate(attackInfo, receiveData.readDword());
		sq_SetCurrentAttackInfo(obj, attackInfo);
		obj.getVar().clear_vector();
		obj.getVar().push_vector(ani);
		obj.setTimeEvent(0, 200, 1, false);
		break;
	case 247:
		obj.getVar().clear_vector();
		local hT2CAcuI7GVEBkmiz1MRY7pd = obj.getVar();
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
		hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(receiveData.readDword());
		sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(obj, 45), receiveData.readDword());
		if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
		break;
	case 67:
		local QRN462W9pUj = receiveData.readDword();
		switch (QRN462W9pUj) {
		case 1:
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponcomboheavywind/ura_ls_wind_05.ani"));
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 46);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			break;
		case 2:
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponshortswordsub/short_new_01_wave.ani"));
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 47);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			break;
		case 3:
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponshortswordsub/short_new_03_wave.ani"));
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 47);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			break;
		}
		break;
	case 248:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		switch (QRN462W9pUj) {
		case 1:
			local o0xK_yt7br = receiveData.readDword();
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_backstep_01.ani"));
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 48);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			obj.sq_SetMoveParticle("particle/stateoflimit.ptl", 0.0, 0.0);
			sq_SetSpeedToMoveParticle(obj, 0, 700);
			break;
		case 2:
			local o0xK_yt7br = receiveData.readDword();
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_crash_05.ani"));
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 49);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			break;
		case 3:
			local o0xK_yt7br = receiveData.readDword();
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 50);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);

			obj.getVar().clear_vector();
			obj.getVar().push_vector(obj.getXPos());
			obj.getVar().push_vector(obj.getYPos());
			obj.getVar().push_vector(receiveData.readDword());
			if (obj.isMyControlObject()) obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
			break;
		case 4:
			local o0xK_yt7br = receiveData.readDword();
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 51);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			obj.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/illusionslash/state_of_limit_illusion_wind_meele_0" + sq_getRandom(0, 3).tostring() + ".ani"));
			obj.sq_SetMoveParticle("particle/illusionslashmelee.ptl", 0.0, 0.0);
			break;
		case 5:
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 52);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			local hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/1_shockwave_dodge.ani");
			obj.setCurrentAnimation(hyftiJu8AwR);
			sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/2_ground_dodge .ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/3_sword_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/4_attackt_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/5_light_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/swordman/particle/illusionslashsub.ptl", obj, 0, 0, 10, true, 0, 0, 1);
			break;
		case 6:
			local Hp3XLXvP7Q9 = receiveData.readDword();
			local hL1pB4UFVXJbF = receiveData.readDword();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(hL1pB4UFVXJbF);
			obj.getVar().push_vector(Hp3XLXvP7Q9);
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 53);
			switch (Hp3XLXvP7Q9) {
			case 0:
				sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_HOLD, receiveData.readDword(), 85, receiveData.readDword());
				break;
			case 1:
				sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, receiveData.readDword(), 85, receiveData.readDword(), receiveData.readDword());
				break;
			case 2:
				sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_STUN, receiveData.readDword(), 85, receiveData.readDword());
				obj.getVar().push_vector(receiveData.readDword());
				break;
			case 3:
				break;
			case 5:
				sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, receiveData.readDword(), 85, receiveData.readDword(), receiveData.readDword());
				obj.getVar().push_vector(receiveData.readDword());
				break;
			}
			local EC5wltFlOkQ26rRgfmqvxRHy = receiveData.readDword();
			local n040c2F_0bDOSlESdgYd_OP = receiveData.readDword();
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, EC5wltFlOkQ26rRgfmqvxRHy);
			sq_SetAttackInfoForceHitStunTime(OUIPGgxWtgcQn1a, n040c2F_0bDOSlESdgYd_OP);
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			local hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/bigswordboom" + hL1pB4UFVXJbF.tostring() + "_sword_inner.ani");
			obj.setCurrentAnimation(hyftiJu8AwR);
			obj.getVar().setBool(0, false);
			break;
		case 7:
			local Hp3XLXvP7Q9 = receiveData.readDword();
			local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(obj, 54);
			sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, receiveData.readDword());
			sq_SetCurrentAttackInfo(obj, OUIPGgxWtgcQn1a);
			local hyftiJu8AwR = null;
			if (Hp3XLXvP7Q9 == 2) hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/chargecrash/damage-back.ani");
			else if (Hp3XLXvP7Q9 == 5) hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/lightswordshockwave.ani");
			obj.setCurrentAnimation(hyftiJu8AwR);
			break;
		}
		break;
	case 85:
		local QRN462W9pUj = receiveData.readDword();
		obj.getVar("subType").clear_vector();
		obj.getVar("subType").push_vector(QRN462W9pUj);
		switch (QRN462W9pUj) {
		case 1:
			local lRLGXYfXptfLK5 = obj.getParent();
			if (lRLGXYfXptfLK5) {
				obj.setCurrentPos(lRLGXYfXptfLK5.getXPos(), lRLGXYfXptfLK5.getYPos(), lRLGXYfXptfLK5.getZPos());
				sq_moveWithParent(lRLGXYfXptfLK5, obj);
			}
			obj.getVar("aniobj").clear_obj_vector();
			obj.getVar().setBool(0, false);
			break;
		}
		break;
	case 253:
		local tarid = receiveData.readDword();
		local power = receiveData.readDword();

		local ani = obj.getCustomAnimation(6);
		obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);

		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackPower(attackInfo, power);
		break;
	}
};
