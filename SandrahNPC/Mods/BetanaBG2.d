APPEND  CVSANDRJ

//Betana & Moxen
IF~Global("SanMoxen","GLOBAL",1)~THEN BEGIN SanMoxDislike1
SAY~Puuh, this sleazy mageling Moxen directly raises my sympathy for Betana. She sure has a good reason for her disappearance with such a guy to oversee her.~
IF~~THEN REPLY~I did not like him either. His ward will surely have a hard time if we should return her to him. ~GOTO SanMoxDislike2
IF~~THEN REPLY~We do not know the whole story - and we surely can need the reward he offers, so stay calm, will you, Sandrah.~GOTO SanMoxDislike3
END

IF~~THEN BEGIN SanMoxDislike2
SAY~I would prefer that we rather give her a warning and maybe even help her if we can - provided of course we find her first.~
IF~~THEN REPLY~Let us consult about the issue once we found her and know a few more facts.~DO~SetGlobal("SanMoxen","GLOBAL",2)~EXIT
IF~~THEN REPLY~We do not know the whole story - and we surely can need the reward he offers, so stay calm, will you, Sandrah.~GOTO SanMoxDislike3
END

IF~~THEN BEGIN SanMoxDislike3
SAY~I will keep my mouth shut for the time being, <CHARNAME>. You know me well enough, however, to imagine I will make my own decisions and provide you with my council when we have met her and found out more.~
IF~~THEN REPLY~(Smile) I'm sure nothing will prevent you from doing that.~DO~SetGlobal("SanMoxen","GLOBAL",3)~EXIT
IF~~THEN REPLY~(Sigh) I'm afraid nothing will prevent you from doing that.~DO~SetGlobal("SanMoxen","GLOBAL",3)~EXIT
IF~~THEN REPLY~Listen, Sandrah, and listen well. It's me who leads this group and you will do as I say. Full stop. ~DO~SetGlobal("SanMoxen","GLOBAL",3)~GOTO SanMoxDislike4
END

IF~~THEN BEGIN SanMoxDislike4
SAY~(The complete lack of any reaction from her leaves a stale taste in your mouth for quite a while.)~
IF~~THEN DO~IncrementGlobal("Sanpoints","GLOBAL",-3)~EXIT
END

IF~Global("SanMoxen","GLOBAL",2)Global("FindBetan","LOCALS",1)~THEN BEGIN SanMoxDislike5
SAY~A friendly wolf in this area, very strange, there is something magic about this creature, <CHARNAME>.~
IF~~THEN REPLY~You are right, Sandrah, it appears that Haiass feels it too.~EXTERN CVSANDRJ SanMoxDislike7
END

IF~Global("SanMoxen","GLOBAL",3)Global("FindBetan","LOCALS",1)~THEN BEGIN SanMoxDislike6
SAY~A friendly wolf in this area, very strange, there is something magic about this creature, Pelligram.~
IF~~THEN EXTERN CVSANDRJ SanMoxDislike7
END
END

CHAIN
IF~~THEN CVSANDRJ SanMoxDislike7
~You both seem to feel it.~
DO~SetGlobal("SanMoxen","GLOBAL",4)SetGlobal("FindBetan","LOCALS",2)~
== HAIASS~(Your wolf approaches the strange friendly creature wagging his own tail like signalling an invitation.)~
==PELLIG~(FEAR NOT, GIRL. They mean you no harm. I know who you are.)~
==CLFWLF~(Are you in my head, cat? I hear you talking...has my spell changed me so much?...)~
==PELLIG~(Your secret is safe with me, reveal it yourself when you decide the time is right.)~
END
++~(Sandrah looks at you questioningly. You are not sure if she has received the same telepathic transmissions from the animals that you think you have *heard*.) ~
EXIT

EXTEND_TOP CLFWLF 10 #1
IF~Global("SanMoxen","GLOBAL",4) ~THEN REPLY ~I too have enjoyed your company as a wolf.  Can I convince you to join me on further adventure?  You may leave whenever you wish.~DO ~SetGlobal("SeeMoxenDead","LOCALS",5)~GOTO 21
END

EXTEND_TOP CLFWLF 15 #1
IF~Global("SanMoxen","GLOBAL",4) ~THEN REPLY ~I too have enjoyed your company as a wolf.  Can I convince you to join me on further adventure?  You may leave whenever you wish.~DO ~SetGlobal("SeeMoxenDead","LOCALS",5) ~GOTO 21
END