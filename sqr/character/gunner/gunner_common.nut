function onStartDungeon_Gunner(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_Gunner(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_Gunner(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}