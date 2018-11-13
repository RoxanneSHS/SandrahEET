BEGIN UCMGABRL

IF ~NumTimesTalkedTo(0)~THEN BEGIN 0
SAY ~Well, we have finally caught up with you <CHARNAME>. It was not an easy task, with all of those surface elves near the entrance, but none of the less here we are.~
IF ~~THEN REPLY ~Who are you and what do you want with me?~GOTO 1
END

IF ~~THEN BEGIN 1
 SAY ~Who am I? I was Gab'Riella Maelither, weapon master of House Maelither, but thanks to you I am now *Matron* Maelither.~
IF ~~THEN REPLY ~Thanks to us? What do you mean?~GOTO 2
END

IF ~~THEN BEGIN 2
 SAY ~(Sigh) You do not remember meeting a matron mother and her escort in the Underdark and killing them in the out skirts of Ust Natha?~
IF ~~THEN REPLY ~No.~GOTO 3
IF ~~THEN REPLY ~Yes, but she attacked us first.~GOTO 4
END

IF ~~THEN BEGIN 3
SAY ~You dare lie to me? May the Great Mother torture you for all enternity in the Demon Web Pits!~
IF ~~THEN DO ~SetGlobal("UCMGABEHOSTILE","GLOBAL",1) Enemy() ~EXIT
END

IF ~~THEN BEGIN 4
 SAY ~Yes, perhaps that could be the truth. She did have an arrogant superiority complex about her. She was always looking down on anyone, even her first born daughter, who always tried to be like what her mother wanted her to be. I should thank you for killing her since it makes me head of House Maelither now.~
IF ~~THEN REPLY ~Go with that feeling. I did you a favor and you can do me one by letting us go our way.~GOTO 5
END

IF ~~THEN BEGIN 5
 SAY  ~(A wild look flashes in her eyes.) I could do that, I really could but there's one little problem with that idea. Yes..... one little problem.~
IF ~~THEN REPLY ~Oh and what may that be Mistress Matron Maelither?~GOTO 6
END

IF ~~THEN BEGIN 6
 SAY ~Ha ha I like that. Trying to play suck up with me. You would have made a good little slave in House Maelither but back to our little problem. (She pauses as if she is confused.)~

IF ~~THEN REPLY ~(You wait wondering who in the nine hells let her out of her padded cell.)~GOTO 7
END

IF ~~THEN BEGIN 7
 SAY ~(You feel the hatred as she looks into your eyes.) No inferior surfacer touches, much less kills a drow and gets away with it! ELGG LIL OGGLIN! LOLTH TLU MALL; JAL ULTRINNAN ZHAH XUNDUS!!~

 
IF ~~THEN DO ~SetGlobal("UCMGABEHOSTILE","GLOBAL",1) Enemy()~EXIT
END

BEGIN UCMGMMAT

IF ~NumTimesTalkedTo(0)~
THEN BEGIN 0
SAY ~What's this?? Surface trash in our realm? From the look of things you came from that filthy Sahuagin city. They will pay dearly for letting the likes of you get past them. In the mean time you will most certainly die.~
IF ~~THEN  REPLY ~Hey hold on a minute! We've done nothing to you so why are you getting hostile with us?~GOTO 1
END

IF ~~THEN BEGIN 1
SAY ~You are inferior for one, two I had to speak your guttural language so you could understand me and three Lolth would reward me well for your sacrificial death.~
IF ~~THEN REPLY ~I see a flaw in this rash plan of yours "mistress". One it's not well thought out, two we are far better fighters then you and three dos lueth Lolth phuul rothe iblith!~
 GOTO 2
END

IF ~~THEN BEGIN 2
SAY ~(The Matron gives you an evil stare.) Sargtlins! Xun izil dos phuul quarthen lueth elgg nind!~
IF ~~THEN DO ~SetGlobal("UcmgMatronHostile","GLOBAL",1) Enemy() ~EXIT
END