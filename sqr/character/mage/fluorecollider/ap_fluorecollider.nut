function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_FluoreCollider")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_FluoreCollider")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_FluoreCollider")
}

function sq_AddEffect(appendage)
{
	//appendage.sq_AddEffectFront("character/swordman/effect/animation/atfistofexplosion/hit02loop.ani")
}


function proc_appendage_FluoreCollider(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
}

function onStart_appendage_FluoreCollider(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
}



function onEnd_appendage_FluoreCollider(appendage)
{
	if(!appendage) {
		return;		
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}

}
