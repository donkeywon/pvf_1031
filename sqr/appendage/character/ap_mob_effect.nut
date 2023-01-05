function sq_AddFunctionName(appendage) {
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_mob_effect")
    appendage.sq_AddFunctionName("proc", "proc_appendage_mob_effect")
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mob_effect")
}

function sq_AddEffect(appendage) {}

function onEnd_appendage_mob_effect(appendage) {
    if (!appendage) {
        return;
    }
    local parentObj = appendage.getParent();
    if (parentObj.isDead()) {

        switch (parentObj.getCollisionObjectIndex()) {
            case 62110:
            case 62113:
            case 62737:
            case 64579:
            case 64590:
            case 61005:
            case 61174:
                parentObj.sq_PlaySound("AGARUM_DIE");
                break;

            case 1013:
            case 40006:
            case 55010:
            case 62614:
                parentObj.sq_PlaySound("AMAZONES_DIE");
                break;

            case 260:
            case 261:
            case 262:
            case 263:
            case 264:
            case 265:
            case 266:
            case 1038:
            case 1039:
            case 1040:
            case 1041:
            case 1042:
            case 1043:
            case 50009:
            case 50010:
            case 50011:
            case 50012:
            case 55008:
            case 55024:
            case 56414:
            case 56415:
            case 56416:
            case 56417:
            case 57003:
            case 57004:
            case 57005:
            case 61433:
            case 61434:
            case 62605:
            case 62607:
            case 62608:
            case 62618:
            case 62622:
            case 62634:
            case 62637:
            case 62642:
            case 62643:
            case 62644:
            case 62645:
            case 62646:
            case 62647:
            case 64540:
            case 64541:
            case 64547:
            case 62664:
            case 61101:
            case 61465:
            case 56104:
            case 56432:
            case 61100:
            case 61471:
            case 61602:
            case 57001:
                parentObj.sq_PlaySound("BELIEVER_DIE");
                break;

            case 56105:
                parentObj.sq_PlaySound("EVIL_SHOUT");
                break;

            case 56424:
            case 57002:
                parentObj.sq_PlaySound("BOX_OPEN");
                break;

            case 56701:
                parentObj.sq_PlaySound("LATRI_DIE");
                break;

            case 56702:
                parentObj.sq_PlaySound("SATI_DIE");
                break;

            case 56703:
                parentObj.sq_PlaySound("MOHINI_DIE");
                break;

            case 56704:
                parentObj.sq_PlaySound("R_EMILDIR_DIE");
                break;

            case 56708:
                parentObj.sq_PlaySound("ESIL_DIE");
                break;

            case 61109:
            case 62665:
                parentObj.sq_PlaySound("VANGELIS_DIE");
                break;

            case 61111:
            case 61476:
                parentObj.sq_PlaySound("R_ARADMAN_DIE");
                break;

            case 61341:
                parentObj.sq_PlaySound("GFRESH_DIE");
                break;

            case 61704:
                parentObj.sq_PlaySound("B_ROSHI_DIE");
                break;

            case 56004:
            case 61016:
                parentObj.sq_PlaySound("KINGSLIME_DIE");
                break;

            case 62633:
            case 61806:
            case 64559:
            case 61429:
            case 61814:
                parentObj.sq_PlaySound("BWANGA_DIE");
                break;

            case 1030:
            case 62765:
                parentObj.sq_PlaySound("COLDBOY_DIE");
                break;

            case 602:
            case 606:
            case 50098:
            case 55019:
            case 60008:
                parentObj.sq_PlaySound("DARKSOUL_DIE");
                break;

            case 56705:
            case 61110:
            case 61119:
            case 61121:
            case 61122:
                parentObj.sq_PlaySound("GOBLIN_DIE_01");
                break;

            case 1010:
            case 62661:
                parentObj.sq_PlaySound("DEATH_DRAGON_DIE");
                break;

            case 1082:
                parentObj.sq_PlaySound("STATUE_DIE");
                break;

            case 500:
            case 501:
            case 502:
            case 61603:
            case 62602:
            case 62603:
            case 62604:
            case 62639:
            case 64542:
            case 56457:
                parentObj.sq_PlaySound("DENT_DIE");
                break;

            case 50090:
            case 50096:
            case 55026:
                parentObj.sq_PlaySound("DINGO_DIE");
                break;

            case 56142:
            case 56739:
                parentObj.sq_PlaySound("JURIS_DIE");
                break;

            case 56143:
            case 62125:
            case 56744:
            case 61797:
            case 62157:
            case 62158:
                parentObj.sq_PlaySound("R_SCAVENGER_DIE");
                break;

            case 61001:
            case 61002:
            case 62116:
            case 62254:
            case 61746:
            case 61749:
                parentObj.sq_PlaySound("R_DIRE_DIE");
                break;

            case 61003:
            case 65011:
            case 61798:
            case 62513:
                parentObj.sq_PlaySound("MILITIA_DIE");
                break;

            case 56000:
            case 56762:
            case 56160:
                parentObj.sq_PlaySound("MILITIAN_DIE");
                break;

            case 56409:
            case 56757:
            case 59034:
                parentObj.sq_PlaySound("IGHOULC_DIE");
                break;

            case 61419:
            case 61782:
            case 62516:
                parentObj.sq_PlaySound("IGHOULA_DIE");
                break;

            case 61420:
            case 61781:
                parentObj.sq_PlaySound("IGHOULB_DIE");
                break;

            case 62120:
            case 62119:
            case 62286:
            case 62515:
                parentObj.sq_PlaySound("DIVOL_DIE");
                break;

            case 63031:
                parentObj.sq_PlaySound("SKULLKNIGHT_DIE");
                break;

            case 37:
            case 38:
            case 39:
            case 40:
            case 50006:
            case 50094:
            case 56109:
            case 62123:
            case 64604:
            case 64603:
            case 64605:
            case 64599:
            case 64601:
            case 64596:
            case 64598:
            case 61343:
            case 61344:
            case 61345:
            case 61346:
            case 62122:
            case 56015:
            case 56017:
                parentObj.sq_PlaySound("DOLL_DIE");
                break;

            case 1093:
                parentObj.sq_PlaySound("DOOR_CRASH");
                break;

            case 56024:
            case 56025:
            case 56403:
                parentObj.sq_PlaySound("MICA_DIE");
                break;

            case 56146:
                parentObj.sq_PlaySound("ASHCORE_DIE");
                break;

            case 56151:
            case 56473:
            case 56475:
            case 61250:
            case 61292:
                parentObj.sq_PlaySound("ASTAROTH_DIE");
                break;

            case 56777:
            case 56159:
                parentObj.sq_PlaySound("GREEDDOOM_DIE");
                break;

            case 61615:
            case 61625:
            case 61626:
                parentObj.sq_PlaySound("NGRASIA_DIE");
                break;

            case 56448:
                parentObj.sq_PlaySound("NMAUG_DIE");
                break;

            case 56451:
            case 56471:
                parentObj.sq_PlaySound("BERIAS_DIE");
                break;

            case 56453:
            case 56472:
                parentObj.sq_PlaySound("TIAMAT_DIE");
                break;

            case 56721:
                parentObj.sq_PlaySound("R_NAGOR_DIE");
                break;

            case 59009:
                parentObj.sq_PlaySound("ITRENOG_DIE");
                break;

            case 61238:
                parentObj.sq_PlaySound("BAKAL_DIE");
                break;

            case 61624:
            case 62141:
                parentObj.sq_PlaySound("OZMA_DIE");
                break;

            case 61811:
            case 61812:
            case 61412:
            case 56110:
            case 56720:
            case 62519:
                parentObj.sq_PlaySound("DRAGONM_DIE");
                break;

            case 61347:
                parentObj.sq_PlaySound("ALEKTO_DIE");
                break;

            case 61348:
                parentObj.sq_PlaySound("TISPONE_DIE");
                break;

            case 61349:
                parentObj.sq_PlaySound("MEGAIRA_DIE");
                break;

            case 56152:
            case 56474:
            case 61128:
                parentObj.sq_PlaySound("BASILRISK_DIE");
                break;

            case 61413:
            case 61129:
            case 61130:
            case 61131:
            case 61132:
            case 61133:
            case 62107:
                parentObj.sq_PlaySound("R_RIZARD_DIE");
                break;

            case 70:
            case 71:
            case 72:
            case 50007:
            case 55023:
            case 62024:
            case 62025:
            case 62026:
            case 62152:
            case 62153:
            case 62521:
            case 62135:
            case 62136:
            case 62137:
            case 62138:
            case 62139:
            case 62143:
            case 62145:
            case 63499:
            case 62146:
            case 63500:
            case 62147:
            case 62144:
            case 62000:
            case 62001:
            case 62002:
            case 56423:
            case 61350:
            case 65003:
            case 61351:
            case 65004:
            case 61355:
            case 61523:
            case 61522:
            case 62517:
            case 62518:
            case 62520:
            case 61618:
            case 61619:
            case 61620:
            case 61617:
                parentObj.sq_PlaySound("DRAGONMAN_DIE");
                break;

            case 270:
            case 271:
            case 272:
            case 273:
            case 41005:
            case 42004:
            case 62606:
            case 62616:
            case 62617:
            case 62635:
            case 56507:
            case 61105:
                parentObj.sq_PlaySound("DRGCANNON_BREAK");
                break;

            case 56128:
            case 61017:
            case 61438:
            case 61463:
            case 61179:
            case 61439:
            case 61482:
            case 61440:
                parentObj.sq_PlaySound("DWARFSILVER_DIE");
                break;

            case 56302:
            case 56429:
            case 57101:
            case 57102:
            case 57103:
                parentObj.sq_PlaySound("CSCARECROW_DIE");
                break;

            case 61321:
            case 61473:
            case 61320:
            case 61478:
                parentObj.sq_PlaySound("SCARECROW_DIE_01");
                break;

            case 61354:
                parentObj.sq_PlaySound("DYUKONG_DIE");
                break;

            case 61325:
            case 61474:
            case 61507:
                parentObj.sq_PlaySound("BUGS_DIE");
                break;

            case 61768:
            case 61769:
            case 59035:
            case 63036:
            case 63035:
                parentObj.sq_PlaySound("DARU_DIE");
                break;

            case 56006:
            case 61216:
            case 63010:
                parentObj.sq_PlaySound("R_Dog_DIE");
                break;

            case 61287:
            case 55005:
                parentObj.sq_PlaySound("EXPENTOY_DIE");
                break;

            case 601:
            case 605:
            case 610:
            case 40013:
            case 50069:
            case 50507:
            case 55020:
            case 60007:
                parentObj.sq_PlaySound("FIRESOUL_DIE");
                break;

            case 56107:
                parentObj.sq_PlaySound("TEYMER_DIE");
                break;

            case 56401:
                parentObj.sq_PlaySound("FLU_DIE");
                break;

            case 56449:
                parentObj.sq_PlaySound("VENITH_DIE");
                break;

            case 62105:
                parentObj.sq_PlaySound("R_IRISM_DIE");
                break;

            case 63020:
                parentObj.sq_PlaySound("GAU_DIE");
                break;

            case 50:
            case 51:
            case 52:
            case 53:
            case 50005:
                parentObj.sq_PlaySound("FLYDRAGON_DIE");
                break;

            case 5001:
            case 5002:
            case 5003:
            case 5004:
            case 5005:
            case 5007:
            case 40023:
            case 40024:
            case 61748:
            case 56743:
            case 56742:
            case 50000:
            case 50072:
            case 61118:
            case 61545:
            case 61831:
            case 61832:
            case 61833:
            case 61834:
            case 61835:
            case 61848:
            case 61849:
            case 61850:
            case 62600:
            case 61116:
            case 62004:
            case 62006:
            case 62007:
            case 62003:
            case 62005:
            case 41022:
            case 41023:
            case 57000:
                parentObj.sq_PlaySound("FOX_DIE");
                break;

            case 64576:
            case 61013:
            case 62720:
                parentObj.sq_PlaySound("FRANKEN_DIE");
                break;

            case 61295:
                parentObj.sq_PlaySound("FUHRMAN_DIE_01");
                break;

            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 75:
            case 76:
            case 77:
            case 78:
            case 3001:
            case 50008:
            case 61123:
            case 61124:
            case 64535:
            case 64583:
            case 62628:
            case 61703:
            case 56712:
            case 56706:
            case 64576:
            case 56711:
            case 57006:
                parentObj.sq_PlaySound("GOLEM_DIE");
                break;

            case 50084:
            case 50505:
                parentObj.sq_PlaySound("HAKUDO_DIE");
                break;

            case 50080:
            case 57012:
            case 50081:
            case 50508:
            case 57013:
            case 50082:
            case 57014:
            case 50083:
            case 57015:
                parentObj.sq_PlaySound("HIDDEN_A_DIE");
                break;

            case 1050:
            case 1051:
            case 1052:
            case 1053:
            case 1060:
            case 1061:
            case 61425:
            case 61426:
            case 61427:
            case 61428:
            case 56147:
            case 56148:
            case 56149:
            case 56150:
            case 56722:
            case 56023:
                parentObj.sq_PlaySound("HM_DIE");
                break;

            case 200:
            case 201:
            case 202:
            case 906:
            case 3015:
            case 10004:
            case 41004:
            case 50095:
            case 55014:
            case 61195:
            case 61196:
            case 62601:
            case 62611:
            case 62624:
            case 64543:
                parentObj.sq_PlaySound("HUNTER_DIE");
                break;

            case 1016:
            case 1017:
            case 10000:
            case 40007:
            case 50086:
            case 61544:
            case 62100:
            case 62610:
                parentObj.sq_PlaySound("ICETIGER_DIE");
                break;

            case 1084:
            case 1085:
            case 61143:
            case 61146:
            case 61756:
            case 61757:
                parentObj.sq_PlaySound("IMAGO_DIE");
                break;

            case 21:
            case 3014:
            case 50024:
            case 61829:
            case 64529:
            case 64588:
            case 59029:
                parentObj.sq_PlaySound("KERA_DIE_01");
                break;

            case 61509:
            case 62674:
            case 56124:
                parentObj.sq_PlaySound("KNAVE_DIE");
                break;

            case 61194:
            case 64582:
            case 56020:
            case 62741:
            case 58002:
            case 65500:
                parentObj.sq_PlaySound("KONG_DIE");
                break;

            case 603:
            case 607:
            case 55017:
            case 60009:
            case 62621:
            case 62668:
                parentObj.sq_PlaySound("LIGHTSOUL_DIE");
                break;

            case 3002:
            case 62636:
                parentObj.sq_PlaySound("LOTUS_DIE");
                break;

            case 56747:
                parentObj.sq_PlaySound("MECAGOBLIN_DIE");
                break;

            case 58003:
                parentObj.sq_PlaySound("RUDOL_DIE");
                break;

            case 61480:
            case 61479:
            case 61281:
                parentObj.sq_PlaySound("MIMIC_DIE");
                break;

            case 61329:
            case 64568:
                parentObj.sq_PlaySound("MONAHUN_DIE");
                break;

            case 64580:
            case 64592:
                parentObj.sq_PlaySound("MOOSAM_DIE");
                break;

            case 1079:
            case 1080:
            case 1097:
            case 1101:
            case 50092:
            case 50506:
            case 62676:
            case 62678:
                parentObj.sq_PlaySound("MOUSE_DIE");
                break;

            case 61293:
            case 61488:
            case 61489:
                parentObj.sq_PlaySound("MUMMY_MEET_01");
                break;

            case 1072:
            case 55012:
            case 62673:
            case 62775:
                parentObj.sq_PlaySound("MYOJIN_DIE");
                break;

            case 61762:
            case 62731:
            case 62732:
            case 62733:
            case 62718:
            case 62727:
            case 62729:
            case 62730:
            case 61437:
            case 61441:
            case 61442:
            case 61461:
            case 61760:
            case 61443:
            case 61460:
            case 61761:
            case 56422:
            case 61436:
            case 61462:
            case 61483:
                parentObj.sq_PlaySound("NORMALSILVER_DIE");
                break;

            case 1077:
            case 1078:
            case 1096:
            case 62677:
                parentObj.sq_PlaySound("PETER_DIE");
                break;

            case 65101:
                parentObj.sq_PlaySound("PIKARALWORM_DIE");
                break;

            case 56002:
            case 56444:
            case 61009:
            case 61018:
                parentObj.sq_PlaySound("R_FATSILVER_DIE");
                break;

            case 56140:
                parentObj.sq_PlaySound("JEFF_DIE");
                break;

            case 56438:
            case 56707:
                parentObj.sq_PlaySound("BASHI_DIE");
                break;

            case 61135:
                parentObj.sq_PlaySound("GRIGUN_DIE");
                break;

            case 56303:
            case 56434:
                parentObj.sq_PlaySound("SICHEF_DIE");
                break;

            case 56503:
            case 61352:
                parentObj.sq_PlaySound("JENA_DIE");
                break;

            case 58005:
            case 59037:
            case 63039:
            case 63040:
                parentObj.sq_PlaySound("FORESTOAK_DIE");
                break;

            case 61458:
            case 62717:
                parentObj.sq_PlaySound("R_PELTSUH_DIE");
                break;

            case 61804:
            case 62728:
                parentObj.sq_PlaySound("R_SILKHET_DIE");
                break;

            case 63024:
                parentObj.sq_PlaySound("R_UMTARA_DIE");
                break;

            case 63037:
            case 63042:
            case 63038:
                parentObj.sq_PlaySound("R_FORESTELF_DIE");
                break;

            case 1081:
            case 62681:
            case 64566:
                parentObj.sq_PlaySound("R_B_HEADLESS_DIE");
                break;

            case 61300:
            case 61469:
            case 62684:
            case 63026:
                parentObj.sq_PlaySound("R_ODESA_DIE");
                break;

            case 61301:
            case 61470:
            case 62686:
                parentObj.sq_PlaySound("R_VOLMIR_DIE");
                break;

            case 62719:
            case 56478:
            case 61641:
            case 56005:
            case 61014:
            case 61180:
                parentObj.sq_PlaySound("FRANKENJACO_DIE");
                break;

            case 1012:
            case 1014:
            case 40005:
            case 50079:
            case 50085:
            case 50503:
            case 55009:
            case 62612:
            case 62623:
            case 50088:
            case 50089:
                parentObj.sq_PlaySound("R_BANTU_DIE");
                break;

            case 56437:
            case 56710:
            case 61454:
                parentObj.sq_PlaySound("R_BISONMAN_DIE");
                break;

            case 61701:
            case 61700:
            case 56709:
                parentObj.sq_PlaySound("R_BISONWOMAN_DIE");
                break;

            case 57018:
            case 62683:
            case 62707:
            case 57016:
            case 61306:
            case 61237:
            case 61333:
            case 59014:
            case 59013:
            case 61414:
                parentObj.sq_PlaySound("R_BUNKER_HIT");
                break;

            case 56134:
            case 63012:
            case 63013:
            case 56136:
            case 56715:
            case 61525:
            case 65009:
            case 61530:
            case 61415:
            case 61526:
            case 61416:
            case 61353:
                parentObj.sq_PlaySound("R_BARMY_DIE");
                break;

            case 1031:
            case 1032:
            case 1033:
            case 50080:
            case 50081:
            case 50082:
            case 50083:
                parentObj.sq_PlaySound("R_CHEAPTOY_DIE");
                break;

            case 56731:
            case 50066:
            case 61842:
            case 60109:
                parentObj.sq_PlaySound("R_DEFEN_GUARD_DIE");
                break;

            case 1073:
            case 1074:
            case 1075:
            case 1076:
            case 40018:
            case 40019:
            case 55006:
            case 61546:
            case 62672:
            case 63010:
            case 61216:
                parentObj.sq_PlaySound("R_DOG_DIE");
                break;

            case 61630:
            case 62021:
                parentObj.sq_PlaySound("BBUTTERFLY_DIE");
                break;

            case 61631:
                parentObj.sq_PlaySound("VESPA_DIE");
                break;

            case 64001:
                parentObj.sq_PlaySound("R_GSEEKERDEFENSE_DIE");
                break;

            case 64560:
            case 61103:
            case 61115:
            case 61435:
            case 62619:
            case 62666:
                parentObj.sq_PlaySound("R_ESADORA_DIE");
                break;

            case 56009:
            case 61629:
            case 62016:
                parentObj.sq_PlaySound("ANTMON_DIE");
                break;

            case 56018:
            case 61451:
                parentObj.sq_PlaySound("R_RABBITWOMAN_DIE");
                break;

            case 56036:
                parentObj.sq_PlaySound("R_MEDUSA_DIE");
                break;

            case 56037:
                parentObj.sq_PlaySound("BISONMAN_DIE_03");
                break;

            case 56038:
                parentObj.sq_PlaySound("R_RARI_DIE");
                break;

            case 56108:
                parentObj.sq_PlaySound("GOLI_DIE");
                break;

            case 56466:
                parentObj.sq_PlaySound("KURJEEP_DIE");
                break;

            case 58000:
                parentObj.sq_PlaySound("PAI_DIE");
                break;

            case 400:
            case 401:
            case 402:
            case 403:
            case 404:
            case 405:
            case 406:
            case 407:
            case 408:
            case 409:
            case 3016:
            case 3017:
            case 40009:
            case 40011:
            case 61173:
            case 62648:
            case 62649:
            case 62651:
            case 62679:
            case 64548:
                parentObj.sq_PlaySound("R_GHOUL_DIE");
                break;

            case 413:
            case 760:
            case 761:
            case 762:
            case 43008:
            case 43009:
            case 43010:
            case 50030:
            case 50031:
            case 50032:
            case 60105:
            case 60106:
            case 60107:
            case 62657:
            case 62658:
            case 62659:
            case 62682:
            case 64586:
                parentObj.sq_PlaySound("R_GIANT_DIE");
                break;

            case 56034:
            case 61323:
            case 61340:
            case 62769:
                parentObj.sq_PlaySound("R_DIST_WOOD");
                break;

            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 61753:
            case 56740:
            case 10:
            case 19:
            case 20:
            case 23:
            case 24:
            case 25:
            case 60:
            case 61:
            case 63:
            case 64:
            case 65:
            case 900:
            case 907:
            case 1021:
            case 1100:
            case 5006:
            case 41001:
            case 41002:
            case 41003:
            case 50003:
            case 50004:
            case 50062:
            case 50070:
            case 55001:
            case 55002:
            case 55022:
            case 60005:
            case 61714:
            case 61815:
            case 61816:
            case 61817:
            case 61818:
            case 61819:
            case 61820:
            case 61821:
            case 61822:
            case 61823:
            case 62027:
            case 63028:
            case 64523:
            case 64527:
            case 62768:
            case 62766:
            case 62780:
            case 62767:
            case 64631:
            case 64594:
            case 64632:
            case 64633:
            case 64634:
            case 64635:
            case 61163:
            case 61158:
            case 61159:
            case 56126:
            case 61164:
            case 61162:
            case 61410:
            case 61432:
            case 65007:
            case 61127:
            case 61726:
            case 62781:
            case 61727:
            case 61728:
            case 61513:
            case 61724:
            case 61337:
            case 61338:
            case 61339:
            case 61517:
            case 61725:
            case 61519:
            case 61515:
            case 61521:
            case 61518:
            case 61516:
            case 61514:
            case 61715:
            case 61342:
            case 56505:
            case 63044:
            case 43001:
            case 62774:
            case 40001:
            case 40002:
            case 40003:
            case 40004:
            case 42001:
                parentObj.sq_PlaySound("R_GOBLIN_DIE");
                break;

            case 56407:
            case 56413:
            case 65005:
                parentObj.sq_PlaySound("MADGBL_DIE");
                break;

            case 50091:
                parentObj.sq_PlaySound("R_HUMFRI_DIE");
                break;

            case 56506:
                parentObj.sq_PlaySound("R_VERSTI_DIE");
                break;

            case 58004:
                parentObj.sq_PlaySound("TOMA_DIE");
                break;

            case 61409:
                parentObj.sq_PlaySound("GSELFDEST_DIE");
                break;

            case 61614:
                parentObj.sq_PlaySound("KANE_DIE");
                break;

            case 61742:
                parentObj.sq_PlaySound("KERBEROS_DIE");
                break;

            case 64002:
                parentObj.sq_PlaySound("POX_DIE");
                break;

            case 64003:
                parentObj.sq_PlaySound("GUARD_DIE");
                break;

            case 64004:
            case 64005:
                parentObj.sq_PlaySound("EMSOLDIER_DIE");
                break;

            case 64006:
                parentObj.sq_PlaySound("EMMATUSA_DIE");
                break;

            case 17:
            case 62132:
                parentObj.sq_PlaySound("R_HYPER_TAU_DIE");
                break;

            case 1095:
            case 1098:
            case 55013:
            case 62680:
                parentObj.sq_PlaySound("R_JACO_DIE");
                break;

            case 56411:
            case 56410:
            case 56425:
                parentObj.sq_PlaySound("R_KUNGFUMANN_DIE");
                break;

            case 56418:
            case 61007:
                parentObj.sq_PlaySound("FIRAN_DIE");
                break;

            case 56419:
            case 61153:
                parentObj.sq_PlaySound("BOGUS_DIE");
                break;

            case 1083:
            case 57010:
            case 56141:
            case 64593:
            case 61755:
            case 61758:
            case 61147:
            case 61149:
                parentObj.sq_PlaySound("R_LARVA_DIE");
                break;

            case 61400:
            case 61336:
            case 63025:
                parentObj.sq_PlaySound("GSEEKERMAN_DIE");
                break;

            case 61401:
            case 63041:
                parentObj.sq_PlaySound("R_GSEEKERWOMAN_DIE");
                break;

            case 61421:
                parentObj.sq_PlaySound("R_KUNGFUMAN_DIE");
                break;

            case 61424:
            case 61621:
                parentObj.sq_PlaySound("YOKSHER_DIE");
                break;

            case 61616:
            case 61500:
                parentObj.sq_PlaySound("RUINGHOST_DIE");
                break;

            case 61331:
            case 62675:
                parentObj.sq_PlaySound("R_PICKPOCKET_DIE");
                break;

            case 61332:
                parentObj.sq_PlaySound("R_SYNEID_DIE");
                break;

            case 61423:
            case 61000:
            case 61265:
            case 61261:
            case 56408:
            case 61775:
            case 56749:
            case 61623:
                parentObj.sq_PlaySound("R_MUMMY_DIE");
                break;

            case 61508:
            case 61711:
            case 56802:
            case 56803:
            case 56750:
            case 56751:
            case 56801:
                parentObj.sq_PlaySound("HOODLUM_DIE");
                break;

            case 61286:
                parentObj.sq_PlaySound("R_NORMALTOY_DIE");
                break;

            case 50089:
                parentObj.sq_PlaySound("R_RABBITMAN_DIE");
                break;

            case 61114:
            case 61104:
            case 61466:
            case 61600:
                parentObj.sq_PlaySound("R_RESERCHER_DIE");
                break;

            case 1086:
            case 1087:
            case 1088:
            case 55015:
            case 55016:
            case 61144:
            case 61741:
            case 61744:
            case 62035:
            case 62036:
            case 62037:
                parentObj.sq_PlaySound("R_ROBBER_DIE");
                break;

            case 62104:
            case 61455:
            case 62103:
            case 56162:
            case 56161:
            case 56163:
                parentObj.sq_PlaySound("R_SKASABABY_DIE");
                break;

            case 56045:
            case 56047:
            case 56156:
            case 56465:
            case 59027:
            case 56048:
            case 61628:
                parentObj.sq_PlaySound("R_GGANG_DIE_01");
                break;

            case 56040:
            case 56155:
            case 59021:
            case 56458:
            case 56042:
            case 56459:
            case 56727:
            case 61627:
                parentObj.sq_PlaySound("R_NENKWON_DIE_02");
                break;

            case 56463:
            case 56464:
            case 59022:
            case 56462:
            case 56728:
            case 56468:
                parentObj.sq_PlaySound("R_WEAPONM_DIE_03");
                break;

            case 56112:
            case 56726:
                parentObj.sq_PlaySound("R_SECRETMAN_DIE");
                break;

            case 56115:
            case 56735:
                parentObj.sq_PlaySound("R_B_ROBBER_DIE");
                break;

            case 56116:
            case 56737:
                parentObj.sq_PlaySound("R_SPECTRE_DIE");
                break;

            case 56476:
                parentObj.sq_PlaySound("LACIF_DIE");
                break;

            case 1090:
            case 56117:
            case 56738:
            case 64600:
            case 64602:
                parentObj.sq_PlaySound("R_SKEL_DIE");
                break;

            case 1000:
            case 1001:
            case 1006:
            case 1094:
            case 10003:
            case 40014:
            case 50073:
            case 50074:
            case 50075:
            case 55004:
            case 61490:
            case 62660:
            case 62662:
            case 63032:
                parentObj.sq_PlaySound("R_SKELETON_DIE");
                break;

            case 61327:
            case 61273:
            case 61706:
            case 62011:
            case 62102:
            case 56452:
            case 61326:
                parentObj.sq_PlaySound("R_SLOTUR_DIE");
                break;

            case 1019:
            case 40025:
            case 40008:
            case 41009:
            case 61453:
            case 62101:
                parentObj.sq_PlaySound("R_SNOWMAN_DIE");
                break;

            case 1069:
            case 1070:
            case 40015:
            case 40016:
            case 50084:
            case 50092:
            case 50093:
            case 64000:
            case 62014:
            case 62015:
            case 62734:
            case 62735:
                parentObj.sq_PlaySound("R_THIEF_DIE");
                break;

            case 62771:
            case 62772:
            case 61303:
            case 61304:
            case 61307:
            case 61472:
            case 61716:
            case 61717:
            case 61718:
            case 61719:
            case 61720:
            case 61721:
            case 61722:
            case 61723:
            case 61729:
            case 61731:
            case 61511:
            case 61809:
            case 61810:
            case 61430:
            case 61713:
            case 65008:
                parentObj.sq_PlaySound("R_THROWER_DIE");
                break;

            case 56158:
                parentObj.sq_PlaySound("R_WEAPONM_DIE_02");
                break;

            case 56406:
            case 56428:
            case 56469:
                parentObj.sq_PlaySound("R_MANAGER_DIE");
                break;

            case 410:
            case 411:
            case 1091:
            case 40012:
            case 50077:
            case 50509:
            case 62650:
            case 62652:
            case 56016:
                parentObj.sq_PlaySound("R_WRAITH_DIE");
                break;

            case 61496:
            case 61475:
                parentObj.sq_PlaySound("R_GUARD_DIE");
                break;

            case 64556:
            case 61705:
            case 62629:
                parentObj.sq_PlaySound("RIKU_DIE");
                break;

            case 64567:
            case 61708:
            case 62685:
                parentObj.sq_PlaySound("ROCKETMAN_DIE");
                break;

            case 50093:
                parentObj.sq_PlaySound("ROCKSHA_DIE");
                break;

            case 56013:
            case 56014:
            case 56767:
                parentObj.sq_PlaySound("SAS_DIE");
                break;

            case 56301:
            case 56431:
            case 61334:
            case 62770:
            case 65013:
                parentObj.sq_PlaySound("R_MACKI_DIE");
                break;

            case 62126:
            case 56144:
            case 56145:
            case 62320:
            case 56759:
            case 56760:
            case 56776:
            case 62514:
            case 59033:
                parentObj.sq_PlaySound("R_GACKLE_DIE");
                break;

            case 61407:
                parentObj.sq_PlaySound("GASSAS_DIE");
                break;

            case 61491:
            case 61770:
                parentObj.sq_PlaySound("FLU_DIE");
                break;

            case 64572:
            case 57017:
            case 62701:
            case 62721:
            case 61160:
            case 59015:
            case 61710:
            case 61150:
            case 64577:
            case 64591:
            case 56129:
            case 56130:
                parentObj.sq_PlaySound("SAFE_CRASH");
                break;

            case 220:
            case 221:
            case 222:
            case 55028:
                parentObj.sq_PlaySound("SFISH_DIE");
                break;

            case 61113:
            case 62692:
            case 64571:
            case 62699:
            case 61112:
                parentObj.sq_PlaySound("SHURED_DIE");
                break;

            case 61494:
            case 61527:
            case 62693:
            case 62702:
            case 62713:
                parentObj.sq_PlaySound("KMEDIC_DIE");
                break;

            case 61802:
            case 62695:
            case 62704:
            case 62715:
                parentObj.sq_PlaySound("R_KSPY_DIE");
                break;

            case 61456:
            case 62112:
            case 62689:
                parentObj.sq_PlaySound("SKASA_DIE");
                break;

            case 61485:
            case 61785:
                parentObj.sq_PlaySound("R_ZKFATMAN_DIE");
                break;

            case 61495:
            case 62696:
            case 62705:
            case 62716:
                parentObj.sq_PlaySound("KFATMAN_DIE");
                break;

            case 85111:
                parentObj.sq_PlaySound("SKULDY_DIE");
                break;

            case 420:
            case 421:
            case 422:
            case 1020:
            case 1092:
            case 3012:
            case 10002:
            case 55027:
            case 62653:
            case 62655:
            case 62656:
            case 64549:
            case 63027:
                parentObj.sq_PlaySound("SPIDER_DIE");
                break;

            case 64558:
                parentObj.sq_PlaySound("SUSQ_DIE");
                break;

            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 56741:
            case 61752:
            case 908:
            case 10001:
            case 50002:
            case 50071:
            case 61824:
            case 61825:
            case 61826:
            case 61827:
            case 61828:
            case 61836:
            case 61837:
            case 61838:
            case 63029:
            case 63030:
            case 64524:
            case 64525:
            case 64530:
            case 64629:
            case 61730:
            case 56039:
            case 61154:
            case 62040:
            case 62038:
            case 64607:
                parentObj.sq_PlaySound("TAU_DIE");
                break;

            case 61305:
            case 61520:
                parentObj.sq_PlaySound("R_BUNKER_DESTROY");
                break;

            case 56021:
            case 56713:
            case 61184:
            case 61185:
                parentObj.sq_PlaySound("R_CLAES_DIE");
                break;

            case 61800:
            case 62694:
            case 62700:
            case 62703:
            case 62714:
                parentObj.sq_PlaySound("R_IRONMAN_DIE");
                break;

            case 62698:
            case 62709:
            case 62711:
            case 56022:
            case 61801:
            case 61175:
            case 62782:
            case 61178:
                parentObj.sq_PlaySound("R_IRONMANS_DIE");
                break;

            case 62688:
            case 62697:
            case 62706:
            case 62712:
            case 61803:
            case 61176:
            case 63014:
            case 61274:
                parentObj.sq_PlaySound("KFIRE_DIE");
                break;

            case 56035:
                parentObj.sq_PlaySound("R_SEME_DIE");
                break;

            case 56049:
            case 56775:
                parentObj.sq_PlaySound("GORO_DIE");
                break;

            case 56056:
                parentObj.sq_PlaySound("FUHRMAN_DIE_02");
                break;

            case 56467:
                parentObj.sq_PlaySound("TITAN_DIE");
                break;

            case 56470:
                parentObj.sq_PlaySound("R_PLANET_S_DIE");
                break;

            case 58007:
                parentObj.sq_PlaySound("PARIS_DIE");
                break;

            case 59031:
                parentObj.sq_PlaySound("B_FITZ_DIE");
                break;

            case 61278:
            case 61780:
                parentObj.sq_PlaySound("LANZELUCE_DIE");
                break;

            case 61632:
                parentObj.sq_PlaySound("SAMUEL_DIE");
                break;

            case 61633:
                parentObj.sq_PlaySound("R_MAGNEUME_DIE");
                break;

            case 64020:
                parentObj.sq_PlaySound("PATRIS_DIE");
                break;

            case 64570:
            case 61709:
            case 62691:
                parentObj.sq_PlaySound("VENTING_DIE");
                break;

            case 61010:
            case 61011:
            case 61012:
            case 61015:
            case 61272:
                parentObj.sq_PlaySound("BLUESLIME_DIE");
                break;

            case 63045:
                parentObj.sq_PlaySound("FITZ_DIE");
                break;

            case 63046:
            case 63047:
                parentObj.sq_PlaySound("R_FITZ_ARCHER_DIE");
                break;

            case 63048:
            case 59038:
                parentObj.sq_PlaySound("BIGFIRESLIME_DIE");
                break;

            case 62148:
            case 62149:
            case 62150:
            case 62151:
            case 62154:
            case 62155:
            case 62156:
                parentObj.sq_PlaySound("VILLAGEWOMAN2_DIE");
                break;

            case 22:
            case 3013:
            case 50023:
            case 61830:
            case 62523:
            case 64531:
            case 64589:
                parentObj.sq_PlaySound("VINO_DIE_01");
                break;

            case 61224:
            case 61225:
            case 64581:
            case 61223:
            case 62754:
            case 56019:
                parentObj.sq_PlaySound("VOTI_DIE");
                break;

            case 61635:
            case 61634:
            case 64016:
            case 64019:
            case 58006:
            case 64017:
                parentObj.sq_PlaySound("R_GRANITE_DIE");
                break;

            case 64573:
            case 62710:
            case 62776:
            case 61236:
            case 61784:
                parentObj.sq_PlaySound("WARJACK_DIE");
                break;

            case 600:
            case 604:
            case 1022:
            case 50078:
            case 50502:
            case 55018:
            case 60006:
            case 62620:
            case 62667:
            case 60103:
                parentObj.sq_PlaySound("WATERSOUL_DIE");
                break;

            case 1071:
            case 40017:
            case 50087:
                parentObj.sq_PlaySound("WTHIEF_DIE");
                break;

            case 250:
            case 251:
            case 252:
            case 253:
            case 61106:
            case 61198:
            case 61199:
            case 61467:
            case 61468:
            case 62625:
            case 62626:
            case 62627:
            case 62669:
            case 62670:
            case 64545:
            case 64562:
            case 64584:
            case 62671:
            case 61805:
            case 61477:
            case 61108:
            case 56101:
            case 56433:
            case 61102:
            case 61106:
                parentObj.sq_PlaySound("ZGM_DIE");
                break;

            case 56029:
                parentObj.sq_PlaySound("PIERE_DIE");
                break;

            case 56032:
                parentObj.sq_PlaySound("TRETRI_DIE");
                break;

            case 61245:
                parentObj.sq_PlaySound("MANHUNT_DIE");
                break;

            case 56052:
            case 56763:
                parentObj.sq_PlaySound("BELAY_DIE");
                break;

            case 56402:
            case 56768:
                parentObj.sq_PlaySound("MAX_DIE");
                break;

            case 56050:
            case 59016:
                parentObj.sq_PlaySound("POENA_DIE");
                break;

            case 56137:
            case 57011:
                parentObj.sq_PlaySound("NANOO_DIE");
                break;

            case 59000:
            case 59001:
            case 56756:
                parentObj.sq_PlaySound("DREAMMANS1_DIE");
                break;

            case 59002:
            case 56758:
                parentObj.sq_PlaySound("DREAMMANS2_DIE");
                break;

            case 59003:
            case 56761:
                parentObj.sq_PlaySound("R_DREAMMANS3_DMG");
                break;

            case 59017:
            case 61275:
            case 65014:
                parentObj.sq_PlaySound("HAS_DIE");
                break;

            case 56030:
            case 56051:
            case 61276:
                parentObj.sq_PlaySound("FATJOE_DIE");
                break;

            case 56031:
            case 62161:
            case 63043:
                parentObj.sq_PlaySound("SNIPERKARE_DIE");
                break;

            case 61267:
            case 62763:
            case 62777:
            case 62778:
            case 62779:
                parentObj.sq_PlaySound("ENJO_DIE");
                break;

            case 61187:
            case 62742:
            case 64616:
            case 64636:
            case 64637:
            case 64638:
                parentObj.sq_PlaySound("MERMAIDA_DIE");
                break;

            case 61218:
            case 61219:
            case 61248:
            case 62738:
            case 62746:
                parentObj.sq_PlaySound("R_MERMAN_DIE");
                break;

            case 61484:
            case 61771:
                parentObj.sq_PlaySound("R_SMERMADIA_DIE");
                break;

            case 61492:
            case 61543:
            case 61778:
            case 56778:
            case 59032:
                parentObj.sq_PlaySound("DGHOSTSOUL_DIE");
                break;

            case 56008:
            case 64614:
            case 64654:
            case 64655:
            case 64656:
                parentObj.sq_PlaySound("HFISH_DIE");
                break;

            case 56010:
            case 56011:
            case 61249:
            case 62133:
            case 64618:
            case 64645:
            case 64646:
            case 64647:
                parentObj.sq_PlaySound("MASA_DIE");
                break;

            case 61186:
            case 61188:
            case 61189:
            case 61190:
            case 62739:
            case 62743:
            case 62744:
            case 62745:
            case 64613:
            case 64651:
            case 64652:
            case 64653:
                parentObj.sq_PlaySound("MERMAIDB_DIE");
                break;

            case 61220:
            case 61221:
            case 62747:
            case 62748:
            case 62753:
            case 64612:
            case 64648:
            case 64649:
            case 64650:
                parentObj.sq_PlaySound("R_TURTLEA_DIE");
                break;

            case 61222:
            case 62749:
            case 64587:
            case 64619:
            case 64642:
            case 64643:
            case 64644:
                parentObj.sq_PlaySound("TORTOISE_DIE");
                break;

            case 61606:
            case 61607:
            case 61608:
            case 61609:
            case 61610:
            case 61611:
            case 61408:
            case 61431:
            case 65006:
            case 61411:
            case 61650:
            case 61656:
            case 61646:
            case 61735:
            case 62238:
            case 62239:
            case 62240:
            case 62241:
            case 62242:
            case 62243:
                parentObj.sq_PlaySound("R_GARCHER_DIE");
                break;

            case 56139:
            case 61191:
            case 62106:
            case 62750:
            case 62751:
            case 64611:
            case 64657:
            case 64658:
            case 64659:
                parentObj.sq_PlaySound("R_COROCO_DIE");
                break;

            case 62756:
            case 62757:
            case 62760:
            case 62761:
            case 61246:
            case 61247:
            case 61268:
            case 61263:
                parentObj.sq_PlaySound("BIKER_DIE");
                break;

            case 62758:
            case 62762:
            case 61612:
            case 61613:
            case 61282:
            case 61243:
            case 61244:
            case 62216:
                parentObj.sq_PlaySound("OUTLAW_DIE");
                break;

            case 3000:
            case 64539:
                parentObj.sq_PlaySound("ZIEG_DIE_VOICE");
                break;

                parentObj.sq_PlaySound("ZIEG_DIE_EFFECT");
                break;

            case 210:
            case 211:
            case 212:
            case 40010:
            case 50001:
            case 50501:
            case 55003:
            case 55011:
            case 61171:
            case 61532:
            case 61533:
            case 62609:
            case 64532:
            case 65001:
            case 65002:
            case 59028:
            case 61734:
                parentObj.sq_PlaySound("ZOMBIE_DIE");
                break;



        }
    }
}

function onStart_appendage_mob_effect(appendage) {
    if (!appendage) {
        return;
    }
    local parentObj = appendage.getParent();
}

function proc_appendage_mob_effect(appendage) {
    if (!appendage) {
        return;
    }

    local parentObj = appendage.getParent();

    if (!parentObj) {
        appendage.setValid(false);
        return;
    }

}