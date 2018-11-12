EXTEND_TOP SHARTEDD 0 #0
IF ~GlobalGT("SanSharInt","GLOBAL",30)~THEN REPLY ~Shar-Teel, my wildcat, what is with little Gorion, what are you doing here anyway?  ~GOTO CV2
IF ~GlobalGT("SanSharInt","GLOBAL",20) GlobalLT("SanSharInt","GLOBAL",30)~THEN REPLY ~Shar-Teel, my wildcat, are you...is the baby...what are you doing here anyway? ~GOTO CV1
END

APPEND SHARTEDD
IF~~THEN BEGIN CV1
SAY~Loverboy, calm down. All is fine with our baby, <CHARNAME>, old Landrel inspected me carefully before I left and he approved my mission in a way. Told me to get back fast as possible anyway.~
IF~~THEN REPLY~Fine, fine, but what is so urgent to make you go here in your condition then?~GOTO 5
END

IF~~THEN BEGIN CV2
SAY~Loverboy, calm down. All is fine with our sweet little Gorion, <CHARNAME>, old Landrel is the best auntie you can imagine and he and Elminster just love the lively brat. I will go back to Waterdeep as fast as I can, I miss him already so much.~
IF~~THEN REPLY~Fine, fine, but what is so urgent to make you come here then?~GOTO 5
END
END

APPEND SHARWINS
IF WEIGHT #-9~InParty("CVSandr") GlobalGT("SanSharInt","GLOBAL",20)~THEN BEGIN CV3
SAY ~My poor sister has finally been revenged.~
IF ~~THEN REPLY ~Your sister? You have never mentioned her death before, Shar-Teel.~EXTERN SHARWINS CV4
END
END

CHAIN
IF~~THEN SHARWINS CV4
~I learned about it only recently from a merchant who came through Waterdeep. She tried to follow my example in a way, I guess, running from home and trying her luck on the road as well. (She gives you a look of deep love.) Only she was not as lucky as I was in meeting her companions.~
DO ~AddXPObject(Myself,75000) AddexperienceParty(60000) SetGlobal("sharplot","GLOBAL",8)~
== BSANDR ~If those were her travelling mates, her choices must have been limited.~
== SHARWINS ~From what I heard she must have stranded in Calisham after a bit of a love affair disaster. She tried to get back to the Sword Coast at any price and she chose those bastards for company through the desert. It was a company of twelve, only those four survived the attempt to rob and rape her on the road. Poor Larissa was a good fighter, but...~
== BSANDR ~I see, you could not stay calm when you heard those murderers were enjoying themselves here in Attkatla. And lucky you ran into us by the way.~
END
++ ~What do we do now, wildcat? I loved to see you again so unexpectedly - but you cannot stay with us, not with the current trouble we have. (You tell her about the recent events since you parted with her.)~+ CV5

CHAIN
IF ~~THEN SHARWINS CV5
~(She kisses you passionately time and time again. Finally she pushes you off herself and grins brightly.)~
= ~Loverboy, you oughta learned something about me by now, I guess. I no longer rush blindly and furiously into any type of trouble I can get hands on. I have a responsibility as a mother, if you can't guess, and it looks like you need some oversight as well, silly male. See, I am well prepared to return to Waterdeep again, now the issue is resolved.~
== BSANDR ~Ha, my father and Landrel did not let you go without some support I guess?~
== SHARWINS ~Exactly, pussycat, they gave me this scroll that will take me back...home, yes, home, right away. Do not take too long, <CHARNAME>, I already start to miss you desperately. (Another long and passionate embrace follows. The small tear in her eye, however, must have been an illusion made up by your own mind...) ~
DO~ActionOverride("Sharteel",LeaveParty()) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

ADD_STATE_TRIGGER ShartP 5
~GlobalLT("SanSharInt","GLOBAL",20)~