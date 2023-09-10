
function onAfterSetState_Mage_Throw(CQh2fzKzIav9EeI, CQDnXM96ctvOCD3Mqg, CQRjzhZLsAVuJz2, CQUkZQEw28emVH13D)
{
	local CQH6wInkWe4lKW1N = CQh2fzKzIav9EeI.getThrowIndex();
	local CQjC5VN3LOodD4M6XG = CQh2fzKzIav9EeI.getThrowState();


	if(CQH6wInkWe4lKW1N == 50 && CQjC5VN3LOodD4M6XG == 0)
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(CQh2fzKzIav9EeI, "character/mage/element/ap_tar.nut"))
			CNSquirrelAppendage.sq_RemoveAppendage(CQh2fzKzIav9EeI, "character/mage/element/ap_tar.nut");

		local CQESaRPEh6R1LuN = CNSquirrelAppendage.sq_AppendAppendage(CQh2fzKzIav9EeI, CQh2fzKzIav9EeI, 50, true, "character/mage/element/ap_tar.nut", true);
	}
	
	local CQQmHajg6JzPPF = CNSquirrelAppendage.sq_GetAppendage(CQh2fzKzIav9EeI,CQ4ijUwUAQAKFlN8h);
	local CQLTUXMGo4KuHx8f = CQh2fzKzIav9EeI.getThrowIndex();
	local CQl7H9AiBmmmA287oM = CQh2fzKzIav9EeI.getThrowState();
	
	local CQIVUbcvzGMlat7 =
	{
		[15] = [0],	
		[16] = [1],	
		[18] = [2],	
		[17] = [3],	
		[57] = [0],	
		[56] = [1],	
		[26] = [2],	
		[31] = [3],	
		[27] = [0],	
		[59] = [1],	
		[55] = [2],	
		[58] = [3],	
		[111] = [1,3],	
		[113] = [0,2]	
	}
	
	if(CQl7H9AiBmmmA287oM == 1 && CQQmHajg6JzPPF)
	{
		if(CQIVUbcvzGMlat7.rawin(CQLTUXMGo4KuHx8f))
		{
			foreach(elsement in CQIVUbcvzGMlat7[CQLTUXMGo4KuHx8f])
			{
				CQQmHajg6JzPPF.getVar().setBool(elsement,true);	
				local CQ7FMo6NHRtdS56dA = CQQmHajg6JzPPF.getVar("Timer").get_ct_vector(elsement);
				CQ7FMo6NHRtdS56dA.Reset();
				CQ7FMo6NHRtdS56dA.Start(10000,0);
			}
		}
		
		local CQrpuKJSfn71sD = CQQmHajg6JzPPF.getVar().getBool(0);	
		local CQCQf7iWrDaKiz5g = CQQmHajg6JzPPF.getVar().getBool(1);	
		local CQczScY93djPIH5991 = CQQmHajg6JzPPF.getVar().getBool(2);	
		local CQA9cu7CvWFuoc4 = CQQmHajg6JzPPF.getVar().getBool(3);	
		
	}
}

function onSetState_Mage_Throw(CQRhHBltyZV3sBKpUu, CQi4Ug3c5TrZiw, CQ1ZHmFCUE5Sr1Hs, CQUPnstOS3pooOHooD)
{
	if(!CQRhHBltyZV3sBKpUu) return;
	local CQHyMCzeljRQWjG = CQRhHBltyZV3sBKpUu.sq_GetVectorData(CQ1ZHmFCUE5Sr1Hs, 0);
	local CQjuudL6poAxqSGaV = CQRhHBltyZV3sBKpUu.sq_GetVectorData(CQ1ZHmFCUE5Sr1Hs, 1);
	local CQEUfnELN1xRtl = CQRhHBltyZV3sBKpUu.sq_GetVectorData(CQ1ZHmFCUE5Sr1Hs, 2);
	local CQLkSpnaebL3QMDO5b = CQRhHBltyZV3sBKpUu.sq_GetVectorData(CQ1ZHmFCUE5Sr1Hs, 3);
	CQRhHBltyZV3sBKpUu.setSkillSubState(CQHyMCzeljRQWjG);

}

function onCreateObject_Mage_Throw(CQl6cLdTJumZbrD, CQICC8X3vBMVw2VSb)
{
	if(!CQl6cLdTJumZbrD) return;
	local CQ7ScYaHOYyFnP = CQl6cLdTJumZbrD.getThrowIndex();
	local CQriCijm4P8ExkCG = sq_GetSkillLevel(CQl6cLdTJumZbrD, 70);
	local CQCmrJMguCsrUDXADu = sq_GetSkill(CQl6cLdTJumZbrD, 70);

	if(CQICC8X3vBMVw2VSb.isObjectType(OBJECTTYPE_PASSIVE))
	{
		local CQcl65AMXzjvcwZ = sq_GetCNRDObjectToCollisionObject(CQICC8X3vBMVw2VSb);
		if(CQcl65AMXzjvcwZ)
		{
			local CQA8sxeikIFhk1ZFX = CQcl65AMXzjvcwZ.getCollisionObjectIndex();
			if(CQA8sxeikIFhk1ZFX == 23027 && CQriCijm4P8ExkCG > 0 && !CQCmrJMguCsrUDXADu.isSealFunction() )
			{
				CQICC8X3vBMVw2VSb.sendDestroyPacket(true);
				CQl6cLdTJumZbrD.sq_StartWrite();
				CQl6cLdTJumZbrD.sq_WriteDword(59);
				CQl6cLdTJumZbrD.sq_WriteDword(0);
				CQl6cLdTJumZbrD.sq_WriteDword(CQl6cLdTJumZbrD.sq_GetBonusRateWithPassive(59, -1, 1, 1.0));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetLevelData(CQl6cLdTJumZbrD,59, 3, sq_GetSkillLevel(CQl6cLdTJumZbrD, 59)));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetIntData(CQl6cLdTJumZbrD,59, 5));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetLevelData(CQl6cLdTJumZbrD,59, 6, sq_GetSkillLevel(CQl6cLdTJumZbrD, 59)));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetLevelData(CQl6cLdTJumZbrD,59, 5, sq_GetSkillLevel(CQl6cLdTJumZbrD, 59)));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetLevelData(CQl6cLdTJumZbrD,59, 7, sq_GetSkillLevel(CQl6cLdTJumZbrD, 59)));
				CQl6cLdTJumZbrD.sq_WriteDword(sq_GetIntData(CQl6cLdTJumZbrD,59, 0));
				CQl6cLdTJumZbrD.sq_SendCreatePassiveObjectPacket(24372, 0, 400, 0, 0);
			}
			else if((CQA8sxeikIFhk1ZFX == 23013 || CQA8sxeikIFhk1ZFX == 48012) && CQ7ScYaHOYyFnP == 27 && CQriCijm4P8ExkCG > 0 && !CQCmrJMguCsrUDXADu.isSealFunction() )
			{
				CQICC8X3vBMVw2VSb.sendDestroyPacket(true);
				local CQdBTyTvDZv6fW = sq_GetIntData(CQl6cLdTJumZbrD,70, 8)/100.0 + 1.0;
				local CQyFKF2d8TCVTjKH = sq_GetLevelData(CQl6cLdTJumZbrD,27, 5, sq_GetSkillLevel(CQl6cLdTJumZbrD, 27))/1000.0*0.83*CQdBTyTvDZv6fW;
				local CQNpq3iSEEwFRSKVzu = sq_GetLevelData(CQl6cLdTJumZbrD,27, 7, sq_GetSkillLevel(CQl6cLdTJumZbrD, 27))/1000.0*CQdBTyTvDZv6fW;
				CQl6cLdTJumZbrD.sq_StartWrite();
				CQl6cLdTJumZbrD.sq_WriteDword(27);
				CQl6cLdTJumZbrD.sq_WriteDword(0);
				CQl6cLdTJumZbrD.sq_WriteDword(CQl6cLdTJumZbrD.sq_GetBonusRateWithPassive(27, -1, 1, 1.0));
				CQl6cLdTJumZbrD.sq_WriteDword(CQl6cLdTJumZbrD.sq_GetBonusRateWithPassive(27, -1, 3, 1.0));
				CQl6cLdTJumZbrD.sq_WriteFloat(CQyFKF2d8TCVTjKH);
				CQl6cLdTJumZbrD.sq_WriteFloat(CQNpq3iSEEwFRSKVzu);
				CQl6cLdTJumZbrD.sq_SendCreatePassiveObjectPacket(24372, 0, -270, 0, 350);
			}
			else if(CQA8sxeikIFhk1ZFX == 23025 && CQriCijm4P8ExkCG > 0 && !CQCmrJMguCsrUDXADu.isSealFunction() )
			{
				CQICC8X3vBMVw2VSb.sendDestroyPacket(true);
				local CQbQJTYWM33a7TJ = sq_GetLevelData(CQl6cLdTJumZbrD,58, 5, sq_GetSkillLevel(CQl6cLdTJumZbrD, 58));
				local CQFzmr79cjorgNHGm = sq_GetIntData(CQl6cLdTJumZbrD,58, 2);
				local CQg92SKCKofv8e = sq_GetIntData(CQl6cLdTJumZbrD,58, 3);
				local CQoNoMoOgMPj32GK = sq_GetLevelData(CQl6cLdTJumZbrD,58, 0, sq_GetSkillLevel(CQl6cLdTJumZbrD, 58));
				local CQdBTyTvDZv6fW = sq_GetIntData(CQl6cLdTJumZbrD,70, 0)/100.0 + 1.0;
				CQg92SKCKofv8e = (CQg92SKCKofv8e*CQdBTyTvDZv6fW).tointeger();
				CQl6cLdTJumZbrD.sq_StartWrite();
				CQl6cLdTJumZbrD.sq_WriteDword(58);
				CQl6cLdTJumZbrD.sq_WriteDword(0);
				CQl6cLdTJumZbrD.sq_WriteDword(CQl6cLdTJumZbrD.sq_GetBonusRateWithPassive(58, -1, 7, 1.0));
				CQl6cLdTJumZbrD.sq_WriteDword(CQl6cLdTJumZbrD.sq_GetBonusRateWithPassive(58, -1, 9, 1.0));
				CQl6cLdTJumZbrD.sq_WriteDword(CQbQJTYWM33a7TJ);
				CQl6cLdTJumZbrD.sq_WriteDword(CQFzmr79cjorgNHGm);
				CQl6cLdTJumZbrD.sq_WriteDword(CQg92SKCKofv8e);
				CQl6cLdTJumZbrD.sq_WriteDword(CQoNoMoOgMPj32GK);
				CQl6cLdTJumZbrD.sq_SendCreatePassiveObjectPacket(24372, 0, 170, 0, 75);
			}
			else if(CQA8sxeikIFhk1ZFX == 48012 && CQriCijm4P8ExkCG > 0 && !CQCmrJMguCsrUDXADu.isSealFunction() && CQ7ScYaHOYyFnP == 55)
			{
				
			}
		}
	}
}

function onEndCurrentAni_Mage_Throw(CQmHDwV65uKV4kN)
{
	if(!CQmHDwV65uKV4kN) return;
	local CQJavOILUBUGNDB2B = CQmHDwV65uKV4kN.getSkillSubState();
	local CQkeDBQQAcNJ5z = CQmHDwV65uKV4kN.getThrowIndex();
	local CQwcvghkTPWI1MV5 = CQmHDwV65uKV4kN.getThrowState();
	local CQZRVmN3oC6yCrC = sq_GetSkillLevel(CQmHDwV65uKV4kN, 70);
	local CQz2WsPp9zaU23C8n = sq_GetSkill(CQmHDwV65uKV4kN, 70);
	
	switch(CQkeDBQQAcNJ5z)
	{
	case 59:
		if(CQJavOILUBUGNDB2B == 1 && CQZRVmN3oC6yCrC > 0 && !CQz2WsPp9zaU23C8n.isSealFunction())
		{
			CQmHDwV65uKV4kN.sq_IntVectClear();
			CQmHDwV65uKV4kN.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	case 27:
		if(CQJavOILUBUGNDB2B == 27 && CQwcvghkTPWI1MV5 == 27)
		{
			CQmHDwV65uKV4kN.sq_IntVectClear();
			CQmHDwV65uKV4kN.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	case 58:
		if(CQJavOILUBUGNDB2B == 58 && CQwcvghkTPWI1MV5 == 58)
		{
			CQmHDwV65uKV4kN.sq_IntVectClear();
			CQmHDwV65uKV4kN.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	}
}


