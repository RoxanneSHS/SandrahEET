BEGIN Loured25

IF~Global("Loureedjoined","GLOBAL",2) AreaCheck("CVUmo5") GlobalGT("SanBeginRTF","GLOBAL",1)~THEN BEGIN JoinRTF1
SAY~Do you remember me, <CHARNAME>? I followed your advice and found a new home here in Undermountain. I was just contemplating to explore the surface world for a while.~
IF~~THEN REPLY~You are Sendai's daughter, aren't you, how do you fare?~ GOTO JoinRTF2
IF~~THEN REPLY~I met you once but I can no longer remember the details.~GOTO JoinRTF2
IF~~THEN REPLY~Leave me alone, drow bitch.~EXIT
END

IF~~THEN BEGIN JoinRTF2
SAY~I am L'Urieet Yantyrr, daughter of the Bhaalspawn Sendai you defeated. I have spent my time since then with Qilandrha's people and learned a lot about their alternate ways and of the surface. I am seeking for companionship to explore Faerun - in a party that has use for my skills as cleric and mage.~
IF~~THEN REPLY~Given the mother you had to teach you, I assume you are a worthy addition to our party. A decade with Qilandrha has surely proven that you do not follow our achestor's way.~DO~SetGlobal("Loureedjoined","GLOBAL",1) JoinParty()~EXIT
IF~~THEN REPLY~I am not such a blue-eyed fool like Qilandrha and her sister. I trust no one with a pedigree like yours.~DO~SetGlobal("Loureedjoined","GLOBAL",3) EscapeArea()~EXIT
IF~~THEN REPLY~Given the mother you had to teach you, I assume you are a worthy addition to our party. I will remeber your request but at the moment our ranks are filled.~EXIT
END

CHAIN
IF WEIGHT #-3~AreaCheck("Ar6100") Global("LouaftSend","ar6100",1) ~THEN Loured25 Advance1
~So you reappear victoriously from her lair. I take it the Bhaalspawn is no more? I may be free of the tyrant?~
END
++~Give me a good reason why I should not kill you like the others of your kin in this place.~+ Advance2
++~If I am not mistaken, you're not in league with the drow in this place?~ + Advance2

CHAIN
IF~~THEN Loured25 Advance2
~ Ha, I have little in common with those drow and their allys, especially not with Sendai - even if I may rightfully call myself the owner and heiress of this fortress now.~
DO~SetGlobal("LouaftSend","ar6100",2) SetGlobal("Loureedjoined","GLOBAL",2)~
==CVSan25J~Her heiress...her daughter...?~
==Loured25~One has not a choice in the own parents, many of my kin have envied me for that monstrous mother, fools that they are.~
==CVSan25J~The Bhaalspawn leading us would fully agree to that statement.~
==Loured25~I know who <CHARNAME> is - excuse me, maybe it would be adequate to introduce myself. I am L'Urieet Yantyrr - and yes, I am daughter and captive of that powerblind wannabe-goddess you have defeated.~
==CVSan25J~So you have no more daughter's feelings for her than she had motherly care for you, I assume.~
==Loured25~I had nothing to do with her machinations, even if she never admitted it. She wanted to force me to be her general and adjutant in her crusade for godlike power but I ended as her prisoner for rejecting those splendid *gifts*.~
==CVSan25J~What will you do now?~
==Loured25~I will not take possession of this dreadful place and I cannot go to the Underdark where only death awaits me after my mother's failure.~
END
++~Why don't you join us, you seem to be quite a capable mage and fighter?~ + Advance3
++~I know of a shelter for people like you, an enclave of Eilistraee where they will welcome you.~ + Advance4

CHAIN
IF~~THEN Loured25 Advance3
~As long as the struggle for Bhaal's heritage rages I will not partake in it. I have faith that you, <CHARNAME>, may end it finally. Should you still remember me by that time I may consider to join you, but not now.~
END
++~Too bad, but I respect your choice. I know of a shelter for people like you, an enclave of Eilistraee where they will welcome you.~ + Advance4

CHAIN
IF~~THEN Loured25 Advance4
~So the rumours are true!! How I yearn for such a place to gain peace for a time and re-order my life. I would gladly wait there for you until the Bhaalwar is over.~
DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
END
++~(You and Sandrah give L'Urieet the necessary advice to safely go to Waterdeep.)~EXIT

