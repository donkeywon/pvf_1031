
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_homunculus")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_homunculus")
}

function sq_AddEffect(appendage)
{

}

function proc_appendage_homunculus(appendage)
{
	if(!appendage) {
		return;
	}

}



function onStart_appendage_homunculus(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
	
	
}


