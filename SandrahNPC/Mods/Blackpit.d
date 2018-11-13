APPEND BPNajim

IF WEIGHT #-8~Global("BAELOTH_DEFEATED","GLOBAL",1) GlobalLT("BPNAJIM_DIALOG","GLOBAL",50) InParty("CVSandr")~THEN BEGIN OutSan1
SAY~Are you ready to leave the Black Pits?~
IF~~THEN REPLY~Najim, I'm ready to depart.~DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY~Aren't there supposed to be three wishes or something?~GOTO OutSan2
IF~~THEN REPLY~Not yet, Najim.~EXIT
END

IF~~THEN BEGIN OutSan2
SAY~Do not test my patience, mortal.~
IF~~THEN REPLY~Najim, I'm ready to depart.~DO~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1) ClearAllActions() StartCutScene("CVCut305")~EXIT
IF~~THEN REPLY~I'll get back to you in a little while.~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("BATTLE_COMPLETE","GLOBAL",2)
Global("T3_B2","GLOBAL",2) ~THEN BEGIN san13
SAY ~No, my master. I obey your every command. If anyone counsels them, I assure you it is not I.~
IF~~THEN DO~GiveGoldForce(1000)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",302)
StartCutScene("CUTBP03")
Wait(2)
Deactivate("BPNAJIM")~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("TIER","GLOBAL",3) GlobalLT("BPNAJIM_DIALOG","GLOBAL",30) ~THEN BEGIN san10
SAY ~Never have I witnessed a mortal fret Baeloth so. I must confess to taking a certain pleasure in witnessing his dismay. Take this gift. I have added something extra. Perhaps you will have a better chance than Baeloth intends.~[BPL304]
IF ~~THEN REPLY  ~What is Baeloth planning for me? What will happen if I defeat his challenges?~DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",30)
GiveGoldForce(1000)
~GOTO 11
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("TIER","GLOBAL",2) GlobalLT("BPNAJIM_DIALOG","GLOBAL",20) ~THEN BEGIN san5
SAY ~Impressive, mortal. Your feats in the arena have become... a frequent topic of conversation. Perhaps you will set a new record for longest surviving combatant.~[BPL205]
IF ~~THEN REPLY ~Is there nothing you can do to help us escape?~DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)~GOTO san6
IF ~~THEN REPLY ~I will conquer whatever obstacle that is placed in front of me. I will scale a mountain of slain enemies to escape this dungeon!~DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20) ~GOTO san7
IF ~~THEN REPLY ~Perhaps I will, Najim.~DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)
~GOTO san8
END

IF ~~THEN BEGIN san6
SAY ~No. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL206]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

IF ~~THEN BEGIN san7
SAY ~You overestimate your abilities, <RACE>. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL207]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

IF ~~THEN BEGIN san8
SAY ~Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~[BPL208]
IF ~~THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(1000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~EXIT
END

END

BEGIN CVWDDWA
IF~Global("SanPitsWD","Global",8)~THEN BEGIN Ret1
SAY~What, yer back. None ever came back!~
IF ~~THEN REPLY ~Time to close your little business, dwarf. Or should I say duergar?~DO~ActionOverride("CVWDDWA",EscapeAreaDestroy(30))~EXIT 
END

IF ~RandomNum(3,1) ~THEN BEGIN 0
SAY  ~Some leatherhead jacked me case last night! If I find the addle-coved idiot, I'll strangle him!~
IF~~THEN EXIT
END

IF ~RandomNum(3,2) ~THEN BEGIN 1
SAY ~The bub in the Hive tastes like donkey-piss!~
IF ~~THEN REPLY ~You've tasted donkey-piss?!~GOTO 2
IF ~~THEN REPLY ~Then don't drink it, genius.~GOTO 3
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~THEN REPLY ~Point the way!~GOTO 4
END

IF ~~THEN BEGIN 2
SAY ~Go hang yerself, Clueless!~
IF ~~THEN EXIT
END

IF ~~THEN BEGIN 3
SAY ~Keep rattlin' that bone-box o' yers, and I'll splatter yer brains all over the cobblestones!~
IF ~~THEN EXIT
END

IF ~~THEN BEGIN 4
SAY ~Dare to step thru yonder door, cutter.~
=~They call it Black Pits, ain't seen none ever come back.~
IF ~~THEN DO~SetGlobal("SanPitsWD","Global",2)~EXIT
END

IF ~RandomNum(3,3) ~THEN BEGIN 5
SAY ~You know the chant?~
IF ~Global("SanPitsWD","Global",1) !InParty("Baeloth")~THEN REPLY ~Point the way!~GOTO 4
IF ~OR(2) GlobalGT("SanPitsWD","Global",1) InParty("Baeloth")~THEN EXIT
END

CHAIN
IF~Global("SanPitsWD","Global",4) ~THEN CVSandrJ BPWD1
~It seems to me I did not know about all the attractions my hometown has to offer.~
=~I have never heard of these Black Pits.~
DO~SetGlobal("SanPitsWD","Global",5)~
END
++~This doesn't look like a place for a young priestess to me.~+ BPWD2
++~They may have good reasons to hide it from a priestess of Mystra.~+ BPWD2

CHAIN
IF~~THEN CVSandrJ BPWD2
~To me it appears that the only way out of here again is by moving forward.~EXIT

CHAIN
IF~Global("SanPitsWD","Global",6) ~THEN CVSandrJ BPWD3
~If we ever want to leave this place, we need to face our capturer in the arena.~
DO~SetGlobal("SanPitsWD","Global",7)~
END
++~I was thinking the same. Only..how to get him there?~+ BPWD4
++~Do you think that this is the only option we have?~+ BPWD4

CHAIN
IF~~THEN CVSandrJ BPWD4
~We may find allies among the other prisoners here. Even the djinni Najim may prefer his freedom over the power he has in the pits.~
END
++~So far, Baeloth has made sure he stays out of reach.~+ BPWD5
++~Has your so-called plan more details already?~+ BPWD5

CHAIN
IF~~THEN CVSandrJ BPWD5
~Soon our constant success in the arena will put the stress on this *entertainer*. He will run out of opponents that satisfy his audience. The better we fight, the higher are their demands for more thrills.~
=~He will make a mistake sooner or later. We will force him to face us in combat by eliminating all his other options.~
END
++~Meanwhile it will not hurt to talk to other prisoners and see what we can achieve.~+ BPWD6
++~Sounds like your plan is nothing more than to do what he forces us to do.~+ BPWD6

CHAIN
IF~~THEN CVSandrJ BPWD6
~Do not worry. It is just a matter of persistence. We will wear him out. We stand together and he will lose with every new fight. ~EXIT

CHAIN
IF~Global("SanPitsEnd","Global",1)~THEN CVSandrJ BPWDE1
~I am pretty sure now that our tactic works here. Baeloth is desperate due to our success. He will be forced to face us in person pretty soon. If that happens our chance to leave is there.~
DO~SetGlobal("SanPitsEnd","Global",2)~
END
++~There will still be the djinn to defeat.~+ BPWDE2
++~There is no visible exit from these areas, even with the drow dead.~+ BPWDE2

CHAIN
IF~~THEN CVSandrJ BPWDE2
~I think that Najim will be grateful enough for the freedom he gains through Baeloth's defeat. There is no reason for him not to let us go. I am confident.~EXIT

APPEND BPBaelot

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T0_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",1) ~THEN BEGIN san12
SAY ~That certainly could have gone worse. You've proven you can stamp out the weakest of opponents. Now let's see how you do against some who have eaten in the last tenday!~[BPT0B102]
  IF ~~THEN DO ~GiveGoldForce(50)
SetGlobal("T0_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",1)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)  Global("T0_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",2) ~THEN BEGIN san14
SAY ~Well done, my precious pugilists! You've certainly proven that I picked well when I picked you to perish in the Black Pits!~[BPT0B202]
  IF ~~THEN DO ~GiveGoldForce(50)
SetGlobal("T0_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",2)
SetGlobal("TIER","GLOBAL",1)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",101) ~THEN BEGIN san16
SAY ~Congratulations, you have slain a bunch of boozy bumblers. Najim shall ensure that you are awarded appropriately.~[BPT1B102]
IF ~~THEN DO ~GiveGoldForce(75)
SetGlobal("T1_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",101)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",102) ~THEN BEGIN san19
SAY ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~[BPT1B202]
IF ~~THEN DO ~GiveGoldForce(200)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",102)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B2","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",102) GlobalGT("LAST_BATTLE","GLOBAL",102) ~THEN BEGIN san20
SAY ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~[BPT1B202]
IF ~~THEN DO ~GiveGoldForce(100)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B3","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",103) ~THEN BEGIN san22
SAY ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~[BPT1B302]
IF ~~THEN DO ~GiveGoldForce(225)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",103)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",103) GlobalGT("LAST_BATTLE","GLOBAL",103) ~THEN BEGIN san23
SAY ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~[BPT1B302]
IF ~~THEN DO ~GiveGoldForce(115)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",104) ~THEN BEGIN san25
SAY  ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~[BPT1B402]
IF ~~THEN DO ~GiveGoldForce(250)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",104)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",104) GlobalGT("LAST_BATTLE","GLOBAL",104)~THEN BEGIN san26
SAY ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~[BPT1B402]
IF ~~THEN DO ~GiveGoldForce(125)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T1_B5","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",105)~THEN BEGIN san28
SAY ~Inconceivable! Get out of here, and take your reward with you.~[BPT1B502]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",105)
SetGlobal("T1_B5","GLOBAL",-1)
SetGlobal("TIER","GLOBAL",2)
GiveGoldForce(300)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T1_B5","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",105)GlobalGT("LAST_BATTLE","GLOBAL",105) ~THEN BEGIN san29
SAY ~Inconceivable! Get out of here, and take your reward with you.~[BPT1B502]
IF ~~THEN DO ~SetGlobal("T1_B5","GLOBAL",-1)
GiveGoldForce(150)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",201) ~THEN BEGIN san35
SAY ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~[BPT2B102]
IF ~~THEN DO ~GiveGoldForce(400)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",201)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B1","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",201) GlobalGT("LAST_BATTLE","GLOBAL",201) ~THEN BEGIN san36
SAY  ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~[BPT2B102]
IF ~~THEN DO ~GiveGoldForce(200)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",202)~THEN BEGIN san38
SAY ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~[BPT2B202]
IF ~~THEN DO ~GiveGoldForce(450)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",202)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B2","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",202)GlobalGT("LAST_BATTLE","GLOBAL",202) ~THEN BEGIN san39
SAY ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~[BPT2B202]
  IF ~~THEN DO ~GiveGoldForce(225)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B3","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",203) ~THEN BEGIN san41
SAY ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~[BPT2B302]
IF ~~THEN DO ~GiveGoldForce(500)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",203)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",203) GlobalGT("LAST_BATTLE","GLOBAL",203) ~THEN BEGIN san42
SAY ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~[BPT2B302]
IF ~~THEN DO ~GiveGoldForce(250)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",204)~THEN BEGIN san44
SAY ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~[BPT2B402]
IF ~~THEN DO ~GiveGoldForce(550)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",204)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",204) GlobalGT("LAST_BATTLE","GLOBAL",204) ~THEN BEGIN san45
SAY ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~[BPT2B402]
IF ~~THEN DO ~GiveGoldForce(275)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T2_B5","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",205) GlobalGT("LAST_BATTLE","GLOBAL",205)~THEN BEGIN san48
SAY ~Get. Out. Get out! GET OUT OF MY SIGHT BEFORE I BURN YOUR EYES FROM THEIR SOCKETS!~[BPT2B502]
IF ~~THEN REPLY~What happened to all the alliteration? I hope we haven't broken Baeloth.~DO ~GiveGoldForce(300)
SetGlobal("T2_B5","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("TIER","GLOBAL",3)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) !Global("START_BATTLE","GLOBAL",0)Global("T3_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",301) ~THEN BEGIN san54
SAY ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104]
IF ~~THEN DO ~GiveGoldForce(800)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B1","GLOBAL",2) OR(2)
Global("LAST_BATTLE","GLOBAL",301) GlobalGT("LAST_BATTLE","GLOBAL",301)~THEN BEGIN san56
SAY ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104]
IF ~~THEN DO ~GiveGoldForce(400)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B2","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",302) ~THEN BEGIN san59
SAY~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~[BPT3B202]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~EXTERN BPNAJIM san13
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B2","GLOBAL",2)OR(2) Global("LAST_BATTLE","GLOBAL",302)GlobalGT("LAST_BATTLE","GLOBAL",302) ~THEN BEGIN san60
SAY~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~[BPT3B202]
IF ~~THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~EXTERN BPNAJIM san13
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B3","GLOBAL",2)GlobalLT("LAST_BATTLE","GLOBAL",303)~THEN BEGIN san62
SAY ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~[BPT3B302]
IF ~~THEN DO ~GiveGoldForce(1200)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",303)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B3","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",303) GlobalGT("LAST_BATTLE","GLOBAL",303)~THEN BEGIN san63
SAY ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~[BPT3B302]
  IF ~~THEN DO ~GiveGoldForce(600)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B4","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",304) ~THEN BEGIN san65
SAY  ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~[BPT3B402]
  IF ~~THEN DO ~GiveGoldForce(1400)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",304)
StartCutScene("CUTBP03")
~EXIT
END

IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2) Global("T3_B4","GLOBAL",2) OR(2) Global("LAST_BATTLE","GLOBAL",304)GlobalGT("LAST_BATTLE","GLOBAL",304)~THEN BEGIN san66
SAY ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~[BPT3B402]
IF ~~THEN DO ~GiveGoldForce(700)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
StartCutScene("CUTBP03")
~EXIT
END

END

CHAIN
IF WEIGHT #-3 ~GlobalGT("SanPitsWD","Global",2)Global("T3_B1","GLOBAL",2) GlobalLT("LAST_BATTLE","GLOBAL",301) ~THEN BPNajim SanN12
~I am afraid it is "rock crushes lizard," master.~[BPT3D103]
==BPBaelot~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~[BPT3B104] 
DO~GiveGoldForce(800)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
StartCutScene("CUTBP03")
~EXIT

