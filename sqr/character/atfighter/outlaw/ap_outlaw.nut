
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_outlaw")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_outlaw")
}

function sq_AddEffect(appendage)
{

}

function proc_appendage_outlaw(appendage)
{
	if(!appendage) {
		return;
	}

}



function onStart_appendage_outlaw(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
	
	
}


