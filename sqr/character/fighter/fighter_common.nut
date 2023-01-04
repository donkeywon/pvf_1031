function onStartDungeon_Fighter(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_Fighter(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_Fighter(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}