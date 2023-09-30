CURRENT_BUFF_COUNT_SHI_SHEN_ZHI_LI			<- 0;

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_shishenzhili")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_shishenzhili")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_shishenzhili")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_shishenzhili(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_shishenzhili(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_shishenzhili(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
