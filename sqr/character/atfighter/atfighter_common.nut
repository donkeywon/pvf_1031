function onStartDungeon_ATFighter(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_ATFighter(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_ATFighter(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}