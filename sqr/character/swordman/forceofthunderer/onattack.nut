//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function onAttack_po_swordman_shared(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 19:
			local Appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 99, false, "character/swordman/wave/ap_firewaveex.nut", true);
			local Appendage_Time = 300;
			Appendage.sq_SetValidTime(Appendage_Time);
			if(Appendage)
			{
			}
		break;
		case 22:
			local Appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 100, false, "character/swordman/wave/ap_icewaveex.nut", true);
			local skill_level = sq_GetSkillLevel(parentChr, 100);
			local Appendage_Time = sq_GetIntData(parentChr, 100, 0, skill_level);
			Appendage.sq_SetValidTime(Appendage_Time);
			if(Appendage)
			{
			}
		break;
	}
}



