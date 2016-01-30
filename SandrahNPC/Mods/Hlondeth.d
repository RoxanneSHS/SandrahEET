BEGIN CVGonast

CHAIN
IF~NumTimesTalkedTo(0)~THEN  CVGonast Letter1
~I have received the report of your deeds, <CHARNAME>, and have to thank you once again for your help.~
==CVSandrJ~ May I ask you for s small service in return, Gonthril, as you may have the means for it here in town that I have not.~
== CVGonast~ Surely, mylady, I have heard your own contribution to our success was not small.~
==CVSandrJ~ I am a priestess of Mystra and our local temple had been infiltrated by the Yuan-Ti of Extaminos - the priests are dead and the temple is vacated.~
== CVGonast~ That is bad news, mylady. Will your temple be able to restore things again?~
==CVSandrJ~In this I need your help, dear Gonthril. As my mission is to continue with <CHARNAME> on  further quests, I cannot stay and rebuild Mystra's basis here in town. I have written this report to my order in Waterdeep and Ringhontal there will send a representative to Hlondeth shortly. All I need are your connections around town to send this report safely to Waterdeep.~
== CVGonast~ This will be no problem, mylady. Your document will be delivered by one of our trusted men personally. A ship is due to leave for Waterdeep the day after tomorrow and you have my word that your message will be on its way with it.~
==CVSandrJ~(Sandrah hands a sealed parchment and a small purse to Astinar.) This should settle for any expenses on your side and your messenger will receive the same amount for his return from my people in Waterdeep.~
== CVGonast~ Oh, this is not necessary after all you did...well, yes, on second thought it's welcome, mylady, we need a lot of resources for those who suffered from the hateful snakes. Thank you again, you all, and good journey.~ DO~ AddexperienceParty(5650) TakePartyGold(1500) EscapeArea()~EXIT

APPEND CVSandrJ
IF~~THEN BEGIN SanSmellTrap2
SAY~If they are Mystra's servants after all...~
=~Mystra accepts disciples of any race in her ranks and these here may disguise themselves just to be acceptable for the local folks - that by itself is not suspicious.~
IF~~THEN REPLY~ What do you suggest?~ GOTO SanSmellTrap3
END

IF~~THEN BEGIN SanSmellTrap3
SAY~ Mystra's temples have always a secret sanctum. Notice those stars embedded in the floor? Click them in the right order and we should find the entrance.~
IF~~THEN REPLY~ Let us try this, you have got me interested in this plot.~DO~SetGlobal("SanSmellTrap","GLOBAL",2)~EXIT
IF~~THEN REPLY~ Is the order always the same so that a priestess of the goddess will know it, Sandrah?~ DO~SetGlobal("SanSmellTrap","GLOBAL",2)ClearAllActions() StartCutSceneMode() StartCutScene("cvhlond")~ EXIT
END

IF~Global("SanRecc","ar3644",1)~THEN BEGIN SanHlondRet1
SAY~ We should follow Rynn's advice to check out the lower levels, <CHARNAME>. Before we do, we should however fill up our ranks again. My parcel can take us to any of our comrads and back to Hlondeth again, just to remind you.~
IF~~THEN REPLY~ My counsellor, have I told you already today how much I love you?~GOTO SanHlondRet2
END

IF~~THEN BEGIN SanHlondRet2
SAY~(Pretends to sulk) Only twice, I feel much neglected these days.~
IF~~THEN REPLY~ Make this number three. (You kiss her tenderly).~DO~SetGlobal("SanRecc","ar3644",2)~EXIT
END

IF ~Global("SanMystrev","ar3610",1)~THEN BEGIN MystRev1
SAY~ I plead with you to help those people against the Yuan-Ti. They have misused the house and name of my goddess and I must restore the reputation of Mystra again. ~
IF~~THEN REPLY~No, those are rebels and troublemakers, I will not interfer with the order in some remote and foreign town of which we know not enough.~DO~ IncrementGlobal("Sanpoints","GLOBAL",-10) SetGlobal("SanMystrev","ar3610",2) ~EXIT
IF~~THEN REPLY~By their misuse of Mystra they have proven to be the scoundrels here. We will surely pick up the fight against them.~DO~ IncrementGlobal("Sanpoints","GLOBAL",3) SetGlobal("SanMystrev","ar3610",2)~EXIT
END
END

INTERJECT CBMYSTP2 1 SanSmellTrap
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ How can a priest of my goddess say such a thing?~
== CBMYSTP2 IF ~InParty("CVSandr")~ THEN~ What do you mean? Who are you?~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ I am Midnight's granddaughter and priestess of Mystra from Waterdeep.~
== CBMYSTP2 IF ~InParty("CVSandr")~ THEN~ Eh, welcome, yess, yess, we swear allegiance to the Lady, Mistress of the Mysteries, Mystra.~
== CVSANDRJ IF ~InParty("CVSandr")~ THEN~ (Sandrah takes you aside a bit and whispers.) Let us inspect this installation carefully, <CHARNAME>, something here is quite not like it should be.~
END
++~You mistrust your own priests, my love?~ EXTERN CVSandrJ SanSmellTrap2
++~I trust you more than ever, counselor, you know your fellow priests better than any.~ EXTERN CVSandrJ SanSmellTrap2

