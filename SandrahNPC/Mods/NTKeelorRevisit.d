BEGIN ntashma

APPEND IF_FILE_EXISTS NTKeelor
IF WEIGHT #-2~Global("SanKelorHeal","GLOBAL",2)~THEN BEGIN InBereg1
SAY~ You have helped me in that terrible Northern Wood, my big friends. Maybe you want to learn a bit more of what I found up there before I got wounded?~
=~But not here on the street. Come to my house at the west end of town and we can talk if you want to.~
IF~~THEN DO~SetGlobal("SanKelorHeal","GLOBAL",3) MoveToPoint([899.1243]) MoveBetweenAreas("BG3347",[377.345],12)~EXIT
END
END

CHAIN
IF WEIGHT #-3~ Global("SanKelorHeal","GLOBAL",3)~THEN IF_FILE_EXISTS NTKeelor InBereg2
~  Well, I see I caught your interest in those orc proceedings going on in the north.~
DO~ SetGlobal("SanKelorHeal","GLOBAL",4)~
==CVSandrJ~It would be interesting at least to compare notes and see if we are on the right track.~
==NTKeelor~I know that priests of Oghma as well a Mystra have a good knowledge of the lore of the Realms while an old dwarf has witnessed quite a couple of things in his lifetime.~
==CVSandrJ~The battle on the Fields of Death, good dwarf? You witnessed General Ghotal's last stand.~
==NTKeelor~Impressive, young one. We dwarves had our own interest in that matter even if we kept hidden as long as we could. Yes, I was the eyes and ears of my clan, following the General and observing his final defeat.~
==CVSandrJ~But you were not in alliance with the southern Realms, were you...A strong orc nation in the north would be considered a threat for your own exploits of the mountains, especially the Stormhorns.~
==NTKeelor~You are a clever analyst, I have to say. I can't but confirm your assumptions. Even as the Clan orcs left our underground settlements aside most of the time we were afraid that a union of strong and prosperous orc Clans would soon develop an interest in the same resources we were digging for. We did not dare to stir on our own but would have been ready to intervene if we saw a chance to deal Ghotal a critical blow.~
==CVSandrJ~But it all went to your satisfaction without your need to act yourself?~
==NTKeelor~Absolutely correct. It was the orcs themselves who were their own worst enemy - the mischief and egoism within their own ranks weakened the General - the humans and elves just needed to finish off the remains.~
==CVSandrJ~Now they have returned and are trying to regain something or someone still out there on the former battlefield.~
==NTKeelor~Someone, lady, someone...~
==CVSandrJ~Some believe that Ghotal himself was a spawn of Myrkul.~
==NTKeelor~(Nods silently) I guess you know what that may imply...~DO~EscapeArea()~EXIT

ADD_TRANS_ACTION NTKeelor BEGIN 0 END BEGIN 0 END ~ SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 1 END BEGIN 0 END ~ SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 2 END BEGIN 0 END ~ SetGlobal("SanKelorHeal","GLOBAL",1)~

ADD_TRANS_ACTION NTKeelor BEGIN 4 END BEGIN 0 END ~ SetGlobal("SanKelorHeal","GLOBAL",1)~

CHAIN
IF~Global("CVGodag","GLOBAL",6)~ THEN NTAshma Hasdagger
~ YOU carry the dagger of one of the elders - how come?~
DO~SetGlobal("CVGodag","GLOBAL",7) ~
==CVSandrJ~You mean the dagger of A...~
==NTAshma~STOP, woman, her name is not to be mentioned among non-believers!~
==CVSandrJ~The ritual dagger of a Bhaalist...~
==NTAshma~You die for the knowledge of that alone.~
END
++~Gorion carried a Bhaalist's dagger?~EXIT
++~Do not insult my stepfather, mage, he surely was no Bhaalist!~EXIT
++~Wherever I go there seem to be traces of that cursed dead god.~EXIT