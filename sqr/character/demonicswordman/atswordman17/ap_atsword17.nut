function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atdssword17")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atdssword17")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atdssword17")
}

function sq_AddEffect(appendage)
{

}


function proc_appendage_atdssword17(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();
}

function onStart_appendage_atdssword17(appendage)
{
	if(!appendage)
	{
		return;
	}
	local obj = appendage.getParent();
}

function onEnd_appendage_atdssword17(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();

}

