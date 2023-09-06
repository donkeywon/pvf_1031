function onProc_DoubleGunhawk(obj) 
{
	local count = obj.getMyPassiveObjectCount(22254);
	for (local i = 0; i < count; ++i) 
	{
		local object = obj.getMyPassiveObject(22254, i);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, object, 55, false, "Character/ATMage/DarknessMantle/ap_ATDarknessMantle_suck.nut", false);
		local range = 350;
		local suckVel = 350;
		if (appendage) 
		{
			CNSquirrelAppendage.sq_Append(appendage, obj, object);
			local auraAppendage = appendage.sq_getAuraMaster("auraMaster");
			if (!auraAppendage) auraAppendage = appendage.sq_AddAuraMaster("auraMaster", obj, object, 1200, 18, 5, 0);
			if (auraAppendage) auraAppendage.setAttractionInfo(suckVel, suckVel, 100+range, 100);
		}
	}
}