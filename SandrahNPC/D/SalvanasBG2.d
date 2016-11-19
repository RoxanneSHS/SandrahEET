APPEND Salvanas
END

CHAIN
IF WEIGHT #-9~ !InPartySlot(LastTalkedToBy,0)Global("CVSandrsalvanas","LOCALS",0) IsGabber("CVSandr")InParty("CVSandr") See("CVSandr") !StateCheck("CVSandr",STATE_SLEEPING) ~THEN Salvanas San1
~I may be unrecognizable for a lady of your style and beauty...still I cannot help but introduce myself as your humble servant, Salvanas by name.~
DO~SetGlobal("CVSandrsalvanas","LOCALS",1) ~
==BSandr~(Laughs) Salvanas, beautiful elf, I must deeply disappoint you - I do not hold servants.~
==Salvanas~Not a single love slave to adore and pleasure that magnificent body?~
==BSandr~I despise nothing more than slavery.~
=~If, however, I would run into some conqueror of women renowned around Faerun for his skill at love he would soon find that I am always willing to exchange experience on an expert level...~
==Salvanas~My, what luck! What appeared to become a truely disastreous attempt at first may be a lucky day for both of us.~
==BSandr~(Winks at Salvanas) You may know such an erotic expert by any chance?~
==Salvanas~Oh, lady, I will show pleasures of the bedchamber that may even be new to your acquired taste.~
==BSandr~Enough words for the preliminairies, I would suggest. I see that you desperately need a good teacher, my elf.~
==Salvanas~My room is not...~
==BSandr~(Grins) Too late!~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF WEIGHT #-8~!InPartySlot(LastTalkedToBy,0)Global("CVSandrsalvanas","LOCALS",1) IsGabber("CVSandr")InParty("CVSandr") See("CVSandr") !StateCheck("CVSandr",STATE_SLEEPING)~ THEN Salvanas San2
~My master and teacher returns and my duties may be required once more?~
DO~SetGlobal("CVSandrsalvanas","LOCALS",2) ~
==BSandr~(Laughs) Salvanas, incurable elf, you have not even digested lesson one - I do not like that master and duty stuff...if you see it as a service I do not require your beginner's attempts again.~
==Salvanas~Oh, the whip of wit, in love not given lightly...~
==BSandr~ Have you met Volo in the meantime?~
==Salvanas~What, why? I don't care for men.~
==BSandr~Then stop your long winding introduction, even if you do not have your bonus of virginity anymore.~ 
==Salvanas~Psst, nobody needs to know these details, right?~
==BSandr~Right, you are a pretty fresh fruit still...~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT