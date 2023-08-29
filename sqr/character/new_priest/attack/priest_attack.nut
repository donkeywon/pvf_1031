function onEnterFrame_priest_attack(obj, frameIndex)
{
    if (!obj)
        return;

    if (frameIndex == 4 && obj.isMyControlObject() && obj.isCurrentCutomAniIndex(258))
    {
        sq_SetMyShake(obj, 5, 80);
        obj.sq_StartWrite();
        obj.sq_WriteDword(250);
        obj.sq_WriteDword(6);
        obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, 8, 2, 1.0));
        obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
        obj.sq_StartWrite();
        obj.sq_WriteDword(250);
        obj.sq_WriteDword(5);
        obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, 8, 2, 1.0));
        obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
    }
}

function onAfterSetState_priest_attack(obj, state, datas, isResetTimer)
{
    if (!obj)
        return;
};

function onKeyFrameFlag_priest_attack(obj, frameIndex)
{
    if (!obj)
        return false;
    if (obj.isCurrentCutomAniIndex(191) && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true && obj.sq_IsMyControlObject())
    {
        if (frameIndex == 0)
        {
            sq_SetMyShake(obj, 5, 80);
            obj.sq_StartWrite();
            obj.sq_WriteDword(250);
            obj.sq_WriteDword(1);
            obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(250, 8, 1, 1.0));
            obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
            obj.sq_StartWrite();
            obj.sq_WriteDword(250);
            obj.sq_WriteDword(2);
            obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(250, 8, 2, 1.0));
            obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
        }
    }
    return true;
};


