CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",1)~THEN BCMNikit Sandrah1
~You were already involved with <CHARNAME> when <PRO_HESHE> crushed Section back in Baldur's Gate, always fighting evil and healing good.~
DO~SetGlobal("SanHealNiki","GLOBAL",2) RealSetGlobalTimer("SanHealNikiTi","LOCALS",2100)~
==Bsandr~At that time we were hunted by a faceless organisation. We defended ourselves regardless of any notion of good or evil. Even today those questions are secondary to me.~
==BCMNikit~You're not as neutral as your gooddess Mystra appears to be. You have a tendency to goodness in you.~
==Bsandr~Despite being a Harper's daughter - and one who is widely impregnated by her father's example - I would not commit myself to such a statement. I mostly act out of practical motifs rather than to keep some imaginary balance of goodness.~
==BCMNikit~You do just naturally what I had to learn the hard way. I have the feeling I need to compensate for the evil I did with Section in the past. I had the feeling you had a similar goal.~
==Bsandr~You experienced it yourself, evil always has enough resources to feed on - greed, jealousy, envy or poverty to name a few. It does not need my help. If I can move the scales a bit to give the good side a slight advantage, this may not be balance but a Toril I like to live on.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",3)~THEN BCMNikit Sandrah2
~Where did you learn to fight with that heavy hammer, Sandrah, it's not what one suspects from a fragile person like you?~
DO~SetGlobal("SanHealNiki","GLOBAL",4) RealSetGlobalTimer("SanHealNikiTi","LOCALS",2100)~
==Bsandr~My drow combat teacher discovered my natural ability for this weapon - after I made various attempts with lighter tools that were not very successful.~
==BCMNikit~A drow? Even more strange, I never heard of drow using war hammers. Flails, yes, but hammers?~
==Bsandr~It was in fact a discovery by incident but Drizzt instinctively interpreted my skill correctly and taught me the initial facts even though he never used the weapon himself.~
=~*You hear Sandrah report the well-known story of her first meeting with Drizzt Do'Urden to Nikita, her eyes sparkling enthusiastically when thinking of the drow.*~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",5)~THEN CMMadel SandrahP
~Nikita?~
DO~SetGlobal("SanHealNiki","GLOBAL",6) SetGlobal("LockedDoor1001b","AR1000",1)~
==BCMNikit~Madeline?~
==CMMadel~Yes, yes, we are well aware for your weak sympathy for others, Nikita. I wonder why you were ever with us. But now...~
=~You travel with one who is to be terminated. ~
==Bsandr~The one who paid and ordered <CHARNAME>'s termination is long defeated. He was a power hungry tyrant and we ended his bloody trail.~
==BCMNikit~Section no longer exists, Madeline. Their own corruption was their end.~
==CMMadel~How can you err so much, fools. <CHARNAME> is a danger to all. And you have become an open traitor, Nikita. Cancellation will go forward against both of you. Section must be warned.~DO~MoveToPoint([3560.1640]) Wait(2) DestroySelf()~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",6)~THEN BCMNikit Sandrah3
~I looks like part of Section has survived still...Even worse, they are still after you.~
DO~SetGlobal("SanHealNiki","GLOBAL",7) ~
==Bsandr~They continue even after Sarevok no longer can pay them?~
==BCMNikit~Section principles, Sandrah. They accepted the contract and they will fulfil it.~
==Bsandr~It looks like your former friend forgot to lock that door where she vanished in her hurried flight. We better follow her before Section is warned and the passage is blocked again.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",7)~THEN CMMadel SandrahT
~Beware, Wetler, they have come...I must have kept the door unlocked in my surprise...~
DO~SetGlobal("SanHealNiki","GLOBAL",8) ~
==BCMNikit~Wetler? The lowest scum of Section has made his way to the top. Probably a result of the vacuum that <CHARNAME> and Sandrah left in the management of the organisation. If I ever needed proof that Section has long seized to serve an honest purpose I have it now with such an evil bastard in charge of them.~
==CMMadel~We should seize the opportunity while we have them here in our quarters.~
==CMGeorge~Nikita - what a surprise. Have you brought our main targets for termination, how splendid. ~
==BCMNikit~I have not brought anyone...~
==CMMadel~Ha, she's a traitor to our course, Wetler, don't you see it. She's on their side, not ours.~DO~Enemy()~
==CMGeorge~Madeline, she was always the clever one. I'm sure she infiltrated them to bring them to us. She could have given us a short advance notice so we could've prepared a warmer welcome for them.~
==Bsandr~Give up, Wetler, neither did Nikita betray us nor will Koveras alias Sarevok reward you for your deeds. The whole game is over since long time.~
==CMGeorge~What a sad case of complete ignorance, little beauty. Too late to learn your lessons, I'm afraid.~DO~Enemy()~
END
++~Nikita, is that true? This is your trap for us?~DO~ReputationInc(-2)~EXIT
++~Nikita did not betray us, Wetler. We will end your crusade of madness with her help.~DO~AddexperienceParty(6800)~EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealNiki","GLOBAL",9)~THEN BCMNikit Sandrah4
~That was an unpleasant surprise. I hope it was the last bit left of Section.~
DO~SetGlobal("SanHealNiki","GLOBAL",10) ~
==Bsandr~A shadow of the past that has loomed over you. I hope it will get lighter for you from now on.~
==BCMNikit~I already feel it, Sandrah, if only for the one reason that I experienced your trust in me.~
==Bsandr~Trust was not what held your former companions together.~
==BCMNikit~In the beginning I thought so. They were family and religion for me, all the things I never had before. But doubt soon manifested in me the longer I witnessed their deeds - our deeds. ~
==Bsandr~They garnished their criminal activities with loads of propaganda about the evil they defeated.~
==BCMNikit~This is true for the period when you had your encounters with them. What became hollow justification of murder by that time was honest belief when I first joined them.~
==Bsandr~What has changed their course so much?~
==BCMNikit~I'm not sure...maybe the lack of control. We were not responsible to anyone but ourselves. We killed people proclaiming we eliminated evil and we got away with it. That feeling of power over life and death was corrupting many of us.~
==Bsandr~<CHARNAME>, even without the heritage of Bhaal's blood such a development is possible. How I love and admire your strength to withstand your taint.~DO~AddSpecialAbility("CVDra21")~
END
++~I have something that Nikita did not have in Section, I have companions who care for me.~EXIT