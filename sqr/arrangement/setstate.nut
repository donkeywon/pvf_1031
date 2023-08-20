function Common_setState(obj, state, datas, isResetTimer) {
	//PrintOutSubstate(obj, state, datas);
}

function setState_Swordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	local substate1 = obj.sq_GetVectorData(datas, 1);
	local substate2 = obj.sq_GetVectorData(datas, 2);
	setState_Swordman_swordman_handlingsword(obj, state, datas, isResetTimer);
	obj.getVar("Swordman_substate").clear_vector();
	obj.getVar("Swordman_substate").push_vector(substate);
	obj.getVar("Swordman_substate").push_vector(substate1);
	obj.getVar("Swordman_substate").push_vector(substate2);
	Common_setState(obj, state, datas, isResetTimer);
	return 0;
}

function setState_Fighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_ATFighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_Gunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_ATGunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_Mage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_ATMage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
	setState_ATMage_ARR(obj, state, datas, isResetTimer);
}

function setState_Priest(obj, state, datas, isResetTimer) {
	Common_setState(obj, state, datas, isResetTimer);
	if (!obj) return;

}

function setState_Thief(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}

function setState_DemonicSwordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	Common_setState(obj, state, datas, isResetTimer);
}