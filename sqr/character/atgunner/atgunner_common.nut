function onStartDungeon_ATGunner(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_ATGunner(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_ATGunner(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}