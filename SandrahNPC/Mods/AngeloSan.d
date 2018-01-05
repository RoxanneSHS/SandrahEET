ADD_TRANS_TRIGGER ADAngelj 236
~Global("SanSharInt","GLOBAL",0)
Global("SanSharNewHome","GLOBAL",0)~

EXTEND_BOTTOM ADAngelj 236
IF~GlobalLT("SanSharInt","GLOBAL",25)~THEN REPLY~ Why, yes, in fact. We traveled together a while.~ GOTO 239
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY~ Yes. We became lovers for a time.~ GOTO SanAng1
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY~ Yes. We became lovers...by the way..eh...can you envision yourself as a grandpa of sorts?~ GOTO SanAng5
IF~GlobalGT("SanSharNewHome","GLOBAL",0)~ THEN REPLY~ I know you are her father and I know well how you treated her. She is a mayor figure now in Waterdeep, best stay out of her way.~GOTO 258
END

APPEND ADAngelj
IF~~THEN BEGIN SanAng1
SAY~I... see. I confess that's not what I expected. I... hope you did right by her, chief.~
IF~~THEN REPLY~Definitely better than you did. No false pretents, I know you are her father and I know well how you treated her.~ GOTO SanAng2
IF~~THEN REPLY~I will not talk about the whole thing with you.~GOTO 255
END

IF~~THEN BEGIN SanAng2
SAY~Well, yes, from your tone I deduct she'd probably said the truth...It were difficult times and she was a difficult girl. Like so many times I didn't manage it all too well.~
IF~~THEN REPLY~At least you speak the truth. She hates you like no one else. Pray for it that you do not cross her path again.~ GOTO 258
IF~GlobalGT("SanSharNewHome","GLOBAL",0)~THEN REPLY~ She is a mayor figure now in Waterdeep, best stay out of her way.~GOTO 258
IF~GlobalGT("SanSharInt","GLOBAL",25)~THEN REPLY~ Yes. We became lovers...by the way..eh...can you envision yourself as a grandpa of sorts?~ GOTO SanAng5
END

IF~~THEN BEGIN SanAng3
SAY~ I can't imagine myself as a grandpa...but then, I couldn't imagine myself as a father in the first place.~
IF~~THEN REPLY~You never were the one and you surely not be the other.~GOTO SanAng6
IF~~THEN REPLY~You need not to worry - It's irrelevant for you. If Shar-Teel don't kill you if you try to get next to the child than I will.~ GOTO SanAng6
END

IF~~THEN BEGIN SanAng4
SAY~I can't imagine myself as a grandpa...but then, I couldn't imagine myself as a father in the first place.~
IF~~THEN REPLY~Get acquainted to the thought, maybe you will be ready for your role when the child has arrived.~EXIT
IF~~THEN REPLY~You need not to worry - It's irrelevant for you. If Shar-Teel don't kill you if you try to get next to the child than I will.~EXIT
END

IF~~THEN BEGIN SanAng5
SAY~You impregnated her...you, a Bhaalspawn...great gods...~
IF~GlobalGT("SanSharInt","GLOBAL",36)~THEN REPLY ~Yes, in deed. Don't forget I'm not alike at all to the one you have served.~GOTO SanAng3
IF~GlobalLT("SanSharInt","GLOBAL",36)~THEN REPLY ~ Yes, in deed. Don't forget I'm not alike at all to the one you have served.~GOTO SanAng4
END

IF~~THEN BEGIN SanAng6
SAY~Oh, chief, that's unfair...you will see how I've changed. What's the little one's name?~
IF~~THEN REPLY~Gorion.~EXIT
END
END

CHAIN
IF WEIGHT #-6~Global("SanAngelB","LOCALS",1)~ THEN Badangel SanKillSar
~Wait a minute, cleric girl, we needa talk a bit.~
DO~SetGlobal("SanAngelB","LOCALS",2)~
==BSandr~What is it, cretin?~
==Badangel~He, he, no hostilities anymore, we're on the same side now, beauty.~
==BSandr~We will see.~
==Badangel~Now...I remember very well who it was that finally defeated my old boss Sarevok. Don't think I can't remember that gleaming hammer all my life.~
==BSandr~Hm, you witnessed it? But you were dead already by that time...~
==Badangel~Ah, dead...relatively. You see me right now, don't you, I have my ways to survive even without a healer like you on my side. I pretended to be dead enough not to be of interest to you or <CHARNAME> anymore. You didn't take the time to inspect one like me very carefully on that day.~
==BSandr~You are probably right in that. We were all very much focussed on Sarevok, just removing the rubble that was in the way to that goal.~
==Badangel~Well, yes, rubble...You're right in a way - but as they say, a bad penny always turns up again.~
==BSandr~Fine, so you witnessed it all pretending your death - anything of interest you have to say beyond that? I was there myself so I know what happened.~
==Badangel~You know and you don't know. A minute ago you erred about my death. There may be more that you don't know.~
==BSandr~There surely is but I doubt that I get wiser by talking to you.~EXIT

CHAIN
IF WEIGHT #-6~Global("SanAngelB","LOCALS",3)~ THEN Badangel SanAngNo
~Ah, good, my beautiful cleric girl, it's probably as close to you as I ever can get.~
DO~SetGlobal("SanAngelB","LOCALS",4)~
==BSandr~Probably.~
==Badangel~ Eh, don't get me wrong, beauty...I know very well that you are far outa reach for one like me. Still I appreciate the chance to get a full view of your beauty every now and then. Just to look and don't touch, okay?~
==BSandr~You are refreshingly honest and probably survived so far due to your sense for what is realistic.~
==Badangel~ I'm sure that tryin' more on you than some harmless glances would stress my good luck beyond reason.~
==BSandr~(Laughs) We sure understand each other here.~EXIT

CHAIN
IF WEIGHT #-6~Global("AngelinWD","LOCALS",1) ~ THEN Badangel WDComand
~This place kinda gives me a strange feeling...~
DO~SetGlobal("AngelinWD","LOCALS",2) ~
==BSandr~No wonder, it is the house of the Commander of the Waterdeep Forces.~
==Badangel~ A kind of collegue then, I mean,...I was once commanding the Flaming Fist for a short while...eh?~
==BSandr~You would do good not to compare yourself with the current Waterdeep Commander, just as a friendly advice.~
==Badangel~Does he know my background, you think?~
==BSandr~SHE knows much more than that, much more than you would like anyone to know of you.~
==Badangel~She? Someone I knew in the past.~
==BSandr~Her name is Shar-Teel Dosan.~
==Badangel~Eh...she..is..commander..of..the..Waterdeep..Forces??...Chief, I best stay outside while you get into the lioness' den.~
END
++~It's time to face the facts, Angelo. Be a man and face her, ask her for forgiving and such.~EXIT
++~Fine, you coward, you weasel, hide in the bushes while I visit the Commander.~EXIT

