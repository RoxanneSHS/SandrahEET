CHAIN
IF WEIGHT #-9~Global("SanHealanom","GLOBAL",4)~ THEN Banomen SanHeal1
~Priestess, thanks and no thanks. You are aware that I am myself a priest and able to heal myself. I have no need for your skills from doubtful resources.~
DO~SetGlobal("SanHealanom","GLOBAL",5)~
==BSandr~Sure, Anomen, one tends to forget the obvious in the heat of the battle. My spell was cast as an almost automatic reflex when I saw a companion in need.~
== Banomen~Yes, yes, your apology is accepted, just don't do it again.~
==BSandr~Apology? Doubtful resources? I draw my healing power from the Weave itself...~
== Banomen~Mylady, let us stop this discourse. Your access to the Weave is granted to you by a goddess of dubious reputation.~
==BSandr~One more word of insult to Mystra and the damage you receive will be more than YOUR skills will be able to heal, HELMIT!~EXIT

CHAIN
IF WEIGHT #-10~ Global("SanHealanom","GLOBAL",6)~ THEN Banomen SanDoubt1
~Priestess, your role as <CHARNAME>'s advisor and counsellor makes me nervous. I am not sure your infiltrations will steer our group on the righteous way always.~
DO~SetGlobal("SanHealanom","GLOBAL",7)~
==BSandr~We travel together since <CHARNAME> had to leave Candlekeep on the day <PRO_HESHE> lost Gorion. So far our joint actions and decisions have certainly made a clear statement with respect to our alignment. You are not our judge, Helmit.~
== Banomen~You spit out the name of my god as if it's meant to be a cuss.~
==BSandr~ I heard you discrediting my Goddess whenever you saw a chance to do so.~
== Banomen~A goddess who grants her gifts to good or evil without responsibility. I admit you as her priestess seem to have a slight tendency to act honorable, but she...~
==BSandr~ ENOUGH!! I warned you before - I have *a slight tendency* to smite bigotry just the same as evil.~
== Banomen~I was just...~
==BSandr~(Anomen's words are adressed to Sandrah's back only. She has already turned and walked away. You can see that she restrains her hand twice to draw her deadly hammer from her girdle.)~EXIT

CHAIN
IF WEIGHT #-11~Global("SanHealanom","GLOBAL",9) ~THEN Banomen SanSlavChiHunt1
~What...?~  
DO~  SetGlobal("SanHealanom","GLOBAL",10) ~
==BSandr~ OH NO! That poor child. It is not dead long but already beyond the reach of my skills.~
==Banomen~Is there nothing your significant healer skills can do here, Sandrah?~
==BSandr~(She sadly shakes her head.) The poor one was totally exhausted already when she fell down to die. She must have greeted death as the release from her martyrdom.~
==Banomen~What can happen to a child that she will greet death so willingly?~
==BSandr~(She has knelt down by the dead body and closes the girl's starry eyes.) Look at these marks and bruises on her ankles and her wrists, they are fresh. She must have been in chains!~
==Banomen~A prisoner? - NO, a slave!~
==BSandr~I am sure of that, Anomen, and she is dead not longer than an hour. She cannot be the only one in this forsaken area, look at the broken waggon here, it bears no marks of decay.~
==Banomen~A slaver's caravan must have come through here and left its horrible trail.~
==BSandr~They cannot be far. <CHARNAME>, we must make haste and follow them. We cannot let them escape.~
==Banomen~I agree with Sandrah - we must destroy them and free their prisoners by all means!~
END
++~Well...~+ SanSlavChiHunt8

CHAIN
IF~~THEN Banomen SanSlavChiHunt8
~You hesitate?~
==BSandr~You hesitate, <CHARNAME>?~
END
++~Consent between you two? A new and welcome situation. Fine, let us waste no more time with talk. The road goes west - they must have followed it otherwise we should have seen a sign of them on the way we came.~EXIT
             

CHAIN
IF WEIGHT #-12~Global("SanHealanom","GLOBAL",12)~ THEN Banomen SanAnomPe
~Ehem, Sandrah?~ 
DO~ SetGlobal("SanHealanom","GLOBAL",13)~
==BSandr~Are you satisfied with the outcome of our adventure, Anomen?~
==Banomen~Your motivations and lines of action are not always easy to comprehend, Sandrah. Ah, but, yes, I think in the end I am convinced that you try to do the right things - in your way.~
==BSandr~I take this as a *yes* then in answer to my question.~EXIT

CHAIN
IF WEIGHT #-13~Global("SanHealanom","GLOBAL",15)~ THEN Banomen SanAnomPe
~Sandrah? I have now witnessed some of your deeds with my own eyes and found your conduct quite acceptable.~
DO~ SetGlobal("SanHealanom","GLOBAL",16) RealSetGlobalTimer("SanAnomT","LOCALS",1800)~
==BSandr~(She raises an eyebrow slightly.) Acceptable. By a man like you, mh.~
==Banomen~Ehem, sometimes even slightly heroic, if I may say. Do you care to hear about some of my own adventures?~
==BSandr~Oh, Anomen, really? This would not be necessary, they are the talk of Amn. Just yesterday I heard about that paladin who saved a scared noblewoman from an escaped gibberling on the Promenade.~
==Banomen~Escaped gibberling...?~
==BSandr~No need to be overly modest, paladin, I am sure that the hero was you.~
==Banomen~Eh...~EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",1) ~THEN Banomen SanSaerAdv
~(Sigh, almost to himself) I hope I will do the right thing...~
DO~SetGlobal("SanAnomenDecide","GLOBAL",2) ~
==BSandr~We have not found common views very often in the past, Anomen, but maybe it would still help to listen to some neutral counselor's advice in this case.~
==Banomen~You are right, we mostly disagree...Still it may be a good test for my own decision to compare it against yours.~
==BSandr~I will not decide for you, Anomen, I just ask you to consider the facts.~
=~All we have at the moment are your father's words that accuse Saerk of Moira's death. You know well those are words fuelled by bitterness, hatred and ...alcohol. Do we really kill a man on basis of such evidence.~
==Banomen~He is my father - and Moira is dead without doubt. You have seen her urn yourself.~
==BSandr~This murder of a noble must have been investigated by the officials already, right. We are here within sight of the council building. Will it really hurt us to ask what they have found?~
=~If they have proof for Saerk's guilt you can rely on my assistance against the villain, I swear it.~
==Banomen~Hm, you are right. The order will accuse me of murder should Saerk really be innocent. I will ask <CHARNAME> to lead us to the council building for a few minutes.~EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",6) ~THEN Banomen SanSaerkil
~Sandrah, we travel together now for some while and I had the chance to see a number of your righteous and heroic deeds...~
DO~SetGlobal("SanAnomenDecide","GLOBAL",7) ~
==BSandr~STOP IT!! NO FURTHER WORD. You are not one to issue any judgement upon anyone else, killer of innocents.~
==Banomen~ Moira had to be avenged...~
==BSandr~Just as Surayah has now to be avenged? I would do that myself and strike you down right here would I believe that blood pays for blood. To execute you would only mean more bloodshed. For me, Anomen, you are already dead.~EXIT

CHAIN
IF WEIGHT #-16~Global("SanAnomenDecide","GLOBAL",8) ~THEN Banomen SanSaerkil2
~Thank you, healer. May I use this opportunity to talk...~
DO~SetGlobal("SanAnomenDecide","GLOBAL",9) ~
==BSandr~ (Sandrah has moved away already - wordlessly and stone faced.)~DO~RunAwayFrom("Anomen",20)~EXIT


APPEND Bylanna
IF WEIGHT #-5~InParty("Anomen") InParty("CVSandr") !StateCheck("Anomen",STATE_SLEEPING)
Global("SanAnomenDecide","GLOBAL",2) Global("Anomen","LOCALS",0) ~ THEN BEGIN SanAnoDec
  SAY ~May I be of help to you citizens?~
  IF ~~ THEN DO ~SetGlobal("Anomen","LOCALS",1)
~ EXTERN ~ANOMENJ~ 130
END
END