BEGIN SANPARC

IF~ Global("SanparcT","GLOBAL",1)~ THEN BEGIN Sanparc1
SAY ~ What item shall I give you? ~
IF~~ THEN REPLY ~ Open my purse. ~ DO~ GiveItemCreate("Misc07","CVSandr",1000,0,0)~ EXIT
IF~~ THEN REPLY ~ Give me a present. ~ DO~ GiveItemCreate("Misc1I","CVSandr",1,0,0)~ EXIT
IF~~ THEN REPLY ~ Give me something from my treasure chest. ~ GOTO chest
IF~~THEN REPLY~ I need a magical item.~ GOTO magit
IF~~ THEN REPLY ~ We want to party a bit. ~ DO~ GiveItemCreate("Misc97","CVSandr",1,0,0)~ EXIT
IF~OR(2)Global("Dollgiven","LOCALS",0) AreaCheck("Ares01") ~ THEN REPLY ~ Give me something I may have forgotten. ~ DO~ GiveItemCreate("Sandoll","CVSandr",1,0,0) SetGlobal("Dollgiven","LOCALS",1)~ EXIT
IF~!Global("ENDOFBG1","GLOBAL",2)~THEN REPLY ~ Can you retrieve something I have lost?~ GOTO lostitem
IF~Global("ENDOFBG1","GLOBAL",2)GlobalLT("Chapter","GLOBAL",20)~THEN REPLY ~ Can you retrieve something I have lost?~ GOTO lostitemSoA
IF~Global("ENDOFBG1","GLOBAL",2)GlobalGT("Chapter","GLOBAL",19)~THEN REPLY ~ Can you retrieve something I have lost?~ GOTO lostitemToB
IF~ Global("SanCanTravel","GLOBAL",2) Global("SanBeginRTF","GLOBAL",0) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])GlobalLT("Chapter","GLOBAL",20)~ THEN REPLY~ We want to revisit a place we know.~ GOTO Choice1
IF~ Global("SanCanTravel","GLOBAL",2) Global("SanBeginRTF","GLOBAL",0) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])GlobalGT("Chapter","GLOBAL",19)~ THEN REPLY~ We want to revisit a place we know.~ GOTO Choice3
IF~ Global("SanCanTravel","GLOBAL",2) Global("SanNotTeleport","GLOBAL",2) CombatCounter(0) !See([ENEMY])~ THEN REPLY~ We want to revisit a place we know.~ GOTO Choice26
IF~ Global("SanCanTravel","GLOBAL",2) Global("SanNotTeleport","GLOBAL",4) CombatCounter(0) !See([ENEMY])~ THEN REPLY~ We want to revisit a place we know.~ GOTO Choice26
IF~ Global("SanCanTravel","GLOBAL",2) Global("SanNotTeleport","GLOBAL",6) CombatCounter(0) !See([ENEMY])~ THEN REPLY~ We want to revisit a place we know.~ GOTO RTFNo
IF~Global("SanDoPotn","GLOBAL",1) PartyHasItem("potn08") PartyHasItem("CVHeherb")~THEN REPLY~ Can you enhance this healing potion for us?~DO~ StartCutSceneMode() StartCutScene("CVhepo")~EXIT
IF~GlobalGT("SanBeginRTF","GLOBAL",1) Global("SanNotTeleport","GLOBAL",0) CombatCounter(0) !See([ENEMY])~ THEN REPLY~ We want to revisit a place we know.~ GOTO RTFChoice
END

IF~~THEN BEGIN chest
SAY~You have a rich collection of valuables.~
IF ~ Global("Itempearl","GLOBAL",1) NumItemsPartyLT("Misc36",15)~ THEN REPLY ~ A pearl.~ DO~ GiveItemCreate("Misc36","CVSandr",1,0,0)~ EXIT
IF~~THEN REPLY~ Some jewelry.~DO~ GiveItemCreate("Misc41","CVSandr",3,0,0)~ EXIT
IF ~ Global("Itemrosto","GLOBAL",1) !PartyHasItem("misc45")~ THEN REPLY ~ A rogue stone.~ DO~ GiveItemCreate("misc45","CVSandr",1,0,0)~ EXIT
IF ~ GlobalGT("endofbg1","GLOBAL",1) !PartyHasItem("misc42")~ THEN REPLY ~ A diamond.~ DO~ GiveItemCreate("misc42","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSunSt","GLOBAL",1) !PartyHasItem("misc18")~ THEN REPLY ~ A sunstone.~ DO~ GiveItemCreate("misc18","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemasri","GLOBAL",1) !PartyHasItem("ring16")~ THEN REPLY ~An Angel Skin Ring.~ DO~ GiveItemCreate("ring16","CVSandr",1,0,0)~ EXIT
IF~Dead("Basilnad") !PartyHasItem("misc37") ~ THEN REPLY ~A sphene gem.~ DO~ GiveItemCreate("misc37","CVSandr",1,0,0)~ EXIT
END

IF~~THEN BEGIN magit                  
SAY~ These are the things I may give you this time:~
IF ~ Global("ItemPetScr","GLOBAL",1) !Global("ENDOFBG1","GLOBAL",2) GlobalGT("Chapter","GLOBAL",1)! PartyHasItem("scrlpet")~ THEN REPLY ~ A stone to flesh scroll.~ DO~ GiveItemCreate("scrlpet","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemPetScr","GLOBAL",1) Global("ENDOFBG1","GLOBAL",2) ! PartyHasItem("scrlpet")~ THEN REPLY ~ A stone to flesh scroll.~ DO~ GiveItemCreate("scrlpet","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemdemh","GLOBAL",1) !PartyHasItem("misc6m")~ THEN REPLY ~ A demon heart.~ DO~ GiveItemCreate("misc6m","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemskul","GLOBAL",1) !PartyHasItem("misc50")~ THEN REPLY ~A human skull.~ DO~ GiveItemCreate("misc50","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemwafro","GLOBAL",1) !PartyHasItem("wand06")~ THEN REPLY ~ A wand of frost.~ DO~ GiveItemCreate("wand06","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemcandl","GLOBAL",1) !PartyHasItem("Misc74")~ THEN REPLY ~ A candle.~ DO~ GiveItemCreate("Misc74","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemPtnFre","GLOBAL",1) !PartyHasItem("potn45")~ THEN REPLY ~ A potion of freedom.~ DO~ GiveItemCreate("potn45","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFormStb","GLOBAL",1) !PartyHasItem("amul24")~ THEN REPLY ~ An amulet of form stability.~ DO~ GiveItemCreate("amul24","CVSandr",1,0,0)~ EXIT
IF~OR(2) Dead("HLKang") LevelGT("CVSandr",19)~THEN REPLY~A scroll of freedom~DO~ GiveItemCreate("scrl9z","CVSandr",1,0,0)~ EXIT
IF~~THEN REPLY ~ A potion of invisibility.~ DO~ GiveItemCreate("potn10","CVSandr",1,0,0)~ EXIT
IF~~THEN REPLY~ Some non-magical weapon.~DO~ GiveItemCreate("staf01","CVSandr",1,0,0) GiveItemCreate("sw1h07",Player1,1,0,0) GiveItemCreate("dagg01",Player4,1,0,0)~EXIT
IF~~THEN REPLY~ Nothing.~EXIT
END

IF ~~THEN BEGIN lostitem
SAY ~ These are the items I can retrieve for you:~
IF ~ Global("ItemGS","GLOBAL",1) !PartyHasItem("Scrl3z")~ THEN REPLY ~Gorion's letter.~ DO~ GiveItemCreate("Scrl3z","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemAu","GLOBAL",1) !PartyHasItem("Scrlauto")~ THEN REPLY ~Three autograhs.~ DO~ GiveItemCreate("Scrlauto","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemport","GLOBAL",1) !PartyHasItem("Sanport")~ THEN REPLY ~Mother's portrait.~ DO~ GiveItemCreate("Sanport","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembash","GLOBAL",1) !PartyHasItem("ACQBOOK0")~ THEN REPLY ~Bashrik's journal.~ DO~ GiveItemCreate("ACQBOOK0","CVSandr",1,0,0)~ EXIT
IF ~ GlobalLT("HelpLandrin","GLOBAL",4) Global("ItemLandri","GLOBAL",1) OR(3) !PartyHasItem("Boot06") !PartyHasItem("Misc60") !PartyHasItem("Misc61")~ THEN REPLY ~The spider booty from Beregost.~ DO~ GiveItemCreate("Misc60","CVSandr",1,0,0) GiveItemCreate("Misc61","CVSandr",1,0,0) GiveItemCreate("Boot06","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemarte","GLOBAL",1) !PartyHasItem("X#TOME")~ THEN REPLY ~Imoen's Artifact.~ DO~ GiveItemCreate("X#TOME","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemval","GLOBAL",1) !PartyHasItem("sw2val")~ THEN REPLY ~Valiant, the sword.~ DO~ GiveItemCreate("sw2val","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembowl","GLOBAL",1) !PartyHasItem("misc53")~ THEN REPLY ~The water elemental bowl.~ DO~ GiveItemCreate("misc53","CVSandr",1,0,0)~ EXIT
IF~~ THEN REPLY ~A coin.~ DO~ GiveItemCreate("Misc07","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemanca","GLOBAL",1) !PartyHasItem("misc82")~ THEN REPLY ~An ancient armour.~ DO~ GiveItemCreate("misc82","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemfarkpa","GLOBAL",1) !PartyHasItem("CVFarkpa")~ THEN REPLY ~The Sharkta Fai Papers.~ DO~ GiveItemCreate("CVFarkpa","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemperdsw","GLOBAL",1) !PartyHasItem("SW1H17")~ THEN REPLY ~Perdue's Sword.~ DO~ GiveItemCreate("SW1H17","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemnesdag","GLOBAL",1) !PartyHasItem("Dagg06")~ THEN REPLY ~Nester's Dagger.~ DO~ GiveItemCreate("Dagg06","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtoid","GLOBAL",1) !PartyHasItem("misc48")~ THEN REPLY ~Kozah's Idol.~ DO~ GiveItemCreate("misc48","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemradia","GLOBAL",1) !PartyHasItem("SANORDI")~ THEN REPLY ~The diary of a Rashemen scout.~ DO~ GiveItemCreate("SANORDI","CVSandr",1,0,0)~ EXIT
IF~ Global("Itemmirilet","GLOBAL",1) !PartyHasItem("SCRL3I") ~ THEN REPLY ~ Mirianne's letter~ DO~ GiveItemCreate("SCRL3I","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itempiclo1","GLOBAL",1) !PartyHasItem("SANwi1")~ THEN REPLY ~Viconia's cloth piece.~ DO~ GiveItemCreate("SANwi1","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itempiclo3","GLOBAL",1) !PartyHasItem("SANwi3")~ THEN REPLY ~The cloth piece from the Firewine.~ DO~ GiveItemCreate("SANwi3","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itempiclo2","GLOBAL",1) !PartyHasItem("SANwi2")~ THEN REPLY ~Dynaheir's cloth piece.~ DO~ GiveItemCreate("SANwi2","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemulcbo","GLOBAL",1) !PartyHasItem("BOOK54")~ THEN REPLY ~ The Book for the Ulcaster Ghost.~ DO~ GiveItemCreate("BOOK54","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembreir","GLOBAL",1) !PartyHasItem("aciron")~ THEN REPLY ~ A piece of pure iron.~ DO~ GiveItemCreate("aciron","CVSandr",1,0,0)~ EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~ THEN REPLY ~ The Ice Slasher axe.~DO~ GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemnibscrl","GLOBAL",1) !PartyHasItem("NTPBLET1")~ THEN REPLY ~ The scroll for the Firewine Ruins.~ DO~ GiveItemCreate("NTPBLET1","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemd3book","GLOBAL",1) !PartyHasItem("book36")~ THEN REPLY ~ The story of the Dead Three.~ DO~ GiveItemCreate("book36","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembospi","GLOBAL",1) !PartyHasItem("boot02")~ THEN REPLY ~ Spider's boots of stealth.~ DO~ GiveItemCreate("boot02","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~ THEN REPLY ~ The Daystar sword~ DO~ GiveItemCreate("sw1h31","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~ THEN REPLY ~ Lathander's influence, the blessed hammer.~ DO~ GiveItemCreate("hammlat","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtalcol","GLOBAL",1) !PartyHasItem("soaitm35")~ THEN REPLY ~ The talisman of cold resistance.~ DO~ GiveItemCreate("soaitm35","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtalfre","GLOBAL",1) !PartyHasItem("soaitm31")~ THEN REPLY ~ The talisman of free action.~ DO~ GiveItemCreate("soaitm31","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtalpoi","GLOBAL",1) !PartyHasItem("soaitm32")~ THEN REPLY ~ The talisman of immunity to poison.~ DO~ GiveItemCreate("soaitm32","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtalprt","GLOBAL",1) !PartyHasItem("soaitm33")~ THEN REPLY ~ The talisman of protection.~ DO~ GiveItemCreate("soaitm33","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemntk4","GLOBAL",1) !PartyHasItem("ntkeypb4")~ THEN REPLY ~ The key from the sunken house.~ DO~ GiveItemCreate("ntkeypb4","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemtalfir","GLOBAL",1) !PartyHasItem("soaitm34")~ THEN REPLY ~ The talisman of fire resistance.~ DO~ GiveItemCreate("soaitm34","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemvamprev","GLOBAL",1) !PartyHasItem("sw1h19")~ THEN REPLY ~ The Vampire's Revenge.~ DO~ GiveItemCreate("sw1h19","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~ THEN REPLY ~ Spider's Bane.~ DO~ GiveItemCreate("sw2h06","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemfwShi","GLOBAL",1) !PartyHasItem("ntshld02")~ THEN REPLY ~ The Shield of the Firewine.~ DO~ GiveItemCreate("ntshld02","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~ THEN REPLY ~ Imoen's pink fur coat.~ DO~ GiveItemCreate("imofurc","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~ THEN REPLY ~ A silver dagger against lycanthrops.~ DO~ GiveItemCreate("dagg09","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01") !PartyHasItem("K0ROD02")~ THEN REPLY ~ The Rod of Refuge.~ DO~ GiveItemCreate("K0ROD01","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFibSil","GLOBAL",1) !PartyHasItem("X#SILSH")~ THEN REPLY ~ Eddard Silvershield's Fibula.~ DO~ GiveItemCreate("X#SILSH","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemUnRun","GLOBAL",1) !PartyHasItem("book55")~ THEN REPLY ~ The History of the Unicorn Run.~ DO~ GiveItemCreate("book55","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemYagoB","GLOBAL",1) !PartyHasItem("book70")~ THEN REPLY ~ Yago's book of curses.~ DO~ GiveItemCreate("book70","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSeaCh","GLOBAL",1) !PartyHasItem("Misc1C")~ THEN REPLY ~ Sea charts for Balduran's Island.~ DO~ GiveItemCreate("Misc1C","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemmysda","GLOBAL",1) !PartyHasItem("SaMysDa") InParty("Imoen2") ~ THEN REPLY ~ Mystra's Temple Dagger~DO~ GiveItemCreate("SaMysDa","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemGopant","GLOBAL",1) !PartyHasItem("Misc47")~ THEN REPLY ~ Golden Pantalons.~ DO~ GiveItemCreate("Misc47","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFinka","GLOBAL",1) !PartyHasItem("SUFBOOKA")~ THEN REPLY ~ Finch's transcribed volumes from Candlekeep.~ DO~ GiveItemCreate("SUFBOOKA","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSwFi","GLOBAL",1) !PartyHasItem("SW1H53")~ THEN REPLY ~ A sword of fire.~ DO~ GiveItemCreate("SW1H53","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemntk3","GLOBAL",1) !PartyHasItem("ntkeypb3")~ THEN REPLY ~ A rusted dagger (Key to orc cicle).~ DO~ GiveItemCreate("ntkeypb3","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemntk2","GLOBAL",1) !PartyHasItem("ntkeypb2")~ THEN REPLY ~ The ring of the grave (Key to orc cicle).~ DO~ GiveItemCreate("ntkeypb2","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemntk1","GLOBAL",1) !PartyHasItem("ntmisc08")~ THEN REPLY ~ Symbol of Helm (Key to Ghotal's grave).~ DO~ GiveItemCreate("ntmisc08","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembashj","GLOBAL",1) !PartyHasItem("ACQBOOK0")~ THEN REPLY ~ Bashrik's journal.~ DO~ GiveItemCreate("ACQBOOK0","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFinkb","GLOBAL",1) !PartyHasItem("SUFBOOK2")~ THEN REPLY ~ Metalurgy Today, a book for Finch's library.~ DO~ GiveItemCreate("SUFBOOK2","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFinkp","GLOBAL",1) !PartyHasItem("SUFBOOKb")~ THEN REPLY ~ The Joy of Pudding, a book for Finch's library.~ DO~ GiveItemCreate("SUFBOOKb","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFink4","GLOBAL",1) !PartyHasItem("SUFBOOK4")~ THEN REPLY ~ Popular History of Nashkel, a book for Finch's library.~ DO~ GiveItemCreate("SUFBOOK4","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemBluDrag","GLOBAL",1) !PartyHasItem("BHBUDSTF")~ THEN REPLY ~ The Staff of the Blue Dragon.~ DO~ GiveItemCreate("BHBUDSTF","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itembo1n","GLOBAL",1) !PartyHasItem("sufbook1")~ THEN REPLY ~ Introduction to Faerun, a book for Finch's library..~ DO~ GiveItemCreate("sufbook1","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemDuInv","GLOBAL",1) !PartyHasItem("misc78")~ THEN REPLY ~ Invitation to the Ducal Palace.~ DO~ GiveItemCreate("misc78","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSumTan","GLOBAL",1) !PartyHasItem("f_sumtan")~ THEN REPLY ~An Abyssal Idol to summon a tanari.~ DO~ GiveItemCreate("f_sumtan","CVSandr",1,0,0)~ EXIT
IF~~THEN REPLY~ Nothing.~EXIT
END



IF ~~THEN BEGIN lostitemSoA
SAY ~ These are the items I can retrieve for you:~
IF ~ Global("Itemfarkpa","GLOBAL",1) !PartyHasItem("CVFarkpa")~ THEN REPLY ~The Sharkta Fai Papers.~ DO~ GiveItemCreate("CVFarkpa","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~ THEN REPLY ~ Lathander's influence, the blessed hammer.~ DO~ GiveItemCreate("hammlat","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~ THEN REPLY ~ Spider's Bane.~ DO~ GiveItemCreate("sw2h06","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~ THEN REPLY ~ Imoen's pink fur coat.~ DO~ GiveItemCreate("imofurc","CVSandr",1,0,0)~ EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~ THEN REPLY ~ The Ice Slasher axe.~DO~ GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~ THEN REPLY ~ A silver dagger against lycanthrops.~ DO~ GiveItemCreate("dagg09","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01")~ THEN REPLY ~ The Rod of Refuge.~ DO~ GiveItemCreate("K0ROD01","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemGopant","GLOBAL",1) !PartyHasItem("Misc47")~ THEN REPLY ~ Golden Pantalons.~ DO~ GiveItemCreate("Misc47","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemBluDrag","GLOBAL",1) !PartyHasItem("BHBUDSTF")~ THEN REPLY ~ The Staff of the Blue Dragon.~ DO~ GiveItemCreate("BHBUDSTF","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSumTan","GLOBAL",1) !PartyHasItem("f_sumtan")~ THEN REPLY ~An Abyssal Idol to summon a tanari.~ DO~ GiveItemCreate("f_sumtan","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemHenri","GLOBAL",1) !PartyHasItem("Sanhenri")~ THEN REPLY ~Henning's seal ring, his gift to Imoen.~ DO~ GiveItemCreate("Sanhenri","CVSandr",1,0,0)~ EXIT
IF~ Global("ItemNibtrvl","GLOBAL",1) !PartyHasItem("CVSkyS") Global("SanShauMeet","GLOBAL",0)!AreaCheck("ar3520")~ THEN REPLY ~ Nib's Travel Scroll.~ DO~ GiveItemCreate("CVSkyS","CVSandr",1,0,0)~ EXIT
IF~ Global("ItemTSkey","GLOBAL",1)~ THEN REPLY ~ <CHARNAME>'s strongbox key.~ DO~ GiveItemCreate("Tskey","CVSandr",1,0,0) ~ EXIT
IF~ Global("Itemsoulet","GLOBAL",1)OR(2) !PartyHasItem("cbltcnt1") !PartyHasItem("cbltcnt2")~ THEN REPLY ~ A letter signed GV and AK and a sealed letter with it.~ DO~
GiveItemCreate("cbltcnt1","CVSandr",1,0,0) GiveItemCreate("cbltcnt2","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemTormlet","GLOBAL",1) !PartyHasItem("YsLetel")~ THEN REPLY ~ Lief Torman's Letter to Elminster.~ DO~ GiveItemCreate("YsLetel","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemRune","GLOBAL",1)!PartyHasItem("aarering")~ THEN REPLY ~ The rune recall ring.~ DO~ GiveItemCreate("aarering","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemSlime","GLOBAL",1) !PartyHasItem("Iceslime")~ THEN REPLY ~ Slime Summoning Figurine.~ DO~ GiveItemCreate("Iceslime","CVSandr",1,0,0)~ EXIT
IF~Global("ItemDupC","GLOBAL",1) !PartyHasItem("CBMaldup")~ THEN REPLY ~The fake crown of horns.~ DO~ GiveItemCreate("CBMaldup","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itempomml","GLOBAL",1) !PartyHasItem("SW1H54C")~ THEN REPLY ~ The pommel of the Equalizer.~ DO~ GiveItemCreate("SW1H54C","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemacorn","GLOBAL",1) !PartyHasItem("Misc4n")~ THEN REPLY ~ The Dryad's Acorns.~ DO~ GiveItemCreate("Misc4n","CVSandr",1,0,0)~ EXIT
IF~Global("Itembenhe","GLOBAL",1)!PartyHasItem("newbeh1")~ THEN REPLY ~ Bengar's Helmet (missing wings)~ DO~ GiveItemCreate("newbeh1","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemgesbs","GLOBAL",1) !PartyHasItem("Bow19a")~ THEN REPLY ~ Gesen's Bow Shaft.~ DO~ GiveItemCreate("Bow19a","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemespmap","GLOBAL",1) !PartyHasItem("ddmap01")~ THEN REPLY ~ A map to Eshpurta.~ DO~ GiveItemCreate("ddmap01","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemletsk","GLOBAL",1) !PartyHasItem("misc6a")~ THEN REPLY ~ The letter of the skinner in the Bridge District.~ DO~ GiveItemCreate("misc6a","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemkangtor","GLOBAL",1) !PartyHasItem("miscay")~ THEN REPLY ~ Kangaxx' golden torso.~ DO~ GiveItemCreate("miscay","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemkangleg","GLOBAL",1) !PartyHasItem("miscaw")~ THEN REPLY ~ Kangaxx' golden legs and arms.~ DO~ GiveItemCreate("miscaw","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemHaerJwl","GLOBAL",1) !PartyHasItem("misc6x")~ THEN REPLY ~ Haer'Dalis' jewel.~ DO~ GiveItemCreate("misc6x","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemMekMir","GLOBAL",1) !PartyHasItem("misc6h")~ THEN REPLY ~ Mekrath's mirror.~ DO~ GiveItemCreate("misc6h","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemRavSpll","GLOBAL",1) !PartyHasItem("cmbook01")~ THEN REPLY ~ Raven's spellbook.~ DO~ GiveItemCreate("cmbook01","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~ THEN REPLY ~ The Daystar sword~ DO~ GiveItemCreate("sw1h31","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemMystBust","GLOBAL",1) !PartyHasItem("cmmisc03")~ THEN REPLY ~ Bust of Mystra.~ DO~ GiveItemCreate("cmmisc03","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemDragCp","GLOBAL",1) !PartyHasItem("Dragcap2")~ THEN REPLY ~ Fangor's Dragon Catcher.~ DO~ GiveItemCreate("Dragcap2","CVSandr",1,0,0)~ EXIT
IF~ Global("ItemHskin","GLOBAL",1)!PartyHasItem("leat22")~THEN REPLY ~ Human Flesh from the Skinner.~ DO~ GiveItemCreate("Leat22","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemcromf","GLOBAL",1) !PartyHasItem("scrlag")~ THEN REPLY ~ Crom Faeyr scroll.~ DO~ GiveItemCreate("scrlag","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemGensstr","GLOBAL",1) !PartyHasItem("Bow19b")~ THEN REPLY ~ Gensen's string.~ DO~ GiveItemCreate("Bow19b","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemeqbl","GLOBAL",1) !PartyHasItem("sw1h54b")~ THEN REPLY ~ Blade of the Equalizer.~ DO~ GiveItemCreate("sw1h54b","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemrayle","GLOBAL",1) !PartyHasItem("raynote")~ THEN REPLY ~ Rayic's letter to Elvan.~ DO~ GiveItemCreate("raynote","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemsewkey","GLOBAL",1) !PartyHasItem("key29")~ THEN REPLY ~ The sewer key.~ DO~ GiveItemCreate("key29","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemFisam","GLOBAL",1) !PartyHasItem("b!amace")~ THEN REPLY ~ The Fist of Amaunator.~ DO~ GiveItemCreate("b!amace","CVSandr",1,0,0)~ EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01a")~ THEN REPLY ~ Watcher's Keep ritual scroll.~DO~ GiveItemCreate("plot01a","CVSandr",1,0,0)~ EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01b")~ THEN REPLY ~ Watcher's Keep portal symbol.~DO~ GiveItemCreate("plot01b","CVSandr",1,0,0)~ EXIT
IF~Global("PlayerThiefGuild","GLOBAL",1) !PartyHasItem("TSKey")~ THEN REPLY ~<CHARNAME>'s stronghold key.~ DO~ GiveItemCreate("TSKey",Player1,1,0,0)~ EXIT
IF ~!PartyHasItem("misc6w")~ THEN REPLY ~ Can you provide us with some wooden stakes?~ GOTO ParcMkStake
IF~~THEN REPLY~ Nothing.~EXIT
END

IF~~ THEN BEGIN ParcMkStake
SAY ~ How about doing it yourself?~
IF~~THEN EXTERN CVSandrJ SanMkStake5
END

IF ~~THEN BEGIN lostitemToB
SAY ~ These are the items I can retrieve for you:~
IF ~ Global("ItemFisam","GLOBAL",1) !PartyHasItem("b!amace")~ THEN REPLY ~ The Fist of Amaunator.~ DO~ GiveItemCreate("b!amace","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemlatin","GLOBAL",1) !PartyHasItem("hammlat")~ THEN REPLY ~ Lathander's influence, the blessed hammer.~ DO~ GiveItemCreate("hammlat","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemspiba","GLOBAL",1) !PartyHasItem("sw2h06")~ THEN REPLY ~ Spider's Bane.~ DO~ GiveItemCreate("sw2h06","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemImoFur","GLOBAL",1) !PartyHasItem("imofurc")~ THEN REPLY ~ Imoen's pink fur coat.~ DO~ GiveItemCreate("imofurc","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemWerDag","GLOBAL",1) !PartyHasItem("dagg09")~ THEN REPLY ~ A silver dagger against lycanthrops.~ DO~ GiveItemCreate("dagg09","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemrodref","GLOBAL",1) !PartyHasItem("K0ROD01")~ THEN REPLY ~ The Rod of Refuge.~ DO~ GiveItemCreate("K0ROD01","CVSandr",1,0,0)~ EXIT
IF ~ Global("ItemHenri","GLOBAL",1) !PartyHasItem("Sanhenri")~ THEN REPLY ~Henning's seal ring, his gift to Imoen.~ DO~ GiveItemCreate("Sanhenri","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemfflar","GLOBAL",1) !PartyHasItem("compon03")~ THEN REPLY ~Fflar's sheath.~ DO~ GiveItemCreate("compon03","CVSandr",1,0,0)~ EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01a")GlobalLT("SanBeginRTF","GLOBAL",1)~ THEN REPLY ~ Watcher's Keep ritual scroll.~DO~ GiveItemCreate("plot01a","CVSandr",1,0,0)~ EXIT
IF~Global("ItemWKscrl","GLOBAL",1) !PartyHasItem("plot01b")GlobalLT("SanBeginRTF","GLOBAL",1)~ THEN REPLY ~ Watcher's Keep portal symbol.~DO~ GiveItemCreate("plot01b","CVSandr",1,0,0)~ EXIT
IF ~ Global("Itemdays4","GLOBAL",1) !PartyHasItem("sw1h31")~ THEN REPLY ~ The Daystar sword~ DO~ GiveItemCreate("sw1h31","CVSandr",1,0,0)~ EXIT
IF ~Global("ItembluWK","GLOBAL",1) !PartyHasItem("Plot01j") ~ THEN REPLY ~ Blue keystone from Watcher's Keep.~DO~ GiveItemCreate("Plot01j","CVSandr",1,0,0)~ EXIT
IF ~Global("ItemgreWK","GLOBAL",1) !PartyHasItem("Plot01k") ~ THEN REPLY ~ Green keystone from Watcher's Keep.~DO~ GiveItemCreate("Plot01k","CVSandr",1,0,0)~ EXIT
IF~ Global("ItemhornR","GLOBAL",1) !PartyHasItem("Compon13")~ THEN REPLY ~ Right animal horn.~ DO~ GiveItemCreate("Compon13","CVSandr",1,0,0)~ EXIT
IF~Global("Itemice5","GLOBAL",1) !PartyHasItem("F_Iceax5")~ THEN REPLY ~ The Ice Slasher axe.~DO~ GiveItemCreate("F_Iceax5","CVSandr",1,0,0)~ EXIT
IF~ Global("ItemhornL","GLOBAL",1) !PartyHasItem("Compon12")~ THEN REPLY ~ Left animal horn.~ DO~ GiveItemCreate("Compon12","CVSandr",1,0,0)~ EXIT
IF~ Global("Itemcirn","GLOBAL",1) !PartyHasItem("Compon17")~ THEN REPLY ~ Circlet of Netheril.~ DO~ GiveItemCreate("Compon17","CVSandr",1,0,0)~ EXIT
IF~Global("Itemixil","GLOBAL",1) !PartyHasItem("dagg23")~ THEN REPLY ~ Ixil's spike.~ DO~ GiveItemCreate("dagg23","CVSandr",1,0,0)~ EXIT
IF~Global("Itemheroc","GLOBAL",1) !PartyHasItem("Helm31")~ THEN REPLY ~ Helmet of the Rock.~ DO~ GiveItemCreate("helm31","CVSandr",1,0,0)~ EXIT
IF~Global("PlayerThiefGuild","GLOBAL",1) !PartyHasItem("TSKey")~ THEN REPLY ~<CHARNAME>'s stronghold key.~ DO~ GiveItemCreate("TSKey",Player1,1,0,0)~ EXIT
IF ~!PartyHasItem("misc6w")~ THEN REPLY ~ Can you provide us with some wooden stakes?~ GOTO ParcMkStake
IF~~THEN REPLY~ Nothing.~EXIT
END

IF ~~ THEN BEGIN Choice1
SAY ~Choose your destination area.~
IF ~~ THEN REPLY ~Waukeen's Promenade~ GOTO Choice4
IF ~Global("CVAR0400","GLOBAL",1)~ THEN REPLY ~The Slums~ GOTO Choice5
IF ~Global("CVAR0800","GLOBAL",1)~ THEN REPLY ~The Graveyard~ GOTO Choice6
IF ~Global("CVAR0300","GLOBAL",1)~ THEN REPLY ~The Docks~ GOTO Choice7
IF ~Global("CVAR0500","GLOBAL",1)~ THEN REPLY ~The Bridge~ GOTO Choice8
IF ~Global("CVAR0900","GLOBAL",1)~ THEN REPLY ~The Temple District~ GOTO Choice9
IF ~Global("CVAR1000","GLOBAL",1)~ THEN REPLY ~The Government District~ GOTO Choice10
IF ~Global("CVAR0020","GLOBAL",1)~ THEN REPLY ~The City Gates~ GOTO Choice10
IF ~Global("CVAR1300","GLOBAL",1)~ THEN REPLY ~De´Arnise keep~ GOTO Choice11
IF ~Global("CVAR1100","GLOBAL",1)~ THEN REPLY ~Umar Hills~ GOTO Choice12
IF ~Global("CVAR1404","GLOBAL",1)~ THEN REPLY ~The Temple Ruins~ GOTO Choice13
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
    Global("CVAR2600","GLOBAL",1)~ THEN REPLY~Next areas~ GOTO Choice2
IF~ OR(7)
    Global("CVRR3900","GLOBAL",1)
    Global("CVRR5100","GLOBAL",1)
    Global("CVar4230","GLOBAL",1)
    Global("CVRR3100","GLOBAL",1)
    Global("CVRR3300","GLOBAL",1)
    Global("CVdd3300","GLOBAL",1)
    GlobalGT("Chapter","GLOBAL",19)~ THEN REPLY ~Other Towns~  GOTO Choice25
IF ~~ THEN REPLY ~Nowhere~ EXIT
END
                                                                           
IF ~~ THEN BEGIN Choice2
SAY ~ Choose your destination.~
IF ~Global("CVAR1200","GLOBAL",1)~ THEN REPLY ~Windspear Hills~ GOTO Choice14
IF ~Global("CVAR2000","GLOBAL",1)~ THEN REPLY ~Trademeet~ GOTO Choice15
IF ~Global("CVAR1900","GLOBAL",1)~ THEN REPLY ~Druid's Cove~ GOTO Choice16
IF ~Global("CVAR1600","GLOBAL",1)~ THEN REPLY ~Brynnlaw~ GOTO Choice17
IF ~Global("CVAR2300","GLOBAL",1)~ THEN REPLY ~Sahuagin city~ DO ~SetGlobal("SanTravel","GLOBAL",97)~ EXIT
IF ~Global("CVAR2100","GLOBAL",1)~ THEN REPLY ~The Underdark~ GOTO Choice18
IF ~Global("CVAR2500","GLOBAL",1)~ THEN REPLY ~Underdark's Exit~ DO ~SetGlobal("SanTravel","GLOBAL",104)~ EXIT
IF ~Global("CVAR1700","GLOBAL",1)~ THEN REPLY ~Small Teeth Pass~ DO ~SetGlobal("SanTravel","GLOBAL",105)~ EXIT
IF ~Global("CVAR2600","GLOBAL",1)~ THEN REPLY ~Tethir Forest~ DO ~SetGlobal("SanTravel","GLOBAL",107)~ EXIT
IF ~Global("CVAR1800","GLOBAL",1)~ THEN REPLY ~Northern Forest of Tethir~ DO ~SetGlobal("SanTravel","GLOBAL",106)~ EXIT
IF ~Global("CVAR2800","GLOBAL",1)~ THEN REPLY ~Suldanessalar~ GOTO Choice19
IF~ OR(7)
    Global("CVRR3900","GLOBAL",1)
    Global("CVRR5100","GLOBAL",1)
    Global("CVar4230","GLOBAL",1)
    Global("CVRR3100","GLOBAL",1)
    Global("CVRR3300","GLOBAL",1)
    Global("CVdd3300","GLOBAL",1)
    GlobalGT("Chapter","GLOBAL",19)~ THEN REPLY ~Other Towns~  GOTO Choice25
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice3
SAY ~ Choose your destination.~
IF ~Global("CVAR3000","GLOBAL",1)~ THEN REPLY ~Watcher's Keep~ GOTO Choice20
IF ~Global("CVAR6400","GLOBAL",1)~ THEN REPLY ~North Forest River Area~ DO ~SetGlobal("SanTravel","GLOBAL",146)~ EXIT
IF ~Global("CVAR5202","GLOBAL",1)~ THEN REPLY ~Forest of Mir Temple~ DO ~SetGlobal("SanTravel","GLOBAL",128)~ EXIT
IF ~Global("RZAR5200","GLOBAL",1)~ THEN REPLY ~Marching Mountains~ GOTO Choice21
IF ~Global("CVAR5203","GLOBAL",1)~ THEN REPLY ~Siege Camp~ DO ~SetGlobal("SanTravel","GLOBAL",129)~ EXIT
IF ~Global("RZAR6300","GLOBAL",1)~ THEN REPLY ~The Oasis~ DO ~SetGlobal("SanTravel","GLOBAL",145)~ EXIT
IF ~Global("CVAR5500","GLOBAL",1)~ THEN REPLY ~Amkethran~ GOTO Choice22
IF ~Global("CVAR6000","GLOBAL",1)~ THEN REPLY ~Abazigal's Lair~GOTO Choice23
IF ~Global("CVAR6100","GLOBAL",1)~ THEN REPLY ~Sendai's Enclave~  GOTO Choice24
IF~Global("DMWWGroveRevealed","GLOBAL",1)~ THEN REPLY ~Ancient Grove~ DO ~SetGlobal("SanTravel","GLOBAL",147)~ EXIT
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice4
SAY ~State specifics.~
IF ~~ THEN REPLY ~Waukeen's Promenade outside~ DO ~SetGlobal("SanTravel","GLOBAL",1)~ EXIT
IF ~Global("RZAR0702","GLOBAL",1)~ THEN REPLY ~Adventurer's Mart~ DO ~SetGlobal("SanTravel","GLOBAL",2)~ EXIT
IF ~Global("CVAR0704","GLOBAL",1)~ THEN REPLY ~Mithrest Inn~ DO ~SetGlobal("SanTravel","GLOBAL",3)~ EXIT
IF ~Global("RZAR0607","GLOBAL",1)~ THEN REPLY ~Circus Tent~ DO ~SetGlobal("SanTravel","GLOBAL",4)~ EXIT
IF ~Global("RZAR0709","GLOBAL",1)~ THEN REPLY ~Den of the Seven Vales~ DO ~SetGlobal("SanTravel","GLOBAL",5)~ EXIT
IF ~Global("RZAR0706","GLOBAL",1)~ THEN REPLY ~Armory Shop~ DO ~SetGlobal("SanTravel","GLOBAL",6)~ EXIT
IF ~Global("RZAR0707","GLOBAL",1)~ THEN REPLY ~Enge's Shop~ DO ~SetGlobal("SanTravel","GLOBAL",7)~ EXIT
IF ~Global("CVAR0703","GLOBAL",1)~ THEN REPLY ~Ilmater temple~ DO ~SetGlobal("SanTravel","GLOBAL",8)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN Choice5
SAY ~State specifics.~
IF ~Global("CVAR0400","GLOBAL",1)~ THEN REPLY ~The Slums outside~ DO ~SetGlobal("SanTravel","GLOBAL",9)~ EXIT
IF ~Global("CVAR0406","GLOBAL",1)Global("SanBeginRTF","GLOBAL",0)~ THEN REPLY ~The Copper Coronet~ DO ~SetGlobal("SanTravel","GLOBAL",10)~ EXIT
IF ~Global("CVAR0404","GLOBAL",1)~ THEN REPLY ~Sewers beneath Slums~ DO ~SetGlobal("SanTravel","GLOBAL",11)~ EXIT
IF ~Global("RZAR0402","GLOBAL",1)~ THEN REPLY ~Jansen Home~ DO ~SetGlobal("SanTravel","GLOBAL",12)~ EXIT
IF ~Global("RZAR0405","GLOBAL",1)~ THEN REPLY ~Slaver's Compound~ DO ~SetGlobal("SanTravel","GLOBAL",13)~ EXIT
IF ~Global("CVAR0411","GLOBAL",1)~ THEN REPLY ~The Sphere~ GOTO TrSphere
IF ~Global("RZAR0311","GLOBAL",1)~ THEN REPLY ~Gaelen Bayle's House~ DO ~SetGlobal("SanTravel","GLOBAL",18)~ EXIT
IF ~Global("CVAR0408","GLOBAL",1)~ THEN REPLY ~Ilmater temple~ DO ~SetGlobal("SanTravel","GLOBAL",19)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN TrSphere
SAY ~State specifics.~
IF ~Global("CVAR0411","GLOBAL",1)~ THEN REPLY ~Entrance floor~ DO ~SetGlobal("SanTravel","GLOBAL",14)~ EXIT
IF ~Global("RZAR0410","GLOBAL",1)~ THEN REPLY ~Navigator´s room~ DO ~SetGlobal("SanTravel","GLOBAL",15)~ EXIT
IF ~Global("RZAR0412","GLOBAL",1)~ THEN REPLY ~Ice and Fire Room~ DO ~SetGlobal("SanTravel","GLOBAL",16)~ EXIT
IF ~Global("CVAR0413","GLOBAL",1)~ THEN REPLY ~Engine room~ DO ~SetGlobal("SanTravel","GLOBAL",17)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice5
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice6
SAY ~State specifics.~
IF ~Global("CVAR0800","GLOBAL",1)~ THEN REPLY ~Graveyard outside~ DO ~SetGlobal("SanTravel","GLOBAL",20)~ EXIT
IF ~Global("RZAR0801","GLOBAL",1)GlobalLT("Chapter","GLOBAL",18)~ THEN REPLY ~Beneath graveyard~  DO ~SetGlobal("SanTravel","GLOBAL",21)~ EXIT
IF ~Global("RZAR0801","GLOBAL",1)GlobalGT("Chapter","GLOBAL",17)~ THEN REPLY ~Beneath graveyard~ DO ~SetGlobal("SanTravel","GLOBAL",120)~ EXIT
IF ~Global("RZAR0803","GLOBAL",1)GlobalLT("Chapter","GLOBAL",18)~ THEN REPLY ~Bodhi´s lair~ DO ~SetGlobal("SanTravel","GLOBAL",22)~ EXIT
IF ~Global("RZAR0803","GLOBAL",1)GlobalGT("Chapter","GLOBAL",17)~ THEN REPLY ~Bodhi´s lair~ DO ~SetGlobal("SanTravel","GLOBAL",121)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice7
SAY ~State specifics.~
IF ~Global("CVAR0300","GLOBAL",1)~ THEN REPLY ~The Docks outside~ DO ~SetGlobal("SanTravel","GLOBAL",25)~ EXIT
IF ~Global("CVAR0308","GLOBAL",1)~ THEN REPLY ~Harper Hold~ DO ~SetGlobal("SanTravel","GLOBAL",26)~ EXIT
IF ~Global("CVAR0334","GLOBAL",1)~ THEN REPLY ~Cromwell~ DO ~SetGlobal("SanTravel","GLOBAL",27)~ EXIT
IF ~GlobalLT("PlayerThiefGuild","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~ THEN REPLY ~Mae'Vars Guild~ DO ~SetGlobal("SanTravel","GLOBAL",28)~ EXIT
IF ~GlobalGT("PlayerThiefGuild","GLOBAL",0)
    Global("CVAR0302","GLOBAL",1)~ THEN REPLY ~<CHARNAME>'s Guild~ DO ~SetGlobal("SanTravel","GLOBAL",35)~ EXIT
IF ~Global("RZAR0305","GLOBAL",1)~ THEN REPLY ~Shadow Thieves Building~ GOTO ThievGuil
IF ~Global("CVAR0313","GLOBAL",1)~ THEN REPLY ~Sea Bounty~ DO ~SetGlobal("SanTravel","GLOBAL",36)~ EXIT
IF ~Global("CVAR0319","GLOBAL",1)~ THEN REPLY ~Temple of Oghma~ DO ~SetGlobal("SanTravel","GLOBAL",37)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN ThievGuil
SAY ~State specifics.~
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~ THEN REPLY ~Shadow Thief guildhouse entrance~ DO ~SetGlobal("SanTravel","GLOBAL",29)~ EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0302","GLOBAL",1)~ THEN REPLY ~Shadow Thief guildhouse entrance~ DO ~SetGlobal("SanTravel","GLOBAL",32)~ EXIT
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("RZAR0307","GLOBAL",1)~ THEN REPLY ~Aran Linvail~ DO ~SetGlobal("SanTravel","GLOBAL",30)~ EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("RZAR0307","GLOBAL",1)~ THEN REPLY ~Aran Linvail~ DO ~SetGlobal("SanTravel","GLOBAL",34)~ EXIT
IF ~!Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0306","GLOBAL",1)~ THEN REPLY ~Renal's Lair~ DO ~SetGlobal("SanTravel","GLOBAL",31)~ EXIT
IF ~Global("WorkingForBodhi","GLOBAL",1)
    Global("CVAR0306","GLOBAL",1)~ THEN REPLY ~Renal's Lair~ DO ~SetGlobal("SanTravel","GLOBAL",33)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice7
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice8
SAY ~State specifics.~
IF ~Global("CVAR0500","GLOBAL",1)~ THEN REPLY ~Bridge outdoors~ DO ~SetGlobal("SanTravel","GLOBAL",38)~ EXIT
IF ~Global("RZAR0509","GLOBAL",1)~ THEN REPLY ~Five Flagon's Inn~ GOTO FiveKeg
IF ~Global("RZAR0512","GLOBAL",1)~ THEN REPLY ~Temple of Helm~ DO ~SetGlobal("SanTravel","GLOBAL",43)~ EXIT
IF ~Global("RZAR0513","GLOBAL",1)~ THEN REPLY ~Delosar's Inn~ DO ~SetGlobal("SanTravel","GLOBAL",44)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN FiveKeg
SAY ~State specifics.~
IF ~Global("Playhouse","GLOBAL",0)
    Global("RZAR0509","GLOBAL",1)~ THEN REPLY ~Inn Room~ DO ~SetGlobal("SanTravel","GLOBAL",39)~ EXIT
IF ~GlobalGT("Playhouse","GLOBAL",0)
    Global("RZAR0509","GLOBAL",1)~ THEN REPLY ~Inn Room~ DO ~SetGlobal("SanTravel","GLOBAL",41)~ EXIT
IF ~Global("Playhouse","GLOBAL",0)
    Global("CVAR0510","GLOBAL",1)~ THEN REPLY ~Playhouse~ DO ~SetGlobal("SanTravel","GLOBAL",40)~ EXIT
IF~ Global("CVar0511","GLOBAL",1)~ THEN REPLY ~ Inn Upstairs~ DO~ SetGlobal("SanTravel","GLOBAL",201)~ EXIT
IF ~GlobalGT("Playhouse","GLOBAL",0)
    Global("CVAR0510","GLOBAL",1)~ THEN REPLY ~Playhouse~ DO ~SetGlobal("SanTravel","GLOBAL",42)~
EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice8
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice9
SAY ~State specifics.~
IF ~Global("CVAR0900","GLOBAL",1)~ THEN REPLY ~Temples outdoor~ DO ~SetGlobal("SanTravel","GLOBAL",45)~ EXIT
IF ~Global("CVAR0901","GLOBAL",1)~ THEN REPLY ~Temple of Helm~ DO ~SetGlobal("SanTravel","GLOBAL",46)~ EXIT
IF ~Global("CVAR0902","GLOBAL",1)~ THEN REPLY ~Temple of Lathander~ DO ~SetGlobal("SanTravel","GLOBAL",47)~ EXIT
IF ~Global("CVAR0903","GLOBAL",1)~ THEN REPLY ~Order of the Radiant Heart ~ DO ~SetGlobal("SanTravel","GLOBAL",48)~ EXIT
IF ~Global("CVAR0904","GLOBAL",1)~ THEN REPLY ~Temple of Talos~ DO ~SetGlobal("SanTravel","GLOBAL",49)~ EXIT
IF ~Global("RZAR0701","GLOBAL",1)~ THEN REPLY ~The Sewers~ GOTO TempSew
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN TempSew
SAY ~State specifics.~
IF ~Global("RZAR0701","GLOBAL",1)~ THEN REPLY ~The main sewers~ DO ~SetGlobal("SanTravel","GLOBAL",50)~ EXIT
IF ~Global("RZAR0705","GLOBAL",1)~ THEN REPLY ~Mekrath´s hideout~ DO ~SetGlobal("SanTravel","GLOBAL",51)~ EXIT
IF ~Global("RZAR0202","GLOBAL",1)~ THEN REPLY ~The Unseeing Eye cult lair~ DO ~SetGlobal("SanTravel","GLOBAL",52)~ EXIT
IF ~Global("CVAR0205","GLOBAL",1)~ THEN REPLY ~Unseeing Eye´s hideout~ DO ~SetGlobal("SanTravel","GLOBAL",53)~ EXIT
IF ~Global("CVAR0204","GLOBAL",1)~ THEN REPLY ~Forgotten city~ DO ~SetGlobal("SanTravel","GLOBAL",54)~ EXIT
IF ~Global("CVAR0203","GLOBAL",1)~ THEN REPLY ~Temple of the Forgotten God~ DO ~SetGlobal("SanTravel","GLOBAL",55)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice9
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice10
SAY ~State specifics.~
IF ~Global("CVAR1000","GLOBAL",1)~ THEN REPLY ~Government Parc~ DO ~SetGlobal("SanTravel","GLOBAL",56)~ EXIT
IF ~Global("CVAR1002","GLOBAL",1)Global("SanBeginRTF","GLOBAL",0)~ THEN REPLY ~Council of Six Building~ DO ~SetGlobal("SanTravel","GLOBAL",57)~ EXIT
IF ~Global("RZAR1003","GLOBAL",1)~ THEN REPLY ~Firecam's Estate~ DO ~SetGlobal("SanTravel","GLOBAL",58)~ EXIT
IF ~Global("CVAR1005","GLOBAL",1)~ THEN REPLY ~Prison~ DO ~SetGlobal("SanTravel","GLOBAL",59)~ EXIT
IF ~Global("CVAR1006","GLOBAL",1)~ THEN REPLY ~Jysstev's Estate~ DO ~SetGlobal("SanTravel","GLOBAL",60)~ EXIT
IF ~Global("RZAR1010","GLOBAL",1)~ THEN REPLY ~Temple of Waukeen~ DO ~SetGlobal("SanTravel","GLOBAL",61)~ EXIT
IF ~Global("CVYS0390","GLOBAL",1)~ THEN REPLY ~ Government West~ DO ~SetGlobal("SanTravel","GLOBAL",220)~ EXIT
IF ~Global("CVAR0020","GLOBAL",1)~ THEN REPLY ~City Gates~ DO ~SetGlobal("SanTravel","GLOBAL",62)~ EXIT
IF ~Global("RZAR0021","GLOBAL",1)~ THEN REPLY ~Crooked Crane~ DO ~SetGlobal("SanTravel","GLOBAL",63)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice11
SAY ~State specifics.~
IF ~Global("PCKeepOwner","GLOBAL",0) Global("CVAR1300","GLOBAL",1)~ THEN REPLY ~Court of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",64)~ EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0) Global("CVAR1300","GLOBAL",1)~ THEN REPLY ~Court of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",65)~ EXIT
IF ~Global("PCKeepOwner","GLOBAL",0) Global("RZAR1302","GLOBAL",1)~ THEN REPLY ~First floor of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",66)~ EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0)Global("RZAR1302","GLOBAL",1)~ THEN REPLY ~First floor of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",67)~ EXIT
IF ~Global("PCKeepOwner","GLOBAL",0) Global("RZAR1303","GLOBAL",1)~ THEN REPLY ~Second floor of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",68)~ EXIT
IF ~GlobalGT("PCKeepOwner","GLOBAL",0) Global("RZAR1303","GLOBAL",1)~ THEN REPLY ~Second floor of de´Arnise keep~ DO ~SetGlobal("SanTravel","GLOBAL",69)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice12
SAY ~State specifics.~
IF ~Global("CVAR1100","GLOBAL",1)~ THEN REPLY ~Umar Hills outdoor~ DO ~SetGlobal("SanTravel","GLOBAL",70)~ EXIT
IF ~Global("RangerProtector","GLOBAL",1)Global("CVAR1102","GLOBAL",1)~ THEN REPLY ~Ranger´s cabin~ DO ~SetGlobal("SanTravel","GLOBAL",71)~ EXIT
IF ~Global("RZAR1104","GLOBAL",1)~ THEN REPLY ~Mayor's House~ DO ~SetGlobal("SanTravel","GLOBAL",72)~ EXIT
IF ~Global("RZAR1105","GLOBAL",1)~ THEN REPLY ~Imnesvale Inn~ DO ~SetGlobal("SanTravel","GLOBAL",73)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice13
SAY ~State specifics.~
IF ~!Dead("shadel") Global("CVAR1404","GLOBAL",1)~ THEN REPLY ~Temple Ruins wilderness~ DO ~SetGlobal("SanTravel","GLOBAL",74)~ EXIT
IF ~Dead("shadel") Global("CVAR1404","GLOBAL",1)~ THEN REPLY ~Temple Ruins wilderness~ DO ~SetGlobal("SanTravel","GLOBAL",75)~ EXIT
IF ~Global("CVAR1401","GLOBAL",1)~ THEN REPLY ~Temple of Amaunator~ DO ~SetGlobal("SanTravel","GLOBAL",76)~ EXIT
IF ~Global("CVAR1402","GLOBAL",1)~ THEN REPLY ~Shadow Dragon´s hideout~ DO ~SetGlobal("SanTravel","GLOBAL",77)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice1
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice14
SAY ~State specifics.~
IF ~Global("CVAR1200","GLOBAL",1)~ THEN REPLY ~Windspear Hills~ DO ~SetGlobal("SanTravel","GLOBAL",78)~ EXIT
IF ~Global("RZAR1204","GLOBAL",1)~ THEN REPLY ~Garren Windspear's home~ DO ~SetGlobal("SanTravel","GLOBAL",79)~ EXIT
IF ~Global("CVAR1201","GLOBAL",1)~ THEN REPLY ~Entrance to Firkraag´s dungeon~ DO ~SetGlobal("SanTravel","GLOBAL",80)~ EXIT
IF ~Global("CVAR1202","GLOBAL",1)~ THEN REPLY ~King Strohm's maze~ DO ~SetGlobal("SanTravel","GLOBAL",81)~ EXIT
IF ~Global("RZAR1203","GLOBAL",1)~ THEN REPLY ~Firkraag´s lair~ DO ~SetGlobal("SanTravel","GLOBAL",82)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice15
SAY ~State specifics.~
IF ~Global("CVAR2000","GLOBAL",1)~ THEN REPLY ~Trademeet city~ DO ~SetGlobal("SanTravel","GLOBAL",83)~ EXIT
IF ~Global("RZAR2001","GLOBAL",1)~ THEN REPLY ~Smith~ DO ~SetGlobal("SanTravel","GLOBAL",84)~ EXIT
IF ~Global("RZAR2002","GLOBAL",1)~ THEN REPLY ~Fentan's home~ DO ~SetGlobal("SanTravel","GLOBAL",85)~ EXIT
IF ~Global("RZAR2007","GLOBAL",1)~ THEN REPLY ~Mayor's House~ DO ~SetGlobal("SanTravel","GLOBAL",86)~ EXIT
IF ~Global("RZAR2008","GLOBAL",1)~ THEN REPLY ~Temple of Waukeen~ DO ~SetGlobal("SanTravel","GLOBAL",87)~ EXIT
IF ~Global("RZAR2010","GLOBAL",1)~ THEN REPLY ~Vyatris' Inn~ DO ~SetGlobal("SanTravel","GLOBAL",88)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice16
SAY ~State specifics.~
IF ~Global("CVAR1900","GLOBAL",1)~ THEN REPLY ~Druid's land~ DO ~SetGlobal("SanTravel","GLOBAL",89)~ EXIT
IF ~Global("CVAR1901","GLOBAL",1)~ THEN REPLY ~Druid grove~ DO ~SetGlobal("SanTravel","GLOBAL",90)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice17
SAY ~State specifics.~
IF ~Global("CVAR1600","GLOBAL",1)~ THEN REPLY ~Brynnlaw harbour~ DO ~SetGlobal("SanTravel","GLOBAL",91)~ EXIT
IF ~Global("CVAR1602","GLOBAL",1)~ THEN REPLY ~Vulgar Monkey~ DO ~SetGlobal("SanTravel","GLOBAL",92)~ EXIT
IF ~Global("RZAR1603","GLOBAL",1)~ THEN REPLY ~Shop~ DO ~SetGlobal("SanTravel","GLOBAL",93)~ EXIT
IF ~Global("RZAR1604","GLOBAL",1)~ THEN REPLY ~Temple of Umberlee~ DO ~SetGlobal("SanTravel","GLOBAL",94)~ EXIT
IF ~Global("RZAR1611","GLOBAL",1)~ THEN REPLY ~Brothel~ DO ~SetGlobal("SanTravel","GLOBAL",95)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice18
SAY ~State specifics.~
IF ~Global("CVAR2100","GLOBAL",1)~ THEN REPLY ~Underdark~ DO ~SetGlobal("SanTravel","GLOBAL",96)~ EXIT
IF ~Global("RZAR2402","GLOBAL",1)~ THEN REPLY ~Kuo-toas~ DO ~SetGlobal("SanTravel","GLOBAL",98)~ EXIT
IF ~Global("CVAR2400","GLOBAL",1)~ THEN REPLY ~Mind Flayers~ DO ~SetGlobal("SanTravel","GLOBAL",99)~ EXIT
IF ~Global("CVAR2101","GLOBAL",1)~ THEN REPLY ~Beholders~ DO ~SetGlobal("SanTravel","GLOBAL",100)~ EXIT
IF ~Global("CVAR2200","GLOBAL",1)~ THEN REPLY ~Ust Natha~ DO ~SetGlobal("SanTravel","GLOBAL",101)~ EXIT
IF ~Global("CVAR2201","GLOBAL",1)~ THEN REPLY ~Temple of Lolth~ DO ~SetGlobal("SanTravel","GLOBAL",102)~ EXIT
IF ~Global("CVAR2202","GLOBAL",1)~ THEN REPLY ~Inn~ DO ~SetGlobal("SanTravel","GLOBAL",103)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice19
SAY ~State specifics.~
IF ~Global("CVAR2800","GLOBAL",1)~ THEN REPLY ~Suldanessalar town~ DO ~SetGlobal("SanTravel","GLOBAL",108)~ EXIT
IF ~Global("CVAR2801","GLOBAL",1)~ THEN REPLY ~High Priestess' House~ DO ~SetGlobal("SanTravel","GLOBAL",109)~ EXIT
IF ~!Global("DefeatedJon","GLOBAL",2) Global("CVAR2803","GLOBAL",1)~ THEN REPLY ~ Rillifane's Temple ~ DO ~SetGlobal("SanTravel","GLOBAL",110)~ EXIT
IF ~Global("DefeatedJon","GLOBAL",2) Global("CVAR2803","GLOBAL",1)~ THEN REPLY ~ Rillifane's Temple ~  DO ~SetGlobal("SanTravel","GLOBAL",111)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice20
SAY ~State specifics.~
IF ~Global("CVAR3000","GLOBAL",1)~ THEN REPLY ~Watcher's Keep outside~ DO ~SetGlobal("SanTravel","GLOBAL",112)~ EXIT
IF ~Global("CVAR3001","GLOBAL",1)~ THEN REPLY ~Entrance floor~ DO ~SetGlobal("SanTravel","GLOBAL",113)~ EXIT
IF ~Global("CVAR3016","GLOBAL",1)~ THEN REPLY ~Elemental floor~ DO ~SetGlobal("SanTravel","GLOBAL",116)~ EXIT
IF ~Global("RZAR3003","GLOBAL",1)~ THEN REPLY ~Beginning of maze~ DO ~SetGlobal("SanTravel","GLOBAL",114)~ EXIT
IF ~Global("CVAR3015","GLOBAL",1)~ THEN REPLY ~End of maze~ DO ~SetGlobal("SanTravel","GLOBAL",115)~ EXIT
IF ~Global("RZAR3017","GLOBAL",1)~ THEN REPLY ~Lum's machine~ DO ~SetGlobal("SanTravel","GLOBAL",117)~ EXIT
IF ~Global("RZAR3019","GLOBAL",1)~ THEN REPLY ~Penultimate floor~ DO ~SetGlobal("SanTravel","GLOBAL",118)~ EXIT
IF ~!Global("HelmRitualDone","GLOBAL",1)Global("CVAR3020","GLOBAL",1)~ THEN REPLY ~Demogorgon~ DO ~SetGlobal("SanTravel","GLOBAL",119)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice21
SAY ~State specifics.~
IF ~Global("RZAR5200","GLOBAL",1)~ THEN REPLY ~Marching Mountains~ DO ~SetGlobal("SanTravel","GLOBAL",126)~ EXIT
IF ~Global("RZAR5201","GLOBAL",1)~ THEN REPLY ~To Yaga-Shura's lair~ DO ~SetGlobal("SanTravel","GLOBAL",127)~ EXIT
IF ~Global("RZAR5204","GLOBAL",1)~ THEN REPLY ~Second floor of Yaga-Shura´s lair~ DO ~SetGlobal("SanTravel","GLOBAL",130)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice22
SAY ~State specifics.~
IF ~Global("CVAR5500","GLOBAL",1)~ THEN REPLY ~Amkethran~ DO ~SetGlobal("SanTravel","GLOBAL",131)~ EXIT
IF ~Global("RZAR5501","GLOBAL",1)~ THEN REPLY ~Inn~ DO ~SetGlobal("SanTravel","GLOBAL",132)~ EXIT
IF ~Global("RZAR5502","GLOBAL",1)~ THEN REPLY ~Smith~ DO ~SetGlobal("SanTravel","GLOBAL",133)~ EXIT
IF ~Global("RZAR5504","GLOBAL",1)~ THEN REPLY ~Smuggler's cave~ DO ~SetGlobal("SanTravel","GLOBAL",134)~ EXIT
IF ~Global("RZAR5509","GLOBAL",1)~ THEN REPLY ~Graveyard~ DO ~SetGlobal("SanTravel","GLOBAL",135)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice23
SAY ~State specifics.~
IF ~Global("CVAR6000","GLOBAL",1)~ THEN REPLY ~Abazigal's lair~ DO ~SetGlobal("SanTravel","GLOBAL",136)~ EXIT
IF ~Global("RZAR6003","GLOBAL",1)~ THEN REPLY ~Lycanth´s laboratory~ DO ~SetGlobal("SanTravel","GLOBAL",137)~ EXIT
IF ~Global("RZAR6004","GLOBAL",1)~ THEN REPLY ~Fll'Yissetat~ DO ~SetGlobal("SanTravel","GLOBAL",138)~ EXIT
IF ~Global("RZAR6005","GLOBAL",1)~ THEN REPLY ~Abazigal~ DO ~SetGlobal("SanTravel","GLOBAL",139)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice24
SAY ~State specifics.~
IF ~Global("CVAR6100","GLOBAL",1)~ THEN REPLY ~Sendai's Enclave~ DO ~SetGlobal("SanTravel","GLOBAL",140)~ EXIT
IF ~Global("RZAR6101","GLOBAL",1)~ THEN REPLY ~Entrance in Sendai´s enclave~ DO ~SetGlobal("SanTravel","GLOBAL",141)~ EXIT
IF ~Global("CVAR6104","GLOBAL",1)~ THEN REPLY ~Crossroads~ DO ~SetGlobal("SanTravel","GLOBAL",142)~ EXIT
IF ~Global("RZAR6106","GLOBAL",1)~ THEN REPLY ~Beholder~ DO ~SetGlobal("SanTravel","GLOBAL",143)~ EXIT
IF ~Global("CVAR6108","GLOBAL",1)~ THEN REPLY ~Sendai´s inner sanctum~ DO ~SetGlobal("SanTravel","GLOBAL",144)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice3
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice25
SAY ~State specifics.~
IF ~Global("CVRR3900","GLOBAL",1)~THEN REPLY ~Maribur~ DO ~SetGlobal("SanTravel","GLOBAL",200)~ 
EXIT
IF~ Global("CVRR5100","GLOBAL",1)~THEN REPLY ~Bremen~ GOTO Choice27
IF~ Global("CVar4230","GLOBAL",1)~ THEN REPLY ~Soubar~ DO ~SetGlobal("SanTravel","GLOBAL",202)~ EXIT
IF~ Global("CVrr3100","GLOBAL",1)~ THEN REPLY ~Arlax~ DO ~SetGlobal("SanTravel","GLOBAL",204)~ EXIT
IF~ Global("CVrr3300","GLOBAL",1)~ THEN REPLY ~Westchar~ DO ~SetGlobal("SanTravel","GLOBAL",203)~ 
EXIT
IF~ GlobalGT("EilistraeeBegining","GLOBAL",1) ~ THEN REPLY ~ Eilistraee's Clearing~ DO ~SetGlobal("SanTravel","GLOBAL",205)~
EXIT
IF~ Global("CVdd3300","GLOBAL",1)!Global("riatavinblitz","GLOBAL",2)~ THEN REPLY ~Riativin~ DO ~SetGlobal("SanTravel","GLOBAL",206)~ EXIT
IF~ Global("CVdd3300","GLOBAL",1)Global("riatavinblitz","GLOBAL",2)~ THEN REPLY ~Riativin~ DO ~SetGlobal("riatavinblitz","GLOBAL",3)~ EXIT
IF~ Global("CVdd1000","GLOBAL",1)~ THEN REPLY ~Easthaven~ DO ~SetGlobal("SanTravel","GLOBAL",212)~ EXIT
IF~ Global("CVar3610","GLOBAL",1)~ THEN REPLY ~Hlondeth~ DO ~SetGlobal("SanTravel","GLOBAL",213)~ EXIT
IF~ Global("CVAR3540","GLOBAL",1)~ THEN REPLY ~Academy of Kuldin~DO ~SetGlobal("SanTravel","GLOBAL",223)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO Choice2
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF ~~ THEN BEGIN Choice26
SAY ~Something is disturbing my attempt to teleport from this area.~
IF ~~ THEN EXIT
END

IF~~ THEN BEGIN Choice27
SAY~ Remember what you were told, you cannot return there once you have left at your own discretion.~
IF ~~ THEN EXIT
END    

IF~~THEN BEGIN RTFChoice
SAY~The following are possible.~
IF~RandomNum(2,1)~THEN REPLY ~Beregost~ DO ~ SetGlobal("SanTravel","GLOBAL",400)~ EXIT
IF~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY ~Beregost~ DO ~ SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",400)~ EXIT
IF~Global("CVAR7900","GLOBAL",1)RandomNum(2,1)~THEN REPLY ~Baldur's Gate~ DO ~ SetGlobal("SanTravel","GLOBAL",405)~ EXIT
IF~Global("CVAR7900","GLOBAL",1)RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY ~Baldur's Gate~ DO ~ SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",405)~ EXIT
IF~Global("CVAR6800","GLOBAL",1)RandomNum(2,1)GlobalLT("SanRTFPlot5","GLOBAL",4)~THEN REPLY ~Friendly Arm~ DO ~ SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",403)~ EXIT
IF~Global("CVAR6800","GLOBAL",1)RandomNum(2,2)~THEN REPLY ~Friendly Arm~ DO ~ SetGlobal("SanTravel","GLOBAL",403)~ EXIT
IF~~THEN REPLY ~Orc Land Crossroad ~ DO~ SetGlobal("SanTravel","GLOBAL",302)~EXIT
IF~~THEN REPLY ~Waterdeep Temple ~ DO~ SetGlobal("SanTravel","GLOBAL",303)~EXIT
IF~GlobalGT("SanRTFPlot1","GLOBAL",7)~THEN REPLY ~Ghotal's Summer Camp~DO~ SetGlobal("SanTravel","GLOBAL",401)~EXIT
IF ~Global("CVAR0020","GLOBAL",1)~ THEN REPLY ~Athkatla City Gates~ DO ~SetGlobal("SanTravel","GLOBAL",62)~ EXIT
IF ~~ THEN REPLY ~Athkatla Temples ~ DO ~SetGlobal("SanTravel","GLOBAL",45)~ EXIT
IF ~~ THEN REPLY ~Government Parc~ DO ~SetGlobal("SanTravel","GLOBAL",56)~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~Amkethran~ DO ~SetGlobal("SanTravel","GLOBAL",131)~ EXIT
IF ~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~ THEN REPLY ~Amkethran~ DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",131)~ EXIT
IF ~RandomNum(2,1)~ THEN REPLY ~Umar Hills ~ DO ~SetGlobal("SanTravel","GLOBAL",70)~ EXIT
IF ~RandomNum(2,2)GlobalLT("SanRTFPlot5","GLOBAL",4)~ THEN REPLY ~Umar Hills ~ DO ~SetGlobal("RTFTravAmb","GLOBAL",1) SetGlobal("SanTravel","GLOBAL",70)~ EXIT
IF ~~ THEN REPLY ~Other parts of the Realms.~ GOTO RTFChoice2
END

IF ~~ THEN BEGIN RTFChoice2
SAY ~State specifics.~
IF ~Global("CVRR3900","GLOBAL",1)~THEN REPLY ~Maribur~ DO ~SetGlobal("SanTravel","GLOBAL",200)~ 
EXIT
IF~ Global("CVRR5100","GLOBAL",1)~THEN REPLY ~Bremen~ GOTO Choice27
IF~ Global("CVar4230","GLOBAL",1)~ THEN REPLY ~Soubar~ DO ~SetGlobal("SanTravel","GLOBAL",202)~ EXIT
IF~ Global("CVrr3100","GLOBAL",1)~ THEN REPLY ~Arlax~ DO ~SetGlobal("SanTravel","GLOBAL",204)~ EXIT
IF~ Global("CVrr3300","GLOBAL",1)~ THEN REPLY ~Westchar~ DO ~SetGlobal("SanTravel","GLOBAL",203)~ 
EXIT
IF~ GlobalGT("EilistraeeBegining","GLOBAL",1) ~ THEN REPLY ~ Eilistraee's Clearing~ DO ~SetGlobal("SanTravel","GLOBAL",205)~
EXIT
IF ~~ THEN REPLY ~Brynnlaw~ DO ~SetGlobal("SanTravel","GLOBAL",91)~ EXIT
IF~ Global("CVdd3300","GLOBAL",1)!Global("riatavinblitz","GLOBAL",2)~ THEN REPLY ~Riativin~ DO ~SetGlobal("SanTravel","GLOBAL",206)~ EXIT
IF~ Global("CVdd3300","GLOBAL",1)Global("riatavinblitz","GLOBAL",2)~ THEN REPLY ~Riativin~ DO ~SetGlobal("riatavinblitz","GLOBAL",3)~ EXIT
IF~ Global("CVdd1000","GLOBAL",1)~ THEN REPLY ~Easthaven~ DO ~SetGlobal("SanTravel","GLOBAL",212)~ EXIT
IF~ Global("CVar3610","GLOBAL",1)~ THEN REPLY ~Hlondeth~ DO ~SetGlobal("SanTravel","GLOBAL",213)~ EXIT
IF~ Global("CVAR3540","GLOBAL",1)~ THEN REPLY ~Academy of Kuldin~DO ~SetGlobal("SanTravel","GLOBAL",223)~ EXIT
IF ~~ THEN REPLY ~Previous Choices.~ GOTO RTFChoice
IF ~~ THEN REPLY ~Nowhere~ EXIT
END

IF~~ THEN BEGIN RTFNo
SAY~ It is not advisable to use this function here as it would alert our enemies.~
IF ~~ THEN EXIT
END



