APPEND Balth

IF WEIGHT #-17 ~Global("DMWWmeldeathdialog","GLOBAL",3)Dead("sendai")Dead("abazigal")!Global("HadBhaal25Dream5","GLOBAL",1)~THEN BEGIN Sanwhatnow1
SAY ~It is done! <CHARNAME>, it is over! We are the last of the Bhaalspawns - Melissan is dead, the rest of the Five are dead! I was right to trust you. Together we have withstood Bhaal's evil taint.~
IF ~~THEN REPLY ~Is it over, though? What of Bhaal, himself? Is he still dead?~GOTO 207
IF ~Global("DMWWBvMEnd","GLOBAL",2)~THEN REPLY ~What did Melissan mean, though? Is Bhaal still going to rise?~DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 207
IF ~!Global("DMWWBvMEnd","GLOBAL",2)~THEN REPLY ~I spoke to the spirit of Yaga-Shura. He seemed sure that Bhaal was still rising, even so.~DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 207
IF ~~THEN REPLY ~It's not quite over yet, Balthazar. You're standing between me and godhood. Time to die, trusting fool.~DO~SetGlobal("DMWWmeldeathdialog","GLOBAL",4)~GOTO 206
END
END

EXTEND_BOTTOM Balth 212
IF~InParty("CVSandr") GlobalGT("San25ChiQuest","GLOBAL",12)~THEN REPLY~Melissan can never succeed as she does not even know that a large portion of the essence still exists elsewhere. Do you think it is safe to tell our new ally about it, Sandrah?~EXTERN CVSan25J SanBaltQuil1
END

CHAIN
IF~~THEN CVSan25J SanBaltQuil1
~<CHARNAME>, I am convinced that Balthazar has neither intentions nor the necessary means to harm Qilandrha. We should document our mutual trust by sharing this with him.~
==Balth~An unknown Bhaalspawn of some significant power, but not your companion Imoen?~
==CVSan25J~Bhaal has made many plans and constructed set-ups for a lot of eventualities, even if he did not foresee the betrayal by his most trusted follower. He planned the elimination of his primary foe through his children as well.~
==Balth~Bhaal's spawns to prevent Mystra's intervention to his return?~
==CVSan25J~You understand quickly, Balthazar.~
==Balth~Mmh, priestess of Mystra, daughter of Elminster - is that how you came into this plot?~
END
++~(Nod to Sandrah and let her continue the story.)~+ SanBaltQuil2
++~Sandrah herself is the granddaughter of Midnight and Cyric, those who had defeated Bhaal.~+ SanBaltQuil2

CHAIN
IF~~THEN CVSan25J SanBaltQuil2
~<CHARNAME> and me have discovered during our common adventures that Mystra's bloodline, the human female lines from which Midnight and earlier incarnations of Mystra have been elevated by Ao, these bloodlines are my heritage. Bhaal has raped my mother, Elminster's wife Khalindra, to inseminate her with the spawn to end this line.~
==Balth~Obviously the plan failed.~
==CVSan25J~My father and his Harper friends including Gorion prevented it. My father has separated my sister Qilandrha and me from the beginning and has raised and educated her in a similar way as Gorion did with <CHARNAME>. Obviously even Melissan is unaware of her existence. I only met her myself recently together with <CHARNAME>.~
==Balth~I understand that our *father* has supplied a spawn with such a crucial mission with a significant part of the essence and the corresponding power.~
==CVSan25J~Qilandrha easily matches each of the Five and even <CHARNAME>. What is more important is that she is our secret weapon in the upcoming fight against Melissan. She will come to our aid should we find our combined power may not be enough.~
==Balth~Errors, betrayal, mistakes. So many have died already in our father's bloody setup for reasons they will never know or understand. Sometimes I think Bhaal has already succeeded without the need of his actual return.~
==CVSan25J~Still I hope you can also see the perspective that lies in the fact that the daughters of Elminster will be both at your side in the coming showdown.~
==Balth~Let it be so, then. Even Melissan's stolen divinity will not be a match for us both and our allies. I have preparations to make, <CHARNAME>.  Go to the Throne of Bhaal.  When the time comes, I will be there.~DO~ReallyForceSpell(Myself,DRYAD_TELEPORT) SetGlobal("DMWWGroveRevealed","GLOBAL",1) ~EXIT

EXTEND_BOTTOM Yaga02 8
IF~GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY~Qilandrha.~GOTO S40
END

EXTEND_BOTTOM Yaga02 10
IF~!Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY~Qilandrha.~GOTO S40
END

EXTEND_BOTTOM Yaga02 10
IF~Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY~Qilandrha.~GOTO S41
END

EXTEND_BOTTOM Yaga02 11
IF~!Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY~Qilandrha.~GOTO S40
END

EXTEND_BOTTOM Yaga02 11
IF~Dead("Balth") GlobalGT("San25ChiQuest","GLOBAL",14)~THEN REPLY~Qilandrha.~GOTO S41
END

CHAIN
IF~~THEN Yaga02 S40
~Qi...who?~
==Solar~Who?...~
END
++~Ah, never mind...I mean, Balthazar still is alive.~+9

CHAIN
IF~~THEN Yaga02 S41
~Qi...who?~
==Solar~Who?...~
END
++~Ah, never mind...I mean, go on.~+12
