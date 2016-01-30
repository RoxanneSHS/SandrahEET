APPEND BJ#Klsy

IF WEIGHT #-6~Global("SanHealklsy","GLOBAL",5) ~THEN BEGIN SanhealKlsy1
SAY~ Thank you for the spell, priestess. (Sigh) I wish my magical talents would include the gift for healing spells as well. They would surely not be a match for your abilities but still come handy in our everyday adventuring.~ 
IF~~THEN EXTERN BSandr SanhealKlsy2
END

IF WEIGHT #-7~Global("SanHealklsy","GLOBAL",7)~THEN BEGIN SanKlsy1
SAY~ Ehem, I hope I do not disturb you doing something important.~
IF~~THEN EXTERN BSandr SanhealKlsy3
END
END

CHAIN
IF~~THEN BSandr SanhealKlsy2
~I have already recognised that your relationship with magic is a bit different than that of other mages. It seems you have a kind of natural talent without control on how to focus it by learning.~
DO~SetGlobal("SanHealklsy","GLOBAL",6) RealSetGlobalTimer("SanKelseyT","LOCALS",2120)~
== BJ#Klsy~ That is well expressed, Sandrah. I had already thought of asking you about it, sensing that you might be one to explain to me what has happened and is happening to me.~
== BSandr~You mean I have an explanation due to the fact that I am a priestess of Mystra?~
== BJ#Klsy~ Is it not your goddess that is the source of all magic and reasonably the source of my innate talents?~
== BSandr~A valid assumption, even if my goddess rarely seeks out individual mortals and blesses them - or should I say curses them - with gifts that they have not chosen or asked for themselves in the first place.~
== BJ#Klsy~You have gained a good insight into my situation or problem after the short period we know each other already. If I get you right, you are saying that it's probably not Mystra who has caused my condition?~
== BSandr~I would not declare her innocent that easily, Kelsey. Honestly speaking I do not know it better than you do at this moment. Even if my goddess guards the Weave and all the magic that comes out of it she is not the only one who can grant the use of bits of that power to a mortal.~
== BJ#Klsy~(Sighs) I had hoped for a bit more when I learned who you are...~
== BSandr~Do not give up that fast, Kelsey. I just said I cannot answer you at this very moment. But if you are willing to share your history with me and let me gain some insight into your personality and skills we may have a chance together to find out more about it over time. I offer you my knowledge and my abilities if you are willing to let me study you.~
== BJ#Klsy~Hmm. I have to admit, I'm feeling a bit uncomfortable to be the subject to anyone's *studies*. The cowled wizzards would try to get a hold of me for just the same reason.~
== BSandr~I hope you will not compare me to those imposers. My offer is to discover together with you what you want to know  - not out of curiosity but to help a companion and friend.~ EXIT

CHAIN
IF~~THEN BSandr SanhealKlsy3
~(Sandrah has sat down to study Elminster's tome once again as Kelsey approaches her.) Gaining knowledge is always important. (She smiles) And you do not disturb me.~
DO~SetGlobal("SanHealklsy","GLOBAL",8) RealSetGlobalTimer("SanKelseyT","LOCALS",2120)~
== BJ#Klsy~ I once had a travelling companion - I would almost call him one of my few friends I ever made. He was a sorcerer who helped me a bit to develop and control my own skills.~
== BSandr~(Smiles up at him.) I have to disappoint you, Kelsey, but as a priestess I am unable to tutor you much. My gifts come from my goddess and evolve almost as mysteriously as yours with the experience I gain. But...~
== BJ#Klsy~But - a *but* means there is some hope, right?~
== BSandr~You spoke of a tutor and a friend. I fail to qualify as the first, there is hope for the second still.~
== BJ#Klsy~A nice prospect. Say, that tome you always study is not on the topic of magic then?~
== BSandr~Come sit beside me and take a look. Here are my father's notes on what he encountered and learned by travelling Faerun...~DO~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~
EXIT