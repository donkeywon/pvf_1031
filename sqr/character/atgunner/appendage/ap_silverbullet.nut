//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////








function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_silverbullet")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_silverbullet")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_silverbullet")
}



function sq_AddEffect(appendage)
{

}



function onStart_appendage_silverbullet(appendage)
{
	if(!appendage)
	{
		return;
	}
}



function onEnd_appendage_silverbullet(appendage)
{
	if(!appendage) 
	{
		return;
	}
}



function isEnd_appendage_silverbullet(appendage)
{
	if(!appendage) return false;

	return false;
}