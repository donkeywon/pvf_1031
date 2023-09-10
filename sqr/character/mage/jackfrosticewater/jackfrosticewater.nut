function checkExecutableSkill_mage_jackfrosticewater(obj)
{
    if (!obj)
        return false;
    local IsUseSkill = obj.sq_IsUseSkill(132);
    if (IsUseSkill)
    {
        obj.sq_IntVectClear();
        obj.sq_IntVectPush(0);
        obj.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true);
        return true;
    }
    return false;
};

function checkCommandEnable_mage_jackfrosticewater(obj)
{
    if (!obj)
        return false;
    local state = obj.sq_GetState();
    if (state == STATE_STAND)
        return true;
    if (state == STATE_ATTACK)
    {
        return obj.sq_IsCommandEnable(132);
    }
    return true;
};




function onSetState_mage_jackfrosticewater(obj, state, datas, isResetTimer)
{
    if (!obj)
        return;
    local QGpvkxGA0LThPnVSEUQmW = obj.sq_GetVectorData(datas, 0);
    obj.setSkillSubState(QGpvkxGA0LThPnVSEUQmW);
    switch (QGpvkxGA0LThPnVSEUQmW)
    {
    case 0:
        obj.sq_StopMove();
        obj.sq_ZStop();
        obj.sq_SetCurrentAnimation(133);
        local SkillLevel = sq_GetSkillLevel(obj, 132);
        local OMJ7ilFULJ1z9ZGKU = sq_GetLevelData(obj, 132, 1, SkillLevel);
        local USPnIIfcabBpZSk8 = sq_GetLevelData(obj, 132, 2, SkillLevel);
        obj.getVar().clear_vector();
        local eROAjysEsBQ4dWNRhrfS6i8A = obj.getVar();
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(0);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(5);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(OMJ7ilFULJ1z9ZGKU);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(USPnIIfcabBpZSk8);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(100);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(150);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 175));
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(obj.getYPos());
        if (obj.sq_IsMyControlObject())
        {
            obj.sq_StartWrite();
            obj.sq_WriteDword(132);
            obj.sq_WriteDword(1);
            obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(132, 132, 3, 1.0));
            obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(132, 132, 5, 1.0));
            obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(132, 132, 4, 1.0));
            obj.sq_WriteDword(sq_GetLevelData(obj, 132, 0, SkillLevel));
            obj.sq_WriteDword(OMJ7ilFULJ1z9ZGKU);
            obj.sq_SendCreatePassiveObjectPacket(24372, 0, 175, 0, 0);
            local skillLevel = sq_GetSkillLevel(obj, 33);
            if (skillLevel > 0)
            {
                obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
            }
        }
        break;
    case 1:
        obj.sq_SetCurrentAnimation(134);
        sq_CreateDrawOnlyObject(obj, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewatercast_smoke.ani", ENUM_DRAWLAYER_NORMAL, true);
        local uyAmNi10XDtMYecgBsAFj = obj.sq_GetVectorData(datas, 1);
        local BMUzn3gZSxNNo0E2gUn4zJPT = obj.sq_GetVectorData(datas, 2);
        sq_AddDrawOnlyAniFromParent(obj, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewatercast_smoke.ani", 0, 2, 210);
        local skillLevel = sq_GetSkillLevel(obj, 33);
        if (skillLevel > 0)
        {
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        }
        break;
    case 2:
        obj.sq_SetCurrentAnimation(135);
        break;
    case 3:
        obj.sq_SetCurrentAnimation(136);
        local qLf9BgNdqpSZxPMR10A1I = obj.getXPos();
        local QFXB4ydc6y1Pbw1PG5_W7IJ = sq_GetDistancePos(qLf9BgNdqpSZxPMR10A1I, obj.getDirection(), -94);
        sq_setCurrentAxisPos(obj, 0, QFXB4ydc6y1Pbw1PG5_W7IJ);
        sq_setCurrentAxisPos(obj, 2, 278);
        local VBQlkH_R36dQ = obj.sq_findNearLinearMovableXPos(sq_GetDistancePos(qLf9BgNdqpSZxPMR10A1I, obj.getDirection(), -175),
                                                              obj.getYPos(), obj.getXPos(), obj.getYPos(), 10);
        obj.getVar().clear_vector();
        local eROAjysEsBQ4dWNRhrfS6i8A = obj.getVar();
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(QFXB4ydc6y1Pbw1PG5_W7IJ);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(278);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(VBQlkH_R36dQ);
        eROAjysEsBQ4dWNRhrfS6i8A.push_vector(0);
        break;
    case 4:
        obj.sq_SetCurrentAnimation(137);
        break;
    }
};




function onProc_mage_jackfrosticewater(hhSCvAbaYBUxeP80D)
{
    if (!hhSCvAbaYBUxeP80D)
        return;
    local p8pDoQ0MevC = hhSCvAbaYBUxeP80D.getSkillSubState();
    switch (p8pDoQ0MevC)
    {
    case 3:
        local n5cIvFNQelBO = hhSCvAbaYBUxeP80D.sq_GetStateTimer();
        local YYAX77xjoL = 400;
        local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar();
        local Y_ced3eVAwWDOVi44 = sq_GetUniformVelocity(ov6qXbb1hx.get_vector(0), ov6qXbb1hx.get_vector(2), n5cIvFNQelBO, YYAX77xjoL);
        local vAqezb_UFUYCVpv6 = sq_GetUniformVelocity(ov6qXbb1hx.get_vector(1), ov6qXbb1hx.get_vector(3), n5cIvFNQelBO, YYAX77xjoL);
        sq_setCurrentAxisPos(hhSCvAbaYBUxeP80D, 0, Y_ced3eVAwWDOVi44);
        sq_setCurrentAxisPos(hhSCvAbaYBUxeP80D, 2, vAqezb_UFUYCVpv6);
        if (hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
            if (n5cIvFNQelBO >= YYAX77xjoL)
            {
                hhSCvAbaYBUxeP80D.sq_IntVectClear();
                hhSCvAbaYBUxeP80D.sq_IntVectPush(4);
                hhSCvAbaYBUxeP80D.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true);
            }
        break;
    }
};

function onProcCon_mage_jackfrosticewater(_Qq8cXmomAqxvC8AOnfutz)
{
    if (!_Qq8cXmomAqxvC8AOnfutz)
        return;
    local ipA6VG4UvXir2LaiAhLH1Sw = _Qq8cXmomAqxvC8AOnfutz.getSkillSubState();
    switch (ipA6VG4UvXir2LaiAhLH1Sw)
    {
    case 1:
    case 2:
        local AtsTC8tWvI0H = _Qq8cXmomAqxvC8AOnfutz.getVar().get_obj_vector(0);
        if (!AtsTC8tWvI0H)
            return;
        sq_SetKeyxEnable(_Qq8cXmomAqxvC8AOnfutz, E_ATTACK_COMMAND, true);
        if (sq_IsEnterCommand(_Qq8cXmomAqxvC8AOnfutz, E_ATTACK_COMMAND))
        {
            local HRcx4TQyO5ZgiTLdYLh7Q = _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(0);
            local SlkSfUUIsKxvBDfa = _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(1);
            if (HRcx4TQyO5ZgiTLdYLh7Q < SlkSfUUIsKxvBDfa)
            {
                HRcx4TQyO5ZgiTLdYLh7Q += 1;
                _Qq8cXmomAqxvC8AOnfutz.getVar().set_vector(0, HRcx4TQyO5ZgiTLdYLh7Q);
                sq_BinaryStartWrite();
                sq_BinaryWriteWord(1);
                sq_BinaryWriteDword(sq_GetUniformVelocity(_Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(2), _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(3), HRcx4TQyO5ZgiTLdYLh7Q, SlkSfUUIsKxvBDfa));
                sq_BinaryWriteDword(sq_GetUniformVelocity(_Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(4), _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(5), HRcx4TQyO5ZgiTLdYLh7Q, SlkSfUUIsKxvBDfa));
                sq_SendChangeSkillEffectPacket(_Qq8cXmomAqxvC8AOnfutz, 132);
            }
        }
        break;
    }
};

function onKeyFrameFlag_mage_jackfrosticewater(x4fCER595FZFajc20Nw, V08RBRh4ZERnu)
{
    if (!x4fCER595FZFajc20Nw)
        return false;
    local Zz5XFymlvVNog9r5g = x4fCER595FZFajc20Nw.getSkillSubState();
    switch (Zz5XFymlvVNog9r5g)
    {
    case 2:
        if (V08RBRh4ZERnu == 1)
        {
            if (x4fCER595FZFajc20Nw.sq_IsMyControlObject())
            {
                x4fCER595FZFajc20Nw.sq_IntVectClear();
                x4fCER595FZFajc20Nw.sq_IntVectPush(3);
                x4fCER595FZFajc20Nw.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true);
            }
        }
        break;
    }
    return true;
};

function onEndCurrentAni_mage_jackfrosticewater(tyF8WF78_m)
{
    if (!tyF8WF78_m)
        return;
    if (!tyF8WF78_m.sq_IsMyControlObject())
        return;
    local HTExDVgffJOPwyg = tyF8WF78_m.getSkillSubState();
    switch (HTExDVgffJOPwyg)
    {
    case 1:
    case 2:
    case 3:
        tyF8WF78_m.sq_IntVectClear();
        tyF8WF78_m.sq_IntVectPush(HTExDVgffJOPwyg + 1);
        tyF8WF78_m.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true);
        break;
    case 4:
        tyF8WF78_m.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        break;
    }
};

function onChangeSkillEffect_mage_jackfrosticewater(HkedQN97XdLFMHz, LJQcSjpSb9tCYj3j4, fMXfNHlS8G8qXikGH4PR)
{
    if (!HkedQN97XdLFMHz)
        return;
    local z8kJjPtlzpkPimvWzLS = HkedQN97XdLFMHz.getSkillSubState();
    switch (z8kJjPtlzpkPimvWzLS)
    {
    case 1:
    case 2:
        local qicEduNzKW = fMXfNHlS8G8qXikGH4PR.readWord();
        switch (qicEduNzKW)
        {
        case 1:
            local Sk4ZJlnb5toUcIlEOVesrNWE = fMXfNHlS8G8qXikGH4PR.readDword();
            local IHzqDSEKsAi = (fMXfNHlS8G8qXikGH4PR.readDword()).tofloat();
            HkedQN97XdLFMHz.sq_SetStaticSpeedInfo(0, 0, 0, (1000 * (IHzqDSEKsAi / 100.0)).tointeger(), 0.0, 0.0);
            local AU9VaUHOE0VXT = sq_GetCNRDObjectToCollisionObject(HkedQN97XdLFMHz.getVar().get_obj_vector(0));
            if (AU9VaUHOE0VXT && AU9VaUHOE0VXT.getVar("state").get_vector(0) < 12)
            {
                local RTuSSKkGrR4fp = AU9VaUHOE0VXT.getVar().get_timer_vector(0);
                if (RTuSSKkGrR4fp)
                    RTuSSKkGrR4fp.setEventTerm(Sk4ZJlnb5toUcIlEOVesrNWE);
                local AH9Bwh1u3jXiDVlRZ = sq_GetCurrentAnimation(AU9VaUHOE0VXT);
                if (AH9Bwh1u3jXiDVlRZ)
                    AH9Bwh1u3jXiDVlRZ.setSpeedRate(IHzqDSEKsAi);
                local WbeNWQ_kDLzbKNdd0G = AU9VaUHOE0VXT.getMyPassiveObject(24372, 0);
                if (WbeNWQ_kDLzbKNdd0G && WbeNWQ_kDLzbKNdd0G.getVar("state").get_vector(0) < 12)
                {
                    local MPyroWKLz4vdWPcKFuArmB = sq_GetCurrentAnimation(WbeNWQ_kDLzbKNdd0G);
                    if (MPyroWKLz4vdWPcKFuArmB)
                        MPyroWKLz4vdWPcKFuArmB.setSpeedRate(IHzqDSEKsAi);
                }
            }
            break;
        }
        break;
    }
};
