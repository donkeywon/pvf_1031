
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_shardmagnum")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_shardmagnum")
}
function sq_AddEffect(appendage)
{
}

function proc_appendage_shardmagnum(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    gbl_HoldAndDelayEffectSetDownByAppendageLoop(appendage);
}


function onStart_appendage_shardmagnum(appendage)
{
	if(!appendage) {
		return;
	}
	
}


