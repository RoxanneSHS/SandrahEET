BEGIN CVSzas

CHAIN
IF~Global("Init","CVSH21",2)~THEN CVSzas Szass1
~Fools! Who dares to disrupt my all important activities? How can anyone enter here?~
DO~SetGlobal("Init","CVSH21",3)~
==CVSandrJ~Szass Tam, you have no idea who we are and why we are here?~
==CVSzas~You must have overcome the Watcher, Myrkul's faithful servant, to come here - how can that be?~
==CVSandrJ~It is a kind of habit in my family to do such things. My grandmother already deleted his former master.~
==CVSzas~MYSTRA!! Well, then I welcome you - your coming here voluntarily saves me a lot of time and effort.~
==CVSandrJ~I am just a priestess of the goddess but that would probably do for a mageling of your category. You do not really expect the goddess of all magic to come herself to end your spectacle.~
==CVSzas~Ah, but you are her grandchild and having you here will make her come herself sooner or later.~
==CVSandrJ~Is that why you are here, to lay a trap for Mystra, the guardian of the True Weave?~
==CVSzas~I laugh at the grand titles you spit out in abundance...*goddess of all magic*? The *true weave*. She is just another lackey of the Overgod. ~ DO~ ClearAllActions() StartCutSceneMode() FadeToColor([30.0],0) Wait(4) StartCutScene("DaWeav1")~ EXIT

CHAIN
IF~Global("Init","CVSH21",4)~THEN CVSzas Szass2
~Aaah, good, new power flows through me.~
=~You are talking to a true God serving no one but himself, the Lord of the Dark Weave.~
==CVSandrJ~Your ambition comes not unexpected to me, foolish as it may be if not to say self-destructive.~
==CVSzas~The only one in danger here is you - grandchild of Mystra.~
==CVSandrJ~The Dark Weave cannot be mastered by anyone, it is the pure negation of anything that exists within the Realms of the True Weave. You are a creature of the prime just like all of us here. The Dark Weave means anhillation to you as it would mean for all of us.~
==CVSzas~It is energy from the Dark Weave that already streams through me and lets this place here exist, foolish priestess. It increases with any new breathing of the Weaves until it will replace the minor energy of your Goddess' ward.~
==CVSandrJ~Bringing the energy of the True and the Dark Weave together will end in - nothing.~
END
++~Nothing?~+ Szass3

CHAIN
IF~~THEN CVSzas Szass3
~Nothing?~
DO~SetGlobal("Init","CVSH21",5)~
==CVSandrJ~They equal each other out, Szass, one cannot be where the other is, and the Dark and the true Weave both being nothing but pure energy bringing them together eliminates both - thus the result will be nothing and you will be the God of nothing.~
==CVSzas~First it will destroy Mystra.~
==CVSandrJ~ You still fail to understand, Szass Tam. The whole primary plane we exist on is made of the energy of the True Weave, and bringing the Dark Energy into here...~
==CVSzas~Aaah, here comes more...~DO~ ClearAllActions() StartCutSceneMode() FadeToColor([30.0],0) Wait(4) StartCutScene("DaWeav1")~ EXIT

CHAIN
IF~ Global("Init","CVSH21",6)~THEN CVSzas Szass4
~Your goddess will soon come as she feels the Weave weaken down here. It will be her end.~
DO~SetGlobal("Init","CVSH21",7) SetGlobal("SanHintFactory","GLOBAL",17)~
END
++~We will find a way to stop this madness, come Sandrah!~ EXIT
++~We will fight you right here, Szass Tam, we cannot let you go on.~ DO~ SetGlobal("SzassFight","Global",1) ActionOverride("CVSzass",Enemy())~EXIT
++~Sandrah, let us inspect this installation further, there will be a way to prevent more dark energy to come into here.~ EXIT

CHAIN
IF~Global("SzassLeaveEarly","CVSH21",1)~THEN CVSzas MustLeave
~Aah, Bhaalspawn, your disruption of the process here is enerving. This is just one of my opportunities and I will not waste my time defending it. I leave it to my assistants to clean up the mess you made here, including the removal of yourself. Winski and Narghal Rasz will await you outside.~
==CVSandrJ~ Winski Perorate?~
==CVSzas~He struggled a bit to have to return to life - eh, half-life, seeing it was Thay who had saved him - but his hatred against Rashemen made it acceptable for him. His long experience and complete lack of scruple are really valuable for me.~
=~But, my young priestess, you will really learn to love Narghal! He has kept his lust for a love slave like you even in his current state. Enjoy your new occupation.~DO~ SetGlobal("SzassLeaveEarly","CVSH21",2) SetGlobal("SanHintFactory","GLOBAL",23) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

