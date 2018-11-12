APPEND IMOEN

IF WEIGHT #-2~ NumberOfTimesTalkedTo(0) ~THEN BEGIN San0 
SAY ~I'm surprised that stuffy ol' Gorion let you away from your studies and chores. That ol' fiddle faddle. I snuck off too. Old Puffguts Winthrop was looking for me, but I've got all day to do his chores. You have time for a story today?  No, I can tell you don't.  What have ya been up to?~
IF ~~THEN REPLY~I'm afraid I cannot chat today, little one.  My foster father wishes me to prepare for a journey, but will not say to where.~GOTO San1
IF ~ ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~THEN REPLY ~I am sorry, child, but I am not to tell anyone what I am doing. I must go. You should not tarry about either. Winthrop will want the beds turned down after you are done in the stables.~GOTO San2
IF ~ ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~THEN REPLY ~Leave me be! I've no time to waste on you today, child!~GOTO San4
IF ~ ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~THEN REPLY ~I am sorry, child, but I am not to tell anyone what I am doing. I must go. You should not tarry about either. Winthrop will want the beds turned down after you are done in the stables.~GOTO San3
 IF ~ ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)~THEN REPLY~Leave me be! I've no time to waste on you today, child!~GOTO San4
END

IF ~~THEN BEGIN San1 
SAY ~Little one?  I'm not much younger than you, though you sure got tall fast.  Relatively, anyway.  A journey, eh?  I never get to travel.  Wish I could go with ya.  Yep, I really wish I could.  Yessir.  Really do.~
IF ~~THEN REPLY ~All right all right.  I get the message.  I'll ask if you can go with us.~GOTO San6
IF ~~THEN REPLY ~There is no way you can come.  Gorion would never allow it.~GOTO San7
IF ~~THEN REPLY ~You would only slow us down.  Stay here where you are useful.~GOTO San8
END

IF ~~THEN BEGIN San2 
SAY ~Child?  You are only a few seasons older.  Hrmph!  I didn't care where you were off to anyway. Nope, not at all.  You just run along on your little errand.~
=~(Sigh) I never get to travel.  Wish I could go with ya.  Yep, I really wish I could.  Yessir.  Really do.~
IF ~~THEN REPLY ~All right all right.  I get the message.  I'll ask if you can go with us.~GOTO San6
IF ~~THEN REPLY ~There is no way you can come.  Gorion would never allow it.~GOTO San7
IF ~~THEN REPLY ~You would only slow us down.  Stay here where you are useful.~GOTO San8
END

IF ~~THEN BEGIN San3 
SAY ~If you say so.  You sure picked up a lot from old Gorion.  He never tells it straight neither.  Good luck on your trip... er... I mean, good luck with whatever you are doing.~
IF ~~THEN REPLY ~Wait!  What do you know of my journey?  Gorion has said little to me and less to anyone else!~GOTO San7
IF ~~THEN REPLY ~Sounds like you've been nosing around where you shouldn't have!  Stay out of my business, if you please.~GOTO San8
END

IF ~~THEN BEGIN San4 
SAY ~No need to get all rude.  We're friends, so you just have to say butt out and I will.  I can take a hint as quick as I can take a wallet.  ~
=~(Sigh) I never get to travel.  Wish I could go with ya.  Yep, I really wish I could.  Yessir.  Really do.~
IF ~~THEN REPLY ~All right all right.  I get the message.  I'll ask if you can go with us.~GOTO San6
IF ~~THEN REPLY ~There is no way you can come.  Gorion would never allow it.~GOTO San7
IF ~~THEN REPLY ~You would only slow us down.  Stay here where you are useful.~GOTO San8
END

IF ~~THEN BEGIN San6 
SAY  ~Oh don't be silly, Gorion would never even let you finish the sentence.  Especially after what that letter of his said... er... did I say that?  No, of course I didn't.  Never saw no letter.  Nope.  I'll just get back to work now.  You had better go.  Gorion is waiting.~
IF ~~THEN GOTO San10
END

IF ~~THEN BEGIN San7
SAY ~Oh I know.  Old stick-in-the-mud that he his, all worried about nothing, I'm sure.  Better go now, 'cause you've got a long ways to travel... not... not that I would know, especially since I didn't peek at old Mr. G's private letters.  No sir.  Better go now, byebye.~
IF ~~THEN GOTO San10
END

IF ~~THEN BEGIN San8 
SAY ~Well that was certainly rude, you rumduke.  Fine, I'll stay here and mind my own beeswax.  You better get going... don't want to keep Mr. G waiting.~
IF ~~THEN GOTO San10
END

IF~~THEN BEGIN San10
SAY~But maybe and maybe there's a bit I know that interest you, yes...guess I think it does - if not, bah, gonna tell it to you anyway.~
=~There's been this girl around last night, actually she was lookin' for you but Gorion chased her away. So we had a little talk, girl's talk - she's really nice, she's a Priestess of Mystra, you must know...~
IF ~~THEN REPLY ~Does this story lead to anything in the long run, Imoen?~GOTO San11
IF ~~THEN REPLY ~Oh, no, you're just wasting my time, Gorion's waiting.~GOTO San11
END

IF~~THEN BEGIN San11
SAY~Listen this is relevant and more relevant even as you go out on the road, it seems.~
=~Mystra, you know, the goddess of all magic.~
IF ~~THEN REPLY ~Imoen, Imoen, *I* know that.~GOTO San12
END

IF~~THEN BEGIN San12
SAY~Now...just imagine...I mean it will not happen, but just imagine...you go out on the road and all these adventures now wait for you out there. You NEED companions these days on the Sword Coast, so much is clear.~
=~Now imagine...yes? Yes! I know a bit of thieving, opening locks, finding traps, right?~
=~All there is to steal here in Candlekeep are scrolls...~
=~Scrolls full of spells, ya know. An' ol' Imoen ain't dumb. I read them and I read them again and guess what...with that girl yesterday - she showed me that little extra trick I needed...and there it was.~
IF ~~THEN REPLY ~Was what?~GOTO San13
END

IF~~THEN BEGIN San13
SAY~This! (She shows you a crumbled pink berry of a type that definitely does not grow in or around Candlekeep.)~
=~I didn't pick it, slowpoke! I materialised it out of the air, guess that - I AM A MAGE!~
=~Well, yes...I mean it's a little berry - well, yes, but it's a starter you see. I got the feeling for it, a bit of more training and you'll see...~
=~So now - if you had a choice to have a companion out there with some abilities to help you along, what would be your choice?~
IF~~THEN REPLY~A thief to open locks and find traps would be helpful.~DO~SetGlobal("Imoenclasschoice","GLOBAL",1)~GOTO San14
IF~~THEN REPLY~Someone to throw fireballs or conjure up pink berries could be of use.~DO~SetGlobal("Imoenclasschoice","GLOBAL",2)~GOTO San14
IF~~THEN REPLY~I read you like an open book in the library over there, little one. Of course I would need a thief and a mage to get along. Best if that could be the same person doing both.~DO~SetGlobal("Imoenclasschoice","GLOBAL",3)~GOTO San14
END

IF~~THEN BEGIN San14
SAY~Ha, gotcha! That's me...Imoen the Magnificent!~
IF~~THEN EXIT
END

END