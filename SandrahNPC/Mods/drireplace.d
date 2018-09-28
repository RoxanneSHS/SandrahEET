APPEND CVSandrJ
IF~ Global("EntDjin55","AR0400",3)~ THEN BEGIN SanReplDr55
SAY~ Jarlaxle and Artemis, the arch enemies of Drizzt. I feel large trouble is on its way.~
IF~~THEN REPLY~But have we not killed the two when we went with Drizzt to Icewind Dale from the Sword Coast?~ GOTO SanReplDr56
END

IF~~ THEN BEGIN SanReplDr56
SAY~ With the resources of the Bregan D'aerthe they have probably found a way of resurrection. It makes them even worse enemies of Drizzt - but also of us, <CHARNAME>. We should find the time to investigate in Arlax what is going on.~
IF~~THEN DO~ SetGlobal("JarDjin65","AR0400",4)  SetGlobal("EntDjin55","AR0400",4) SetGlobal("Ttcmal","GLOBAL",1) RevealAreaOnMap("RR3100")~EXIT
END

IF~Global("AloDriz","GLOBAL",1)~THEN BEGIN SanReplDr60
SAY~ It does not sound pleasant at all, but obviously we cannot defeat Entreri as long as he is able to use the power of the crystal.~
IF~~THEN REPLY~There may be a way to destroy it...~ GOTO SanReplDr61
IF~~THEN REPLY~We must destroy it, Sandrah, my counsellor. Can I count on you to study the case thoroughly?~GOTO SanReplDr61
END

IF~~THEN BEGIN SanReplDr61
SAY~ It reminds me of a person my father once mentioned when it comes to powerful ancient artefacts - brother Cadderly of the Spirit Soaring temple. We should get in contact with him after we have rescued Bruenor.~
IF~~THEN REPLY~ Sounds like a plan...fine...let us continue.~ DO~ SetGlobal("AloDriz","GLOBAL",2)~EXIT
END

IF~Global("AloDriz","GLOBAL",3)~THEN BEGIN SanReplDr62
SAY~ I have promised you to inform you about the possible way to destroy the crystal. I had a bit of time to research about the priest I mentioned earlier. He and Drizzt had at one time already attempted to do that task, but it failed due to Jarlaxle's interventions. So the circle closes again.~
IF~~THEN REPLY~ That brother Cadderly? Where is he to be found, do you know that?~ GOTO SanReplDr63
IF~~THEN REPLY~ You mentioned Cadderly is in some mystic location, unreachable for us as it seems, hm.~ GOTO SanReplDr63
END

IF~~THEN BEGIN SanReplDr63
SAY~ You are right, the place itself is very far away. However my studies have revealed that we may reach it from the island and town of Brynnlaw.~
IF~~THEN REPLY~ Brynnlaw again (Sigh)~ GOTO SanReplDr64
END

IF~~THEN BEGIN SanReplDr64
SAY~ We need to contact a cleric named Martin who operates a portal for the travel to Cadderly. My father has documented this quite well in my tome here.~
IF~~THEN REPLY~ I hope the entry is not yet outdated. Well, we will see once we get there.~ DO~ SetGlobal("CreMar2","GLOBAL",1) SetGlobal("Timetolfiwd","GLOBAL",1)SetGlobal("AloDriz","GLOBAL",4)~EXIT
END

IF~ Global("NCaDri","GLOBAL",1)~ THEN BEGIN SanReplDr70
SAY~ Two simple (wink) tasks remain for us now. Destroy the crystal and free Catti-Brie.~
IF~~THEN REPLY~ May I remind my counsellor that we have no idea where one or the other may be found?~ GOTO SanReplDr71
IF~~THEN REPLY~ Oh, yes, let's just do it (wink, too).~ GOTO SanReplDr71
END

IF~~THEN BEGIN SanReplDr71
SAY~ Do not forget that all of this is a trap set up for us and for Drizzt. Our opponent will surely let us receive another hint in time.~
IF~~THEN DO~ SetGlobal("NCaDri","GLOBAL",2)
SetGlobal("CreeDji3","GLOBAL",1)~EXIT
END

IF~Global("Driknicd","GLOBAL",1)~ THEN BEGIN SanReplDr80
SAY~ Now it becomes clear why Jarlaxle wants Drizzt dead. He wants to conquer Icewind Dale, but for a success Drizzt must be out of the way first.~
IF~~THEN REPLY~ Drizzt and us, that means. They now how closely acquainted we are.~ GOTO SanReplDr81
END

IF~~THEN BEGIN SanReplDr81
SAY~ Right. They are pretty sure they have a successful plan to terminate us all. Only that explains why they let us progress deeper and deeper into the heart of their operation.~
IF~~THEN DO ~ SetGlobal("Driknicd","GLOBAL",2)~EXIT
END

IF~ Global("SanDrBryn","ar1600",2)~ THEN BEGIN SanNDriBry1
SAY~ We should have a lookout for the priest Martin. Was it not here that he was supposed to be found?~
IF~~THEN REPLY~Who was that again?~DO~ SetGlobal("SanDrBryn","ar1600",3)~ GOTO SanNDriBry2
END

IF~~THEN BEGIN SanNDriBry2
SAY~The contact who knows about the crystal shard that was used to kidnap Drizzt's friends. I cannot blame you for forgetting one of our many quests, now that we are so close to Imoen.~
IF~~THEN REPLY~ Ah, your quest or mine, what a dilemma - but you have reminded me we are in this as a company of friends. Let's see if we can trace this priest.~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
IF~~THEN REPLY~ We are near to Imoen right now. This comes first and everything else has to wait for its chance.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF~ Global("SanRecDriz","RA4000",1)~THEN BEGIN DriNear1
SAY~Look at these marks here, <CHARNAME>, he's near!!~
IF~~THEN REPLY~Someone has tried to open this chest with a sword of sorts. Jarlaxle?~ GOTO DriNear2
IF~~THEN REPLY~Someone has tried to open this chest with a sword of sorts. Entreri?~ GOTO DriNear2
END

IF~~THEN BEGIN DriNear2
SAY~ I know well the marks left by Twinkle, my drow's trusted scimitar.~
=~Dear Drizzt has received the reports of our progress from the comrades we rescued. He must have overtaken us in our persuit.~
=~MY!! I hope he has enough patience to wait for us before he risks to face those two fiends and their allies all alone.~
IF~~THEN REPLY~ I wish he'd hear your very words. It would be suicide otherwise as he has no means to overcome the power of the crystal even if he could stand up against our common enemies.~DO~SetGlobal("SanRecDriz","RA4000",2)~EXIT
END
END

CHAIN
IF WEIGHT #-2~ GlobalGT("SanROTRepl","GLOBAL",0)Global("EntandDri","GLOBAL",0)~THEN JARLAX_R SanVar1
~Welcome. We've already been awaiting you. I'm so glad you made it up to here.~
DO~SetGlobal("EntandDri","GLOBAL",1)~ 
==Enteri~Drizzt Do'Urden.~
==Driz2P~Artemis Entreri.~
==Enteri~We must fight alone if you wish Catti-Brie to survive. I want no interference, especially not from your panther or your cleric girl friend.~
==Driz2P~I expected no less. Take me to the chosen playground.~DO~ActionOverride("Driz2",MoveToPoint([1450.710]))ActionOverride("Driz2",EscapeAreaMove("RR4005",409,362,12))~
==Enteri~Come through the passage.~DO~ActionOverride("Enteri",MoveToPoint([1450.710]))ActionOverride("Enteri",EscapeAreaMove("RR4005",409,362,12))~EXIT

CHAIN
IF WEIGHT #-2~ GlobalGT("SanROTRepl","GLOBAL",0) Global("Secndcutfiof","GLOBAL",1)~THEN Driz2P SanVar2
~ Where is Catti-Brie?~
DO~SetGlobal("Secndcutfiof","GLOBAL",2)~
==Enteri~See this cave at my left? She's inside.~
=~The cave is protected by a magic wall. It will vanish with my death. You must fight and defeat me or Catti-Brie will die.~
==Driz2P~Do not worry, I will fight. Never was my urge to fight you any stronger after all you have done to us.~ DO~ActionOverride("Driz2",Attack("Enteri"))~
==Enteri~Let's settle it once and for all.~DO~ActionOverride("Enteri",Enemy())~EXIT

CHAIN
IF WEIGHT #-2~ GlobalGT("SanROTRepl","GLOBAL",0) Global("Catelldrg","RR4005",0)~THEN Catt2 SanIn
~All is well - let's go.~
DO~SetGlobal("asdfadfa","GLOBAL",2) SetGlobal("Catelldrg","RR4005",2)~
==Driz2P~All is well.~DO~ ActionOverride("Driz2",EscapeAreaMove("RR3950",740,640,12))~EXIT

CHAIN
IF WEIGHT #-3~GlobalGT("SanROTRepl","GLOBAL",0) AreaCheck("RR3950") Global("Theendisnear","GLOBAL",3)~THEN Catt2 SanDepart
~Drizzt has told me all you and Sandrah have done for us, <CHARNAME>. You are kind and brave hearted heroes like no others in the Realms.~
DO~SetGlobal("Theendisnear","GLOBAL",4)
SetGlobal("Villagesaved","GLOBAL",1)
SetGlobal("TrigCQCip","GLOBAL",1)
AddXPObject(Player1,100000)
AddXPObject(Player2,100000)
AddXPObject(Player3,100000)
AddXPObject(Player4,100000)
AddXPObject(Player5,100000)
AddXPObject(Player6,100000)
SetGlobal("CattiKickedOut","LOCALS",1)
SetGlobal("CattiBrieOut","GLOBAL",1)
ActionOverride("Catt2",EscapeAreaMove("AR0406",1400,1735,0))~
==Driz2P~Catti-Brie will join our friends in the Copper Coronet where you will find her whenever you need her.~
==Catt2~ Farewell, friends.~
END
++~A good journey, Catti-Brie.~EXTERN BSandr SanEndPlot1b

CHAIN
IF~~ THEN BSANDR SanEndPlot1b
~ Oh, Drizzt, how glad I am we have finally solved this issue that has fiercely gripped your heart for so long.~
DO~ SetGlobal("SanDriLeaveWD","GLOBAL",2)~
==Driz2P ~ And who else could have saved everyone and freed the enslaved souls of so many in this *Region of Terror* than <CHARNAME> and the companions by <PRO_HISHER> side. (He kisses Sandrah long and passionate.]~
END
++~ I am glad we were of help. So let us now return to our other problems.~ + SanEndPlot2b

CHAIN
IF~~ THEN BSANDR SanEndPlot2b
~ (Smiles) You do not give us much time to rest a bit after all we have been through. (Sigh) The boss man calls and the bed waits empty...~
==Driz2P ~ Please, <CHARNAME>, Sandrah, give me a minute.~
== BSANDR~ Are you well, dear, you look tired and exhausted?~
==Driz2P ~ That is exactly how I feel, Sandrah, and only your strength keeps me going at the moment. That is why I want to ask a favour of <CHARNAME>. The recent events have stressed me to the limit and I need a bit of time to restore and to contemplate over it all. My lifetime enemies have finally been destroyed with your help and a new future lies open for me.~
== BSANDR~ What is your plan, Drizzt?~
==Driz2P ~ I am an old friend of your father, Sandrah, and of your teachers back at the Waterdeep temple. It is there I want to go for a while and it is there you will find me should <CHARNAME> require my services again. Allow me a tenday of rest and meditation at the Temple of Mystra.~
== BSANDR~ A decision that your healer would recommend to prevent your burnout, Drizzt. I am sure <CHARNAME> will understand your decision.~
END
++~ Your well being is important to us all, my friend. Farewell for now.~ DO~ChangeEnemyAlly("Driz2",NEUTRAL) ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT
++~ If it is your will and you have as well Sandrah's support it makes little sense to object. (Sigh) It is a temporary loss for the group but what must be must be. Good journey, Drizzt.~ DO~ ChangeEnemyAlly("Driz2",NEUTRAL) ActionOverride("Driz2",MoveBetweenAreas("CVelm3",[352.380],12))~
EXIT

