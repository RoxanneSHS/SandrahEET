BEGIN SANPARC

IF~Global("SanparcT","GLOBAL",1)~THEN BEGIN Sanparc1
SAY @0
IF~GlobalLT("CVPurseGold","Global",3)~THEN REPLY @1DO~IncrementGlobal("CVPurseGold","Global",1) GiveItemCreate("Misc07","CVSandr",1000,0,0)~EXIT
IF~~THEN REPLY @2DO~GiveItemCreate("Misc1I","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY @3GOTO chest
IF~~THEN REPLY@4GOTO magit
IF~~THEN REPLY @5DO~GiveItemCreate("Misc97","CVSandr",1,0,0)~EXIT
IF~OR(2)Global("Dollgiven","LOCALS",0) AreaCheck("Ares01") ~THEN REPLY @6DO~GiveItemCreate("Sandoll","CVSandr",1,0,0) SetGlobal("Dollgiven","LOCALS",1)~EXIT
IF~!Global("ENDOFBG1","GLOBAL",2)~THEN REPLY @7GOTO lostitem
IF~Global("ENDOFBG1","GLOBAL",2)GlobalLT("Chapter","GLOBAL",20)~THEN REPLY @7GOTO lostitemSoA
IF~Global("ENDOFBG1","GLOBAL",2)GlobalGT("Chapter","GLOBAL",19)~THEN REPLY @7GOTO lostitemToB
IF~Global("SanCanTravel","GLOBAL",2) Global("SanBeginRTF","GLOBAL",0) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])GlobalLT("Chapter","GLOBAL",20)!Global("Chapter","GLOBAL",17)~THEN REPLY@8GOTO Choice1
IF~Global("SanCanTravel","GLOBAL",2) Global("SanBeginRTF","GLOBAL",0) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])GlobalGT("Chapter","GLOBAL",19)~THEN REPLY@8GOTO Choice1
IF~Global("SanCanTravel","GLOBAL",2) OR(2) Global("SanNotTeleport","GLOBAL",2) Global("Chapter","GLOBAL",17) CombatCounter(0) !See([ENEMY])~THEN REPLY@8GOTO Choice26
IF~Global("SanCanTravel","GLOBAL",2) Global("SanNotTeleport","GLOBAL",4) CombatCounter(0) !See([ENEMY])~THEN REPLY@8GOTO Choice26
IF~Global("SanCanTravel","GLOBAL",2) Global("SanNotTeleport","GLOBAL",6) CombatCounter(0) !See([ENEMY])~THEN REPLY@8GOTO RTFNo
IF~Global("SanDoPotn","GLOBAL",1) PartyHasItem("potn08") PartyHasItem("CVHeherb")~THEN REPLY@9DO~StartCutSceneMode() StartCutScene("CVhepo")~EXIT
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])~THEN REPLY@8GOTO RTFChoice
END

IF~~THEN BEGIN chest
SAY@10
IF ~Global("Itempearl","GLOBAL",1) NumItemsPartyLT("Misc36",15)~THEN REPLY @11DO~GiveItemCreate("Misc36","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY@12DO~GiveItemCreate("Misc41","CVSandr",3,0,0)~EXIT
IF ~Global("Itemrosto","GLOBAL",1) !PartyHasItem("misc45")~THEN REPLY @13DO~GiveItemCreate("misc45","CVSandr",1,0,0)~EXIT
IF ~GlobalGT("endofbg1","GLOBAL",1) !PartyHasItem("misc42")~THEN REPLY @14DO~GiveItemCreate("misc42","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSunSt","GLOBAL",1) !PartyHasItem("misc18")~THEN REPLY @15DO~GiveItemCreate("misc18","CVSandr",1,0,0)~EXIT
IF ~Global("Itemasri","GLOBAL",1) !PartyHasItem("ring16")~THEN REPLY @16DO~GiveItemCreate("ring16","CVSandr",1,0,0)~EXIT
IF~Dead("Basilnad") !PartyHasItem("misc37") ~THEN REPLY @17DO~GiveItemCreate("misc37","CVSandr",1,0,0)~EXIT
END

IF~~THEN BEGIN magit                  
SAY@18
IF ~Global("ItemPetScr","GLOBAL",1) !Global("ENDOFBG1","GLOBAL",2) GlobalGT("Chapter","GLOBAL",1)! PartyHasItem("scrlpet")~THEN REPLY @19DO~GiveItemCreate("scrlpet","CVSandr",1,0,0)~EXIT
IF ~Global("ItemPetScr","GLOBAL",1) Global("ENDOFBG1","GLOBAL",2) ! PartyHasItem("scrlpet")~THEN REPLY @19DO~GiveItemCreate("scrlpet","CVSandr",1,0,0)~EXIT
IF ~Global("Itemdemh","GLOBAL",1) !PartyHasItem("misc6m")~THEN REPLY @20DO~GiveItemCreate("misc6m","CVSandr",1,0,0)~EXIT
IF ~Global("Itemskul","GLOBAL",1) !PartyHasItem("misc50")~THEN REPLY @21DO~GiveItemCreate("misc50","CVSandr",1,0,0)~EXIT
IF ~Global("Itemwafro","GLOBAL",1) !PartyHasItem("wand06")~THEN REPLY @22DO~GiveItemCreate("wand06","CVSandr",1,0,0)~EXIT
IF ~Global("Itemcandl","GLOBAL",1) !PartyHasItem("Misc74")~THEN REPLY @23DO~GiveItemCreate("Misc74","CVSandr",1,0,0)~EXIT
IF ~Global("ItemPtnFre","GLOBAL",1) !PartyHasItem("potn45")~THEN REPLY @24DO~GiveItemCreate("potn45","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFormStb","GLOBAL",1) !PartyHasItem("amul24")~THEN REPLY @25DO~GiveItemCreate("amul24","CVSandr",1,0,0)~EXIT
IF~OR(2) Dead("HLKang") LevelGT("CVSandr",19)~THEN REPLY@26DO~GiveItemCreate("scrl9z","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY @27DO~GiveItemCreate("potn10","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY@28DO~GiveItemCreate("staf01","CVSandr",1,0,0) GiveItemCreate("sw1h07",Player1,1,0,0) GiveItemCreate("dagg01",Player4,1,0,0)~EXIT
IF~~THEN REPLY@29EXIT
END

IF ~~THEN BEGIN lostitem
SAY @30
IF ~Global("ItemGS","GLOBAL",1) !PartyHasItem("Scrl3z")~THEN REPLY @31DO~GiveItemCreate("Scrl3z","CVSandr",1,0,0)~EXIT
IF ~Global("ItemAu","GLOBAL",1) !PartyHasItem("Scrlauto")~THEN REPLY @32DO~GiveItemCreate("Scrlauto","CVSandr",1,0,0)~EXIT
IF ~Global("Itemport","GLOBAL",1) !PartyHasItem("Sanport")~THEN REPLY @33DO~GiveItemCreate("Sanport","CVSandr",1,0,0)~EXIT
IF ~Global("Itembash","GLOBAL",1) !PartyHasItem("ACQBOOK0")~THEN REPLY @34DO~GiveItemCreate("ACQBOOK0","CVSandr",1,0,0)~EXIT
IF ~GlobalLT("HelpLandrin","GLOBAL",4) Global("ItemLandri","GLOBAL",1) OR(3) !PartyHasItem("Boot06") !PartyHasItem("Misc60") !PartyHasItem("Misc61")~THEN REPLY @35DO~GiveItemCreate("Misc60","CVSandr",1,0,0) GiveItemCreate("Misc61","CVSandr",1,0,0) GiveItemCreate("Boot06","CVSandr",1,0,0)~EXIT
IF ~Global("Itemarte","GLOBAL",1) !PartyHasItem("X#TOME")~THEN REPLY @36DO~GiveItemCreate("X#TOME","CVSandr",1,0,0)~EXIT
IF ~Global("Itemval","GLOBAL",1) !PartyHasItem("sw2val")~THEN REPLY @37DO~GiveItemCreate("sw2val","CVSandr",1,0,0)~EXIT
IF ~Global("Itembowl","GLOBAL",1) !PartyHasItem("misc53")~THEN REPLY @38DO~GiveItemCreate("misc53","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY @39DO~GiveItemCreate("Misc07","CVSandr",1,0,0)~EXIT
IF ~Global("Itemanca","GLOBAL",1) !PartyHasItem("misc82")~THEN REPLY @40DO~GiveItemCreate("misc82","CVSandr",1,0,0)~EXIT
IF ~Global("Itemfarkpa","GLOBAL",1) !PartyHasItem("CVFarkpa")~THEN REPLY @41DO~GiveItemCreate("CVFarkpa","CVSandr",1,0,0)~EXIT
IF ~Global("Itemperdsw","GLOBAL",1) !PartyHasItem("SW1H17")~THEN REPLY @42DO~GiveItemCreate("SW1H17","CVSandr",1,0,0)~EXIT
IF ~Global("Itemnesdag","GLOBAL",1) !PartyHasItem("Dagg06")~THEN REPLY @43DO~GiveItemCreate("Dagg06","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtoid","GLOBAL",1) !PartyHasItem("misc48")~THEN REPLY @44DO~GiveItemCreate("misc48","CVSandr",1,0,0)~EXIT
IF ~Global("Itemradia","GLOBAL",1) !PartyHasItem("SANORDI")~THEN REPLY @45DO~GiveItemCreate("SANORDI","CVSandr",1,0,0)~EXIT
IF~Global("Itemmirilet","GLOBAL",1) !PartyHasItem("SCRL3I") ~THEN REPLY @46DO~GiveItemCreate("SCRL3I","CVSandr",1,0,0)~EXIT
IF ~Global("Itempiclo1","GLOBAL",1) !PartyHasItem("SANwi1")~THEN REPLY @47DO~GiveItemCreate("SANwi1","CVSandr",1,0,0)~EXIT
IF ~Global("Itempiclo3","GLOBAL",1) !PartyHasItem("SANwi3")~THEN REPLY @48DO~GiveItemCreate("SANwi3","CVSandr",1,0,0)~EXIT
IF ~Global("Itempiclo2","GLOBAL",1) !PartyHasItem("SANwi2")~THEN REPLY @49DO~GiveItemCreate("SANwi2","CVSandr",1,0,0)~EXIT
IF ~Global("Itemulcbo","GLOBAL",1) !PartyHasItem("BOOK54")~THEN REPLY @50DO~GiveItemCreate("BOOK54","CVSandr",1,0,0)~EXIT
IF ~Global("Itembreir","GLOBAL",1) !PartyHasItem("aciron")~THEN REPLY @51DO~GiveItemCreate("aciron","CVSandr",1,0,0)~EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~THEN REPLY @52DO~GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~EXIT
IF ~Global("Itemnibscrl","GLOBAL",1) !PartyHasItem("NTPBLET1")~THEN REPLY @53DO~GiveItemCreate("NTPBLET1","CVSandr",1,0,0)~EXIT
IF ~Global("Itemd3book","GLOBAL",1) !PartyHasItem("book36")~THEN REPLY @54DO~GiveItemCreate("book36","CVSandr",1,0,0)~EXIT
IF ~Global("Itembospi","GLOBAL",1) !PartyHasItem("boot02")~THEN REPLY @55DO~GiveItemCreate("boot02","CVSandr",1,0,0)~EXIT
IF ~Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~THEN REPLY @56DO~GiveItemCreate("sw1h31","CVSandr",1,0,0)~EXIT
IF ~Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~THEN REPLY @57DO~GiveItemCreate("hammlat","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtalcol","GLOBAL",1) !PartyHasItem("soaitm35")~THEN REPLY @58DO~GiveItemCreate("soaitm35","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtalfre","GLOBAL",1) !PartyHasItem("soaitm31")~THEN REPLY @59DO~GiveItemCreate("soaitm31","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtalpoi","GLOBAL",1) !PartyHasItem("soaitm32")~THEN REPLY @60DO~GiveItemCreate("soaitm32","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtalprt","GLOBAL",1) !PartyHasItem("soaitm33")~THEN REPLY @61DO~GiveItemCreate("soaitm33","CVSandr",1,0,0)~EXIT
IF ~Global("Itemntk4","GLOBAL",1) !PartyHasItem("ntkeypb4")~THEN REPLY @62DO~GiveItemCreate("ntkeypb4","CVSandr",1,0,0)~EXIT
IF ~Global("Itemtalfir","GLOBAL",1) !PartyHasItem("soaitm34")~THEN REPLY @63DO~GiveItemCreate("soaitm34","CVSandr",1,0,0)~EXIT
IF ~Global("Itemvamprev","GLOBAL",1) !PartyHasItem("sw1h19")~THEN REPLY @64DO~GiveItemCreate("sw1h19","CVSandr",1,0,0)~EXIT
IF ~Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~THEN REPLY @65DO~GiveItemCreate("sw2h06","CVSandr",1,0,0)~EXIT
IF ~Global("ItemfwShi","GLOBAL",1) !PartyHasItem("ntshld02")~THEN REPLY @66DO~GiveItemCreate("ntshld02","CVSandr",1,0,0)~EXIT
IF ~Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~THEN REPLY @67DO~GiveItemCreate("imofurc","CVSandr",1,0,0)~EXIT
IF ~Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~THEN REPLY @68DO~GiveItemCreate("dagg09","CVSandr",1,0,0)~EXIT
IF ~Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01") !PartyHasItem("K0ROD02")~THEN REPLY @69DO~GiveItemCreate("K0ROD01","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFibSil","GLOBAL",1) !PartyHasItem("X#SILSH")~THEN REPLY @70DO~GiveItemCreate("X#SILSH","CVSandr",1,0,0)~EXIT
IF ~Global("ItemUnRun","GLOBAL",1) !PartyHasItem("book55")~THEN REPLY @71DO~GiveItemCreate("book55","CVSandr",1,0,0)~EXIT
IF ~Global("ItemYagoB","GLOBAL",1) !PartyHasItem("book70")~THEN REPLY @72DO~GiveItemCreate("book70","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSeaCh","GLOBAL",1) !PartyHasItem("Misc1C")~THEN REPLY @73DO~GiveItemCreate("Misc1C","CVSandr",1,0,0)~EXIT
IF ~Global("Itemmysda","GLOBAL",1) !PartyHasItem("SaMysDa") InParty("Imoen2") ~THEN REPLY @74DO~GiveItemCreate("SaMysDa","CVSandr",1,0,0)~EXIT
IF ~Global("ItemGopant","GLOBAL",1) !PartyHasItem("Misc47")~THEN REPLY @75DO~GiveItemCreate("Misc47","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFinka","GLOBAL",1) !PartyHasItem("SUFBOOKA")~THEN REPLY @76DO~GiveItemCreate("SUFBOOKA","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSwFi","GLOBAL",1) !PartyHasItem("SW1H53")~THEN REPLY @77DO~GiveItemCreate("SW1H53","CVSandr",1,0,0)~EXIT
IF ~Global("Itemntk3","GLOBAL",1) !PartyHasItem("ntkeypb3")~THEN REPLY @78DO~GiveItemCreate("ntkeypb3","CVSandr",1,0,0)~EXIT
IF ~Global("Itemntk2","GLOBAL",1) !PartyHasItem("ntkeypb2")~THEN REPLY @79DO~GiveItemCreate("ntkeypb2","CVSandr",1,0,0)~EXIT
IF ~Global("Itemntk1","GLOBAL",1) !PartyHasItem("ntmisc08")~THEN REPLY @80DO~GiveItemCreate("ntmisc08","CVSandr",1,0,0)~EXIT
IF ~Global("Itembashj","GLOBAL",1) !PartyHasItem("ACQBOOK0")~THEN REPLY @34DO~GiveItemCreate("ACQBOOK0","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFinkb","GLOBAL",1) !PartyHasItem("SUFBOOK2")~THEN REPLY @81DO~GiveItemCreate("SUFBOOK2","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFinkp","GLOBAL",1) !PartyHasItem("SUFBOOKb")~THEN REPLY @82DO~GiveItemCreate("SUFBOOKb","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFink4","GLOBAL",1) !PartyHasItem("SUFBOOK4")~THEN REPLY @83DO~GiveItemCreate("SUFBOOK4","CVSandr",1,0,0)~EXIT
IF ~Global("ItemBluDrag","GLOBAL",1) !PartyHasItem("BHBUDSTF")~THEN REPLY @84DO~GiveItemCreate("BHBUDSTF","CVSandr",1,0,0)~EXIT
IF ~Global("Itembo1n","GLOBAL",1) !PartyHasItem("sufbook1")~THEN REPLY @85DO~GiveItemCreate("sufbook1","CVSandr",1,0,0)~EXIT
IF ~Global("ItemDuInv","GLOBAL",1) !PartyHasItem("misc78")~THEN REPLY @86DO~GiveItemCreate("misc78","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSumTan","GLOBAL",1) !PartyHasItem("f_sumtan")~THEN REPLY @87DO~GiveItemCreate("f_sumtan","CVSandr",1,0,0)~EXIT
IF~~THEN REPLY@29EXIT
END



IF ~~THEN BEGIN lostitemSoA
SAY @30
IF ~Global("Itemfarkpa","GLOBAL",1) !PartyHasItem("CVFarkpa")~THEN REPLY @41DO~GiveItemCreate("CVFarkpa","CVSandr",1,0,0)~EXIT
IF ~Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~THEN REPLY @57DO~GiveItemCreate("hammlat","CVSandr",1,0,0)~EXIT
IF ~Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~THEN REPLY @65DO~GiveItemCreate("sw2h06","CVSandr",1,0,0)~EXIT
IF ~Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~THEN REPLY @67DO~GiveItemCreate("imofurc","CVSandr",1,0,0)~EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~THEN REPLY @52DO~GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~EXIT
IF ~Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~THEN REPLY @68DO~GiveItemCreate("dagg09","CVSandr",1,0,0)~EXIT
IF ~Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01")~THEN REPLY @69DO~GiveItemCreate("K0ROD01","CVSandr",1,0,0)~EXIT
IF ~Global("ItemGopant","GLOBAL",1) !PartyHasItem("Misc47")~THEN REPLY @75DO~GiveItemCreate("Misc47","CVSandr",1,0,0)~EXIT
IF ~Global("ItemBluDrag","GLOBAL",1) !PartyHasItem("BHBUDSTF")~THEN REPLY @84DO~GiveItemCreate("BHBUDSTF","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSumTan","GLOBAL",1) !PartyHasItem("f_sumtan")~THEN REPLY @87DO~GiveItemCreate("f_sumtan","CVSandr",1,0,0)~EXIT
IF ~Global("ItemHenri","GLOBAL",1) !PartyHasItem("Sanhenri")~THEN REPLY @88DO~GiveItemCreate("Sanhenri","CVSandr",1,0,0)~EXIT
IF~Global("ItemNibtrvl","GLOBAL",1) !PartyHasItem("CVSkyS") Global("SanShauMeet","GLOBAL",0)!AreaCheck("ar3520")~THEN REPLY @89DO~GiveItemCreate("CVSkyS","CVSandr",1,0,0)~EXIT
IF~Global("ItemTSkey","GLOBAL",1)~THEN REPLY @90DO~GiveItemCreate("Tskey","CVSandr",1,0,0) ~EXIT
IF~Global("Itemsoulet","GLOBAL",1)OR(2) !PartyHasItem("cbltcnt1") !PartyHasItem("cbltcnt2")~THEN REPLY @91DO~
GiveItemCreate("cbltcnt1","CVSandr",1,0,0) GiveItemCreate("cbltcnt2","CVSandr",1,0,0)~EXIT
IF ~Global("ItemTormlet","GLOBAL",1) !PartyHasItem("YsLetel")~THEN REPLY @92DO~GiveItemCreate("YsLetel","CVSandr",1,0,0)~EXIT
IF ~Global("ItemRune","GLOBAL",1)!PartyHasItem("aarering")~THEN REPLY @93DO~GiveItemCreate("aarering","CVSandr",1,0,0)~EXIT
IF ~Global("ItemSlime","GLOBAL",1) !PartyHasItem("Iceslime")~THEN REPLY @94DO~GiveItemCreate("Iceslime","CVSandr",1,0,0)~EXIT
IF~Global("ItemDupC","GLOBAL",1) !PartyHasItem("CBMaldup")~THEN REPLY @95DO~GiveItemCreate("CBMaldup","CVSandr",1,0,0)~EXIT
IF ~Global("Itempomml","GLOBAL",1) !PartyHasItem("SW1H54C")~THEN REPLY @96DO~GiveItemCreate("SW1H54C","CVSandr",1,0,0)~EXIT
IF ~Global("Itemacorn","GLOBAL",1) !PartyHasItem("Misc4n")~THEN REPLY @97DO~GiveItemCreate("Misc4n","CVSandr",1,0,0)~EXIT
IF~Global("Itembenhe","GLOBAL",1)!PartyHasItem("newbeh1")~THEN REPLY @98DO~GiveItemCreate("newbeh1","CVSandr",1,0,0)~EXIT
IF ~Global("Itemgesbs","GLOBAL",1) !PartyHasItem("Bow19a")~THEN REPLY @99DO~GiveItemCreate("Bow19a","CVSandr",1,0,0)~EXIT
IF ~Global("Itemespmap","GLOBAL",1) !PartyHasItem("ddmap01")~THEN REPLY @100DO~GiveItemCreate("ddmap01","CVSandr",1,0,0)~EXIT
IF ~Global("Itemletsk","GLOBAL",1) !PartyHasItem("misc6a")~THEN REPLY @101DO~GiveItemCreate("misc6a","CVSandr",1,0,0)~EXIT
IF ~Global("Itemkangtor","GLOBAL",1) !PartyHasItem("miscay")~THEN REPLY @102DO~GiveItemCreate("miscay","CVSandr",1,0,0)~EXIT
IF ~Global("Itemkangleg","GLOBAL",1) !PartyHasItem("miscaw")~THEN REPLY @103DO~GiveItemCreate("miscaw","CVSandr",1,0,0)~EXIT
IF ~Global("ItemHaerJwl","GLOBAL",1) !PartyHasItem("misc6x")~THEN REPLY @104DO~GiveItemCreate("misc6x","CVSandr",1,0,0)~EXIT
IF ~Global("ItemMekMir","GLOBAL",1) !PartyHasItem("misc6h")~THEN REPLY @105DO~GiveItemCreate("misc6h","CVSandr",1,0,0)~EXIT
IF ~Global("ItemRavSpll","GLOBAL",1) !PartyHasItem("cmbook01")~THEN REPLY @106DO~GiveItemCreate("cmbook01","CVSandr",1,0,0)~EXIT
IF ~Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~THEN REPLY @56DO~GiveItemCreate("sw1h31","CVSandr",1,0,0)~EXIT
IF ~Global("ItemMystBust","GLOBAL",1) !PartyHasItem("cmmisc03")~THEN REPLY @107DO~GiveItemCreate("cmmisc03","CVSandr",1,0,0)~EXIT
IF ~Global("ItemDragCp","GLOBAL",1) !PartyHasItem("Dragcap2")~THEN REPLY @108DO~GiveItemCreate("Dragcap2","CVSandr",1,0,0)~EXIT
IF~Global("ItemHskin","GLOBAL",1)!PartyHasItem("leat22")~THEN REPLY @109DO~GiveItemCreate("Leat22","CVSandr",1,0,0)~EXIT
IF ~Global("Itemcromf","GLOBAL",1) !PartyHasItem("scrlag")~THEN REPLY @110DO~GiveItemCreate("scrlag","CVSandr",1,0,0)~EXIT
IF ~Global("ItemGensstr","GLOBAL",1) !PartyHasItem("Bow19b")~THEN REPLY @111DO~GiveItemCreate("Bow19b","CVSandr",1,0,0)~EXIT
IF ~Global("Itemeqbl","GLOBAL",1) !PartyHasItem("sw1h54b")~THEN REPLY @112DO~GiveItemCreate("sw1h54b","CVSandr",1,0,0)~EXIT
IF ~Global("Itemrayle","GLOBAL",1) !PartyHasItem("raynote")~THEN REPLY @113DO~GiveItemCreate("raynote","CVSandr",1,0,0)~EXIT
IF ~Global("Itemsewkey","GLOBAL",1) !PartyHasItem("key29")~THEN REPLY @114DO~GiveItemCreate("key29","CVSandr",1,0,0)~EXIT
IF ~Global("ItemFisam","GLOBAL",1) !PartyHasItem("b!amace")~THEN REPLY @115DO~GiveItemCreate("b!amace","CVSandr",1,0,0)~EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01a")~THEN REPLY @116DO~GiveItemCreate("plot01a","CVSandr",1,0,0)~EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01b")~THEN REPLY @117DO~GiveItemCreate("plot01b","CVSandr",1,0,0)~EXIT
IF~Global("PlayerThiefGuild","GLOBAL",1) !PartyHasItem("TSKey")~THEN REPLY @118DO~GiveItemCreate("TSKey",Player1,1,0,0)~EXIT
IF ~!PartyHasItem("misc6w")~THEN REPLY @119GOTO ParcMkStake
IF~~THEN REPLY@29EXIT
END

IF~~THEN BEGIN ParcMkStake
SAY @120
IF~~THEN EXTERN CVSandrJ SanMkStake5
END

IF ~~THEN BEGIN lostitemToB
SAY @30
IF ~Global("ItemFisam","GLOBAL",1) !PartyHasItem("b!amace")~THEN REPLY @115DO~GiveItemCreate("b!amace","CVSandr",1,0,0)~EXIT
IF ~Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~THEN REPLY @57DO~GiveItemCreate("hammlat","CVSandr",1,0,0)~EXIT
IF ~Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~THEN REPLY @65DO~GiveItemCreate("sw2h06","CVSandr",1,0,0)~EXIT
IF ~Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~THEN REPLY @67DO~GiveItemCreate("imofurc","CVSandr",1,0,0)~EXIT
IF ~Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~THEN REPLY @68DO~GiveItemCreate("dagg09","CVSandr",1,0,0)~EXIT
IF ~Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01")~THEN REPLY @69DO~GiveItemCreate("K0ROD01","CVSandr",1,0,0)~EXIT
IF ~Global("ItemHenri","GLOBAL",1) !PartyHasItem("Sanhenri")~THEN REPLY @88DO~GiveItemCreate("Sanhenri","CVSandr",1,0,0)~EXIT
IF ~Global("Itemfflar","GLOBAL",1) !PartyHasItem("compon03")~THEN REPLY @121DO~GiveItemCreate("compon03","CVSandr",1,0,0)~EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01a")GlobalLT("SanBeginRTF","GLOBAL",1)~THEN REPLY @116DO~GiveItemCreate("plot01a","CVSandr",1,0,0)~EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01b")GlobalLT("SanBeginRTF","GLOBAL",1)~THEN REPLY @117DO~GiveItemCreate("plot01b","CVSandr",1,0,0)~EXIT
IF ~Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~THEN REPLY @56DO~GiveItemCreate("sw1h31","CVSandr",1,0,0)~EXIT
IF ~Global("ItembluWK","GLOBAL",1) !PartyHasItem("Plot01j") ~THEN REPLY @122DO~GiveItemCreate("Plot01j","CVSandr",1,0,0)~EXIT
IF ~Global("ItemgreWK","GLOBAL",1) !PartyHasItem("Plot01k") ~THEN REPLY @123DO~GiveItemCreate("Plot01k","CVSandr",1,0,0)~EXIT
IF~Global("ItemhornR","GLOBAL",1) !PartyHasItem("Compon13")~THEN REPLY @124DO~GiveItemCreate("Compon13","CVSandr",1,0,0)~EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~THEN REPLY @52DO~GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~EXIT
IF~Global("ItemhornL","GLOBAL",1) !PartyHasItem("Compon12")~THEN REPLY @125DO~GiveItemCreate("Compon12","CVSandr",1,0,0)~EXIT
IF~Global("Itemcirn","GLOBAL",1) !PartyHasItem("Compon17")~THEN REPLY @126DO~GiveItemCreate("Compon17","CVSandr",1,0,0)~EXIT
IF~Global("Itemixil","GLOBAL",1) !PartyHasItem("dagg23")~THEN REPLY @127DO~GiveItemCreate("dagg23","CVSandr",1,0,0)~EXIT
IF~Global("Itemheroc","GLOBAL",1) !PartyHasItem("Helm31")~THEN REPLY @128DO~GiveItemCreate("helm31","CVSandr",1,0,0)~EXIT
IF~Global("PlayerThiefGuild","GLOBAL",1) !PartyHasItem("TSKey")~THEN REPLY @118DO~GiveItemCreate("TSKey",Player1,1,0,0)~EXIT
IF ~!PartyHasItem("misc6w")~THEN REPLY @119GOTO ParcMkStake
IF~~THEN REPLY@29EXIT
END

IF ~~THEN BEGIN Choice1
SAY @129
IF ~~THEN REPLY @130GOTO Choice4
IF ~Global("CVAR0400","GLOBAL",1)~THEN REPLY @131GOTO Choice5
IF ~Global("CVAR0800","GLOBAL",1)~THEN REPLY @132GOTO Choice6
IF ~Global("CVAR0300","GLOBAL",1)~THEN REPLY @133GOTO Choice7
IF ~Global("CVAR0500","GLOBAL",1)~THEN REPLY @134GOTO Choice8
IF ~Global("CVAR0900","GLOBAL",1)~THEN REPLY @135GOTO Choice9
IF ~Global("CVAR1000","GLOBAL",1)~THEN REPLY @136GOTO Choice10
IF ~Global("CVAR0020","GLOBAL",1)~THEN REPLY @137GOTO Choice10
IF ~Global("CVAR1300","GLOBAL",1)~THEN REPLY @138GOTO Choice11
IF ~Global("CVAR1100","GLOBAL",1)~THEN REPLY @139GOTO Choice12
IF ~Global("CVAR1404","GLOBAL",1)~THEN REPLY @140GOTO Choice13
IF ~OR(10)
    Global("CVAR1200","GLOBAL",1)
    Global("CVAR2000","GLOBAL",1)
    Global("CVAR1900","GLOBAL",1)
    Global("CVAR1600","GLOBAL",1)
    Global("CVAR2300","GLOBAL",1)
    Global("CVAR2100","GLOBAL",1)
    Global("CVAR2500","GLOBAL",1)
    Global("CVAR1700","GLOBAL",1)
    Global("CVAR1800","GLOBAL",1)
    Global("CVAR2600","GLOBAL",1)~THEN REPLY@141GOTO Choice2
IF~OR(8)
    Global("CVRR3900","GLOBAL",1)
    Global("CVRR5100","GLOBAL",1)
    Global("CVar4230","GLOBAL",1)
    Global("CVRR3100","GLOBAL",1)
    Global("CVRR3300","GLOBAL",1)
    Global("CVdd3300","GLOBAL",1)
    Global("NomoranPart1","GLOBAL",1)
    GlobalGT("Chapter","GLOBAL",19)~THEN REPLY @142 GOTO Choice25
IF ~~THEN REPLY @143EXIT
END
                                                                           
IF ~~THEN BEGIN Choice2
SAY @144
IF ~Global("CVAR1200","GLOBAL",1)~THEN REPLY @145GOTO Choice14
IF ~Global("CVAR2000","GLOBAL",1)~THEN REPLY @146GOTO Choice15
IF ~Global("CVAR1900","GLOBAL",1)~THEN REPLY @147GOTO Choice16
IF ~Global("CVAR1600","GLOBAL",1)~THEN REPLY @148GOTO Choice17
IF ~Global("CVAR2300","GLOBAL",1)~THEN REPLY @149DO ~SetGlobal("SanTravel","GLOBAL",97)~EXIT
IF ~Global("CVAR2100","GLOBAL",1)~THEN REPLY @150GOTO Choice18
IF ~Global("CVAR2500","GLOBAL",1)~THEN REPLY @151DO ~SetGlobal("SanTravel","GLOBAL",104)~EXIT
IF ~Global("CVAR1700","GLOBAL",1)~THEN REPLY @152DO ~SetGlobal("SanTravel","GLOBAL",105)~EXIT
IF ~Global("CVAR2600","GLOBAL",1)~THEN REPLY @153DO ~SetGlobal("SanTravel","GLOBAL",107)~EXIT
IF ~Global("CVAR1800","GLOBAL",1)~THEN REPLY @154DO ~SetGlobal("SanTravel","GLOBAL",106)~EXIT
IF ~Global("CVAR2800","GLOBAL",1)~THEN REPLY @155GOTO Choice19
IF ~Global("CVAR6400","GLOBAL",1)~THEN REPLY @156GOTO Choice3
IF~OR(8)
    Global("CVRR3900","GLOBAL",1)
    Global("CVRR5100","GLOBAL",1)
    Global("CVar4230","GLOBAL",1)
    Global("CVRR3100","GLOBAL",1)
    Global("CVRR3300","GLOBAL",1)
    Global("CVdd3300","GLOBAL",1)
    Global("NomoranPart1","GLOBAL",1)
    GlobalGT("Chapter","GLOBAL",19)~THEN REPLY @142 GOTO Choice25
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice3
SAY @144
IF ~Global("CVAR3000","GLOBAL",1)~THEN REPLY @158GOTO Choice20
IF ~Global("CVAR6400","GLOBAL",1)~THEN REPLY @159DO ~SetGlobal("SanTravel","GLOBAL",146)~EXIT
IF ~Global("CVAR5202","GLOBAL",1)~THEN REPLY @160DO ~SetGlobal("SanTravel","GLOBAL",128)~EXIT
IF ~Global("RZAR5200","GLOBAL",1)~THEN REPLY @161GOTO Choice21
IF ~Global("CVAR5203","GLOBAL",1)~THEN REPLY @162DO ~SetGlobal("SanTravel","GLOBAL",129)~EXIT
IF ~Global("RZAR6300","GLOBAL",1)~THEN REPLY @163DO ~SetGlobal("SanTravel","GLOBAL",145)~EXIT
IF ~Global("CVAR5500","GLOBAL",1)~THEN REPLY @164GOTO Choice22
IF ~Global("CVAR6000","GLOBAL",1)~THEN REPLY @165GOTO Choice23
IF ~Global("CVAR6100","GLOBAL",1)~THEN REPLY @166 GOTO Choice24
IF~Global("DMWWGroveRevealed","GLOBAL",1)~THEN REPLY @167DO ~SetGlobal("SanTravel","GLOBAL",147)~EXIT
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice4
SAY @168
IF ~~THEN REPLY @169DO ~SetGlobal("SanTravel","GLOBAL",1)~EXIT
IF ~Global("RZAR0702","GLOBAL",1)~THEN REPLY @170DO ~SetGlobal("SanTravel","GLOBAL",2)~EXIT
IF ~Global("CVAR0704","GLOBAL",1)~THEN REPLY @171DO ~SetGlobal("SanTravel","GLOBAL",3)~EXIT
IF ~Global("RZAR0607","GLOBAL",1)~THEN REPLY @172DO ~SetGlobal("SanTravel","GLOBAL",4)~EXIT
IF ~Global("RZAR0709","GLOBAL",1)~THEN REPLY @173DO ~SetGlobal("SanTravel","GLOBAL",5)~EXIT
IF ~Global("RZAR0706","GLOBAL",1)~THEN REPLY @174DO ~SetGlobal("SanTravel","GLOBAL",6)~EXIT
IF ~Global("RZAR0707","GLOBAL",1)~THEN REPLY @175DO ~SetGlobal("SanTravel","GLOBAL",7)~EXIT
IF ~Global("CVAR0703","GLOBAL",1)~THEN REPLY @176DO ~SetGlobal("SanTravel","GLOBAL",8)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN Choice5
SAY @168
IF ~Global("CVAR0400","GLOBAL",1)~THEN REPLY @177DO ~SetGlobal("SanTravel","GLOBAL",9)~EXIT
IF ~Global("CVAR0406","GLOBAL",1)Global("SanBeginRTF","GLOBAL",0)~THEN REPLY @178DO ~SetGlobal("SanTravel","GLOBAL",10)~EXIT
IF ~Global("CVAR0404","GLOBAL",1)~THEN REPLY @179DO ~SetGlobal("SanTravel","GLOBAL",11)~EXIT
IF ~Global("RZAR0402","GLOBAL",1)~THEN REPLY @180DO ~SetGlobal("SanTravel","GLOBAL",12)~EXIT
IF ~Global("RZAR0405","GLOBAL",1)~THEN REPLY @181DO ~SetGlobal("SanTravel","GLOBAL",13)~EXIT
IF ~Global("CVAR0411","GLOBAL",1)~THEN REPLY @182GOTO TrSphere
IF ~Global("RZAR0311","GLOBAL",1)~THEN REPLY @183DO ~SetGlobal("SanTravel","GLOBAL",18)~EXIT
IF ~Global("CVAR0408","GLOBAL",1)~THEN REPLY @176DO ~SetGlobal("SanTravel","GLOBAL",19)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN TrSphere
SAY @168
IF ~Global("CVAR0411","GLOBAL",1)~THEN REPLY @184DO ~SetGlobal("SanTravel","GLOBAL",14)~EXIT
IF ~Global("RZAR0410","GLOBAL",1)~THEN REPLY @185DO ~SetGlobal("SanTravel","GLOBAL",15)~EXIT
IF ~Global("RZAR0412","GLOBAL",1)~THEN REPLY @186DO ~SetGlobal("SanTravel","GLOBAL",16)~EXIT
IF ~Global("CVAR0413","GLOBAL",1)~THEN REPLY @187DO ~SetGlobal("SanTravel","GLOBAL",17)~EXIT
IF ~~THEN REPLY @157GOTO Choice5
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice6
SAY @168
IF ~Global("CVAR0800","GLOBAL",1)~THEN REPLY @188DO ~SetGlobal("SanTravel","GLOBAL",20)~EXIT
IF ~Global("RZAR0801","GLOBAL",1)GlobalLT("Chapter","GLOBAL",18)~THEN REPLY @189 DO ~SetGlobal("SanTravel","GLOBAL",21)~EXIT
IF ~Global("RZAR0801","GLOBAL",1)GlobalGT("Chapter","GLOBAL",17)~THEN REPLY @189DO ~SetGlobal("SanTravel","GLOBAL",120)~EXIT
IF ~Global("RZAR0803","GLOBAL",1)GlobalLT("Chapter","GLOBAL",18)~THEN REPLY @190DO ~SetGlobal("SanTravel","GLOBAL",22)~EXIT
IF ~Global("RZAR0803","GLOBAL",1)GlobalGT("Chapter","GLOBAL",17)~THEN REPLY @190DO ~SetGlobal("SanTravel","GLOBAL",121)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice7
SAY @168
IF ~Global("CVAR0300","GLOBAL",1)~THEN REPLY @191DO ~SetGlobal("SanTravel","GLOBAL",25)~EXIT
IF ~Global("CVAR0308","GLOBAL",1)~THEN REPLY @192DO ~SetGlobal("SanTravel","GLOBAL",26)~EXIT
IF ~Global("CVAR0334","GLOBAL",1)~THEN REPLY @193DO ~SetGlobal("SanTravel","GLOBAL",27)~EXIT
IF ~GlobalLT("PlayerThiefGuild","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~THEN REPLY @194DO ~SetGlobal("SanTravel","GLOBAL",28)~EXIT
IF ~GlobalGT("PlayerThiefGuild","GLOBAL",0)
    Global("CVAR0302","GLOBAL",1)~THEN REPLY @195DO ~SetGlobal("SanTravel","GLOBAL",35)~EXIT
IF ~Global("RZAR0305","GLOBAL",1)~THEN REPLY @196GOTO ThievGuil
IF ~Global("CVAR0313","GLOBAL",1)~THEN REPLY @197DO ~SetGlobal("SanTravel","GLOBAL",36)~EXIT
IF ~Global("CVAR0319","GLOBAL",1)~THEN REPLY @198DO ~SetGlobal("SanTravel","GLOBAL",37)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN ThievGuil
SAY @168
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~THEN REPLY @199DO ~SetGlobal("SanTravel","GLOBAL",29)~EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~THEN REPLY @199DO ~SetGlobal("SanTravel","GLOBAL",32)~EXIT
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("RZAR0307","GLOBAL",1)~THEN REPLY @200DO ~SetGlobal("SanTravel","GLOBAL",30)~EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("RZAR0307","GLOBAL",1)~THEN REPLY @200DO ~SetGlobal("SanTravel","GLOBAL",34)~EXIT
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0306","GLOBAL",1)~THEN REPLY @201DO ~SetGlobal("SanTravel","GLOBAL",31)~EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0306","GLOBAL",1)~THEN REPLY @201DO ~SetGlobal("SanTravel","GLOBAL",33)~EXIT
IF ~~THEN REPLY @157GOTO Choice7
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice8
SAY @168
IF ~Global("CVAR0500","GLOBAL",1)~THEN REPLY @202DO ~SetGlobal("SanTravel","GLOBAL",38)~EXIT
IF ~Global("RZAR0509","GLOBAL",1)~THEN REPLY @203GOTO FiveKeg
IF ~Global("RZAR0512","GLOBAL",1)~THEN REPLY @204DO ~SetGlobal("SanTravel","GLOBAL",43)~EXIT
IF ~Global("RZAR0513","GLOBAL",1)~THEN REPLY @205DO ~SetGlobal("SanTravel","GLOBAL",44)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN FiveKeg
SAY @168
IF ~Global("Playhouse","GLOBAL",0)
    Global("RZAR0509","GLOBAL",1)~THEN REPLY @206DO ~SetGlobal("SanTravel","GLOBAL",39)~EXIT
IF ~GlobalGT("Playhouse","GLOBAL",0)
    Global("RZAR0509","GLOBAL",1)~THEN REPLY @206DO ~SetGlobal("SanTravel","GLOBAL",41)~EXIT
IF ~Global("Playhouse","GLOBAL",0)
    Global("CVAR0510","GLOBAL",1)~THEN REPLY @207DO ~SetGlobal("SanTravel","GLOBAL",40)~EXIT
IF~Global("CVar0511","GLOBAL",1)~THEN REPLY @208DO~SetGlobal("SanTravel","GLOBAL",201)~EXIT
IF ~GlobalGT("Playhouse","GLOBAL",0)
    Global("CVAR0510","GLOBAL",1)~THEN REPLY @207DO ~SetGlobal("SanTravel","GLOBAL",42)~
EXIT
IF ~~THEN REPLY @157GOTO Choice8
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice9
SAY @168
IF ~Global("CVAR0900","GLOBAL",1)~THEN REPLY @209DO ~SetGlobal("SanTravel","GLOBAL",45)~EXIT
IF ~Global("CVAR0901","GLOBAL",1)~THEN REPLY @204DO ~SetGlobal("SanTravel","GLOBAL",46)~EXIT
IF ~Global("CVAR0902","GLOBAL",1)~THEN REPLY @210DO ~SetGlobal("SanTravel","GLOBAL",47)~EXIT
IF ~Global("CVAR0903","GLOBAL",1)~THEN REPLY @211DO ~SetGlobal("SanTravel","GLOBAL",48)~EXIT
IF ~Global("CVAR0904","GLOBAL",1)~THEN REPLY @212DO ~SetGlobal("SanTravel","GLOBAL",49)~EXIT
IF ~Global("RZAR0701","GLOBAL",1)~THEN REPLY @213GOTO TempSew
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN TempSew
SAY @168
IF ~Global("RZAR0701","GLOBAL",1)~THEN REPLY @214DO ~SetGlobal("SanTravel","GLOBAL",50)~EXIT
IF ~Global("RZAR0705","GLOBAL",1)~THEN REPLY @215DO ~SetGlobal("SanTravel","GLOBAL",51)~EXIT
IF ~Global("CVAR0202","GLOBAL",1)~THEN REPLY @216DO ~SetGlobal("SanTravel","GLOBAL",52)~EXIT
IF ~Global("CVAR0205","GLOBAL",1)~THEN REPLY @217DO ~SetGlobal("SanTravel","GLOBAL",53)~EXIT
IF ~Global("CVAR0204","GLOBAL",1)~THEN REPLY @218DO ~SetGlobal("SanTravel","GLOBAL",54)~EXIT
IF ~Global("CVAR0203","GLOBAL",1)~THEN REPLY @219DO ~SetGlobal("SanTravel","GLOBAL",55)~EXIT
IF ~~THEN REPLY @157GOTO Choice9
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice10
SAY @168
IF ~Global("CVAR1000","GLOBAL",1)~THEN REPLY @220DO ~SetGlobal("SanTravel","GLOBAL",56)~EXIT
IF ~Global("CVAR1002","GLOBAL",1)Global("SanBeginRTF","GLOBAL",0)~THEN REPLY @221DO ~SetGlobal("SanTravel","GLOBAL",57)~EXIT
IF ~Global("RZAR1003","GLOBAL",1)~THEN REPLY @222DO ~SetGlobal("SanTravel","GLOBAL",58)~EXIT
IF ~Global("CVAR1005","GLOBAL",1)~THEN REPLY @223DO ~SetGlobal("SanTravel","GLOBAL",59)~EXIT
IF ~Global("CVAR1006","GLOBAL",1)~THEN REPLY @224DO ~SetGlobal("SanTravel","GLOBAL",60)~EXIT
IF ~Global("RZAR1010","GLOBAL",1)~THEN REPLY @225DO ~SetGlobal("SanTravel","GLOBAL",61)~EXIT
IF ~Global("CVYS0390","GLOBAL",1)~THEN REPLY @226DO ~SetGlobal("SanTravel","GLOBAL",220)~EXIT
IF ~Global("CVAR0020","GLOBAL",1)~THEN REPLY @227DO ~SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF ~Global("RZAR0021","GLOBAL",1)~THEN REPLY @228DO ~SetGlobal("SanTravel","GLOBAL",63)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice11
SAY @168
IF ~Global("PCKeepOwner","GLOBAL",0) Global("CVAR1300","GLOBAL",1)~THEN REPLY @229DO ~SetGlobal("SanTravel","GLOBAL",64)~EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0) Global("CVAR1300","GLOBAL",1)~THEN REPLY @229DO ~SetGlobal("SanTravel","GLOBAL",65)~EXIT
IF ~Global("PCKeepOwner","GLOBAL",0) Global("RZAR1302","GLOBAL",1)~THEN REPLY @230DO ~SetGlobal("SanTravel","GLOBAL",66)~EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0)Global("RZAR1302","GLOBAL",1)~THEN REPLY @230DO ~SetGlobal("SanTravel","GLOBAL",67)~EXIT
IF ~Global("PCKeepOwner","GLOBAL",0) Global("RZAR1303","GLOBAL",1)~THEN REPLY @231DO ~SetGlobal("SanTravel","GLOBAL",68)~EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0) Global("RZAR1303","GLOBAL",1)~THEN REPLY @231DO ~SetGlobal("SanTravel","GLOBAL",69)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice12
SAY @168
IF ~Global("CVAR1100","GLOBAL",1)~THEN REPLY @232DO ~SetGlobal("SanTravel","GLOBAL",70)~EXIT
IF ~Global("RangerProtector","GLOBAL",1)Global("CVAR1102","GLOBAL",1)~THEN REPLY @233DO ~SetGlobal("SanTravel","GLOBAL",71)~EXIT
IF ~Global("RZAR1104","GLOBAL",1)~THEN REPLY @234DO ~SetGlobal("SanTravel","GLOBAL",72)~EXIT
IF ~Global("RZAR1105","GLOBAL",1)~THEN REPLY @235DO ~SetGlobal("SanTravel","GLOBAL",73)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice13
SAY @168
IF ~!Dead("shadel") Global("CVAR1404","GLOBAL",1)~THEN REPLY @236DO ~SetGlobal("SanTravel","GLOBAL",74)~EXIT
IF ~Dead("shadel") Global("CVAR1404","GLOBAL",1)~THEN REPLY @236DO ~SetGlobal("SanTravel","GLOBAL",75)~EXIT
IF ~Global("CVAR1401","GLOBAL",1)~THEN REPLY @237DO ~SetGlobal("SanTravel","GLOBAL",76)~EXIT
IF ~Global("CVAR1402","GLOBAL",1)~THEN REPLY @238DO ~SetGlobal("SanTravel","GLOBAL",77)~EXIT
IF ~~THEN REPLY @157GOTO Choice1
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice14
SAY @168
IF ~Global("CVAR1200","GLOBAL",1)~THEN REPLY @145DO ~SetGlobal("SanTravel","GLOBAL",78)~EXIT
IF ~Global("RZAR1204","GLOBAL",1)~THEN REPLY @239DO ~SetGlobal("SanTravel","GLOBAL",79)~EXIT
IF ~Global("CVAR1201","GLOBAL",1)~THEN REPLY @240DO ~SetGlobal("SanTravel","GLOBAL",80)~EXIT
IF ~Global("CVAR1202","GLOBAL",1)~THEN REPLY @241DO ~SetGlobal("SanTravel","GLOBAL",81)~EXIT
IF ~Global("RZAR1203","GLOBAL",1)~THEN REPLY @242DO ~SetGlobal("SanTravel","GLOBAL",82)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice15
SAY @168
IF ~Global("CVAR2000","GLOBAL",1)~THEN REPLY @243DO ~SetGlobal("SanTravel","GLOBAL",83)~EXIT
IF ~Global("RZAR2001","GLOBAL",1)~THEN REPLY @244DO ~SetGlobal("SanTravel","GLOBAL",84)~EXIT
IF ~Global("RZAR2002","GLOBAL",1)~THEN REPLY @245DO ~SetGlobal("SanTravel","GLOBAL",85)~EXIT
IF ~Global("RZAR2007","GLOBAL",1)~THEN REPLY @234DO ~SetGlobal("SanTravel","GLOBAL",86)~EXIT
IF ~Global("RZAR2008","GLOBAL",1)~THEN REPLY @225DO ~SetGlobal("SanTravel","GLOBAL",87)~EXIT
IF ~Global("RZAR2010","GLOBAL",1)~THEN REPLY @246DO ~SetGlobal("SanTravel","GLOBAL",88)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice16
SAY @168
IF ~Global("CVAR1900","GLOBAL",1)~THEN REPLY @247DO ~SetGlobal("SanTravel","GLOBAL",89)~EXIT
IF ~Global("CVAR1901","GLOBAL",1)~THEN REPLY @248DO ~SetGlobal("SanTravel","GLOBAL",90)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice17
SAY @168
IF ~Global("CVAR1600","GLOBAL",1)~THEN REPLY @249DO ~SetGlobal("SanTravel","GLOBAL",91)~EXIT
IF ~Global("CVAR1602","GLOBAL",1)~THEN REPLY @250DO ~SetGlobal("SanTravel","GLOBAL",92)~EXIT
IF ~Global("RZAR1603","GLOBAL",1)~THEN REPLY @251DO ~SetGlobal("SanTravel","GLOBAL",93)~EXIT
IF ~Global("RZAR1604","GLOBAL",1)~THEN REPLY @252DO ~SetGlobal("SanTravel","GLOBAL",94)~EXIT
IF ~Global("RZAR1611","GLOBAL",1)~THEN REPLY @253DO ~SetGlobal("SanTravel","GLOBAL",95)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice18
SAY @168
IF ~Global("CVAR2100","GLOBAL",1)~THEN REPLY @254DO ~SetGlobal("SanTravel","GLOBAL",96)~EXIT
IF ~Global("RZAR2402","GLOBAL",1)~THEN REPLY @255DO ~SetGlobal("SanTravel","GLOBAL",98)~EXIT
IF ~Global("CVAR2400","GLOBAL",1)~THEN REPLY @256DO ~SetGlobal("SanTravel","GLOBAL",99)~EXIT
IF ~Global("CVAR2101","GLOBAL",1)~THEN REPLY @257DO ~SetGlobal("SanTravel","GLOBAL",100)~EXIT
IF ~Global("CVAR2200","GLOBAL",1)~THEN REPLY @258DO ~SetGlobal("SanTravel","GLOBAL",101)~EXIT
IF ~Global("CVAR2201","GLOBAL",1)~THEN REPLY @259DO ~SetGlobal("SanTravel","GLOBAL",102)~EXIT
IF ~Global("CVAR2202","GLOBAL",1)~THEN REPLY @260DO ~SetGlobal("SanTravel","GLOBAL",103)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice19
SAY @168
IF ~Global("CVAR2800","GLOBAL",1)~THEN REPLY @261DO ~SetGlobal("SanTravel","GLOBAL",108)~EXIT
IF ~Global("CVAR2801","GLOBAL",1)~THEN REPLY @262DO ~SetGlobal("SanTravel","GLOBAL",109)~EXIT
IF ~!Global("DefeatedJon","GLOBAL",2) Global("CVAR2803","GLOBAL",1)~THEN REPLY @263DO ~SetGlobal("SanTravel","GLOBAL",110)~EXIT
IF ~Global("DefeatedJon","GLOBAL",2) Global("CVAR2803","GLOBAL",1)~THEN REPLY @263 DO ~SetGlobal("SanTravel","GLOBAL",111)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice20
SAY @168
IF ~Global("CVAR3000","GLOBAL",1)~THEN REPLY @264DO ~SetGlobal("SanTravel","GLOBAL",112)~EXIT
IF ~Global("CVAR3001","GLOBAL",1)~THEN REPLY @184DO ~SetGlobal("SanTravel","GLOBAL",113)~EXIT
IF ~Global("CVAR3016","GLOBAL",1)~THEN REPLY @265DO ~SetGlobal("SanTravel","GLOBAL",116)~EXIT
IF ~Global("RZAR3003","GLOBAL",1)~THEN REPLY @266DO ~SetGlobal("SanTravel","GLOBAL",114)~EXIT
IF ~Global("CVAR3015","GLOBAL",1)~THEN REPLY @267DO ~SetGlobal("SanTravel","GLOBAL",115)~EXIT
IF ~Global("RZAR3017","GLOBAL",1)~THEN REPLY @268DO ~SetGlobal("SanTravel","GLOBAL",117)~EXIT
IF ~Global("RZAR3019","GLOBAL",1)~THEN REPLY @269DO ~SetGlobal("SanTravel","GLOBAL",118)~EXIT
IF ~!Global("HelmRitualDone","GLOBAL",1)Global("CVAR3020","GLOBAL",1)~THEN REPLY @270DO ~SetGlobal("SanTravel","GLOBAL",119)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice21
SAY @168
IF ~Global("RZAR5200","GLOBAL",1)~THEN REPLY @161DO ~SetGlobal("SanTravel","GLOBAL",126)~EXIT
IF ~Global("RZAR5201","GLOBAL",1)~THEN REPLY @271DO ~SetGlobal("SanTravel","GLOBAL",127)~EXIT
IF ~Global("RZAR5204","GLOBAL",1)~THEN REPLY @272DO ~SetGlobal("SanTravel","GLOBAL",130)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice22
SAY @168
IF ~Global("CVAR5500","GLOBAL",1)~THEN REPLY @164DO ~SetGlobal("SanTravel","GLOBAL",131)~EXIT
IF ~Global("RZAR5501","GLOBAL",1)~THEN REPLY @260DO ~SetGlobal("SanTravel","GLOBAL",132)~EXIT
IF ~Global("RZAR5502","GLOBAL",1)~THEN REPLY @244DO ~SetGlobal("SanTravel","GLOBAL",133)~EXIT
IF ~Global("RZAR5504","GLOBAL",1)~THEN REPLY @273DO ~SetGlobal("SanTravel","GLOBAL",134)~EXIT
IF ~Global("RZAR5509","GLOBAL",1)~THEN REPLY @274DO ~SetGlobal("SanTravel","GLOBAL",135)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice23
SAY @168
IF ~Global("CVAR6000","GLOBAL",1)~THEN REPLY @275DO ~SetGlobal("SanTravel","GLOBAL",136)~EXIT
IF ~Global("RZAR6003","GLOBAL",1)~THEN REPLY @276DO ~SetGlobal("SanTravel","GLOBAL",137)~EXIT
IF ~Global("RZAR6004","GLOBAL",1)~THEN REPLY @277DO ~SetGlobal("SanTravel","GLOBAL",138)~EXIT
IF ~Global("RZAR6005","GLOBAL",1)~THEN REPLY @278DO ~SetGlobal("SanTravel","GLOBAL",139)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice24
SAY @168
IF ~Global("CVAR6100","GLOBAL",1)~THEN REPLY @166DO ~SetGlobal("SanTravel","GLOBAL",140)~EXIT
IF ~Global("RZAR6101","GLOBAL",1)~THEN REPLY @279DO ~SetGlobal("SanTravel","GLOBAL",141)~EXIT
IF ~Global("CVAR6104","GLOBAL",1)~THEN REPLY @280DO ~SetGlobal("SanTravel","GLOBAL",142)~EXIT
IF ~Global("RZAR6106","GLOBAL",1)~THEN REPLY @281DO ~SetGlobal("SanTravel","GLOBAL",143)~EXIT
IF ~Global("CVAR6108","GLOBAL",1)~THEN REPLY @282DO ~SetGlobal("SanTravel","GLOBAL",144)~EXIT
IF ~~THEN REPLY @157GOTO Choice3
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice25
SAY @168
IF ~Global("CVRR3900","GLOBAL",1)~THEN REPLY @283DO ~SetGlobal("SanTravel","GLOBAL",200)~
EXIT
IF~Global("CVRR5100","GLOBAL",1)~THEN REPLY @284GOTO Choice27
IF~Global("CVar4230","GLOBAL",1)~THEN REPLY @285DO ~SetGlobal("SanTravel","GLOBAL",202)~EXIT
IF~Global("CVrr3100","GLOBAL",1)~THEN REPLY @286DO ~SetGlobal("SanTravel","GLOBAL",204)~EXIT
IF~Global("CVrr3300","GLOBAL",1)~THEN REPLY @287DO ~SetGlobal("SanTravel","GLOBAL",203)~
EXIT
IF~GlobalGT("EilistraeeBegining","GLOBAL",1) ~THEN REPLY @288DO ~SetGlobal("SanTravel","GLOBAL",205)~
EXIT
IF~Global("CVdd3300","GLOBAL",1)!Global("riatavinblitz","GLOBAL",2)~THEN REPLY @289DO ~SetGlobal("SanTravel","GLOBAL",206)~EXIT
IF~Global("CVdd3300","GLOBAL",1)Global("riatavinblitz","GLOBAL",2)~THEN REPLY @289DO ~SetGlobal("riatavinblitz","GLOBAL",3)~EXIT
IF~Global("CVdd1000","GLOBAL",1)~THEN REPLY @290DO ~SetGlobal("SanTravel","GLOBAL",212)~EXIT
IF~Global("CVar3610","GLOBAL",1)~THEN REPLY @291DO ~SetGlobal("SanTravel","GLOBAL",213)~EXIT
IF~Global("NomoranPart1","GLOBAL",1)~THEN REPLY @292DO~SetGlobal("SanTravel","GLOBAL",223)~EXIT
IF ~~THEN REPLY @157GOTO Choice2
IF ~~THEN REPLY @143EXIT
END

IF ~~THEN BEGIN Choice26
SAY @293
IF ~~THEN EXIT
END

IF~~THEN BEGIN Choice27
SAY@294
IF ~~THEN EXIT
END    

IF~~THEN BEGIN RTFChoice
SAY@295
IF~RandomNum(2,1)~THEN REPLY @296DO ~SetGlobal("SanTravel","GLOBAL",400)~EXIT
IF~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY @296DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",400)~EXIT
IF~Global("CVAR7900","GLOBAL",1)RandomNum(2,1)~THEN REPLY @297DO ~SetGlobal("SanTravel","GLOBAL",405)~EXIT
IF~Global("CVAR7900","GLOBAL",1)RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY @297DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",405)~EXIT
IF~Global("CVAR6800","GLOBAL",1)RandomNum(2,1)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY @298DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",403)~EXIT
IF~Global("CVAR6800","GLOBAL",1)RandomNum(2,2)~THEN REPLY @298DO ~SetGlobal("SanTravel","GLOBAL",403)~EXIT
IF~~THEN REPLY @299DO~SetGlobal("SanTravel","GLOBAL",302)~EXIT
IF~~THEN REPLY @300DO~SetGlobal("SanTravel","GLOBAL",303)~EXIT
IF~GlobalGT("SanRTFPlot1","GLOBAL",7)~THEN REPLY @301DO~SetGlobal("SanTravel","GLOBAL",401)~EXIT
IF ~Global("CVAR0020","GLOBAL",1)~THEN REPLY @302DO ~SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF ~~THEN REPLY @303DO ~SetGlobal("SanTravel","GLOBAL",45)~EXIT
IF ~~THEN REPLY @220DO ~SetGlobal("SanTravel","GLOBAL",56)~EXIT
IF ~RandomNum(2,1)~THEN REPLY @164DO ~SetGlobal("SanTravel","GLOBAL",131)~EXIT
IF ~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY @164DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",131)~EXIT
IF ~RandomNum(2,1)~THEN REPLY @304DO ~SetGlobal("SanTravel","GLOBAL",70)~EXIT
IF ~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY @304DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",70)~EXIT
IF ~~THEN REPLY @305GOTO RTFChoice2
END

IF ~~THEN BEGIN RTFChoice2
SAY @168
IF ~Global("CVRR3900","GLOBAL",1)~THEN REPLY @283DO ~SetGlobal("SanTravel","GLOBAL",200)~
EXIT
IF~Global("CVRR5100","GLOBAL",1)~THEN REPLY @284GOTO Choice27
IF~Global("CVar4230","GLOBAL",1)~THEN REPLY @285DO ~SetGlobal("SanTravel","GLOBAL",202)~EXIT
IF~Global("CVrr3100","GLOBAL",1)~THEN REPLY @286DO ~SetGlobal("SanTravel","GLOBAL",204)~EXIT
IF~Global("CVrr3300","GLOBAL",1)~THEN REPLY @287DO ~SetGlobal("SanTravel","GLOBAL",203)~
EXIT
IF~GlobalGT("EilistraeeBegining","GLOBAL",1) ~THEN REPLY @288DO ~SetGlobal("SanTravel","GLOBAL",205)~
EXIT
IF ~~THEN REPLY @148DO ~SetGlobal("SanTravel","GLOBAL",91)~EXIT
IF~Global("CVdd3300","GLOBAL",1)!Global("riatavinblitz","GLOBAL",2)~THEN REPLY @289DO ~SetGlobal("SanTravel","GLOBAL",206)~EXIT
IF~Global("CVdd3300","GLOBAL",1)Global("riatavinblitz","GLOBAL",2)~THEN REPLY @289DO ~SetGlobal("riatavinblitz","GLOBAL",3)~EXIT
IF~Global("CVdd1000","GLOBAL",1)~THEN REPLY @290DO ~SetGlobal("SanTravel","GLOBAL",212)~EXIT
IF~Global("CVar3610","GLOBAL",1)~THEN REPLY @291DO ~SetGlobal("SanTravel","GLOBAL",213)~EXIT
IF ~~THEN REPLY @157GOTO RTFChoice
IF ~~THEN REPLY @143EXIT
END

IF~~THEN BEGIN RTFNo
SAY@306
IF ~~THEN EXIT
END



