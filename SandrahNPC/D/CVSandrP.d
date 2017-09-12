BEGIN CVSandrP

IF ~Global("SandrahJoined","GLOBAL",1) GlobalLT("Chapter","Global",22)~ THEN BEGIN KickSPT1
SAY ~So you want me to leave you out here alone?~
IF ~~ THEN REPLY ~ Yes, Sandrah, you need to rest here for a short while. I will be back soon. ~ GOTO PT11
IF ~!Global("ENDOFBG1","GLOBAL",2) GlobalLT("SanEndBG1Plot","GLOBAL",5)~ THEN REPLY  ~I think it's best for us to part now, but we may travel together again soon enough. Do you know of any place we can meet later?.~ GOTO PT12
IF ~Global("ENDOFBG1","GLOBAL",2) ~ THEN REPLY  ~I think it's best for us to part now, but we may travel together again soon enough. Do you know of any place we can meet later?.~ GOTO PT12
IF~!Global("ENDOFBG1","GLOBAL",2) GlobalGT("SanEndBG1Plot","GLOBAL",4)~ THEN REPLY  ~I think it's best for us to part now, but we may travel together again soon enough. Do you know of any place we can meet later?.~ GOTO PT13
IF ~~ THEN REPLY  ~Oh no, sorry, that will never happen!~ DO ~JoinParty()ReallyForceSpellRES("CVSanam",Myself)~
EXIT
END

IF~~THEN BEGIN PT13
SAY~No, I have no idea where you will go from here. Only fate or chance can reunite us again. I wish you all the best. (She turns away apruptly.)~
IF~~THEN REPLY~ But...~ DO ~SetGlobal("SandrahJoined","GLOBAL",52) ActionOverride("CVSandr",MoveBetweenAreas("AR0602",[3057.657],0))~ EXIT
END

IF ~~ THEN BEGIN PT11
SAY~No, I have no idea where you will go from here. Only fate or chance can reunite us again. I wish you all the best. (She turns away apruptly.)~
IF~~THEN REPLY~ But...~ DO~ SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaDestroy(90)~ EXIT
IF~~THEN REPLY~ Wait...~ DO~ SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaDestroy(90)~ EXIT
END

IF ~~ THEN BEGIN PT12
SAY ~Yes, <CHARNAME>, You will find me at a friendly temple nearby.~
IF ~!Global("ENDOFBG1","GLOBAL",2) GlobalLT("CHAPTER","GLOBAL",4)~ THEN DO ~SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaMove("BG3402",270,497,0)~ EXIT
IF ~ !Global("ENDOFBG1","GLOBAL",2) GlobalGT("CHAPTER","GLOBAL",3)~ THEN DO ~SetGlobal("SandrahJoined","GLOBAL",2) EscapeAreaMove("BG0705",794,489,0)~ EXIT
IF ~ Global("ENDOFBG1","GLOBAL",2) ~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",7)EscapeAreaMove("AR0319",522,312,3)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",2)~ THEN BEGIN KickSPT2
SAY ~Oh, you are back again. I have missed you so. (Her eyes shimmer like stars when looking at you) I am.... (looks at you hopefully) ~
IF ~~ THEN REPLY  ~Time to move on, Sandrah. ~ DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY  ~(All of a sudden you feel warm and joyful hearing her voice) I was such a fool, Sandrah! I should never have left you. Things just do not work without you. ~ DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY ~Well, Sandrah, you need to rest here for a a little longer. I will be back soon.~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",3)~ THEN BEGIN KickSPT3
SAY ~ <CHARNAME>? (Looks at you fearfully.) ~
IF ~~ THEN REPLY  ~Sandrah...! ~ GOTO Anew1
END

IF ~~ THEN BEGIN Anew1
SAY ~ I...~
IF ~~ THEN REPLY  ~Sandrah, I...~ GOTO Anew2
END

IF ~~ THEN BEGIN Anew2
SAY ~ <CHARNAME>, (laughs nervously) you go first..~
IF ~~ THEN REPLY  ~Sandrah, I..., no, you wanted to say something.~ GOTO Anew3
END

IF ~~ THEN BEGIN Anew3
SAY ~ <CHARNAME>, I want to apologise to you. I was wrong for leaving you like I did. Having thought about it afterwards it was all because I was moving too fast in our relationship. I never gave you enough time to really make up your mind in quiet consideration. Your rebuking me was maybe the only way you could tell me that.~
IF ~~ THEN REPLY  ~Let's not make more ado about it, Sandrah. Agree on another attempt, shall we?~GOTO OnlyCompanion
IF ~~ THEN REPLY  ~Sandrah, yes, you were so fast and you are such a...powerful and overwhelming girl - I mean, this is not what I meant - you seem to know so much and you are so adorable. Well, I was just a little afraid of you.~ GOTO PCAfraid
IF ~~ THEN REPLY  ~Sandrah, I have missed you from the very minute you left. Yes, I was a bit scared to find myself all of a sudden be loved by such a girl I never even dared to dream of. Call me a coward or worse, but please come back to us - to me. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO PCAfraid
IF ~~ THEN REPLY  ~Sandrah, you are a breathtaking woman and that is exactly what you did to me - you took my breath away. I was struggling for air against your power. I - I cannot be your lover, so much has become clear to me. But we all need you back in the group.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO OnlyCompanion
END

IF ~~ THEN BEGIN PCAfraid
SAY ~ I plead guilty, your honor. My excuse is my passion for you and my missing experience in matters of the heart. I will be the happiest girl in Faerun if we can join our path again.~
IF ~~ THEN REPLY ~ Sandrah, yes. (Take her in your arms and give her a slow, gentle, long kiss that tells more than a thousand words). ~ DO~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
IF ~~ THEN REPLY ~ This time we will be more careful, will we? Just let it grow slowly between us to make it even more solid. (Take her in your arms and give her a welcome kiss on the lips.) ~ DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~~ THEN BEGIN OnlyCompanion
SAY ~ Yes, <CHARNAME>, I will come with you again. But be warned, I do not give up so easily. I will not make a promise that I will not try to win your heart again. ~
IF ~~ THEN REPLY ~ If your advances at me are the price I have to pay for the best fighter and cleric on the swordcoast, I think I am now man enough to handle it - this way or that. Welcome back, Sandrah. (Kiss her lightly on the cheek.) ~ DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~ You may try as you want, but I will not make the same mistake again. I will not loose my heart and soul to you, Sandrah. Come with us for the sake of our mission but nothing more. (Offer her your hand for welcome.) ~ DO~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",4)~ THEN BEGIN KickSPT4
SAY ~ (Your heart seems to skip a beat as you see Sandrah standing before you, even more beautiful than in you memories.)~
IF ~~ THEN REPLY ~ (Pretend not to notice her. You know too well the feelings she had for you and you cannot take her back into the group and face all the problems that may arise from that.)~DO~ IncrementGlobal("Sanpoints","GLOBAL",-3)~ EXIT
IF ~~ THEN REPLY ~ Thanks to Mystra! Here you are, Sandrah, how I have missed you.~ GOTO KickSPT40
END

IF ~~ THEN BEGIN KickSPT40
SAY ~ (Things have taken an unexpected road between you and Sandrah. You feel that now is a chance to clarify some issue with her.) ~
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what has happened between us. It was all so unexpected and a bit confusing -- but I'm willing to take on to this adventure with you. If you will still risk it... (Take her in your arms and kiss her)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO KickSPT41
IF ~~ THEN REPLY ~ Sandrah, I have thought a bit about what has happened between us. It was all so unexpected and confusing. I have the feeling that there are many secrets you do not reveal to me. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO KickSPT42
END

IF ~~ THEN BEGIN KickSPT41
SAY ~ (She responds passionately to your kiss) <CHARNAME>, Oh yes, it will be an adventure, but one we may end successful when our hearts are fully with it. ~
IF ~~ THEN REPLY ~ I'm willing to risk it and handle the surprises that may come. You are strong and passionate and much more than just a companion on this journey. Stop talking, give me another of these sweet kisses. (She closes her eyes as she sinks back into your embrace, her lips half opened for you to kiss.) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",8) SetGlobal("SanBranSearch","GLOBAL",6)SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~~ THEN BEGIN KickSPT42
SAY ~ Yes, <CHARNAME>, there are. But I if I am not totally wrong, you are a man who wants to reveal them. ~
= ~ Mind that some of these riddles and connections can only be solved by us together. Are you willing to take a small risk for a large gain? (Smiles at you invitingly) ~
IF ~~ THEN REPLY ~ Sandrah, if the prize is worth it, I will. And if the price is YOU, I am more than willing to fight for it. (Take her in your arms and kiss her)~ GOTO KickSPT41
IF ~~ THEN REPLY ~ Oh, you clever tease. You are really the big city girl that breaks hearts by the dozend. And now you are working on mine. Well, I will reveal your secrets one by one (You open the first button of her robe and glance at her magic necklace hanging down between her two well-formed breasts). Watch out, darling, you may end up as the prize won by the fearless <CHARNAME>. (Laugh and take her in your arms to kiss her)~ GOTO KickSPT41
END

IF ~Global("SandrahJoined","GLOBAL",44)!InParty("Dynaheir")~ THEN BEGIN KickSPT441
SAY ~ Where is the Wychalarn? Is she safe, is she well? ~
IF~~ THEN REPLY ~ Yes, I brought her back into safe areas. She is with her guardian Minsc again.~  GOTO KickSPT443
IF~~ THEN REPLY ~ Yes, I brought her back into safe areas, she should be able to continue her own quest now.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO KickSPT443
END

IF~~ THEN BEGIN KickSPT443
SAY ~ I still think one of those knocks in our constant fighting was one too many for your poor head. But I cannot help to love you and I will be with you again to prevent the worst. (Kisses you lightly on the cheek.)~
IF~PartyHasItem("Sanwi2")~ THEN REPLY ~ She was very much interested in you. She gave me a strange item that she originally wanted to discuss with you. Look, whether you can make any sense out of it. ~ DO ~  SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()~ EXIT
IF~!PartyHasItem("Sanwi2")~ THEN DO ~  SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END


IF ~Global("SandrahJoined","GLOBAL",5)!InMyArea("Elminsa")~ THEN BEGIN KickSPT51
SAY ~ (If you ever saw a face lighten up when seeing you, it is now.) <CHARNAME>, you have returned for me? (Sigh). Was your mission successful, please tell me all...~
IF ~~ THEN REPLY ~ (Give Sandrah a summary of the recent events since she left.)
Well, I see you unharmed from the demon, what has happened to you? Know that we all were full of worries about you. I was scolded by all and most of all I scolded myself for having left you there.~ GOTO KickSPT52
END

IF ~~ THEN BEGIN  KickSPT52
SAY ~ Can I do anything, poor <CHARNAME>, but to forgive you. (Takes your hand in hers.) See, I have already done so. ~
= ~ If you only knew what happened. (Sandrah starts to laugh and continues to laugh until tears are in her eyes from laughter...)~
IF ~~ THEN REPLY ~ I am glad to see you seem to have had a great time with that guy. How did that happen? ~ GOTO KickSPT53
END

IF ~~ THEN BEGIN  KickSPT53
SAY ~ The guy really was completely lovesick and homesick, you would not believe it. So...~
= ~ He arranged for a real PARTY, freshly roasted basiliks and steaming bloodwine included, and after a few mugs of that wine began to talk of home and the pleasantries of the deep regions, especially the climate.~
= ~ However, when he tried to get closer to me, trying to convince me to come there with me, I started to throw peanuts at him...~  
IF ~~ THEN REPLY ~ Peanuts? Are you joking? ~  GOTO KickSPT54
END

IF ~~ THEN BEGIN  KickSPT54
SAY ~ Yes, peanuts, the only thing on his dinner table I could touch at all. 
I threw them at the demon and told him to GO TO HELL.~
IF ~~ THEN REPLY ~ Will this get any weirder? ~  GOTO KickSPT55
END

IF ~~ THEN BEGIN  KickSPT55
SAY ~ I am nearly finished with the story.
When I yelled GO TO HELL at the demon, he started to consider this as a proposal, and then he decided it was just the thing to do. So he clicked the heels of his silver slippers three times and was off. ~
= ~ In his hasted departure he dropped a few items, including his silver slippers and the SHARD. And with the Shard in hand I made haste to return to my father. ~
IF ~~ THEN REPLY ~ I mean...you are here, no doubt. But do you want us to really believe this story? ~  GOTO KickSPT56
END

IF ~~ THEN BEGIN KickSPT56
SAY ~ I have the slippers here, just in case you really doubt my tale.~
IF~~ THEN REPLY ~ Fantastic. We have really missed a great adventure, or at least a great party. ~ DO ~  SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END


IF ~Global("SandrahJoined","GLOBAL",5)InMyArea("Elminsa")Global("ElminGaveNarQ","GLOBAL",4)~ THEN BEGIN KickSPT32
SAY ~ (If you ever saw a face lighten up when seeing you, it is now.) <CHARNAME>, you have come to help us. I knew it, I knew I could rely on you. See, father! ~
IF ~~ THEN REPLY  ~ I am sorry for my rudeness back then, friends, of course we will listen to your problem. Afterwards we will council in our group whether we can do anything to help Elminster. ~ DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~ EXTERN Elminsa GaveNarQ2
END

IF ~Global("SandrahJoined","GLOBAL",6)!Global("Sanrompa","Global",2)~ THEN BEGIN BG2Rejoin1l
SAY ~ <CHARNAME>, it is really you! I have finally found you!~
=~ (She rushes into your arms and kisses you desperately.)~
= ~ Oh, I was so afraid and terrified. Are you hurt, darling, let me heal you?~
IF~~THEN REPLY ~ Sandrah, my sweet thing, how have you fared? Has he done something to you?~ DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() SetGlobal("San0602Reunite","LOCALS",1) RealSetGlobalTimer("San0602Int","LOCALS",EIGHT_MINUTES)~ GOTO BG2Rejoin2
END

IF ~Global("SandrahJoined","GLOBAL",6)Global("Sanrompa","Global",2)~ THEN BEGIN BG2Rejoin1
SAY ~ <CHARNAME>, it is really you! I have finally found you!~
=~ (She rushes into your arms and kisses you spontaniously.)~
= ~ Oh, I was so afraid and terrified. Are you hurt, let me heal you?~
IF~~THEN REPLY ~ Sandrah, how have you fared? Has he done something to you?~ DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() SetGlobal("San0602Reunite","LOCALS",1) RealSetGlobalTimer("San0602Int","LOCALS",EIGHT_MINUTES)~ GOTO BG2Rejoin2
END

IF~~ THEN BEGIN BG2Rejoin2
SAY~ Do not fear for me. I was not captured. I broke into this dungeon from the outside, following the attack of those Shadow Thieves.~
IF~~THEN REPLY ~ That is good. At least you are well. I am so relieved. But do you know anything more then? We have no idea what has happened or where we are.~
GOTO BG2Rejoin3
END

IF~~THEN BEGIN BG2Rejoin3
SAY ~ I will tell you everything I know shortly. If you all can move then we should make haste to get out of here as long as this turmoil is going on. The thieves attack on this installation and the current confusion is our only chance to escape.~
IF~~THEN REPLY ~ So you know the way out? Can we go back the way you came in?~ GOTO BG2Rejoin4
IF~~THEN REPLY ~ We can move. So the story of our separate adventures will have to wait. Lead on, Sandrah, let us get out of here.~ GOTO BG2Rejoin4
END

IF~~THEN BEGIN BG2Rejoin4
SAY ~ The way out is through that portal behind me. Only the problem is that it only works in the one direction - to get out again we need some kind of key to activate it again. It must be around here.~
IF~~ THEN REPLY ~ Oh, no. We have no other choice than to search the rest of these rooms, and that quickly. (Give her another quick hug to show her how happy you are to see her again and unhurt.)~ EXIT
END

IF ~ Global("SandrahJoined","GLOBAL",7) ~THEN BEGIN AmnReun
SAY ~ (Sandrah is in deep contemplation over an ancient toom.)~
IF~~THEN REPLY ~ (You adore her from a distance for some time. Will you let her into your life - and into your heart - once again?)~ EXIT
IF~~THEN REPLY ~ Sandrah, you have forgiven me in the past already and here I am again. I am asking you, please, come with me once again...~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO AnmOncM
IF~~THEN REPLY ~ Sandrah?...~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO AnmOncM
END

IF~~THEN BEGIN AnmOncM
SAY ~ (Before you can continue, Sandrah lays the old book aside and rises. Wordlessly she comes to your side, kisses you quickly on the cheek, and takes your hand.)~
= ~ (She gently motions you towards the door.)~
IF ~~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~ Global("SandrahJoined","GLOBAL",15) AreaCheck("BG1804") See(Player1) ~ THEN BEGIN ClckWMines
SAY~ Everything has worked out fine, <CHARNAME>.~
IF~~THEN REPLY~Sandrah, you really made it back here in no time!~ DO ~  SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ EXIT
END

IF ~Global("SandrahJoined","GLOBAL",44) InParty("Dynaheir")~ THEN BEGIN KickSPT442
SAY~ I see you have rescued the captive from the Gnolls, <CHARNAME>.~
IF~~THEN DO ~SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~EXIT
END

IF~ Global("SandrahJoined","GLOBAL",20) !Global("CbPartyIsInSoubarMilitia","GLOBAL",1) ~THEN BEGIN SanIsNoSoldR1
SAY~ Will we go on, <CHARNAME>?~
IF~~THEN DO~
SetGlobal("SanNoSold","LOCALS",0) SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~EXIT
END


IF~ Global("SandrahJoined","GLOBAL",20) Global("CbPartyIsInSoubarMilitia","GLOBAL",1) ~ THEN BEGIN SanIsNoSoldR2
SAY~ You look really...mh...sexy in that uniform, <CHARNAME>?~
IF~~ THEN REPLY ~What about you, I want you by my side in this but you refused to become a soldier?~ GOTO SanIsNoSoldR3
END

IF~~ THEN BEGIN SanIsNoSoldR3
SAY~ Do not forget, <CHARNAME>, I am your counselor. Those have existed in the armies for long without holding a military rank of sorts. ~
IF~~ THEN REPLY ~Well, then the major surely is familiar with that regulation. Fine, let's go.~
DO~
SetGlobal("SanNoSold","LOCALS",3) SetGlobal("SandrahJoined","GLOBAL",1) JoinParty() ReallyForceSpellRES("CVSanam",Myself)~EXIT
END

IF ~Global("SandrahJoined","GLOBAL",52)~ THEN BEGIN BG2Rejoin51
SAY ~ <CHARNAME>, it is really you! I have finally found you!~
=~ (She rushes into your arms and kisses you spontaniously.)~
= ~ Oh, I was so afraid and terrified. Are you hurt, let me heal you?~
IF~~THEN REPLY ~ Sandrah, where...where do you come from? This is the most unlikely place to see you again that I can imagine?~ DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO BG2Rejoin52
END

IF~~ THEN BEGIN BG2Rejoin52
SAY~ I was sent to Amn by my father and Duke Belt to search for you when the duke learned that you had not arrived in Athkatla as expected. Belt asked Elminster to devine your location and it was decided to send an undercover agent to Amn to investigate further. Logically the choice fell on me.~
IF~~THEN REPLY ~ That is good. I am so relieved. But do you know anything more then? We have no idea what has happened or where we are.~ DO ~SetGlobal("SanSentBelt","GLOBAL",1)~
GOTO BG2Rejoin3
END

IF~Global("SandrahJoined","GLOBAL",16)~THEN BEGIN TalosRejun1
SAY~Seasick, traveller?~
IF~~THEN REPLY~ Sandrah!! Oh, I was so afraid and terrified but I was sure you would make it without us. ~DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO TalosRejun2
IF~~THEN REPLY~ You are unbelievable, my fearless counselor. You made it to here even quicker than we could. This can only be Mystra's work!!~  DO ~ SetGlobal("SandrahJoined","GLOBAL",1) JoinParty()ReallyForceSpellRES("CVSanam",Myself)~ GOTO TalosRejun2
END

IF~~ THEN BEGIN TalosRejun2
SAY~ Be warned, <CHARNAME>, I am a dangerous companion to take along with you. Those Talos followers could tell a tale about that...if they could still talk.~
=~Anyway, you missed a lot of fun. Let us move on - together.~
IF~~THEN REPLY~ What has..? (Her face tells you that it is pointless to ask for more information - you missed that part of the story and you will probably never get to know it.)~EXIT
END



