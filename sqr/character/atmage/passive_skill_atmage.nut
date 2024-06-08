/////////////////////////////////////////////////////////
//
// 패시브 스킬처리
// 해당 스킬의 패시브 스킬의 Appendage등록/해제 등등
//
/////////////////////////////////////////////////////////

function ProcPassiveSkill_ATMage(obj, skill_index, skill_level)
{

	if(skill_index == SKILL_ATMAGE_COMMINTERRUPT)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atmage/appendage/ap_atmage_comminterrupt.nut", true);
		}
	}
	
	else if (skill_index == SKILL_EXPRESSION)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "Character/ATMage/Expressions/ap_atmage_expression.nut", true);
		
				print(" expression appendage:" + appendage);
			if(appendage)
			{
				local magicalAtkChangeRate = sq_GetLevelData(obj, skill_index, SKL_LVL_COLUMN_IDX_1, skill_level);				
				
				local change_appendage = appendage.sq_getChangeStatus("expression");
				
				if(!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatus("expression",obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAtkChangeRate );
				}
				
				
				if(change_appendage)
				{
					change_appendage.clearParameter();
					
					print(" expression attack rate:" + magicalAtkChangeRate.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAtkChangeRate.tofloat());
				}
			}
		}
	}
	else if(skill_index == SKILL_DIEHARD)
	{ // i¿½O≫i¿½
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/ATMage/DieHard/ap_ATMage_DieHard.nut", true);

			if(appendage)
			{
			}
		}
	
	}
	else if(skill_index == SKILL_TUNDRASOUL)
	{ // i¿½i¿½i¿½i¿½i¿½i¿½i¿?i¿½i¿½E￡
		if(skill_level > 0)
		{
			local skill = sq_GetSkill(obj, SKILL_TUNDRASOUL);
			if(!skill)
				return true;
			
			print( " passive_skill_tundrasoul");
			//if(!skill.isSealFunction())
			{
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
				"Character/ATMage/TundraSoul/ap_ATMage_TundraSoul.nut", true);
				
				if(appendage)
				{
					print(" passive object isinBattle:" + obj.isInBattle());
					
					//if(!skill.isSealFunction())
					//{
						//if(sq_IsInBattle())
						//{
							//local range = obj.sq_GetIntData(SKILL_TUNDRASOUL , 0);// 0. i¿½i¿½i¿½i¿½ i¿½i¿½i¿½i¿½i¿½I≫i¿½ i¿½E¸i¿½i¿½i¿½ E¿i¿½i¿½i¿½i¿½i¿½i¿½
							//local AuraTundraSoulAppendage = appendage.sq_AddSquirrelAuraMaster("AuraTundraSoul",obj, obj, range, 18, 5, 0);
						//}
						//else
						//{
							//appendage.sq_DeleteAppendages();
						//}
					//}
					//else
					//{
						//appendage.sq_DeleteAppendages();
					//}
				}
			}
		}
	}
	else if (skill_index == SKILL_BENYUAN)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/common/ap_benyuan.nut", true);
		}
	}
	else if(skill_index == SKILL_ELEMENTAL_BOMBING)
	{ 
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atmage/appendage/ap_elementalbombing.nut", true);
			local change_appendage = appendage.sq_getChangeStatus("elementalbombing");
			local level = skill_level;
			local spdbonus = sq_GetLevelData(obj, SKILL_ELEMENTAL_BOMBING, 4, level).tofloat();
			local coolbonus = sq_GetLevelData(obj, SKILL_ELEMENTAL_BOMBING, 5, level).tofloat() /1000.0;
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("elementalbombing",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage)
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED,true, spdbonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, false, -coolbonus);
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atmage/appendage/ap_elementalbombing.nut")) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atmage/appendage/ap_elementalbombing.nut");
			}
		}
	}
	
	return true;
}


function onUseSkillPassiveSkill_ATMage(obj,skillIndex, skillLevel)
{
	if(!obj)
		return;		
		
	//print( " onuseskill");

}




