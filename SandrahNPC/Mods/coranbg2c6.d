//C6Coran in BG2

INTERJECT_COPY_TRANS C6Coran 6 SanMeetCorBG2a
== CVSANDRJ IF~ InParty("CVSandr")~ THEN ~ So Safana has become the lucky one after all.~
== C6Coran  IF~ InParty("CVSandr")~ THEN ~ Hey, sweet kitten! So good to see your beautiful face once again. Your beauty once again outshines the darkness of this moment...ah, yes , Safana is the lady of the heart you refused to possess, my kitten.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN ~ Maybe only a thief could be able to steal the heart of another thief then.~
== C6Coran  IF~ InParty("CVSandr")~ THEN ~ Nothing on this plane could be kept from the reach of Mystra's grandchild had she really wanted to possess it. But none of us is complaining, am I right, kitten? We had our sweet moments and I for my part do not regret any of it.~
== CVSANDRJ IF~ InParty("CVSandr")~ THEN ~ Neither do I, my master thief. But now let us know more of the problem at hand.~
END


//Meet Coran again
CHAIN
IF~~THEN CVSandrJ SanCorRetBG2HadBab
~(Laughs.) You are really badly in need of some comfort if you even crawl to me once again. I tell you what, my sweet thief, let us celebrate as Safana's memory has deserved it, both knowing it will be the last time between us ever.~
== C6CORAN ~ You will not regret it, kitten...though it may well be that I will regret it, tasting your sweetness once again and knowing it will be never again.~
== CVSandrJ~ Now, do not complain about what you will not have but enjoy what you will receive tonight.~
DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT


CHAIN
IF~~THEN CVSandrJ SanCorRetBG2HadNotBab
~(Laughs.) You are really badly in need of some comfort if you even crawl to me, Coran. I tell you what, my sweet thief, let us celebrate as Safana's memory has deserved it, both knowing it will be one time only between us ever.~
== C6CORAN ~ You will not regret it, kitten...though it may well be that I will regret it, tasting your sweetness once and knowing it will be never again.~
== CVSandrJ~ Now, do not complain about what you will not have but enjoy what you will receive tonight.~
DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT

EXTEND_TOP C6CORAN 51 #1
IF~ InParty("CVSandr") GlobalGT("SanCorbabe","GLOBAL",1)~ THEN GOTO 222
IF~ InParty("CVSandr") GlobalLT("SanCorbabe","GLOBAL",1)~ THEN GOTO 223
END

APPEND C6CORAN
IF~~THEN BEGIN 222
SAY ~So, my sweet kitten, here is your humble thief once again kneeling before you, my goddess, my healer, in need and begging for your forgiveness.~ 
IF~~ THEN EXTERN CVSandrJ SanCorRetBG2HadBab
END

IF~~THEN BEGIN 223
SAY ~So, my sweet kitten, here is a humble thief kneeling before you, my goddess, my healer, in need and begging for the kindness of your heart.~
IF~~ THEN EXTERN CVSandrJ SanCorRetBG2HadNotBab
END
END


