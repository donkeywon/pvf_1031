function procAppend_MonsterBlood(obj) {
    local skill_level = sq_GetSkillLevel(obj, 174);
    if (skill_level > 0) {
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_monsterblood.nut")) {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 174, false, "appendage/character/ap_monsterblood.nut", true);
        }
    }
}

function DrawMonsterBloodUI(obj) {
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    local target = appendage.getVar("damager").get_vector(1);
    local object = sq_GetObjectByObjectId(obj, target);
    object = sq_GetCNRDObjectToActiveObject(object);
    local maxhp = object.getHpMax();
    local currhp = object.getHp();
    if (appendage.getVar("damager").get_vector(0) == 0) {
        DrawMosterBlood_NUMBER(obj, 0, 0, currhp, maxhp);
        if (sq_IsBoss(object)) {
            DrawMosterBOSSBlood_Striker(obj, 0, 0, currhp, maxhp);
        } else if (sq_IsNamed(object)) {
            DrawMosterEliteBlood_Striker(obj, 0, 0, currhp, maxhp);
        } else if (sq_IsAiCharacter(object)) {
            DrawMosterAIBlood_Striker(obj, 0, 0, currhp, maxhp);
        } else if (!sq_IsAiCharacter(object) && !sq_IsAiCharacter(object) && !sq_IsBoss(object)) {
            DrawMosterNormalBlood_Striker(obj, 0, 0, currhp, maxhp);
        }
    }
}

function DrawMosterNormalBlood_Striker(obj, xPos, yPos, CurrHp, MaxHp) {
    if (!obj) return;
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    if (appendage.getVar("damager").get_vector(0) == 1) {
        appendage.getVar("damager").set_vector(0, 0);
        return;
    }

    local sq_var = obj.getVar();
    local master_ui = sq_var.GetAnimationMap("master_ui", "character/mage/effect/animation/masterblood/master_ui.ani");
    local normalblood = sq_var.GetAnimationMap("normalblood", "character/mage/effect/animation/masterblood/normalblood.ani");

    local x = 75;
    local y = 450;

    local rate = CurrHp.tofloat() / MaxHp.tofloat();
    local Rate = 1.0 - rate.tofloat();
    if (CurrHp >= MaxHp) {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        sq_AnimationProc(normalblood);
        sq_drawCurrentFrame(normalblood, x + 215 + xPos, y - 315 + yPos, false);
    } else {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        local len = 571.0 * Rate.tofloat();
        local vulue = len.tointeger();
        setClip(5, 130, 576 - vulue, 134);
        sq_AnimationProc(normalblood);
        sq_drawCurrentFrame(normalblood, x + 215 + xPos, y - 315 + yPos, false);
        releaseClip();
    }
}

function DrawMosterAIBlood_Striker(obj, xPos, yPos, CurrHp, MaxHp) {
    if (!obj) return;
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    if (appendage.getVar("damager").get_vector(0) == 1) {
        appendage.getVar("damager").set_vector(0, 0);
        return;
    }

    local sq_var = obj.getVar();
    local master_ui = sq_var.GetAnimationMap("master_ui", "character/mage/effect/animation/masterblood/master_ui.ani");
    local aiblood = sq_var.GetAnimationMap("aiblood", "character/mage/effect/animation/masterblood/aiblood.ani");

    local x = 75;
    local y = 450;

    local rate = CurrHp.tofloat() / MaxHp.tofloat();
    local Rate = 1.0 - rate.tofloat();
    if (CurrHp >= MaxHp) {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        sq_AnimationProc(aiblood);
        sq_drawCurrentFrame(aiblood, x + 215 + xPos, y - 315 + yPos, false);
    } else {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        local len = 571.0 * Rate.tofloat();
        local vulue = len.tointeger();
        setClip(5, 130, 576 - vulue, 134);
        sq_AnimationProc(aiblood);
        sq_drawCurrentFrame(aiblood, x + 215 + xPos, y - 315 + yPos, false);
        releaseClip();
    }
}

function DrawMosterEliteBlood_Striker(obj, xPos, yPos, CurrHp, MaxHp) {
    if (!obj) return;
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    if (appendage.getVar("damager").get_vector(0) == 1) {
        appendage.getVar("damager").set_vector(0, 0);
        return;
    }

    local sq_var = obj.getVar();
    local master_ui = sq_var.GetAnimationMap("master_ui", "character/mage/effect/animation/masterblood/master_ui.ani");
    local eliteblood = sq_var.GetAnimationMap("eliteblood", "character/mage/effect/animation/masterblood/eliteblood.ani");

    local x = 75;
    local y = 450;

    local rate = CurrHp.tofloat() / MaxHp.tofloat();
    local Rate = 1.0 - rate.tofloat();
    if (CurrHp >= MaxHp) {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        sq_AnimationProc(eliteblood);
        sq_drawCurrentFrame(eliteblood, x + 215 + xPos, y - 315 + yPos, false);
    } else {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        local len = 571.0 * Rate.tofloat();
        local vulue = len.tointeger();
        setClip(5, 130, 576 - vulue, 134);
        sq_AnimationProc(eliteblood);
        sq_drawCurrentFrame(eliteblood, x + 215 + xPos, y - 315 + yPos, false);
        releaseClip();
    }
}

function DrawMosterBOSSBlood_Striker(obj, xPos, yPos, CurrHp, MaxHp) {
    if (!obj) return;
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    if (appendage.getVar("damager").get_vector(0) == 1) {
        appendage.getVar("damager").set_vector(0, 0);
        return;
    }

    local sq_var = obj.getVar();
    local master_ui = sq_var.GetAnimationMap("master_ui", "character/mage/effect/animation/masterblood/master_ui.ani");
    local bossblood = sq_var.GetAnimationMap("bossblood", "character/mage/effect/animation/masterblood/bossblood.ani");

    local x = 75;
    local y = 450;

    local rate = CurrHp.tofloat() / MaxHp.tofloat();
    local Rate = 1.0 - rate.tofloat();
    if (CurrHp >= MaxHp) {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        sq_AnimationProc(bossblood);
        sq_drawCurrentFrame(bossblood, x + 215 + xPos, y - 315 + yPos, false);
    } else {
        sq_AnimationProc(master_ui);
        sq_drawCurrentFrame(master_ui, x + 215 + xPos, y - 312 + yPos, false);

        local len = 571.0 * Rate.tofloat();
        local vulue = len.tointeger();
        setClip(5, 130, 576 - vulue, 134);
        sq_AnimationProc(bossblood);
        sq_drawCurrentFrame(bossblood, x + 215 + xPos, y - 315 + yPos, false);
        releaseClip();
    }
}


function DrawMosterBlood_NUMBER(obj, xPos, yPos, CurrHp, MaxHp) {
    if (!obj) return;
    local appendage = obj.GetSquirrelAppendage("appendage/character/ap_monsterblood.nut");
    if (appendage.getVar("damager").get_vector(0) == 1) {
        appendage.getVar("damager").set_vector(0, 0);
        return;
    }

    local sq_var = obj.getVar();
    local baifen = sq_var.GetAnimationMap("baifen", "character/mage/effect/animation/masterblood/baifen.ani");

    local x = 75;
    local y = 450;

    if (CurrHp >= MaxHp) {
        sq_AnimationProc(baifen);
        sq_drawCurrentFrame(baifen, x + 65 - 100, y - 310, false);


        local geani = DrawMosterIndexNum(obj, 0);
        local shiani = DrawMosterIndexNum(obj, 0);
        local baiani = DrawMosterIndexNum(obj, 1);

        sq_AnimationProc(geani);
        sq_drawCurrentFrame(geani, x + 50 - 100, y - 310, false);
        sq_AnimationProc(shiani);
        sq_drawCurrentFrame(shiani, x + 35 - 100, y - 310, false);
        sq_AnimationProc(baiani);
        sq_drawCurrentFrame(baiani, x + 20 - 100, y - 310, false);
    } else {
        sq_AnimationProc(baifen);
        sq_drawCurrentFrame(baifen, x + 65 - 100, y - 310, false);

        local gaugeValue = CurrHp.tofloat() / MaxHp.tofloat() * 100.0;
        local ge = gaugeValue.tointeger() % 10;
        local len = (gaugeValue.tointeger() - ge) / 10;
        local shi = len % 10;
        local geani = DrawMosterIndexNum(obj, ge);
        local shiani = DrawMosterIndexNum(obj, shi);

        sq_AnimationProc(geani);
        sq_drawCurrentFrame(geani, x + 50 - 100, y - 310, false);
        sq_AnimationProc(shiani);
        sq_drawCurrentFrame(shiani, x + 35 - 100, y - 310, false);
    }
}


function DrawMosterIndexNum(obj, num) {
    local numImage = null;
    local sq_var = obj.getVar();
    if (num == 0) {
        numImage = sq_var.GetAnimationMap("blood0", "character/mage/effect/animation/masterblood/0.ani");
    } else if (num == 1) {
        numImage = sq_var.GetAnimationMap("blood1", "character/mage/effect/animation/masterblood/1.ani");
    } else if (num == 2) {
        numImage = sq_var.GetAnimationMap("blood2", "character/mage/effect/animation/masterblood/2.ani");
    } else if (num == 3) {
        numImage = sq_var.GetAnimationMap("blood3", "character/mage/effect/animation/masterblood/3.ani");
    } else if (num == 4) {
        numImage = sq_var.GetAnimationMap("blood4", "character/mage/effect/animation/masterblood/4.ani");
    } else if (num == 5) {
        numImage = sq_var.GetAnimationMap("blood5", "character/mage/effect/animation/masterblood/5.ani");
    } else if (num == 6) {
        numImage = sq_var.GetAnimationMap("blood6", "character/mage/effect/animation/masterblood/6.ani");
    } else if (num == 7) {
        numImage = sq_var.GetAnimationMap("blood7", "character/mage/effect/animation/masterblood/7.ani");
    } else if (num == 8) {
        numImage = sq_var.GetAnimationMap("blood8", "character/mage/effect/animation/masterblood/8.ani");
    } else if (num == 9) {
        numImage = sq_var.GetAnimationMap("blood9", "character/mage/effect/animation/masterblood/9.ani");
    }
    return numImage;
}