APPEND BAERIE

IF WEIGHT #-32~ Global("SanHealaeri","GLOBAL",5)~THEN BEGIN Aerieheal1
SAY~ You are very kind and friendly, Sandrah. Thank you for your healing spell.~
IF~~THEN EXTERN BSandr Aerieheal2
END
END

CHAIN
IF~~THEN BSandr Aerieheal2
~I consider myself this group's healer and even though you are a priestess yourself I have often found that those who possess the support of the Weave themselves tend to forget it in the heat of the battle.~
DO~SetGlobal("SanHealaeri","GLOBAL",6)RealSetGlobalTimer("SanAeriInt","GLOBAL",1800)~
==BAERIE~ I simply do things by instinct. The Weave...you know so very much about it. ~
==BSandr~ I should - you can anticipate that from a priestess of Mystra.~
==BAERIE~ And even if you are not a mage, your magic skills are astounding. I - I think we have much in common. (Smiles shyly.)~
==BSandr IF~ Global("SanRomPath","GLOBAL",1) ~ THEN~ (Looks quickly into your direction) Many of our interests may be similar, I agree.~
==BAERIE IF~ Global("SanRomPath","GLOBAL",1) ~ THEN~ (Blushes) Eh, I hope there can be friendship between us in this group, Sandrah.~
==BSandr IF~ Global("SanRomPath","GLOBAL",2) Global("Aeriematch","GLOBAL",1) ~ THEN~ (Looks quickly into your direction) Many of our interests may be similar, I agree.~
==BAERIE IF~ Global("SanRomPath","GLOBAL",2)Global("Aeriematch","GLOBAL",1) ~ THEN~ (Blushes) Eh, I hope there can be friendship between us in this group, Sandrah.~
==BSandr IF~ Global("SanRomPath","GLOBAL",2) !Global("Aeriematch","GLOBAL",1) ~ THEN~ Many of our interests may be similar, I agree.~
==BAERIE IF~ Global("SanRomPath","GLOBAL",2)!Global("Aeriematch","GLOBAL",1) ~ THEN~ I hope there can be friendship between us in this group, Sandrah.~EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",7)~THEN BSandr  SanAeriT1
~I have once visited what has remained of the Avariel in Faenya-Dale with my father.~ 
DO~SetGlobal("SanHealaeri","GLOBAL",8) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ You have been to my wonderful home, Sandrah!!?? (While her face expresses joyful expectations her eyes are nevertheless immediately filling with tears.)~ 
==BSandr ~It was sad and beautiful at the same time - just like you are, Aerie.~
==BAERIE~ What do you mean by that?~
==BSandr ~It was sad to imagine that it once may have been the most wonderful place in Faerun - and still what had remained from the former glory in the place and the attitude of the people was overwhelming me.~
==BAERIE~ The loss of my home and the loss of my wings have nearly destroyed me, Sandrah, had it not been for the care of uncle Quayle and Baervan.~
==BSandr ~And yet you have survived to enjoy life and to encourage your comrads with your example.~
==BAERIE~ Do I? You seem to think too highly of me, Sandrah. I have lost far too much to ever be the one I was before...~
==BSandr ~You are not alone in that, Avariel. We all have suffered our losses and with each one our life has changed. Still for every loss there is always something new gained sooner or later.~
==BAERIE~ What do you know about a loss such as I have suffered? You, you have everything...~
==BSandr ~I will maybe tell you one of these days about my losses.~
EXIT

CHAIN
IF~Global("SanHealaeri","GLOBAL",9)~THEN BSandr  SanAeriT2
~That was a beautiful and hauting melody you were just singing, Aerie. Is it one from your folk?~
DO~SetGlobal("SanHealaeri","GLOBAL",10) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ You liked it...uncle Quayle always sang it to me when I was sad or my stumps were hurting again. It always made me feel better. The melodies of my kin are different, they are all in praise of beauty and goodness.~
==BSandr ~They would transmit their message to everybody listening even if we do not understand the tongue of your people. Your voice tells directly to the heart all it needs to know.~
==BAERIE~ Everyone in the circus always told me my singing was wonderful. Is it really? What about you, sing something for me, will you?~
==BSandr ~It would spoil your day, really. My singing is terrible - but I can play a number of instruments to accompany a good singer, one like you.~
==BAERIE~ Ohh, we must do that!! I will have a lookout at each town and tavern we find along the way to see if we can find something for you so we can perform together...do you think <CHARNAME> would like that, too?~
==BSandr ~<PRO_HESHE> would encourage anything to cheer up this party now and then. And I know <CHARNAME> to be a quite a competent dancer, by the way.~EXIT

CHAIN
IF~ Global("SanHealaeri","GLOBAL",11)~THEN BSandr  SanAeriT3
~(Sandrah and Aerie have dressed both in the most delicate light skirts for the evening. Their combined beauty is sheer breathtaking.)~
DO~SetGlobal("SanHealaeri","GLOBAL",12) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ Must you stare at my stumps in that impertinent way, Sandrah??!!!~
==BSandr ~I did not...well, yes I did. You know that I am a healer by profession and calling, Aerie. It was not curiosity that made me inspect them but my instinct to heal and to help.~
==BAERIE~ (Tears well up in Aerie's eyes) I-I am sorry I was so harsh - but I am really edgy when it comes to my lost white wings...~
==BSandr ~(Sandrah has tenderly laid her arm around Aerie's shoulder, carefully avoiding to touch the stumps that are hardly visible under the avariel's gown.)~
=~It is understandable, my dear. Has anyone with my skills ever taken a closer look at your wounds?~
==BAERIE~ (Sobs) Uncle Quayle sacrificed all his savings to get the best of healing under the circumstances we had at the circus and with his income...~
==BSandr ~I do not doubt that, Aerie, he is a wonderful man. As you said he did the best under his circumstances. An elvish body is a fragile thing, especially that of a winged elf. Few are found outside of the Faenya-Dale that can offer adequate care.~
==BAERIE~ And can you?~
==BSandr ~I cannot promise you much. All I can offer you is to take a look and then to tell you the truth about what I can do. But what I can surely offer you is the helping hand of a friend to make your soul feel better about the loss.~
==BAERIE~ (Aerie burries her face on Sandrah's chest.) I wanted not to yell at you...you are so kind and caring. Just hold me for a while, will you?~
==BSandr ~(Sandrah just takes the avariel in her arms and starts to caress the girl's long tresses mumbling soothing words into her pointed ears.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanHealaeri","GLOBAL",13)~THEN BSandr  SanAeriT4
~ You are quite a powerful spellcaster, Aerie. Did you learn such things at the circus?~
DO~SetGlobal("SanHealaeri","GLOBAL",14) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ Such a compliment means s-so much from one who really knows about the art.~
=~Even as my heart sings at the thoughts of Baervan it is actually Aerdrie Faenya who grants me my priest spells. And you are right, my s-studies in magic have started at the circus. I h-hope I can be useful for the group with it.~
==BSandr ~You definitely are *useful*. But company and friendship do not stop at this, Aerie. You can give us so much more than mere contribution to our success.~
==BAERIE~ C-can I?~
==BSandr ~You do it every day, with your cheerfulness and your trust. You have not given up hope after all that has happened to you, you go on and are able to see the great things that life has in store for each one of us.~
==BSandr IF~InParty("ACBRE")~ THEN~ You even make our grumpy dwarf smile behind his beard now and then.~
==BSandr IF~InParty("P#Kivan")~ THEN~ Even our sad elf was humming along with your tune this morning.~
==BSandr IF~InParty("Minsc")~ THEN~ Our sad berserker has laughed along with you last night forgetting for a moment the loss of his witch.~
==BSandr IF~InParty("Anomen") !InParty("Keldorn")~ THEN~ Our paladin was able to enjoy our last tavern stay for an hour, once putting aside his duty for Helm. ~
==BSandr IF~!InParty("Anomen") InParty("Keldorn")~ THEN~ Our paladin was able to enjoy our last tavern stay for an hour, once putting aside his duty for Helm. ~
==BSandr~ Even our duty laden Bhaalspawn was relaxing from his responsibilities when you sang your lullaby last evening.~
==BAERIE~ (Blushes) T-there is someone who makes me forget MY trouble with every word that is exchanged between us...~
==BSandr~ <CHARNAME>?~
==BAERIE~ (Blushes even deeper) E-e-eh, I cannot deny that - but it was not whom I was referring to right now...Sandrah. (She turns to face the priestess and smiles happily while looking deep into Sandrah's eyes.) You mean much to me. ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanHealaeri","GLOBAL",15)~THEN BSandr  SanAeriT5
~ Aerie, is all well?~
DO~SetGlobal("SanHealaeri","GLOBAL",16) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ (Sighs) I will not have a chance to r-return to Faenya-Dale ever again, I have to face this fact, I guess.~
==BSandr~ I have a home at my father's place in Waterdeep. It is a place that welcomes all my friends and you would not be the first one to find a shelter and new perspectives there, Aerie.~
=~ <CHARNAME> has lost Candlekeep and found comfort at Elminster's place as well.~
==BAERIE~ Y-you are s-so kind in all you do for me and you offer me, Sandrah.~
==BSandr~ Let me describe you the garden, Aerie - and of course my tower with its view wide over the Realms. See, I never had the chance to experience flying like you, but I imagine that standing up there in the fresh breeze and letting your view cross over the lands below is coming close to it.~
==BAERIE~ I learn so much from you, Sandrah. You try to see the world through my eyes to c-c-comfort and help me. I will try this approach with our comrads myself.~
=~(The avariel steps up closely to Sandrah and caresses the priestess smooth face. Then she places a kiss on the cheek she had just touched and blushing deep she runs out of your sight.)~EXIT

CHAIN
IF WEIGHT #-1~Global("SanAerSharkt","LOCALS",1)~ THEN BSandr SanAerShakt
~(Sandrah's expression is sad as she sees Aerie approaching her. She seems to anticipate the elf's question to her.)~
DO~SetGlobal("SanAerSharkt","LOCALS",2) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ S-Sandrah, w-what you have told Shauhana about that magic pool...~
==BSandr~ (Sandrah takes Aerie in her arms.) Whatever it can do if we really get access to it - it will not give you back your wings.~
==BAERIE~ H-how can you be so sure - you said you know only little and must study much more...if there is hope for her why are you saying such cruel things to me?~
==BSandr~You know well that I am not cruel. Cruelty would be if I raised hopes in you that cannot be fulfilled. Cruelty would be if I stand aside while a friend runs the risk of losing herself to wishful illusions.~
=~I will not give you a promise that cannot be fulfilled.~
==BAERIE~Will I never fly again in all my life?~
==BSandr~If Sharkta Fai is really what my studies make me believe it is, the most we can expect for you is that it helps me to heal and remove the rest of your stumps from your shoulders. You will be free of the constant reminders of your loss. You will be able to live like any other elf on Toril.~
==BAERIE~An elf but not an Avariel!!~
==BSandr~That is very much, Aerie, and I give you my word to do anything I can to make it happen. What you do with that gift - what WE do with that gift depends on your acceptance.~
==BAERIE~(Aerie stays in Sandrah's embrace for a long time sometimes moaning like a small animal, sometimes sighing deeply.) It is not you that is cruel, Sandrah, it is life itself.~ 
==BSandr~I will try to make it bearable for you.~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanAerSharkt","LOCALS",3)~ THEN BSandr SanAerShakt2
~Aerie, I have given you a promise and if you are willing I will make it happen before we go to rest.~
DO~SetGlobal("SanAerSharkt","LOCALS",4) ~
==BAERIE~ S-Sandrah, I was waiting in Sharkta Fai but nothing has happened...~
==BSandr~ Do not worry, my poor avariel. I need a bit of time for the procedure and you will need a good night of sleep afterwards, that is why it had to wait until now.~
=~(Sandrah has opened her backpack already to retrieve a number of mysterious items from it. Among the things you spot a phiole of water you have observed her filling at the legendary pool.)~
==BAERIE~ Ooh, can you f-forgive me my scepticism - I should have trusted you as you deserve it.~
==BSandr~Trust needs to be gained, Aerie. I hope I can gain your trust and friendship this time. Come over here...yes, lay on your belly, make yourself comfortable and relax, my dear...fine, it will take a bit of time now...~DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2) ActionOverride("CVSandr",Interact("CVSandr"))~
EXIT

CHAIN
IF ~Global("SanAerSharkt","LOCALS",4)~ THEN BSandr SanAerShakt2
~(Sandrah has motioned you and the rest of the party out of sight while she applied her treatment on Aerie's shoulder.)~
DO~SetGlobal("SanAerSharkt","LOCALS",5) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ Uuuh, that was nasty!~
==BSandr~All is fine...that was the last bit of hurt, relax, Aerie, we are done.~
==BAERIE~ I-i-is it...?~
==BSandr~It is perfect, I mean, relatively. Your shoulders are smooth and healed and no signs of the injuries are left. It will never hurt you again.~
==BAERIE~(Sighs) It feels l-like the door back to my former being is forever closed now.~
==BSandr~The wide land lies before you, my friend, offering so many roads to you, many that will lead to happiness and satisfaction. But now you need to rest and let the healing get completed.~
==BAERIE~W-will you stay beside me, p-please...hold me in your arms while we rest, c-can you do that for me?~
==BSandr~I am here for you. Now try to sleep. (She kisses the avariel's forehead and cuddles herself closely to the other girl.)~DO~RestParty()~EXIT

CHAIN
IF~ Global("SanHealaeri","GLOBAL",17)~THEN BSandr  SanAeriT6
~ (Sandrah has sat down with her tome to study during the rest you have ordered for the group.)?~
DO~SetGlobal("SanHealaeri","GLOBAL",18) RealSetGlobalTimer("SanAeriInt","GLOBAL",3800)~
==BAERIE~ Are you learning once again, Sandrah. When do you know it all?~
==BSandr~ (Laughs) Learning never ends, Aerie, or do you think so?~
==BAERIE~ Oh, I have discovered so many things already since I left the circus and ventured with <CHARNAME> and you. I sometimes wonder if my little head can contain all I learn every day.~
==BSandr~There are far too many things to see and learn in Faerun for one person alone in all lifetime. Every day may reveal new wonderful, frightening or astonishing things for us.~
==BAERIE~ I-I think I know what you want to tell me in that friendliness that is your nature. I-I should not look back too much...rather look forward to what may come next.~
==BSandr~We cannot change anymore what has passed, my avariel, but we can shape what is still to come. <CHARNAME> and me are determined to do this - will you become a part of it, Aerie?~
==BAERIE~ You are the first person, Sandrah, that has ever made me feel like I was i-important in some way...you know, someone who could ac-acomplish something.~
==BSandr~Sure you can. Even more can be achieved if not one does it alone but we work together on it.~
==BAERIE~ I-I happily accept this invitation. (Aerie slides to Sandrah's side embracing the young priestess. With her head leaned against Sandrah's shoulder she starts to study the page of the tome your lover was reading - or at least she pretends to study.)~EXIT