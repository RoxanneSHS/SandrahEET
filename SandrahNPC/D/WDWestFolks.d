BEGIN CVwdwauk
IF~ AreaCheck("CVRoan")~THEN BEGIN WelcomeN
SAY~Welcome to the Temple of Splendor...~
IF~~THEN REPLY~This really looks like Waukeen's Jewel once again.~GOTO WelcomeN1
END

IF~~THEN BEGIN  WelcomeN1
SAY~We did our best with the help of the city's rich support. What can I do for you?~
IF~~THEN REPLY~Show me the temple's services.~GOTO Service2
IF~Global("WDFishermen","GLOBAL",2) GlobalGT("KatDef","GLOBAL",1)~ THEN REPLY~We are looking for items needed to summon an Ambassador of the Sea.~ GOTO AmbYes
IF~Global("WDFishermen","GLOBAL",2) GlobalLT("KatDef","GLOBAL",2)~ THEN REPLY~We are looking for items needed to summon an Ambassador of the Sea.~ GOTO AmbNo
END

IF~NumTimesTalkedTo(0)!AreaCheck("CVRoan")~THEN BEGIN Welcome
SAY~Welcome to the Temple of Splendor...~
IF~~THEN REPLY~This rather looks like a junk room to me.~GOTO Welcome1
END

IF~~THEN BEGIN Welcome1
SAY~(Sigh) You are right...it was Waukeen's Crown Jewel before the bandit Khattark and his bunch made their visit. The vandals even took the handles. The temple would give a tremendous reward to anyone who would end the terror of that guy.~
IF~~THEN REPLY~We are persuing the man already. Be assured we will get him.~ GOTO ComeB
IF~GlobalGT("KatDef","GLOBAL",1)~THEN REPLY~We ended his regime right below your feet in the sewers, Khattark and his men are no more.~ GOTO Reward
IF~~THEN REPLY~Does the temple still offer services?~GOTO Service2
END

IF~~THEN BEGIN Service2
SAY~For the right coin we are always willing to serve in Waukeen's name.~
IF~~THEN DO~StartStore("govwau01",LastTalkedToBy(Myself))~EXIT
END

IF~~THEN BEGIN  ComeB
SAY~When you get him come back to claim your reward. Waukeen is known for special gifts to the supporters of save trade.~
IF~~THEN EXIT
END

IF~~THEN BEGIN  Reward
SAY~Splendid. Here is a reward that will remind you of Waukeen for all your life.~
IF~~THEN DO~SetGlobal("GaveRew","LOCALS",1) GiveItemCreate("CVCoin",Player1,1,0,0)~EXIT
END

IF~~THEN BEGIN  Service
SAY~Of course, we need every bit of coin to rebuild the temple.~
IF~~THEN DO~StartStore("CVWDWauk",LastTalkedToBy(Myself))~EXIT
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Welcome2
SAY~How can I help you today?~
IF~GlobalGT("KatDef","GLOBAL",1) Global("GaveRew","LOCALS",0)~THEN REPLY~We ended the terror regime right below your feet in the sewers, Khattark and his men are no more.~ GOTO Reward
IF~~THEN REPLY~Does the temple still offer services?~GOTO Service
IF~Global("WDFishermen","GLOBAL",2) GlobalGT("KatDef","GLOBAL",1)~ THEN REPLY~We are looking for items needed to summon an Ambassador of the Sea.~ GOTO AmbYes
IF~Global("WDFishermen","GLOBAL",2) GlobalLT("KatDef","GLOBAL",2)~ THEN REPLY~We are looking for items needed to summon an Ambassador of the Sea.~ GOTO AmbNo
END

IF~~THEN BEGIN  AmbNo
SAY~I know what you mean. Come back when you solved that Khattark problem and we will thank you with the information you need.~
IF~~THEN EXIT
END

IF~~THEN BEGIN  AmbYes
SAY~Ah, you are the one who solved that Khattark problem and we will thank you with the information you need. ~
=~You are lucky, as we have given the Umberlee bowl as a loan for an exhibition to our friends over at the Siamorphe's temple just a few days before Khattark could rob it.~
IF~~THEN REPLY~Ah, a glimpse of hope in this search. What about the ritual scroll?~ GOTO AmbYes2
IF~~THEN REPLY~Once we secured the bowl, we need to find the scroll to use it.~ GOTO AmbYes2
END

CHAIN
IF~~THEN CVwdwauk AmbYes2
~I have not seen it since the bandit raid...I'm afraid those vandals took it along with everything else.~
DO~SetGlobal("WDFishermen","GLOBAL",3)~
==CVSandrJ~We did not find it in their hideout below Waterdeep when we defeated the gang.~
==CVwdwauk~I hope they have not destroyed it because they saw no worth in it.~
==CVSandrJ~They may have sold it to get some coin.~
==CVwdwauk~Bloomwhiffler's would be the only place with interest in such an item. But Clarissa is not known to buy fenced goods - provided she knew it was stolen.~
END
++~We should check the sewers once again just in case we overlooked the scroll there.~EXIT
++~Let's see if the bookshop can help us.~EXIT
++~The bandits also used that hut outside of town, I suggest to look there again.~EXIT


BEGIN CVWDWAS
IF WEIGHT #-3~AreaCheck("CVROA2") Global("Kathint","LOCALS",0)~THEN BEGIN Kathint
SAY~Be careful out there, the bandit Khattark is on the loose.~
IF~~THEN REPLY~Watch out yourself. We stirred him up and he made an escape into town. He might be right behind you this time.~ GOTO Kathint2
IF~~THEN REPLY~Incompetent tin head. We killed the guy for you already.~GOTO Kathint2
IF~~THEN REPLY~He must have passed here a minute ago, blind fool. We are on his trail, just continue your slumber.~ GOTO Kathint2
END

IF~~THEN BEGIN Kathint2
SAY~Huh?~
IF~~THEN DO ~ SetGlobal("Kathint","LOCALS",1)SetDialog("WDWATCH")~ EXIT
END

IF~!AreaCheck("CVROA2") ~THEN BEGIN Outland
SAY~Poor scum from the Sword Coast, (spit).~
IF~~THEN DO~SetDialog("WDWATCH")~EXIT
END

BEGIN CVWDDWA
IF ~RandomNum(3,1) ~ THEN BEGIN 0
SAY  ~Some leatherhead jacked me case last night! If I find the addle-coved idiot, I'll strangle him!~
IF~~ THEN EXIT
END

IF ~RandomNum(3,2) ~ THEN BEGIN 1
SAY ~The bub in the Hive tastes like donkey-piss!~
IF ~~ THEN REPLY ~You've tasted donkey-piss?!~ GOTO 2
IF ~~ THEN REPLY ~Then don't drink it, genius.~ GOTO 3
IF ~~ THEN REPLY ~Point the way!~ GOTO 4
END

IF ~~ THEN BEGIN 2
SAY ~Go hang yerself, Clueless!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Keep rattlin' that bone-box o' yers, and I'll splatter yer brains all over the cobblestones!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
SAY ~The Gathering Dust Bar, cutter.~
IF ~~ THEN EXIT
END

IF ~RandomNum(3,3) ~ THEN BEGIN 5
SAY ~You know the chant?~
IF ~~ THEN EXIT
END

BEGIN  CVWDBar7

IF~AreaCheck("CVROA7")~THEN BEGIN Fest1
SAY~Welcome to Sharess' famous festhall! You have coin to spend and pleasures to seek?...You have come to the right place, darling.~
IF~~THEN REPLY~What does one do here in this...brothel?~ GOTO Fest2
IF~~THEN REPLY~What does one do here in this...establishment? ~GOTO Fest2
IF~~THEN REPLY~What does one do here in this...eh, festhall?~GOTO Fest2
IF~Global("SanRTFPlot1","GLOBAL",6)~THEN REPLY~We are looking for the collector in your backroom again.~GOTO Fest6
END

IF~~THEN BEGIN Fest2
SAY~Tututu, sweet greenhorns from the lower Sword Coast, eh?...Candlekeep, Nashkel? Nevermind, you're all the same peasants. First dip into the City of Splendor, that is.~
IF~OR(4)PartyHasItem("Sanbrc") PartyHasItem("AGshld01") PartyHasItem("Imofurc") PartyHasItem("Blunpoi") Global("GaveKey","CVROA7",0)~THEN GOTO Fest3
IF~!PartyHasItem("Sanbrc") !PartyHasItem("AGshld01") !PartyHasItem("Imofurc") !PartyHasItem("Blunpoi")~THEN GOTO Fest4
IF~!Global("GaveKey","CVROA7",0)~THEN GOTO Fest4
END

IF~~THEN BEGIN Fest3
SAY~You look like seasoned adventurers. There is a man in a back room who seeks to buy rare artifacts for highest prices. Maybe you have something for him. You'll need this key to access that area. ~
IF~~THEN REPLY~We may try that. My backpack gets heavier daily.~DO~SetGlobal("GaveKey","CVROA7",1) GiveItemCreate("WDKEY7",Player1,1,0,0) ~GOTO Fest4
IF~~THEN REPLY~Shady collectors in shady backrooms of shady bars? Maybe I'm a greenhorn but I'm no fool, thank you.~GOTO Fest4
IF~~THEN REPLY~I'd prefer to see the rest of the possibilities first.~GOTO Fest4
END

IF~~THEN BEGIN Fest4
SAY~If you have the coin you may convince our girls to keep you company. I just provide the rooms and drinks to make your stay one to remember.~
IF~~THEN REPLY~At least I will remember the empty purse and the hangover...Thank you but no.~EXIT
IF~~THEN REPLY~Not this time, I'm in a hurry.~EXIT
IF~~THEN REPLY~I've just been plundered by your *collegues* across the street...~ GOTO Fest5
IF~~THEN REPLY~I don't say no until I see your list of services.~GOTO Fest5

END

IF~~THEN BEGIN Fest5
SAY~These things will make your stay a valuable one.~
IF~~THEN DO~StartStore("CVWDBar7",LastTalkedToBy(Myself))~EXIT
END

IF~~THEN BEGIN Fest6
SAY~He has not been here for a long time even if I hear he ist still in town. Check some less fancy places if you need such company.~
IF~~THEN EXIT
END

BEGIN CVWDBar4
IF~NumTimesTalkedTo(0)~THEN BEGIN SanTrain1
SAY~Oh, Sandrah, haven't seen you here for some time, girl!!~
IF~~THEN REPLY~You know her? What does a girl like her do in such a...place?~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanTrain2
IF~~THEN REPLY~Sandrah? I had never expected you to visit such places?~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXTERN CVSandrJ SanTrain3
END

IF~~THEN BEGIN SanTrain2
SAY~Training, of course...such a waste, she could have been the highest priced girl in the house, instead...~
IF~~THEN REPLY~Instead?~GOTO SanTrain4
END

IF~~THEN BEGIN SanTrain4
SAY~If she were not such a nice girl I would have refused her...I mean it's against our own interest - she came to learn so that her future partner never would miss anything with her and thus become our customer. She wants to provide any possible pleasure for the lucky one herself.~
IF~~THEN REPLY~As I am that lucky one I have to thank you - in a way.~DO~EscapeArea()~EXIT
END

CHAIN
IF~~THEN CVSandrJ SanTrain3
~(Blushes) I did some training here, I tried to learn the techniques and pleasures those girls can provide...~
==CVWDBar4~If she were not such a nice girl I would have refused her...I mean it's against our own interest - she came to learn so that her future partner never would miss anything with her and thus become our customer. She wants to provide any possible pleasure for the lucky one herself.~ DO~EscapeArea()~
END
++~I see, as I consider myself that lucky one I have to thank you - in a way.~EXIT

BEGIN CVWDSiam

CHAIN
IF~NumTimesTalkedTo(0)~THEN CVWDSiam SanIlva1
~Peasants, this is the Siamorphe's House of Divine Law, no place for the lower classes.~
==CVSandrJ~Your advice is appreciated - as always, Lady Ilvastarr.~
==CVWDSiam~Sarcasm does not befit the likes of...ooops...excuse me, mylady Sandrah, I had not...~
==CVSandrJ~Nevermind, we will not bother you any further.~
==CVWDSiam~Oh, I had always hoped one day you would find your way to us - unlike your father who steadfastly rejects his association with the noblesse.~
==CVSandrJ~He righfully does - and with my mother being just a merchant's daughter I know my place as well.~
==CVWDSiam~You are Elminster's daughter, child, and High Priestess of the House of Wonders...~
==CVSandrJ~I am just a simple priestess in the ranks...~
==CVWDSiam~Ah...just like your father - your disguises fool not those with an eye for true power.~
=~(Sigh) You will learn one day, I do not give up hope yet.~ DO~EscapeArea()~
== AJANTJ IF ~ InParty("Ajantis") ~ THEN ~ Mother, please...~
==CVWDSiam IF ~ InParty("Ajantis") ~ THEN ~YOU will give my father and me an explanation for venturing with THIS (snort) party, Ajantis. You know the hour when dinner is held at our house, I expect you to be there on time.~ 
== AJANTJ IF ~ InParty("Ajantis") ~ THEN ~ Y..yes, mother.~EXIT

APPEND MTOWBA
IF WEIGHT #-3~AreaCheck("CVROA7") RandomNum(3,1)~THEN BEGIN Bar1
SAY~Can't I have my drink in peace, you're blocking my view on the dancer!!~
IF~~THEN EXIT
END

IF WEIGHT #-3~AreaCheck("CVROA7") RandomNum(3,2)~THEN BEGIN Bar2
SAY~Wait for Neiradi's performance...she' the best pole dancer they have.~
IF~~THEN EXIT
END

IF WEIGHT #-3~AreaCheck("CVROA7") RandomNum(3,3) InMyArea("CVSandr")~THEN BEGIN Bar3
SAY~S...Sandrah? You will not tell mother I was here,eh?~
IF~~THEN EXIT
END
END
