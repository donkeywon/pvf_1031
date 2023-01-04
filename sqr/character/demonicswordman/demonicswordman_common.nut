function onStartDungeon_DemonicSwordman(obj)
{
	if(!obj) return;
	Common_onStartDungeon(obj);
	return;
}

function setState_DemonicSwordman(obj, state, datas, isResetTimer)
{
	Common_setState(obj, state, datas, isResetTimer);
	return;
}

function drawMainCustomUI_DemonicSwordman(obj)
{
	if (!obj)
		return;
	drawMainCustomUI_All(obj);
}