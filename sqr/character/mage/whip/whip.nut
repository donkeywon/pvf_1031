
function onAfterSetState_mage_Magewhip(obj, state, datas, isResetTimer)
{
    if (!obj)
        return;
    if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/avatar/ap_avatar.nut"))
    {
        local skillIndex = obj.sq_GetVectorData(datas, 0);
        local Animation = null;
        switch (skillIndex)
        {
        case 20:
            Animation = setCurrentAnimation_avatar_eff(obj, "Whip", true);
            break;
        case 13:
            Animation = setCurrentAnimation_avatar_eff(obj, "Swing", true);
            break;
        case 117:
            Animation = setCurrentAnimation_avatar_eff(obj, "SwingEx", true);
            break;
        }
        if (Animation != null)
            obj.setCurrentAnimation(Animation);
    }
};
