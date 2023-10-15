
function sq_AddFunctionName(appendage)
{	
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_iceFieldex")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_iceFieldex")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atmage_iceFieldex")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_atmage_iceFieldex(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if (!sourceObj || !parentObj)
    {
		appendage.setValid(false);
		return;
    }
    local currentAni = sq_GetCurrentAnimation(parentObj);
    currentAni.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, sq_RGB(0, 0, 255), sq_ALPHA(200), true, false);
    gbl_HoldAndDelayEffectSetDownByAppendageLoop(appendage);
}


function onStart_appendage_atmage_iceFieldex(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
}


function onEnd_appendage_atmage_iceFieldex(appendage)
{

}