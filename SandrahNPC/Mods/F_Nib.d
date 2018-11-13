APPEND F_NIB

IF WEIGHT #-9 ~AreaCheck("ar0700") ~THEN BEGIN Skyscroll1
SAY ~You look like you want to see the world, explore far away places with ease, ride like the wind through the sky. You are the type for that.~
IF~NumInPartyLT(6)~THEN REPLY ~Are you trying to sell me something?~GOTO Skyscroll4
IF~NumInParty(6)~THEN REPLY ~Are you trying to sell me something?~GOTO Skyscroll2
END

IF ~~THEN BEGIN Skyscroll2
SAY ~I give you this map for free. It shows you the way to my skyship that can take you to many places you sure like to visit. The mighty Stormhorns or the Umar Hills, for example. Only one small problem, your group is too big. I can take only five intelligent creatures at one time.~
IF ~InParty("ACBRE")~THEN REPLY ~(Wink) What is the problem? Us five and Breagar, a semi-intelligent creature?~GOTO Skyscroll3
IF ~InParty("Kivan")~THEN REPLY ~(Wink) What is the problem? Us five and Kivan, a semi-intelligent elf?~GOTO Skyscroll3
IF ~InParty("Jaheira")~THEN REPLY ~(Wink) What is the problem? Us five and Jaheira, half an elf thus a semi-intelligent elf?~GOTO Skyscroll3
IF ~~THEN REPLY ~Those five intelligent companions then, guess I can count as a semi-intelligent creature.~GOTO Skyscroll3
END

IF ~~THEN BEGIN Skyscroll3
SAY ~Haha, sorry the ship's manual says otherwise. But..hm,hm, yes, the big cat and the wolf can go, three semi-intelligent creatures are allowed but only five intelligent ones. The price for a trip will be 2500GP for you all plus 500GP for the menagerie.~
IF ~~THEN REPLY ~Fine, understood. So we will find you with the map should we decide to travel at your conditions. ~GOTO Skyscroll6
END

IF ~~THEN BEGIN Skyscroll4
SAY ~I give you this map for free. It shows you the way to my skyship that can take you to many places you sure like to visit. The mighty Stormhorns or the Umar Hills, for example. Do not bring to many comrades along. I can take only five intelligent creatures at one time.~
IF ~~THEN REPLY ~And what about our animal friends.~GOTO Skyscroll5
END

IF ~~THEN BEGIN Skyscroll5
SAY ~One second, I will consult the ship's manual. But..hm,hm, yes, the big car and the wolf can go, three semi-intelligent creatures are allowed but only five intelligent ones. The price for a trip will be 2500GP for you all plus 500GP for the menagerie.~
IF ~~THEN REPLY ~Fine, understood. So we will find you with the map should we decide to travel at your conditions. ~GOTO Skyscroll6
END

IF ~~THEN BEGIN Skyscroll6
SAY ~You can also use the map if you just want to take a look at my shop. See you soon.~
IF~~THEN DO~GiveItemCreate("CVSkys",Player1,0,0,0) EscapeArea()~EXIT 
END


IF WEIGHT #-9 ~AreaCheck("CVSKYS") ~THEN BEGIN Skyship1
SAY~So I have interested you in the possibility to visit far away regions with my magnificent ship? ~
IF~~THEN REPLY ~How did this ship get here since there isn't water closer than miles away from here?.~GOTO Skyship2
END

IF ~~THEN BEGIN  Skyship2
SAY  ~This ship does not travel by water, it takes its journey through the sky.~
IF~~THEN REPLY ~Oh yes of course. How could I underestimate the inventive skills of the Jansen gnomes...~GOTO Skyship3
END

IF ~~THEN BEGIN  Skyship3
SAY  ~Yes of course a finely crafted airship it is. Have you made up your mind about where you want me to take you. Remember it's 2500 GP plus 500 for the semi-intelligent ones.~
IF ~~THEN REPLY ~To the Stormhorn Mountains ~DO ~TakePartyItem("CVSkys") TakePartyGold(3000)  SetGlobal("Nibfly","GLOBAL",2)~EXIT
IF ~~THEN REPLY ~To the town of Trademeet. ~DO ~TakePartyItem("CVSkys") TakePartyGold(3000) SetGlobal("Nibfly","GLOBAL",3)~EXIT
IF ~~THEN REPLY ~To the Umar Hills. ~DO ~TakePartyItem("CVSkys") TakePartyGold(3000) SetGlobal("Nibfly","GLOBAL",4)~EXIT
IF ~~THEN REPLY ~Actually we just wanted to inform ourselves this time. We will come back another time. ~EXIT
IF ~~THEN REPLY ~This time we like to take a look at your wares.~DO~StartStore("F_NIBSHP",Player1)~EXIT
END

IF WEIGHT #-10 ~Global("NibHere","CVSH13",1) AreaCheck("CVsh13")~THEN BEGIN SkyshipSH1
SAY~Friends, friends!! I am so ultimately happy to see all of you well and alive again!~
IF ~~THEN REPLY ~You have done little to that result with your crash landing and dropping us here in the wilderness...~GOTO SkyshipSH2
IF ~~THEN REPLY ~You have managed to come back with your cursed apparatus?~GOTO SkyshipSH2
END

IF ~~THEN BEGIN SkyshipSH2
SAY~Sometimes there is a price for the technical progress...anyway, I am glad my first voyage had been with experienced adventurers who could cope with a little unforeseen diversion...~
IF ~~THEN REPLY ~...little unforeseen diversion...??? ~DO~SetGlobal("NibHere","CVSH13",2) ~GOTO SkyshipSH3
END

IF ~~THEN BEGIN SkyshipSH3
SAY~Science has improved, my good <CHARNAME>, due to that experiment. My skyship is now a reliable means of transport.~
=~What is more, friends, it will be totally free for use to you - I ruin myself but don't think a Jansen cannot be grateful. What can I do for you today?~
IF ~~THEN REPLY ~This time we like to take a look at your wares.~DO~StartStore("F_NIBSHP",Player1)~EXIT
IF~~THEN REPLY~We need to find some comrades we left in Athkatla, can you take us there?~DO ~SetGlobal("SanTravel","GLOBAL",62)GiveItemCreate("CVSkys",Player1,0,0,0)~EXIT
IF ~~THEN REPLY ~Actually we just wanted to inform ourselves this time. We will come back another time. ~EXIT
END

IF WEIGHT #-10 ~Global("NibHere","CVSH13",2)  ~THEN BEGIN SkyshipSHPer
SAY~I ruin myself but don't think a Jansen cannot be grateful. What can I do for you today?~
IF ~~THEN REPLY ~This time we like to take a look at your wares.~DO~StartStore("F_NIBSHP",Player1)~EXIT
IF~~THEN REPLY~We need to find some comrades we left in Athkatla, can you take us there?~DO ~GiveItemCreate("CVSkys",Player1,0,0,0) SetGlobal("SanTravel","GLOBAL",62)~EXIT
IF~GlobalGT("SanRTFPlot1","GLOBAL",6)~THEN REPLY~Do you know where Ghotal's summer camp was?~DO~GiveItemCreate("CVSkys",Player1,0,0,0) SetGlobal("SanTravel","GLOBAL",401)~EXIT
IF~Global("RTLeyPlot1","GLOBAL",7)~THEN REPLY~We need a nightly passage to the Spellhold Asylum on Brynnlaw.~DO~ClearAllActions() StartCutSceneMode() StartCutScene("CVCut411")~EXIT
IF ~~THEN REPLY ~Actually we just wanted to inform ourselves this time. We will come back another time. ~EXIT
END
END