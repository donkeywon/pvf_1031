
function onAfterSetState_swordman_attack(obj, state, datas, isResetTimer) {
    if (!obj) return;
    local _RxS8qXkVJS2rEYWZj2fu1 = obj.sq_GetVectorData(datas, 0);
    local K_0MF3eLe5Urn = obj.sq_GetVectorData(datas, 1);
    obj.getVar().clear_vector();
    obj.getVar().push_vector(_RxS8qXkVJS2rEYWZj2fu1);
    obj.getVar().push_vector(K_0MF3eLe5Urn);
    switch (_RxS8qXkVJS2rEYWZj2fu1) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
    }
    //wavemark_swordman_attack(obj, state, datas, isResetTimer);
    weaponcombo_swordman_attack(obj, state, datas, isResetTimer);
};

function onKeyFrameFlag_swordman_attack(obj, state) {
    if (!obj) return false;
    local datas = obj.getVar().get_vector(0);
    local skillIndex = obj.getVar().get_vector(1);
    switch (skillIndex) {
        case 67:
            switch (state) {
                case 100:
                case 101:
                    obj.resetHitObjectList();
                    break;
                case 1:
                    if (datas == 3)
                        sq_CreateDrawOnlyObject(obj, "character/swordman/effect/animation/weaponcombo/reslash_blunt03_dust01.ani", ENUM_DRAWLAYER_NORMAL, true);
                    break;
            }
            break;
    }
    return true;
};

 
function wavemark_swordman_attack(obj, state, datas, isResetTimer) {
    if (!obj) return;
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut")) return;
    local uD4df2NuADegjZfNkTLF7qk = obj.sq_GetVectorData(datas, 0);
    if (obj.sq_IsMyControlObject()) {
        local O84FFxLA2LOOZQuJ2 = obj.sq_GetBonusRateWithPassive(47, 8, 3 + uD4df2NuADegjZfNkTLF7qk, 1.0);
        sq_BinaryStartWrite();
        sq_BinaryWriteDword(47);
        sq_BinaryWriteBool(
            (sq_GetSkillLevel(obj, 92) > 0) ?
            true :
            false
        );
        sq_BinaryWriteDword(uD4df2NuADegjZfNkTLF7qk);
        sq_BinaryWriteDword(O84FFxLA2LOOZQuJ2);
        sq_SendCreatePassiveObjectPacket(obj, 24370, 0, -30, 0, 0, obj.getDirection());
    }
};

 
function weaponcombo_swordman_attack(obj, state, datas, isResetTimer) {
    if (!obj) return;
    local atkState = obj.sq_GetVectorData(datas, 0);
    local skillIndex = obj.sq_GetVectorData(datas, 1);
    switch (skillIndex) {
        case 67:
            obj.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(obj) + obj.sq_GetBonusRateWithPassive(67, 8, 0, 1.0));
            local weaponSubtype = obj.getWeaponSubType();
            switch (weaponSubtype) {
				
				// 钝器
                case 2:
                    switch (atkState) {
                        case 2:
                            obj.sq_SetCurrentAnimation(37);
                            sq_Rewind(obj.sq_GetCurrentAni());
                            obj.sq_SetCurrentAttackInfo(36);
                            break;
                        case 3:
                            obj.sq_SetCurrentAnimation(170);
                            sq_Rewind(obj.sq_GetCurrentAni());
                            obj.sq_SetCurrentAttackInfo(100);
                            break;
                    }
                    break;
				
				// 巨剑
                case 3:
                    if (atkState == 0 && obj.sq_IsMyControlObject()) {
                        sq_BinaryStartWrite();
                        sq_BinaryWriteDword(67);
                        sq_BinaryWriteDword(1);

                        sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(obj));
                        sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 100, 0, 0, obj.getDirection());
                    }
                    break;
				// 短剑
                case 0:
                    switch (atkState) {
                        case 0:
                            local currentAnip = obj.sq_GetAttackAni(1);
                            sq_Rewind(currentAnip);
                            obj.setCurrentAnimation(currentAnip);
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_01.ani"), 0, 0);
							if (obj.sq_IsMyControlObject()) {
                                sq_BinaryStartWrite();
                                sq_BinaryWriteDword(67);
                                sq_BinaryWriteDword(4);
                                sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(obj));
                                sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
                            }
                            break;
                        case 1:
                            local currentAnip = obj.sq_GetAttackAni(0);
                            sq_Rewind(currentAnip);
                            obj.setCurrentAnimation(currentAnip);
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_02.ani"), 40, 0);
                            if (obj.sq_IsMyControlObject()) {
                                sq_BinaryStartWrite();
                                sq_BinaryWriteDword(67);
                                sq_BinaryWriteDword(3);
                                sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(obj));
                                sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
                            }
                            break;
                        case 2:
                            local currentAnip = obj.sq_GetAttackAni(1);
                            sq_Rewind(currentAnip);
                            obj.setCurrentAnimation(currentAnip);
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_03.ani"), 0, 0);
                            if (obj.sq_IsMyControlObject()) {
                                sq_BinaryStartWrite();
                                sq_BinaryWriteDword(67);
                                sq_BinaryWriteDword(2);
                                sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(obj));
                                sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
                            }
                            break;
                    }
                    break;
				// 太刀
                case 1:
                    switch (atkState) {
                        case 0:
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/ura_katana_eff.ani"), 0, 0);
                            break;
                        case 1:
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new1_under_effect.ani"), 0, 0);
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new1_upper_effect.ani"), 0, 0);
                            break;
                        case 2:
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/ura_katana_eff.ani"), 0, 0);
                            break;
                        case 3:
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new2_under_effect.ani"), 0, 0);
                            obj.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new2_upper_effect.ani"), 0, 0);
                            break;
                    }
                    break;
            }
            break;
    }
};


