function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atfirepowerreleasebuff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atfirepowerreleasebuff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atfirepowerreleasebuff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_atfirepowerreleasebuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_atfirepowerreleasebuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_atfirepowerreleasebuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
