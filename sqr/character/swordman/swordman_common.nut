function onStartDungeon_Swordman(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_Swordman(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_Swordman(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}