function onAfterSetState_priest_jumpattack(tg2sijw7u5a6tRTUA, LuRImcDgq6uZ, A7XGrzLXsh3k, GSWKjFjFqPZgHbmZ) {
	if (!tg2sijw7u5a6tRTUA) return;
};

function onKeyFrameFlag_priest_jumpattack(HmlmuQe6qZH6nJThYW1gng9, r95v9Gg7vxx) {
	if (!HmlmuQe6qZH6nJThYW1gng9) return false;
	if (HmlmuQe6qZH6nJThYW1gng9.isCurrentCutomAniIndex(192) && CNSquirrelAppendage.sq_IsAppendAppendage(HmlmuQe6qZH6nJThYW1gng9, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
		if (r95v9Gg7vxx == 0) {
			local zWMRKeyJKeKhnYRhj = sq_CreateDrawOnlyObject(HmlmuQe6qZH6nJThYW1gng9, "character/priest/effect/animation/jupiter/jupiterhammerjumpatkadd_lineeff.ani", ENUM_DRAWLAYER_BOTTOM, true);
			sq_setCurrentAxisPos(zWMRKeyJKeKhnYRhj, 2, 0);
			HmlmuQe6qZH6nJThYW1gng9.sq_AddStateLayerAnimation(1, HmlmuQe6qZH6nJThYW1gng9.sq_CreateCNRDAnimation("effect/animation/jupiter/jupiterhammerjumpatk_slasheff.ani"), 0, 0);
		}
	}
	else if (HmlmuQe6qZH6nJThYW1gng9.isCurrentCutomAniIndex(241) && CNSquirrelAppendage.sq_IsAppendAppendage(HmlmuQe6qZH6nJThYW1gng9, "character/new_priest/metamorphosis/ap_metamorphosis.nut") == true) {
		if (r95v9Gg7vxx == 1) HmlmuQe6qZH6nJThYW1gng9.resetHitObjectList();
	}
	return true;
};