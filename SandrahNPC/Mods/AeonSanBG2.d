CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",1)~THEN 1XAEONB SanMoonbl1
~Say, my beauty, are you staring at me or at the sword I carry?~
DO~SetGlobal("SanAeonB","LOCALS",2)~
==BSandr~...sorry...what did you say?~
=~*Sandrah obviously recovers from some deep thoughts before she realises her surroundings again.*~
==1XAEONB~I had really hoped it was me you were staring at for the last half hour, not the moonblade I carry. (Smile)~
==BSandr~Oh, I see what you mean. I am sorry for having irritated you. No, I was just in some deep memories that were triggered by that blade...a man I once knew...~
==1XAEONB~A lucky man as he must mean more to you than the one standing before you right now.~
==BSandr~(Smile) I hope he considered himself lucky during the time we were together, even if happiness was not his primary virtue. An elven swordbearer suffering hard from his responsibilities.~
==1XAEONB~A woman like you should have been able to lighten even such a guy, I dare to say.~
==BSandr~I hope I did. For him the moonblade meant a heavy burden of responsibility. It seems that even if your blade chose you in a way only elves are normally chosen, it makes no such demands on you.~
==1XAEONB~I agree, it's strange somehow. It looks like even your tomes and lore cannot answer that riddle.~
==BSandr~Not yet, I am afraid. maybe if we gather more facts over time, I might be helpful.~
==1XAEONB~Maybe a little more personal interest in the swordbearer would help?~
==BSandr~(Smile) Another day, Aeon...I confess guilty of not being able to cast the memories aside so easily that came up today.~
==1XAEONB~Caring deeply is no sin, Sandrah. It makes your presence even more precious.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",3)~THEN 1XAEONB SanMoonbl2
~I have always found that females of my age lack the personality and passion to make them interesting for me.~
DO~SetGlobal("SanAeonB","LOCALS",4)~
==BSandr~Your choice of Rea is the consequence...even, I had the impression she rather has chosen you than the other way  round.~
==1XAEONB~You are a keen observer, Sandrah.~
==BSandr~You mean, for a female of my age...~
==1XAEONB~Hm...you are...roughly about my age, aren't you? My initial remark may have just been a bit global, are you trying to say that?~
==BSandr~You said I am a good observer - probably you are none. This may turn out a crucial mistake for one who sets out to be a great adventurer.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",5)~THEN 1XAEONB SanMoonbl3
~What does that sceptical look mean, my beauty?~
DO~SetGlobal("SanAeonB","LOCALS",6)~
==BSandr~ I am still considering Irenicus' words to you on the initial meeting.~
==1XAEONB~He seemed to know me, yes, and he expected me in <CHARNAME>'s company for some reason.~
==BSandr~The moonblade you carry, the elven weapon. It is no coincidence you found it - I would rather say, the blade found you. And probably it also is responsible for your meeting with us.~
==1XAEONB~You seem to believe in those Seldarine, the elven gods, he mentioned and some hidden fate?~
==BSandr~Even if my believe is that we are all masters of our own fate, I cannot deny that some of us seem to attract the interest of the celestials...~
==1XAEONB~...including yourself, and of course, <CHARNAME>. But why me?~
==BSandr~Why you, I cannot say - yet. However, we already have found some indications that this Irenicus and his sister are somehow connected to some elven disaster. I even suspect them to be exiled elves. Elves at war with some elven community. The interest of the Seldarine in the case is plausible.~
==1XAEONB~It would at least connect my moonblade with Irenicus...it still does not connect me to the whole case.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",7)~THEN 1XAEONB SanMoonbl4
~I've made a fool out of myself, a blind fool, right?~
DO~SetGlobal("SanAeonB","LOCALS",8)~
==BSandr~The love of elder women may be dangerous, especially if you do not know enough of their past.~
==1XAEONB~You were suspecting her, I know you well enough by now. Why didn't you warn me if you are my friend and companion?~
==BSandr~Would you have listened? Would you still consider me friend and companion after any unproven accusation I could have made? ~
==1XAEONB~...probably not - yes, a blind fool unable to tell friend from foe. You would have wasted your time warning me and risk any friendship. Some younger women really deserve to be investigated deeper than I gave them credit before.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",9)~THEN 1XAEONB SanMoonbl5
~My beauty, you look like you are the one who is in need of a healer this time?~
DO~SetGlobal("SanAeonB","LOCALS",10)~
==BSandr~Thank you for this *compliment*, do I really look that bad?~
==1XAEONB~Hm, I would say, you look concened - missing a bit of your usual cheerful self.~
==BSandr~It is the concern of a healer who is aware of her limits. I need not even a close inspection to know about your condition and occasional pain attacks.~
==1XAEONB~In this case you'll also know that I'm quite capable to handle it and are not in need of a sickbed with a helping nurse ready at my side - even, now that I come to think of it - why not?~
==BSandr~It is good to see that you keep your spirit up. Once these turbulent days calm down for a while and some rest is allowed to us, there might be a chance to do something for your health.~
==1XAEONB~I promise not to die until that day, hey. And while we're out here in the wilderness, I wouldn't send that aforementioned nurse from my bedside just in case she should turn up. There is nothing wrong with me in that department, believe me.~
==BSandr~(Smiles) I would rather inspect this myself than solely rely on your word, Aeon.~
==1XAEONB~I won't run away, my beauty.~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",11)~THEN 1XAEONB SanMoonbl6
~You know how thin my chances are, don't you?~
DO~SetGlobal("SanAeonB","LOCALS",12) SetGlobalTimer("AeonPoolQuestTimer","GLOBAL",THREE_DAYS)~
==BSandr~Rea's attack has worsened your heart's weakness more than I had diagnosed initially. We must visit the pool urgently as I will not have the necessary time to heal you while we have to travel and persue <CHARNAME>'s quest.~
==1XAEONB~Do you believe in the ability of that pool, tell me honestly?~
==BSandr~I do. We have made some experience already with a similar place named Sharkta Fai. Given that your crystal pool has equivalent abilities we can use it to restore you. ~
==1XAEONB~(He takes her hand and holds it silently for a minute.) You and <CHARNAME>...it's probably the greatest gift to a man to have companions such as you in such an hour of need.~
=~(He kisses Sandrah's hand and quickly turns and moves away.)~EXIT

CHAIN
IF WEIGHT #-3~Global("SanAeonB","LOCALS",13)~THEN 1XAEONB SanMoonbl7
~My beauty, are you aware of the fact that my blood brother shares EVERYTHING with me now?!!~
DO~SetGlobal("SanAeonB","LOCALS",14) ~
==BSandr~What does that include according to your understanding?~
==1XAEONB~Well, obviously his mistress, don't you agree...especially on such nights as this...eh, I mean, the responsibility to take care of her and to protect her.~
==BSandr~And do I appear to be endangered to you and in need of such care and protection?~
==1XAEONB~Every fair maiden would be on such a night, am I right? ~
==BSandr~Too bad that <CHARNAME> cannot give to another what is not his property...and for protection - you may have been successful in your attempt had you asked ME to protect YOU.~
==1XAEONB~Hey, you'll have to admit the price was worth the try, my beauty. (Laughs) There will be other evenings when I can take my chance.~
==BSandr~Do not let <CHARNAME> know about your interpretation of brotherly love.~ EXIT


INTERJECT 1xaeo01J 324 SanAeonAtt
== CVSANDRJ IF ~InParty("CVSandr") ~ THEN~(Sandrah has knelt down beside you and expertly applies some liquid to Aeon's lips.) Give him some minutes, <CHARNAME>, do not worry too much, he will recover.~
END 1xaeo01J 326

EXTEND_BOTTOM 1xaeo01J 448
IF~InParty("CVSandr")~THEN REPLY~You should know about Sandrah and me unless you are completely blind.~GOTO 455
END

EXTEND_BOTTOM 1xaeo01J 461
IF~InParty("CVSandr")~THEN REPLY~I've never known a more passionate...hey! What are you aiming at, *friend*?-~GOTO 462
END