function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_goddessofwar")
	appendage.sq_AddFunctionName("onStart", "onStart_goddessofwar")
	appendage.sq_AddFunctionName("onEnd", "onEnd_goddessofwar")
}

function sq_AddEffect(appendage)
{
	appendage.sq_AddEffectFront("character/thief/effect/animation/atgoddessofwar/goddessofwar_bufftop.ani")
	appendage.sq_AddEffectBack("character/thief/effect/animation/atgoddessofwar/goddessofwar_buffbot.ani")
	
}


function proc_goddessofwar(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();
}

function onStart_goddessofwar(appendage)
{
	if(!appendage)
	{
		return;
	}
	local obj = appendage.getParent();
}

function onEnd_goddessofwar(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();

}

