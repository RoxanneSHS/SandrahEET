EXTEND_TOP NTPRIHEL 0 #1
IF ~ OR(2) GlobalGT("TalkedToSatos","GLOBAL",0) GlobalGT("NTTalkedToSatos","GLOBAL",0)  Global("SanDauroQ","GLOBAL",6)InParty("CVSandr")~ THEN REPLY~ We have the sad obligation to report to you the death of your paladin Dauron. He fell as a true hero against the mighty demon Paraagariel.~ GOTO Daurep2
IF ~ OR(2) GlobalGT("TalkedToSatos","GLOBAL",0) GlobalGT("NTTalkedToSatos","GLOBAL",0) Global("SanDauroQ","GLOBAL",7)InParty("CVSandr")~ THEN REPLY ~Has the priest Dauron reported his success in defeating the demon Paraagariel?~ GOTO Daurep1
END

APPEND NTPRIHEL
IF~~THEN BEGIN Daurep1
SAY~ He was full of praise for the party of heroes that assisted him and actually contributed ultimately to the success of the fight. I assume that must be you?~
IF~~THEN DO~SetGlobal("SanDauroQ","GLOBAL",8)~ EXTERN BSandr SanDaurep1
END


IF~~THEN BEGIN Daurep2
SAY~I am appalled to hear that, my lady. He came here a few days ago to ask for assistance against that evil foe. Sadly there was nothing the Citadel or I could do given our own circumstances.~
IF~~THEN DO~SetGlobal("SanDauroQ","GLOBAL",8)~ EXTERN BSandr SanDaurep2
END
END

CHAIN
IF~~THEN BSandr SanDaurep1
~ We could not let him go alone against such a foe. But it was really him who tracked the beast all the way from Baldur's Gate and revealed the demon's evil plan to us.~
==IF_FILE_EXISTS NTPRIHEL~ You confirm his statement about the occurrences with your words, my lady. I was just writing down a letter to our superiors at the Temple in Baldur's Gate. With you as witnesses his reputation will be completely restored and he will be recognised as a true example of Helm's disciples.~
==BSandr~ He had to suffer much but was steadfast in doing what he knew was right.~
==IF_FILE_EXISTS NTPRIHEL~I will include your statement in my report. I hope all the best for him in Luskan.~ DO~AddexperienceParty(1200) ReputationInc(1)~EXIT

CHAIN
IF~~THEN BSandr SanDaurep2
~ We met him and since we knew about his sad fate from a preceding meeting with him at Baldur's Gate we helped him to slay the beast. It was during this battle that he met his fate.~
==IF_FILE_EXISTS NTPRIHEL~The price he had to pay for serving Helm this way was high. With your  witnesses' statement his reputation will be completely restored and he will be recognised as a true example of Helm's disciples.~
==BSandr~ He had to suffer much but was steadfast in doing what he knew was right.~
==IF_FILE_EXISTS NTPRIHEL~I will include your statement in my report I will write tonight to our superiors at the Temple in Baldur's Gate.~
==BSandr~ Does he leave anyone behind?~
==IF_FILE_EXISTS NTPRIHEL~I have not known him good enough myself but the Temple at home will surely take care of that if needed.~ DO~AddexperienceParty(1200) ReputationInc(1)~EXIT