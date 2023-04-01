
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 


 
function setEnableCancelSkill_Priest(ijtKjnkMKrHqFeMzl50, UTB1q4KjFhI)
{
 if(!ijtKjnkMKrHqFeMzl50)
 return false;
 if(!ijtKjnkMKrHqFeMzl50.isMyControlObject())
 return false;
 if(!UTB1q4KjFhI)
 return true;
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(237, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(238, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(239, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(240, UTB1q4KjFhI); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut") 
 || CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(241, UTB1q4KjFhI); 
 if(!ijtKjnkMKrHqFeMzl50.isCarryWeapon()) 
 {
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(242, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(243, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(244, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(245, UTB1q4KjFhI); 
 }
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(246, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(247, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(248, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(249, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(250, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(251, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(132, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(135, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(136, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(137, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(138, UTB1q4KjFhI); 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(139, UTB1q4KjFhI); 
 return true;
} ;



function getAttackCancelStartFrameSize_Priest(AvJP5sNmX4hT6WJRZbH)
{
 local ofBWJaqE3WXHZYaf8Q = AvJP5sNmX4hT6WJRZbH.sq_GetAttackCancelStartFrameSize();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(AvJP5sNmX4hT6WJRZbH, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 ofBWJaqE3WXHZYaf8Q = 2;
 return ofBWJaqE3WXHZYaf8Q;
} ;

function getAttackCancelStartFrame_Priest(zIyB3v_nGLXTjFHsGN1U44bq, t51Bc6yoy1E)
{
 if(!zIyB3v_nGLXTjFHsGN1U44bq) return null;
 local k6gGDBsGIs = 0;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(zIyB3v_nGLXTjFHsGN1U44bq, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 switch(t51Bc6yoy1E)
 {
 case 0:
 k6gGDBsGIs = 7;
 break;
 case 1:
 k6gGDBsGIs = 5;
 break;
 }
 }
 else
 k6gGDBsGIs = zIyB3v_nGLXTjFHsGN1U44bq.sq_GetAttackCancelStartFrame(t51Bc6yoy1E);
 return k6gGDBsGIs;
} ;

function getAttackAni_Priest(ndLB9hngtI6B, mwf1G1GIpfr4AoWCBu)
{
 if(!ndLB9hngtI6B) return null;
 local r3foqTOwhclI6tJrzpOZ = ndLB9hngtI6B.sq_GetAttackAni(mwf1G1GIpfr4AoWCBu);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ndLB9hngtI6B, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 r3foqTOwhclI6tJrzpOZ = ndLB9hngtI6B.sq_GetCustomAni(189 + mwf1G1GIpfr4AoWCBu);
 return r3foqTOwhclI6tJrzpOZ;
} ;

function getDefaultAttackInfo_Priest(T1xVyo6rYbpiUwb, fT1Coney0gc9Zgkq)
{
 if(!T1xVyo6rYbpiUwb) return null;
 local COMoBpM1tN1hFpymCUjyy4 = T1xVyo6rYbpiUwb.sq_GetDefaultAttackInfo(fT1Coney0gc9Zgkq);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(T1xVyo6rYbpiUwb, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 COMoBpM1tN1hFpymCUjyy4 = sq_GetCustomAttackInfo(T1xVyo6rYbpiUwb, 115 + fT1Coney0gc9Zgkq);
 return COMoBpM1tN1hFpymCUjyy4;
} ;

function getJumpAttackAni_Priest(NhpgrR9wz7i)
{
 if(!NhpgrR9wz7i) return null;
 local kWbL5vjq8NfgWZ = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(NhpgrR9wz7i, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 kWbL5vjq8NfgWZ = sq_GetCustomAni(NhpgrR9wz7i, 192);
 }
 else
 {
 kWbL5vjq8NfgWZ = NhpgrR9wz7i.sq_GetJumpAttackAni();
 }
 return kWbL5vjq8NfgWZ;
} ;

function getJumpAttackInfo_Priest(e4VfovO0XBxQli)
{
 if(!e4VfovO0XBxQli) return null;
 local CpsjiAeejbnbnET1vjZkqrP = e4VfovO0XBxQli.sq_GetJumpAttackInfo();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(e4VfovO0XBxQli, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 CpsjiAeejbnbnET1vjZkqrP = sq_GetCustomAttackInfo(e4VfovO0XBxQli, 118);
 return CpsjiAeejbnbnET1vjZkqrP;
} ;

function getDashAttackInfo_Priest(FysWiIP_GAMQFxZEtFE)
{
 if(!FysWiIP_GAMQFxZEtFE) return null;
 local PXG_HplMcmyBHz8h = FysWiIP_GAMQFxZEtFE.sq_GetDashAttackInfo();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(FysWiIP_GAMQFxZEtFE, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 PXG_HplMcmyBHz8h = sq_GetCustomAttackInfo(FysWiIP_GAMQFxZEtFE, 119);
 return PXG_HplMcmyBHz8h;
} ;

function getDashAttackAni_Priest(LCNWfQiJtQwXCwyTlREbi8)
{
 if(!LCNWfQiJtQwXCwyTlREbi8) return null;
 local wSNYbz0hhWox6yFDkQq = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LCNWfQiJtQwXCwyTlREbi8, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 wSNYbz0hhWox6yFDkQq = sq_GetCustomAni(LCNWfQiJtQwXCwyTlREbi8, 193);
 }
 else
 {
 wSNYbz0hhWox6yFDkQq = LCNWfQiJtQwXCwyTlREbi8.sq_GetDashAttackAni();
 }
 return wSNYbz0hhWox6yFDkQq;
} ;

function getStayAni_Priest(BWQWzzJYYh)
{
 if(!BWQWzzJYYh) return null;
 local a2ZWUUlRTZfl4IE = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(BWQWzzJYYh, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 a2ZWUUlRTZfl4IE = sq_GetCustomAni(BWQWzzJYYh, 169);
 }
 else
 {
 a2ZWUUlRTZfl4IE = BWQWzzJYYh.sq_GetStayAni();
 }
 return a2ZWUUlRTZfl4IE;
} ;

function getMoveAni_Priest(wuwWndgc5uQvq)
{
 if(!wuwWndgc5uQvq) return null;
 local NOZoRDxEi6Ru4YgXAs = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(wuwWndgc5uQvq, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 NOZoRDxEi6Ru4YgXAs = sq_GetCustomAni(wuwWndgc5uQvq, 170);
 }
 else
 {
 NOZoRDxEi6Ru4YgXAs = wuwWndgc5uQvq.sq_GetMoveAni();
 }
 return NOZoRDxEi6Ru4YgXAs;
} ;

function getSitAni_Priest(DkEHbbjx_24vxFBkGP)
{
 if(!DkEHbbjx_24vxFBkGP) return null;
 local ChaLUV1_4iGNDnbLOh93py = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(DkEHbbjx_24vxFBkGP, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 ChaLUV1_4iGNDnbLOh93py = sq_GetCustomAni(DkEHbbjx_24vxFBkGP, 171);
 }
 else
 {
 ChaLUV1_4iGNDnbLOh93py = DkEHbbjx_24vxFBkGP.sq_GetSitAni();
 }
 return ChaLUV1_4iGNDnbLOh93py;
} ;

function getDamageAni_Priest(K6rGRjNpjZiHExpz1QH01, SOLUeTyy7yadegblY6)
{
 if(!K6rGRjNpjZiHExpz1QH01) return null;
 local EAcuoATvdgQL5SuhvBNta4 = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(K6rGRjNpjZiHExpz1QH01, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 switch(SOLUeTyy7yadegblY6)
 {
 case 0: EAcuoATvdgQL5SuhvBNta4 = sq_GetCustomAni(K6rGRjNpjZiHExpz1QH01, 172); break;
 case 1: EAcuoATvdgQL5SuhvBNta4 = sq_GetCustomAni(K6rGRjNpjZiHExpz1QH01, 173); break;
 }
 }
 else
 {
 EAcuoATvdgQL5SuhvBNta4 = K6rGRjNpjZiHExpz1QH01.sq_GetDamageAni(SOLUeTyy7yadegblY6);
 }
 return EAcuoATvdgQL5SuhvBNta4;
} ;

function getDownAni_Priest(UNy1Ozn8ScM84f)
{
 if(!UNy1Ozn8ScM84f) return null;
 local sqK1unc7p55pR6Wc8vS = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(UNy1Ozn8ScM84f, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 sqK1unc7p55pR6Wc8vS = sq_GetCustomAni(UNy1Ozn8ScM84f, 174);
 }
 else
 {
 sqK1unc7p55pR6Wc8vS = UNy1Ozn8ScM84f.sq_GetDownAni();
 }
 return sqK1unc7p55pR6Wc8vS;
} ;

function getOverturnAni_Priest(SRL1Ff6Nwswke51uf)
{
 if(!SRL1Ff6Nwswke51uf) return null;
 local wf9ABd2Avw42UEoWQ_IG = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(SRL1Ff6Nwswke51uf, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 wf9ABd2Avw42UEoWQ_IG = sq_GetCustomAni(SRL1Ff6Nwswke51uf, 175);
 }
 else
 {
 wf9ABd2Avw42UEoWQ_IG = SRL1Ff6Nwswke51uf.sq_GetOverturnAni();
 }
 return wf9ABd2Avw42UEoWQ_IG;
} ;

function getJumpAni_Priest(cHiyDb7B58Ykvi1Mp7rc4lb)
{
 if(!cHiyDb7B58Ykvi1Mp7rc4lb) return null;
 local kckEBBZ2IwiyWn2iMag32ir = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(cHiyDb7B58Ykvi1Mp7rc4lb, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 kckEBBZ2IwiyWn2iMag32ir = sq_GetCustomAni(cHiyDb7B58Ykvi1Mp7rc4lb, 176);
 }
 else
 {
 kckEBBZ2IwiyWn2iMag32ir = cHiyDb7B58Ykvi1Mp7rc4lb.sq_GetJumpAni();
 }
 return kckEBBZ2IwiyWn2iMag32ir;
} ;

function getRestAni_Priest(QxXyLjUFvMK)
{
 if(!QxXyLjUFvMK) return null;
 local OMf0bNtRIIfNu9TqCg2cl = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(QxXyLjUFvMK, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 OMf0bNtRIIfNu9TqCg2cl = sq_GetCustomAni(QxXyLjUFvMK, 177);
 }
 else
 {
 OMf0bNtRIIfNu9TqCg2cl = QxXyLjUFvMK.sq_GetRestAni();
 }
 return OMf0bNtRIIfNu9TqCg2cl;
} ;

function getThrowChargeAni_Priest(Y9vyNptEBH44D, F2SGtAoVe_eGKAZJrMyH)
{
 if(!Y9vyNptEBH44D) return null;
 local UKqtLrFhATfwZ8xINYaMUBv2 = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Y9vyNptEBH44D, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 switch(F2SGtAoVe_eGKAZJrMyH)
 {
 case 0: UKqtLrFhATfwZ8xINYaMUBv2 = sq_GetCustomAni(Y9vyNptEBH44D, 178); break;
 case 1: UKqtLrFhATfwZ8xINYaMUBv2 = sq_GetCustomAni(Y9vyNptEBH44D, 179); break;
 case 2: UKqtLrFhATfwZ8xINYaMUBv2 = sq_GetCustomAni(Y9vyNptEBH44D, 180); break;
 case 3: UKqtLrFhATfwZ8xINYaMUBv2 = sq_GetCustomAni(Y9vyNptEBH44D, 181); break;
 }
 }
 else
 {
 UKqtLrFhATfwZ8xINYaMUBv2 = Y9vyNptEBH44D.sq_GetThrowChargeAni(F2SGtAoVe_eGKAZJrMyH);
 }
 return UKqtLrFhATfwZ8xINYaMUBv2;
} ;

function getThrowShootAni_Priest(twNI0nJhwtuf, H5bGcR7AQrqPNZ8R5G)
{
 if(!twNI0nJhwtuf) return null;
 local KJIGFN0tOJbN7F = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(twNI0nJhwtuf, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 switch(H5bGcR7AQrqPNZ8R5G)
 {
 case 0: KJIGFN0tOJbN7F = sq_GetCustomAni(twNI0nJhwtuf, 182); break;
 case 1: KJIGFN0tOJbN7F = sq_GetCustomAni(twNI0nJhwtuf, 183); break;
 case 2: KJIGFN0tOJbN7F = sq_GetCustomAni(twNI0nJhwtuf, 184); break;
 case 3: KJIGFN0tOJbN7F = sq_GetCustomAni(twNI0nJhwtuf, 185); break;
 }
 }
 else
 {
 KJIGFN0tOJbN7F = twNI0nJhwtuf.sq_GetThrowShootAni(H5bGcR7AQrqPNZ8R5G);
 }
 return KJIGFN0tOJbN7F;
} ;

function getDashAni_Priest(X2_X5WjtvKBI0UkiBDHd)
{
 if(!X2_X5WjtvKBI0UkiBDHd) return null;
 local WRDBf07zkwr0yP = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(X2_X5WjtvKBI0UkiBDHd, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 WRDBf07zkwr0yP = sq_GetCustomAni(X2_X5WjtvKBI0UkiBDHd, 186);
 }
 else
 {
 WRDBf07zkwr0yP = X2_X5WjtvKBI0UkiBDHd.sq_GetDashAni();
 }
 return WRDBf07zkwr0yP;
} ;

function getGetItemAni_Priest(MOEXwxN3BI9_8fGpqEHzZSl)
{
 if(!MOEXwxN3BI9_8fGpqEHzZSl) return null;
 local C1rUkZdUF44hBpo7fzd5Ga = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(MOEXwxN3BI9_8fGpqEHzZSl, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 C1rUkZdUF44hBpo7fzd5Ga = sq_GetCustomAni(MOEXwxN3BI9_8fGpqEHzZSl, 187);
 }
 else
 {
 C1rUkZdUF44hBpo7fzd5Ga = MOEXwxN3BI9_8fGpqEHzZSl.sq_GetGetItemAni();
 }
 return C1rUkZdUF44hBpo7fzd5Ga;
} ;

function getBuffAni_Priest(rftXufvXfbs)
{
 if(!rftXufvXfbs) return null;
 local f49sglJWx_oKJU = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rftXufvXfbs, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 f49sglJWx_oKJU = sq_GetCustomAni(rftXufvXfbs, 188);
 }
 else
 {
 f49sglJWx_oKJU = rftXufvXfbs.sq_GetBuffAni();
 }
 return f49sglJWx_oKJU;
} ;

