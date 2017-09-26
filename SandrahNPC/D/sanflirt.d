APPEND CVSandrJ

IF ~ Global("SanFlirt","GLOBAL",1)~ THEN BEGIN SanFlr10
SAY ~ Sandrah walks beside you, lowly humming a melody you have never heard before. ~
IF ~~ THEN REPLY~ Do you like music much, Sandrah?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanFlr11
IF ~~ THEN REPLY~ I have never heard this tune before.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr12
IF ~OR(2) AreaType(DUNGEON) AreaType(OUTDOOR) ~ THEN REPLY~ Psst, Sandrah, our foe may be attracted by your tune just like I am.~ GOTO SanFlr13
END

IF ~~ THEN BEGIN SanFlr11
SAY ~ Yes, I do. I can play a number of instruments as is to be expected for a well-educated society girl of Waterdeep, but never encourage me to sing. My singing is terrible, a weapon rather than a means to entertain. ~
IF ~~ THEN REPLY ~ Too bad. It is the same for me. I cannot sing at all.~ GOTO SanFlr13
IF ~~ THEN REPLY ~ I claim myself to be a pretty good singer. Maybe we will find an opportunity to try something together, you play the tune and I sing to it.~ GOTO SanFlr14
END

IF ~~ THEN BEGIN SanFlr12
SAY ~ You cannot have because I have just invented it right now. I do not think anyone but us two will ever get to hear it.~
IF ~~ THEN REPLY ~ Do you like music much, Sandrah?~ GOTO SanFlr11
IF ~~ THEN REPLY ~ I will keep it in mind. Maybe I can make up some words to it to sing them along one of these evenings. ~ GOTO SanFlr14
END

IF ~~ THEN BEGIN SanFlr13
SAY ~ Next stop I will ask around among our comrades. Maybe we can find some talents there. Would it not be nice to have a bit of entertainment sometimes in the evening after a long day of travelling and fighting?~
IF~~ THEN REPLY ~ Good idea, Sandrah. It is my duty as this group's leader to keep our spirits up.~DO ~ SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~~ THEN BEGIN SanFlr14
SAY ~ I look forward to it, a quite nice idea. Life is more than just fighting for survival. (She continues with her tune.)~
IF ~~ THEN REPLY ~ (You walk beside her and start to assemble some matching lines for a love song.)~ DO ~ SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF~~ THEN REPLY ~ (You walk beside her and in your mind the words for a hero ballad begin to form.)~ DO ~ SetGlobal("SanFlirt","GLOBAL",2) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~ Global("SanFlirt","GLOBAL",3)~ THEN BEGIN SanFlr20
SAY ~ You have read a lot, <CHARNAME>, growing up in a library.~
IF~~ THEN REPLY ~ The fact I grew up in Candlekeep has made it much easier to satisfy my hunger for books and knowledge.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanFlr21
IF~~ THEN REPLY ~ Books are a dusty matter, Sandrah, but it just had to be. Gorion insisted on my gathering of knowledge as a means to master my life later on.~ GOTO SanFlr21
END

IF ~~ THEN BEGIN SanFlr21
SAY ~ (Sandrah takes your hand and stops your walk to face you.) Knowledge and its use will be a key factor for our success, <CHARNAME>. We are currently learning to use our fighting skills, but we will not survive on our physical powers alone.~  
IF ~~ THEN REPLY ~ I have already got that impression on your personality myself, Sandrah. You are a powerful fighter and gaining skill daily, but your counsel in our matters is equally important.~GOTO SanFlr22
IF ~~ THEN REPLY ~ Oh, Sandrah, I have just escaped Gorion's constant counselling. Please, just use your hammer but don't try to take over his part, girl.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanFlr23
END

IF ~~ THEN BEGIN SanFlr22
SAY ~ It is you, <CHARNAME>, who leads this group, but I think everybody else is determined to provide their skills for our common success according to their abilities.~
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Your knowledge and your analytic skills will certainly help us solve as many situations as would your hammer. (You lift her hand to your lips and give her a light kiss on her fingertips)~ DO~ SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ EXIT
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ Your knowledge and your analytic skills will certainly help us solve as many situations as would your hammer. (Press her hand reassuringly.)~ DO~ SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ EXIT
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Your knowledge and your analytic skills will certainly help us solve as many situations as would your hammer. (Press her hand reassuringly.)~ DO~ SetGlobal("SanFlirt","GLOBAL",4) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ EXIT
IF~~THEN REPLY ~ Right, I lead this group and I will tell you when I need any of your abilities.~ GOTO SanFlr23
END

IF ~~ THEN BEGIN SanFlr23
SAY ~ Idiot. (She punches your ribs with her elbow and angrily stamps away.)~
IF ~~THEN DO ~ SetGlobal("SanFlirt","GLOBAL",4) ApplySpellRES("CVChaRed",Player1) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ EXIT
END

IF ~ Global("SanFlirt","GLOBAL",5)~ THEN BEGIN SanFlr30
SAY ~ For one who grew up among monks, <CHARNAME>, you do not appear to be very religious.~
IF~~ THEN REPLY ~ So says the priestess who never prays or preaches!~ DO ~ SetGlobal("SanFlirt","GLOBAL",6) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr31
END

IF ~~ THEN BEGIN SanFlr31
SAY ~ Mystra is not a goddess that can be petitioned by her followers nor is there much to preach on behalf of the goddess of magic. Following her means more to look into the right use of her gifts and object to those magic users who misuse them.~
IF~~ THEN REPLY ~ I see. It makes sense, you cannot convert someone who is not blessed with the gift of magic to follow your goddess but you can fight against the misuse of magic on Toril. But tell me, why does your goddess allow such at all?~ GOTO SanFlr32
IF~~ THEN REPLY ~ I have no interest to discuss religion. To each her own. Let's move.~EXIT
END

IF ~~ THEN BEGIN SanFlr32
SAY ~ Access to the Weave that grants the powers to cast magic is given by all the gods to their followers, even those gods we would think of as evil. Mystra cannot prevent this. All she and her followers can do is to support those who chose the right path in its use and those who have the faith to object the evil magic users.~
IF~~THEN REPLY ~ I do not want to hurt you in your religion, but it sounds like your goddess is a rather weak one then.~ GOTO SanFlr33
IF~~THEN REPLY ~ Then Mystra is a bit like an overseer rather than one that rules the fate of us mortals?~ GOTO SanFlr34
END

IF ~~ THEN BEGIN SanFlr33
SAY ~ Weak or maybe just the opposite. To grant freedom and accept errors may as well be a sign of strength and confidence.~
=~ It is my understanding of my goddess and all the other gods that this material plane here is our plane to shape and to dwell on. They may guide and advise us but must take into account our spirit of rebellion against an unjust fate dealt out to us.~
IF~~THEN REPLY ~ And that is why you act out so strong and confident instead of simply following an endless string of rules, like a Helmite would do.~ EXIT
END

IF ~~ THEN BEGIN SanFlr34
SAY ~ It is my understanding of my goddess and all the other gods that this material plane here is our plane to shape and to dwell on. They may guide and advise us but must take into account our spirit of rebellion against an unjust fate dealt out to us.~
IF~~THEN REPLY ~ Yes, you are indeed a quite free spirit when it comes to following rules, always willing to make your own decisions instead of relying on help from elsewhere.~ EXIT
END

IF ~ Global("SanFlirt","GLOBAL",7)~ THEN BEGIN SanFlr40
SAY ~ What was Gorion's favourite dish.~
IF~~ THEN REPLY ~ I think I don't really know. We mostly only had breakfast together and then we diverged for the day as I did my lectures and scores and he went to study. ~ DO ~ SetGlobal("SanFlirt","GLOBAL",8)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr41
END

IF ~~ THEN BEGIN SanFlr41
SAY ~ And what did you have for breakfast then, tell me.~
IF~~ THEN REPLY ~ Always a boiled egg. Not that it was his favourite dish, but he claimed he would try it as long as he would once get it the way he wanted it.~  GOTO SanFlr42
END

IF ~~ THEN BEGIN SanFlr42
SAY ~ Which was soft boiled, I guess.~
IF ~~ THEN REPLY~ How did you know? Yes, but Martha always got them hard boiled.~  GOTO SanFlr43
IF ~~ THEN REPLY~ No, that is how Martha always served them, but Gorion didn't like the glibber.~GOTO SanFlr43
END

IF ~~ THEN BEGIN SanFlr43
SAY ~ Martha?~
IF ~~ THEN REPLY~ The fat cook at Candlekeep. All the monks and staff had common meals in the library and Martha did things the way she did them. No discussions, no extras. Very military, hahaha. ~GOTO SanFlr44
END

IF ~~ THEN BEGIN SanFlr44
SAY ~ I get the picture, <CHARNAME>.~
IF ~~ THEN REPLY~ Sandrah, this is the first time since I left Candlekeep that I was reminded of the *normal* life there. Everyone else always tends to talk about the death of Gorion and my life thereafter.~ GOTO SanFlr45
END

IF ~~ THEN BEGIN SanFlr45
SAY ~ Do not forget those many happy days you had with Gorion and with Imoen and those others back there. They are the heritage your foster father has left you.~
IF ~~ THEN REPLY~ Thank you, my healer. Your therapy has worked well - at least for a time of diversion. (You kiss her cheek.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
IF~~ THEN REPLY ~ I don't know if I can thank you for stirring up those memories of a time that is lost forever.~ EXIT
END

IF ~ Global("SanFlirt","GLOBAL",9)~ THEN BEGIN SanFlr50
SAY ~ Oh, how I yearn for a deliceously cooked meal served at a nicely decorated table, <CHARNAME>.~
IF~~ THEN REPLY ~ Is that my delicate Waterdeep Belle emerging from the armour of the Sword Coast's most feared fighter now?. ~ DO ~ SetGlobal("SanFlirt","GLOBAL",10)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr51
IF~~ THEN REPLY ~ Are you now making demands for luxury here on the road?. ~ DO ~ SetGlobal("SanFlirt","GLOBAL",10)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr51
END

IF ~~ THEN BEGIN SanFlr51
SAY ~ (Laughs) Exactly, <CHARNAME>. I have never hidden that I know the pleasantries of the life of an upper class girl in the City of Splendor. There are aspects of that life I can do without, but others I enjoy heartily. Like good food.~
IF ~~THEN REPLY ~ One thing I love so much about you are the many facettes of your personality, knowing the pleasures of the city girl and still enjoying our rural life on the road.~ GOTO SanFlr54
IF~~ THEN REPLY ~ Can your magic not supply us with such a table for our dinner tonight?~ GOTO SanFlr52
IF~~ THEN REPLY ~Oh, just shut up with your nonsense.~EXIT
END

IF ~~ THEN BEGIN SanFlr52
SAY ~ It could, but it would not be the same. The rattling of pots and pans and the smells that fill the house, the selection of the wine and the arrangement of the flowers on the table - all that is as much part of it as the meal itself. This atmosphere cannot be created artificially. I think it has to wait until we find an opportunity to celebrate such an evening with our friends.~
IF ~~THEN REPLY ~ Well, I understand well the hidden request to steer our party's way to such an opportunity in the near future.~GOTO SanFlr53
END

IF ~~ THEN BEGIN SanFlr53
SAY ~I am content with this prospect, sweet <CHARNAME>. Give me at least an appetizer.~
IF ~~THEN REPLY ~ (You kiss her on the lips.)~ EXIT
IF ~~THEN REPLY ~ (You give her a walnut you found on the path.)~ EXIT
END

IF ~~ THEN BEGIN SanFlr54
SAY ~ I am so glad that you are at my side at this period of my life, when there is so much to see and to learn. Even if the circumstances are all but light, we have each other and we share the experiences we make and the adventures we pass through.~
IF ~~THEN REPLY ~ And we collect an enourmous amount of stories we can tell back home at the fireside once this is all over.~  GOTO SanFlr55
IF ~~THEN REPLY ~ I have sometimes thought so myself. Even if it is Gorion's sad and cruel death that forced me into this life, I see that it suits me well and I undergo a development that the calm life at Candlekeep would never have provided.~ GOTO SanFlr56
END

IF ~~ THEN BEGIN SanFlr55
SAY ~ (Mumbles) Will there be such a time for us ever?~
IF~~THEN DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
END

IF ~~ THEN BEGIN SanFlr56
SAY ~ Not to forget the fact that we would probably never have met.~
IF~~THEN REPLY~ To think of that possibility. A life without you, puuh. (You laugh and take her in your arms for a tender kiss.)~ EXIT
IF~~THEN REPLY~ For a monk, the temptations of a woman like you would be simply unbearable. (Wink at her.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY~ (Mumble) If you only knew how often I wish I hadn't.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END


IF ~ Global("SanFlirt","GLOBAL",11)~ THEN BEGIN SanFlr60
SAY ~ <CHARNAME>, I will continue to provide you with my advice and counselling as good as I can, even if we have experienced that I can err like everybody else.~
IF~~THEN REPLY~ What makes you say that?~ GOTO SanFlr61
IF~~THEN REPLY~ I surely count on that, Sandrah. Your advice is always based on the best of information we have available in a situation. You never gave any false advice on purpose.~GOTO SanFlr61
IF~~THEN REPLY~ Good for you to recognise that. Maybe in the future it will make you think a second time before you hand out any advice that may be harmful to us.~ GOTO SanFlr63
IF~~THEN REPLY~ We all make mistakes now and then. The fear that any action or decision may be incorrect should never hinder us from acting as we think is best.~GOTO SanFlr62
END

IF ~~ THEN BEGIN SanFlr61
SAY~ The battles and challenges we will face are starting to get harder as our enemies slowly begin to recognise your potential - our potential, love. I just wanted to remind you that we cannot rely on the skills of just one of us alone. It is the whole group that makes us the force to change a bit of the fate of the Realms.~
IF~~THEN REPLY~ From your words I hear also the promise that you will stay by my side regardless of the tough path that lies ahead.~ GOTO SanFlr64
END

IF ~~ THEN BEGIN SanFlr62
SAY~ Yes, but it should not be used as an excuse to get careless. Our way will not become easier in the foreseeable future.~
IF~~THEN REPLY~ What makes you say that?~ GOTO SanFlr61
END

IF ~~ THEN BEGIN SanFlr63
SAY~ It was never my intention to do anything else nor am I aware of any situation so far where I had acted carelessly. I give my opinion and my advice as best as I know but it is us together to draw conclusions from it.~
IF~~THEN REPLY~ Maybe we were just lucky then - until now. Let us not become over-confident and careless.~ GOTO SanFlr61
END

IF ~~ THEN BEGIN SanFlr64
SAY~ I sure will as long as you remain who you are. We just have to be aware that from now on any false decisions may become of dire consequences - not only for us but for more and more people relying on our success.~
IF~~THEN REPLY~ To know where the traps are hidden is more than just the first step to overcome them. I have large confidence that we will master this - together.~ DO~ SetGlobal("SanFlirt","GLOBAL",12) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
IF~~THEN REPLY~ To know where the traps are hidden is more than just the first step to overcome them. I have large confidence that I will master this - just follow in my steps.~ DO~ SetGlobal("SanFlirt","GLOBAL",12) RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~EXIT
END

IF ~ Global("SanFlirt","GLOBAL",13)~ THEN BEGIN SanFlr70
SAY ~ <CHARNAME>, did you miss your mother much when you were a child at Candlekeep?~
IF~~THEN REPLY~ Mmh, you should know best yourself how it feels - or maybe not, as your story is quite different from mine.~ GOTO SanFlr71
IF~~THEN REPLY~ Honestly speaking, no. Maybe because the only other child around was Imoen who was as well motherless. And then, there were no real families at all in Candlekeep so for us our way of growing up was quite *normal*. I only started to think and wonder about her recently when I was confronted with my unusual heritage. Today I would really like to know more about her, if only Gorion would still be around to tell me (sigh).~ GOTO SanFlr71
END

IF ~~ THEN BEGIN SanFlr71
SAY~ You are right. Even as we have a common fate by growing up motherless, it has been quite different for each of us. From what you have told me, it appears as if your mother never really existed and played a role in your youth. Mine was ever present in our house in Waterdeep and her name sounded from my father's lips daily.~
IF~~THEN REPLY~ So you really missed her much?~ DO ~ SetGlobal("SanFlirt","GLOBAL",14)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr72
END

IF ~~ THEN BEGIN SanFlr72
SAY~ I would not say I missed her, as my father in his love and care gave me everything I needed. It was more - I was very angry about her fate and those gods that mingled with people's lives as if they were their playtoys. It was so unjust.~
=~ Later I was feeling so sorry for her, when I realised how young she had to die and how much of a wonderful life she never had the chance to encounter. And then - please undertstand me right, I am not talking out of vanity - I felt so disappointed that she never had the pleasure to get to know - me.~
IF~~THEN REPLY~ I cannot imagine any woman who would not be extremely proud of such a daughter...~
GOTO SanFlr73
END

IF ~~ THEN BEGIN SanFlr73
SAY~ Oh, do not make me blush - just think that the same could be said about you. You would be the pride of your mother as well if she could see you today.~
IF~!Global("SanRompa","Global",2)~THEN REPLY~ I hope so. I am convinced that she was surely not volunteering to receive me from such a *father*. It would hopefully be of some consolation for her to see what can come out of such black blood.~ GOTO SanFlr74
IF~Global("SanRompa","Global",2)~THEN REPLY~ I hope so. I am convinced that she was surely not volunteering to receive me from such a *father*. It would hopefully be of some consolation for her to see what can come out of such black blood.~ GOTO SanFlr74a
END

IF ~~ THEN BEGIN SanFlr74
SAY~ And if not for her...it sure is for those who care the most for you today...~
= ~ (Her arms entwine you closely and her sweet mouth is half open to receive your kiss.)~
IF~~THEN DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT
END

IF ~~ THEN BEGIN SanFlr74a
SAY~ And if not for her...it sure is for those who care the most for you today...~
IF~~THEN EXIT
END

IF ~ Global("SanFlirt","GLOBAL",15)~THEN BEGIN SanFlr80
SAY ~ We are together now for quite a significant while now. Long enough to consider something like a common history between us.~
IF~~ THEN REPLY ~ A bit more than just a 'common history', wouldn't you think? Even if sometimes I think I have just started to know you a bit.~ DO ~ SetGlobal("SanFlirt","GLOBAL",16)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr81
IF~~ THEN REPLY ~ A bit more than just a 'common history', wouldn't you think? (Sigh) Not all of it was that enjoyable.~ DO ~ SetGlobal("SanFlirt","GLOBAL",16)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr81
END

IF ~~ THEN BEGIN SanFlr81
SAY~ (Smiles) I hope you are still interested in discovering the rest of it. Me, I do not regret a single one of our days together - nor do I want to miss any of those still to come.~
IF~~ THEN REPLY ~ Do you see a chance for it to go on like this...I mean, this challenge will end someday, changes will come - a life completely different from what we have known until now.~ GOTO SanFlr82
IF~~ THEN REPLY ~ Your enthusiasm is annoying. With all our common history you should know me better by now.~ GOTO SanFlr82a
END

IF ~~ THEN BEGIN SanFlr82
SAY~ And I am sure you will fit well into this new life, together with me, however it may look like. We two will shape it to fit us.~
IF~~ THEN REPLY ~ I like your confidence in - mhmm - in us. Your belief that anything is possible for us if we just want it.~  GOTO SanFlr83
END

IF ~~ THEN BEGIN SanFlr82a
SAY~ You know that I am stubborn beyond reason and not one to easily give up what she wants.~
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN SanFlr83
SAY~ It is not an easy thing, given the perspective we face currently. But on the other hand, we have proven again and again what our union can achieve.~
IF~~ THEN REPLY ~ Much of our success is based on that, sure. Not to forget our comrades. ~ GOTO SanFlr84
IF~~ THEN REPLY ~ Well, yes, you have been quite helpful so far. Let's hope it will stay this way.~ GOTO SanFlr84
END

IF ~~ THEN BEGIN SanFlr84
SAY~ I admit, I have taken a weird way to express what I actually wanted to say to you.~
IF~~ THEN REPLY ~ (Laugh) One of the things I have grown accustomed to, darling...~ GOTO SanFlr85
IF ~!Global("SanRompa","Global",2)~ THEN REPLY ~ I should have guessed so myself, given our 'common history'. So what was your intention then?~ GOTO SanFlr85
IF ~Global("SanRompa","Global",2)~ THEN REPLY ~ I should have guessed so myself, given our 'common history'. So what was your intention then?~ GOTO SanFlr82a
END

IF ~~ THEN BEGIN SanFlr85
SAY~ (She embraces you tightly) I love you, darling. And I do not even WANT to imagine a single future day without you...~
IF ~~ THEN REPLY ~ (The world around you has stopped. Nothing exists anymore for you than the lips that melt with yours and her exited breathing that becomes one with your own...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT
END

IF ~ Global("SanFlirt","GLOBAL",17)~THEN BEGIN SanFlr90
SAY ~ Is there someone, living or historic, that in a way inspires your actions and motivations?~
IF~~ THEN REPLY ~ You mean in the way you are inspired and even somehow follow the way of the mystic heroine Midnight?~ DO ~ SetGlobal("SanFlirt","GLOBAL",18)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr91
END

IF ~~ THEN BEGIN  SanFlr91
SAY ~ Yes, exactly, this is what I meant.~
IF ~~ THEN REPLY ~ I would say Gorion to some extend. His teachings have settled in my soul and my thinking. Sometimes when a decision has to be made I find myself trying to guess what he would have done in my place. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanFlr9Gor
IF ~~ THEN REPLY ~ The deeds of the famous Drizzt Do'Urden have been dear to me since my childhood in Candlekeep and now I find myself in a strange way in a similar situation like his.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanFlr9Driz
IF ~~ THEN REPLY ~ Do not take it as a blatant compliment, Sandrah, but your presence and support provide the most important impulses in my current situation.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO SanFlr9Self
IF ~~ THEN REPLY ~ We know by now that I am a demi-god, Sandrah. It has to be my own power and confidence that guides me as any human would be too limited for that purpose.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO SanFlr9Demg
END

IF ~~ THEN BEGIN SanFlr9Driz
SAY ~ Hunted and treated like an outcast by some - just because of blood and heritage. Praised by others as a true hero because of your fight for righteousness and justice.~
IF ~~ THEN REPLY ~ Not that I had any choice in it, I mean to become what I am now - but at least I try to stay true to myself in this, just like Drizzt does. ~ GOTO SanFlr9Driz2
END

IF ~~ THEN BEGIN SanFlr9Driz2
SAY ~ (Sandrah smiles) Knowing both Drizzt and you quite a bit, I can assure you that you keep to your true self quite well through all these challenges that would make weaker characters stumble. One of the many aspects of you that make me like you so much.~
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN SanFlr9Gor
SAY ~ We have learned by now that Gorion was a Harper, even if it is my personal opinion that his own interpretation of this belief was guided by his own wisdom and feelings much more than by any doctrine.~
IF ~~ THEN REPLY ~ He never referred to the Harpers at all. For me his decisions and beliefs seemed to be all his own. I think you are right in your assumptions. Which reminds me a bit of yourself and your relationship with your goddess.~ GOTO SanFlr9Gor2
IF ~~ THEN REPLY ~ He never referred to the Harpers at all. For me his decisions and beliefs seemed to be all his own. I think you are right in your assumptions. ~ GOTO SanFlr9Gor2
END

IF ~~ THEN BEGIN SanFlr9Gor2
SAY ~ He was a wise man in deed. Giving you his own example as a reference rather than some encrusted teachings has surely enabled you to see the world without any prejudice. A fact that enables you - enables us - to cope with the strange situations we have to face.~
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN SanFlr9Self
SAY ~ (She gives you one of the special glances from her bottomless eyes and sighs.) You know that you can rely on my counselling and loyalty with all I can give you. But mind that I am as deeply involved in all of this as you are yourself. This in a way disqualifies me to be more than your ever true companion.~
IF ~~ THEN REPLY ~ And by that you are the most important person for me in this situation and you are surely competent to accept the responsibility implied.~ EXIT
END

IF ~~ THEN BEGIN SanFlr9Demg
SAY ~ (She gives you one of the special glances from her bottomless eyes and sighs.) If no human can fill this role, maybe a god or another demi-god?~
IF ~~ THEN REPLY ~ Bhaal.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-10) ~EXIT
IF ~~ THEN REPLY ~ No, none of them.~ EXIT
IF ~~ THEN REPLY ~ Tempus.~ EXIT
IF ~~ THEN REPLY ~ Helm.~ EXIT
END

IF ~ Global("SanFlirt","GLOBAL",19)~THEN BEGIN SanFlr101
SAY ~ I was wondering how you feel about children, <CHARNAME>?~
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I like children in general - but probably you were referring to having children of my own one day...~ DO ~ SetGlobal("SanFlirt","GLOBAL",20)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr102
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I like children in general - but probably you were referring to having children of my own one day...~ DO ~ SetGlobal("SanFlirt","GLOBAL",20)RealSetGlobalTimer("SanFlirTi","GLOBAL",7200)~ GOTO SanFlr112
END

IF ~~ THEN BEGIN  SanFlr102
SAY ~ (Smiles) I actually meant my questions in both these ways - you know me quite well by now. So how about having children of your own one day?~
IF~~ THEN REPLY ~ It makes me sad to think of it - but with my heritage it would be quite irresponsible of me to let the Bhaal's blood infect a next generation. Even if I can manage the calling within me, who knows if my child could?~ GOTO SanFlr103
IF ~~ THEN REPLY ~ As I have mastered the malicious spawn that was given to me I can assume that my children will be able to withstand Bhaal as well. But what would the future mother say to this?~ GOTO SanFlr103
END

IF ~~ THEN BEGIN  SanFlr103
SAY ~ I admire your considerations, <CHARNAME>, but I can bring you some relief for your doubts. It is known that the seed in any demi-god ends with the direct spawn of the godly parent. The power - good or bad - is not inherited by the next generation, even if both parents would be godchilds. All of their children would be normal mortals of their respective race.~
IF ~~ THEN REPLY ~ You mean...the whole spook of the Bhaalspawns will end with me - and with the end of all of my *brothers and sisters*?~ GOTO SanFlr104
END

IF ~~ THEN BEGIN  SanFlr104
SAY ~ In principle yes. Godly powers can only be inherited directly from the gods. ~
IF ~~ THEN REPLY ~ What does that mean, *in principle*? Bhaal must have known what you tell me now - and still he has bred his spawns to guarantee his own succession or survival. Where is the sense of that?~ GOTO SanFlr105
END

IF ~~ THEN BEGIN  SanFlr105
SAY ~ <CHARNAME>, the dead god's intention was to keep his blood in reign of the Throne of the God of Murder.~
IF ~~ THEN REPLY ~ And I could become the normal father of a family of nice wonderful children with the one I dearly love? Just like that?~  GOTO SanFlr106
END

IF ~~ THEN BEGIN  SanFlr106
SAY ~ (She gives you a long thoughtful glance.) You know it will not be *just like that*. You need to survive a long a bloody battle against all that has been left on this plane by Bhaal - including what he has left inside of you - before such a future can become possible. But I am confident of this perspective.~
IF ~~ THEN REPLY ~ It is not *me* who must succeeed, Sandrah, it must and and will be *us*.~ EXIT
IF ~~ THEN REPLY ~ These children you talk about, they require a mother as well as a father. Do I need to say more, Sandrah? We will succeed, no doubt.~ EXIT
END

IF ~~ THEN BEGIN  SanFlr112
SAY ~ (Smiles) I actually meant my questions in both these ways - you know me quite well by now. So how about having children of your own one day?~
IF~~ THEN REPLY ~ It makes me sad to think of it - but with my heritage it would be quite irresponsible of me to let the Bhaal's blood infect a next generation. Even if I can manage the calling within me, who knows if my child could?~ GOTO SanFlr113
IF ~~ THEN REPLY ~ As I have mastered the malicious spawn that was given to me I can assume that my children will be able to withstand Bhaal as well. But what would the probable father say to this? And what says the woman I love?~ GOTO SanFlr113
END

IF ~~ THEN BEGIN  SanFlr113
SAY ~ I admire your considerations, <CHARNAME>, but I can bring you some relief for your doubts. It is known that the seed in any demi-god ends with the direct spawn of the godly parent. The power - good or bad - is not inherited by the next generation, even if both parents would be godchilds. All of their children would be normal mortals of their respective race.~
IF ~~ THEN REPLY ~ You mean...the whole spook of the Bhaalspawns will end with me - and with the end of all of my *brothers and sisters*?~ GOTO SanFlr114
END

IF ~~ THEN BEGIN  SanFlr114
SAY ~ In principle yes. Godly powers can only be inherited directly from the gods. ~
IF ~~ THEN REPLY ~ What does that mean, *in principle*? Bhaal must have known what you tell me now - and still he has bred his spawns to guarantee his own succession or survival. Where is the sense of that?~ GOTO SanFlr115
END

IF ~~ THEN BEGIN  SanFlr115
SAY ~ <CHARNAME>, the dead god's intention was to keep his blood in reign of the Throne of the God of Murder.~
IF ~~ THEN REPLY ~ And I could become the mother of some nice wonderful children from a normal father? Just like that?~  GOTO SanFlr116
END

IF ~~ THEN BEGIN  SanFlr116
SAY ~ (She gives you a long thoughtful glance.) You know it will not be *just like that*. You need to survive a long a bloody battle against all that has been left on this plane by Bhaal - including what he has left inside of you - before such a future can become possible. But I am confident of this perspective.~
IF ~~ THEN REPLY ~ It is not *me* who must succeeed, Sandrah, it must and and will be *us*.~ EXIT
IF ~~ THEN REPLY ~ These children you talk about, they require a father as well as a mother. Do I need to say more, Sandrah? We will succeed, no doubt.~ EXIT
END

// BG 2
//____________________________________________


IF ~Global("BG2FlirtCity","LOCALS",1) ~THEN BEGIN SanFlirtCity1
SAY ~ (Sandrah has secretly rumaged through the offers of various merchants. Now she comes up to you with a smile on her face.)~
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN GOTO SanFlirtCity2
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN GOTO SanFlirtCity3
END

IF~~ THEN BEGIN SanFlirtCity2
SAY ~ (She unbuttons the top of your tunica and knots a smooth silken scarf around your neck. You notice that the colour exactly matches the one of your own eyes.)~
IF~~THEN REPLY ~ It's wonderful, thank you, my love. (You embrace and kiss her.)~ DO ~ SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ It's wonderful, thank you, Sandrah. ~ DO ~ SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF~~ THEN BEGIN SanFlirtCity3
SAY ~ (She makes you bow your head and artfully attaches a silken ribbon to your locks. You notice that the colour exactly matches the one of your own eyes.)~
IF~~THEN REPLY ~ It's wonderful, thank you, my love. (You embrace and kiss her.)~ DO ~ SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ It's wonderful, thank you, Sandrah. ~ DO ~ SetGlobal("BG2FlirtCity","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF ~Global("BG2FlirtDung","LOCALS",1) ~THEN BEGIN SanFlirtDung1
SAY ~ (Even in a dungeon like this Sandrah seems to be unable to loose her confidence and positive attitude.) ~
IF~~THEN REPLY ~ (You envy her for a moment before you realise that you can gain strength for yourself from her attitude. You give her a loving smile as she turns around and gazes at you.) All is well, Sandrah - you are by my side.~ DO ~SetGlobal("BG2FlirtDung","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ (You envy her for a moment before you realise that you can gain strength for yourself from her attitude.)~ DO ~SetGlobal("BG2FlirtDung","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF ~Global("BG2FlirtForst","LOCALS",1) ~THEN BEGIN SanFlirtForst1
SAY ~ (Sandrah hums a small tune that intwines melodically with the songs of the birds from above.) ~
IF~~THEN REPLY ~ (You take her hand and walk beside her for a while like you were just like any other happy loving young couple in Fearun - and for a moment it seems you are nothing else.)~ DO ~SetGlobal("BG2FlirtForst","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ Psst, you may attract foe.~ DO ~SetGlobal("BG2FlirtForst","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF ~Global("BG2FlirtNite","LOCALS",1) ~THEN BEGIN SanFlirtForst1
SAY ~ (The nightly city is full of strange voices and sounds, completely different from its daily bussle. Sandrah has stopped for a moment, holding your hand and assimilating the scenery with all her senses.) ~
IF~~THEN REPLY ~ There can be peaceful islands even in such a city when you are in love and with your dear one. (You turn to her and kiss her.) ~ DO ~SetGlobal("BG2FlirtNite","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ (You wish there was someone near to share it with.) ~ DO ~SetGlobal("BG2FlirtNite","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF ~Global("BG2FlirtHeal","LOCALS",1) ~THEN BEGIN SanFlirtHeal1
SAY ~ (Like so many uncounted times before Sandrah has cast one of her healing spells on you.) ~
IF~~THEN REPLY ~ Where would I be if not for you, sweetheart. Your healing. your trust and your confidence keep me alive day after day. (You kiss one of her healing hands and then the other.) ~ DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ GOTO SanFlirtHeal2
IF~~THEN REPLY ~ Thank you. ~ DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
IF~~THEN REPLY ~ Your worth to be tugged along, woman, keep that up. ~ DO ~SetGlobal("BG2FlirtHeal","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000) ~ EXIT
END

IF~~ THEN BEGIN SanFlirtHeal2
SAY ~ It is not the hand that deserves your thanks but the lips that pronounce the spell. (She offers you her half opened mouth with her eyes closed in anticipation.)~
IF~~THEN REPLY ~ (The invitation is much too pleasant to think of resistance...)~EXIT
END

IF~Global("BG2FlirtThet","LOCALS",1)~ THEN BEGIN SanFlirtThet1
SAY ~ (Dreamily) Now that this place is save...a lonely cosy hut in the mysterious Tethyr Forest. We have not had such a nest for some time, <CHARNAME>.~
IF~~THEN REPLY ~I love that tone in your voice, this mixture of romance and longing.~ DO~ SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~GOTO SanFlirtThet2
IF~~THEN REPLY ~Is my fearless heroine growing tired? Are you looking for a place to settle down?~DO~ SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~GOTO SanFlirtThet3
IF~~THEN REPLY ~And we have better things to do at this moment than to fill our minds with such considerations.~DO~ SetGlobal("BG2FlirtThet","LOCALS",2)RealSetGlobalTimer("SanFlirTi","GLOBAL",3000)~EXIT
END

IF~~ THEN BEGIN SanFlirtThet2
SAY~ And will you answer to it? Will my hunger be satisfied by the one who does that best?~
IF~~THEN REPLY ~ (You wordlessly lead her to the sidechamber and away from your companions already helping her out of her armour on the way.)~  DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

IF~~ THEN BEGIN SanFlirtThet3
SAY~ (Smiles) We know this is nothing but a pleasant dream for us, my love. But we can always take the chances that a moment like this has to offer...~
IF~~THEN REPLY ~ (You wordlessly lead her to the sidechamber and away from your companions already helping her out of her armour on the way.)~  DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~ EXIT
END

//==============================================================================
END
