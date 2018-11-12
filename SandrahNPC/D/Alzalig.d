BEGIN Alzalig

IF ~NumTimesTalkedTo(0) !AreaCheck("CVDre3") InMyArea("CVSandr")~THEN BEGIN FoundAlz
SAY ~Have you got the items, slave? Await your punishment for being so late!~
= ~Stop! You are not my unfaithful duergar slave. Visitors? Here? ~
= ~Minions attack!~
IF ~~THEN REPLY ~Oh, they are out of service, I think. I take it you are Alzaligrundel? ~GOTO FoundAlz1
END

IF ~~THEN BEGIN FoundAlz1
SAY ~What the hell (cough) - I mean, what is going on here? My minions killed, my duergar messenger who is the only one to get out from this damned tunnels has not returned...~
= ~...instead there is you. But you must have used the slave's scroll to get inside. Have you killed him? ~
IF ~~THEN REPLY ~No, we know nothing of him, we just found the talking scroll. ~GOTO AlzCoinc
IF ~~THEN REPLY ~We have not come to discuss with you. All we want is your black heart...~GOTO NarHeart1
IF ~~THEN REPLY ~Your last battle with Naronguth left you both in a kind of trap it seems. And things have not improved for you since.~GOTO NarArch
END

IF ~~THEN BEGIN AlzCoinc   
SAY ~Are you kidding me, mortal?~
IF ~~THEN REPLY ~The scroll was just found by coincidence. It had a lot to tell anyway. For example about your arch enemy. ~GOTO NarArch
END

IF ~~THEN BEGIN NarArch
SAY ~HA, so the arch enemy Naronguth is once again behind all this. And he sends your pathetic little group to defeat me? His jokes get worse each time around. ~
= ~And you, little fools, will suffer an early death for your impertinence.~
IF ~~THEN REPLY ~It seems to me, you are already weakened enough not to cause too much of a threat to us. We need your heart and we will take it. ~GOTO 2ndDeal
IF ~~THEN REPLY ~Wrong, we are not in league with Naronguth. It is just that he has something in his possession that is needed for the sake of the realms outside. His price for it is your heart. We cannot leave here without it.~GOTO 2ndDeal
IF ~~THEN REPLY ~Were it not for the shard we desperately need, we may let you go. We do not care about you or your enemy or your endless war. But the fate of the realms that we call our home depends on our success. The only way for us is take your demon heart.~GOTO 2ndDeal
END

IF ~~THEN BEGIN 2ndDeal
SAY ~My heart, my heart! What in all of Faerun is so important that you dare to attack me, foolish mortals? ~
IF ~~THEN REPLY ~Elminster's Shard, the gift of Mystra. ~GOTO AlzEnd
IF ~~THEN REPLY ~It is a gift of Mystra that helps our most potent mage to secure our lives and lands against destruction from evil. ~GOTO AlzEnd
IF ~~THEN REPLY ~In the name of Elminster and Mystra, my friends, attack this monster!! ~GOTO AlzEnd
END

IF ~~THEN BEGIN AlzEnd
SAY ~Hold it for a moment. Mystra! Elminster! The most fearful powers of your realms seem to be behind you. If I kill you now, others will just follow where you have failed.~
= ~As much I like to see all that bloodshed, it will divert me too much from my urgent task to deal with Naronguth. So you need a black demon heart to get your artefact from the arch enemy. ~
= ~That can be done without any of us loosing our lives.~
= ~I have this fresh demon's heart from one of my family that was killed in our latest fight. It is of my own blood, so the arch enemy will take it as mine. Take it and go. ~
IF ~~THEN REPLY ~(Sandrah silently nods at you in counsel) I hate to let such a one as you get off my hook, but it makes sense right now. I accept. ~DO ~IncrementGlobal("Sanpoints","GLOBAL",1) GiveItemCreate("AlzaHrt2",Player1,0,0,0) AddJournalEntry(@58,QUEST) ~EXIT
IF ~~THEN REPLY ~You do not believe in earnest that this will work. You would do anything to save your miserable life. The fate of the realms is at the stake. Die, monster. ~GOTO Alzfight
IF ~~THEN REPLY ~I am relieved we have come to an agreement without bloodshed. Just let us get this heart to Naronguth for our deal before you may kill him yourself, goodbye. ~DO ~GiveItemCreate("AlzaHrt2",Player1,0,0,0) AddJournalEntry(@58,QUEST) ~EXIT
END

IF ~~THEN BEGIN Alzfight
SAY ~Fools! ~IF ~~THEN DO ~ChangeEnemyAlly("Alzalig",ENEMY) Attack(Player1)~EXIT
END

CHAIN
IF ~~THEN Alzalig NarHeart1
~What? ~
==CVSandrJ ~If this one is as dumb as the last one, we may find a way to outwit him instead of fighting, <CHARNAME>. ~
END
++~Worth a try.~+ NarArch