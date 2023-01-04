function onStartDungeon_Priest(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_Priest(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_Priest(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}