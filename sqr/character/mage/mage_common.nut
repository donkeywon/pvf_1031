function onStartDungeon_Mage(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_Mage(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_Mage(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}