//////////////////////////////////////////////////////////////////////////////////////////////////
//									By Uncle Bang
//////////////////////////////////////////////////////////////////////////////////////////////////











function onKeyFrameFlag_po_swordman_shared(obj, flagIndex)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());



	switch(id)
	{
		case 15:
			switch(flagIndex)
			{
				case 10001:
					local skill_level = sq_GetSkillLevel(parentChr, 21);
					local stayTime = sq_GetLevelData(parentChr, 21, 0, skill_level);
					sq_SetPause(obj, PAUSETYPE_OBJECT, stayTime);
				break;
			}
		break;
		case 16:
			switch(flagIndex)
			{
				case 10001:
					local skill_level = sq_GetSkillLevel(parentChr, 21);
					local stayTime = sq_GetLevelData(parentChr, 21, 0, skill_level);
					sq_SetPause(obj, PAUSETYPE_OBJECT, stayTime);

					ICEWAVE_LIGHT_ANI_PATH <-[
					 "passiveobject/new_skill/swordman/animation/icewave/ice1add_eff_a.ani",
					 "passiveobject/new_skill/swordman/animation/icewave/ice2add_eff_a.ani",
					 "passiveobject/new_skill/swordman/animation/icewave/ice3add_eff_a.ani",
					 "passiveobject/new_skill/swordman/animation/icewave/ice4add_eff_a.ani",
					 "passiveobject/new_skill/swordman/animation/icewave/ice5add_eff_a.ani",
					 "passiveobject/new_skill/swordman/animation/icewave/ice6add_eff_a.ani",
					];
					local light_ani = sq_CreatePooledObject(sq_CreateAnimation("", ICEWAVE_LIGHT_ANI_PATH[sq_getRandom(0, 5)]), true);
					light_ani = sq_SetEnumDrawLayer(light_ani, ENUM_DRAWLAYER_NORMAL);
					light_ani.setCurrentPos(x, y, z);
					sq_AddObject(obj, light_ani, OBJECTTYPE_DRAWONLY, false);
					obj.getVar("aniobj").push_obj_vector(light_ani);
				break;
				case 10002:
					RemoveAllAnimation(obj);
				break;
			}
		break;
		case 17:
			switch(flagIndex)
			{
				case 10001:
					sq_SetMyShake(obj, 5, 200);
				break;
			}
		break;
		case 20:
			switch(flagIndex)
			{
				case 10001:
					if(obj.isMyControlObject())
					{
						sq_SetMyShake(obj, 10, 300);
					}
				break;
			}
		break;
		case 22:
			switch(flagIndex)
			{
				case 10001:
					local skill_level = sq_GetSkillLevel(parentChr, 100);
					local stayTime = sq_GetLevelData(parentChr, 100, 0, skill_level);
					sq_SetPause(obj, PAUSETYPE_OBJECT, stayTime);

					local skill = sq_GetSkill(parentChr, SKILL_FORCETHUNDERER);
					local forceThunderer = sq_GetSkillLevel(parentChr, SKILL_FORCETHUNDERER);
					if(forceThunderer > 0)
					{
						local light_ani = sq_CreatePooledObject(sq_CreateAnimation("", "passiveobject/character/swordman/animation/icewaveex/light_1.ani"), true);
						light_ani = sq_SetEnumDrawLayer(light_ani, ENUM_DRAWLAYER_NORMAL);
						light_ani.setCurrentPos(x, y, z);
						sq_AddObject(obj, light_ani, OBJECTTYPE_DRAWONLY, false);
						obj.getVar("aniobj").push_obj_vector(light_ani);
					}
				break;
				case 10002:
					obj.resetHitObjectList();
					RemoveAllAnimation(obj);
				break;
			}
		break;
	}
	return true;
}



