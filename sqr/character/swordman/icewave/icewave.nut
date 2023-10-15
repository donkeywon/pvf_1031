function onEndState_IceWave(obj, new_state)
{
    local apCheck = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/Swordman/icewave/ap_asura_wave.nut");
    if(apCheck) 
    {
        local skillLevel = sq_GetSkillLevel(obj,47);
        if(skillLevel>0)
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(0);	
            obj.sq_IntVectPush(0);	
            obj.sq_IntVectPush(47);	
            obj.sq_IntVectPush(0);	
            obj.sq_IntVectPush(0);	
            obj.sq_IntVectPush(1);	
            obj.sq_IntVectPush(4);	
            obj.sq_IntVectPush(4);	
            obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER , true);
            
            CNSquirrelAppendage.sq_RemoveAppendage(obj, "Character/Swordman/icewave/ap_asura_wave.nut");
        }
    }
}

//by ALLWH
