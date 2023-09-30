function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mailun_lieyan")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mailun_lieyan")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mailun_lieyan")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mailun_lieyan(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local isAppendApd = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/priest/appendage/ap_mailun_shengguang.nut");
	if(isAppendApd)
	{
		appendage.setValid(false);
		return;
	}
}

function onStart_appendage_mailun_lieyan(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_mailun_lieyan(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
