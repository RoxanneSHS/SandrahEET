BEGIN maitrde

IF~GlobalGT("Katcut","GLOBAL",7)~THEN BEGIN Closed
SAY~Pardon, pardon, Messieudammes, we are closed today.~
IF~~THEN EXIT
END

CHAIN
IF~ NumTimesTalkedTo(0) Global("Katcut","GLOBAL",5) ~ THEN maitrde WDresto1
~ Messieudammes? Pardon?~
END
++ ~ Bon soir, we like to see your list of services, please? ~ +  WDresto2
++ ~ What? Show me your services!~ +  WDresto2

CHAIN
IF ~~ THEN  maitrde WDresto2
~ <PRO_SIRMAAM>, may there be a misunderstanding? Pardon, I did not get your name? ~
== IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! A cool nice beer - but PRESTO or however that is in your language, QUICK. ~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Huh, funny man, bring us something pink and creamy.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ What a pathetic male. If food is not on the table instantly, it will be you skewered on the grill tonight! ~
== BVICONI IF~ InParty("Viconia") ~ THEN ~ Looks like a decent place. They should really have fresh gragrk.~
== BKIVAN IF~ InParty("Kivan") ~ THEN ~ This place tries to smell like the forests of Shilmista but it is not the real thing. ~
==IF_FILE_EXISTS BSUFINCH  IF ~ InParty("Sufinch") ~ THEN ~ (Scribble, scribble) The most pleasant gastronomic place in Waterdeep... ~
== MAITRDE IF ~ InParty("Sufinch") ~ THEN ~ Oh, merde, are you a restaurant critic, madame?~
== BAJANT IF~ InParty("Ajantis") ~ THEN ~ Oh, how did we land in this snobish place. From the price for a meal you could help dozens of poor children. ~
== BJenli IF~ InParty("CVJenlig") ~ THEN ~ Strange how manlings make ingestion an art.~
== MAITRDE IF~ InParty("CVJenlig") ~ THEN ~A creature spending such effort on decoration of the own body should be sophisticated enough to value artisanry of the highest form.~
==IF_FILE_EXISTS k-roseB  IF ~ InParty("k-rose") ~ THEN ~ They do not have music in this place. Will you let me sing for my meal? ~
== MAITRDE  IF~ InParty("k-rose") ~ THEN~ Are you recommended by any of the opera houses along the Swordcoast? Mpf, I doubt it.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~A place in the spirit of Sune, at least at first glance.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, will this discussion last forever before I can squeeze my teeth into a large hunk of cheese and bread. ~
== BEDWIN IF~ InParty("Edwin") ~ THEN ~ (That damned stubborn cleric girl really has it all, the ways of a woman of world and taste and wealth. I have to make her my pet, damn it, she needs to be under my thumb soon.)~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Sir, with our lifestyle this may be very well our last meal ever. Even if we do not live long enough to digest it, you may start to serve now.~
==BDorn_ IF~ InParty("Dorn") ~ THEN ~ Meat!~
==BNeera_ IF~InParty("Neera")~THEN ~A decent meal, I already gave up hope I'd ever get one.~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Do you have any Broumenard from the year... or even better... ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Thou art not aware of the presence of a mighty hero of your town, but thou shouldst recognize her.~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ This whole place makes me nervous. It is completely out of balance with its fineries and luxury, but no natural beauty at all. ~
== BSANDR ~ (Sigh). Maitre de, your arrogance has not improved a bit. ~
END
++ ~ Sandrah, do you think there is another place around. This thing starts to get boring.~ + WDresto3
++ ~ Listen, man, we are the heroes of Waterdeep. It will suit you well to serve us right NOW.~ +  WDresto3
++ ~ Take a look at this purse, if you should have any doubt about us.~ + WDresto3

CHAIN
IF ~~ THEN  maitrde WDresto3
~ Ohlala, wrong all wrong. I have the impression that you do not have a RESERVATION?~
END
++ ~ A reservation?~ + WDresto4

CHAIN
IF ~~ THEN  maitrde WDresto4
~ <PRO_SIRMAAM>, I see, no reservation, just as I thought already. Well, if you come again in about six or seven tendays, I may put you on the waiting list...~
== HILATH  IF ~ GlobalLT("Katcut","GLOBAL",10)~ THEN ~ Wait, wait, Maitre. ~
== MAITRDE IF ~ GlobalLT("Katcut","GLOBAL",10)~ THEN ~ Lady Hilath? You know these...people?~
== HILATH IF ~ GlobalLT("Katcut","GLOBAL",10)~ THEN ~ Of course, Maitre, they have rescued my little boy. It is the party of Lady Sandrah.~
== MAITRDE ~ Lady Sandrah, oh yes, now I recognise you, my poor old eyes - you were hiding a bit to make a joke with old maitre, haha. Yes yes, come quick, I will lead you to your table.~
== HILATH IF ~ GlobalLT("Katcut","GLOBAL",10)~ THEN ~ Maitre, send their bill to my house tomorrow. I am sorry, I cannot stay with you, <CHARNAME>, I have to take care of my husband's funeral. But you and your friends really have deserved some pleasant treatment, goodnight.~
== CORANJ IF ~ GlobalLT("Katcut","GLOBAL",10) InParty("Coran") ~ THEN  ~Mylady, I offer you my arm in this hour of need. Trust me, I am an expert in dealing with dead husbands. ~
== HILATH IF ~ GlobalLT("Katcut","GLOBAL",10) InParty("Coran") ~ THEN  ~ I thank you so much, dear elf, come along...~
== MAITRDE IF ~ Global("Katcut","GLOBAL",10) ~ THEN ~ This evening will be on the house, Lady Sandrah, take my excuse, avec plaisir.~
END
++ ~ I hope this place really is worth all this trouble.~ DO ~ ClearAllActions()
SmallWait(2) 
StartCutSceneMode()
StartCutScene("CVWDRes1")~EXIT

CHAIN
IF ~Global("Maitre1","GLOBAL",2)~ THEN  maitrde WDresto5
~ <PRO_SIRMAAM>, I would like to bring to your attention today's specials on the menu.~
= ~ We have the freshest rose quayles from the Shinig Plains. And exquisite giant trouts from The Lake of Steam...~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Those fishes are really delicious, <CHARNAME>.~
== BIMOEN IF~ InParty("Imoen2") ~ THEN ~ Rose quayles? What about pink ones? ~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Fine, I take a dozend of those trouts...~
== MAITRDE IF~ InParty("ACBre") ~ THEN  ~ But, Sir, we were extremely lucky to acquire just five for the whole restaurant, the cost is immense.~ 
==BDorn IF~ InParty("Dorn") ~ THEN ~ Meat!~
== MAITRDE IF~ InParty("Dorn") ~ THEN ~ Always a good choice, sir.~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ Now, what about fresh gragrk, rivvil.~
== MAITRDE IF~ InParty("Viconia") ~ THEN ~  And how would you like that cooked, medium, well done...~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ By Shar, incredible male...~
== MAITRDE IF~ InParty("Viconia") ~ THEN ~ I see, madame, a real connaisseur, of course we will serve it raw, slaughtered at the table.~
== BJenli IF~ InParty("CVJenlig") ~ THEN ~ Cook long and spice well, manling, Jen'lig not must know what dead creature was before.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Just a bit of rice and vegetables. Not too much effort for those who are doomed anyhow.~
==BNeera IF~InParty("Neera")~THEN ~(Sigh) I order something and get something else, it always happens to me - wild magic everywhere.~
== BSandr ~ I will try the Waterdeep Fishsoup, <CHARNAME>, I recommend it to you, this place is famous for it.~
END
++ ~ And a good wine for everyone to go along with the meal.~ DO ~ SetGlobal("Katcut","GLOBAL",6) SetGlobal("Maitre1","GLOBAL",3) StartMovie("DAYNITE")~
EXIT

CHAIN
IF~ NumTimesTalkedToGT(0)Global("Katcut","GLOBAL",6) ~ THEN maitrde WDresto6
~ (Yawn) I hope everything was excellent, <SIRMAAM> ? ~
== BSandr ~ Of course, I think it is late already, let us go over to my father's house for the night, <CHARNAME>.~
== MAITRDE ~ Well, mylady, there is still a small problem with the bill?~
== BSandr ~ I understood that it is settled already?~
== MAITRDE ~ Right. Except for those little extras, that were not foreseen and are therefore not covered.~
== BSandr ~ Little extras, like what?~
== MAITRDE ~ Four broken plates...~
== MAITRDE IF ~InParty("ACBre") ~ THEN  ~ (Looks at Breagar) Seven broken beermugs, it is really a costly habit to throw them over your shoulder when empty...~
== MAITRDE IF ~ InParty("Viconia") ~ THEN ~  (Smiles lustingly at Viconia) A wall to be painted because of the bloodstains from freshly slaughtered gragrk..~
== MAITRDE IF~ InParty("Coran") ~ THEN ~ (Eyes Coran suspiciously) Four misteriously missing bottles of sweet Delavasian wine...~
== MAITRDE IF~ InParty("Imoen2") ~ THEN ~ (Winks at Imoen) Removal of all those pink decorations in the ladies bathroom... ~
== MAITRDE IF ~ InParty("Minsc") ~ THEN ~ Four sofa cushions bitten to shreds by a...is it a hamster?~
== MAITRDE ~A 20GP fine from the militia for nightly noise. They do not have an ear for the real bard's talents it seems...~
== MAITRDE IF~ OR(2)InParty("Sharteel") InParty("Branwen")~ THEN ~ The cost for recruiting a new second cook after your hot blooded fighter lady threatened to boil him alive in his own stew... ~
== MAITRDE ~ The Waterdeep pre-celebration extra tax...~
END
++ ~ So what does that amount to?~ +  WDresto7

CHAIN
IF ~~ THEN  maitrde WDresto7
~ For you, <SIRMAAM> , just 650GP and maybe a little tip for your ever servicable maitre de.~
END
++ ~ Oh my.~ DO ~ SetGlobal("Katcut","GLOBAL",7) TakePartyGold(670)~
EXIT
