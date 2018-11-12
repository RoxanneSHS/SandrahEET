APPEND BSandr

IF~Global("SanAmbKidn","m#ar05",1)~THEN BEGIN RopeAmb1
SAY~Oh my, our little tiefling thief is hard to keep in custody, <CHARNAME>.~
IF~~THEN REPLY~You mean...this destruction is Amber's work?~DO~SetGlobal("SanAmbKidn","m#ar05",2)~GOTO RopeAmb2
IF~~THEN REPLY~I fear the worse, what may have happened!!~DO~SetGlobal("SanAmbKidn","m#ar05",2)~GOTO RopeAmb2
END

IF~~THEN BEGIN RopeAmb2
SAY~This work here was obviously done by an experienced thief - not breaking in to burglar but breaking out. It seems she was too impatient to wait for the hero to come to the rescue.~
IF~~THEN REPLY~In this case we should follow the rope she has left us and hopefully find her safely outside already.~EXIT
END
END

CHAIN
IF WEIGHT #-24~Global("SanHealAmber","GLOBAL",3)~THEN BM#Amber SanHealAssi1
~That help from your side comes unexpected, priestess.~
DO~SetGlobal("SanHealAmber","GLOBAL",4)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~I am this group's healer just in case you have not noticed it yet, Amber.~
==BM#Amber~Well, I had not expected a priestess to act thus to my kin. It has never happened before - priests do not tolerate the tieflings.~
==BSandr~Is that experience or prejudice from your side?~
==BM#Amber~I heard that especially the aasimar were rather conceited folk. I have heard that some of them harbour a very nasty attitude towards tieflings. There are those aasimar who consider it to be their holy duty to wipe the world clean of our accursed taint. While I am sure it would be *splendid* to meet one of the more tolerant ones, I think it is better to be safe than sorry.~
==BSandr~Well...~
=~The line of your errors is so long that I hardly now where to begin to correct them.~
==BM#Amber~Your kind action has given you some credit. Of course, I am not saying that all aasimar are like that.~
==BSandr~Fine, let us start with that error then - I am not aasimar.~
==BM#Amber~Aasimar are descendants of the celestials and thus oppose the fiendish. I hail from Waterdeep, even if it's just from the dock ward, so I know who you are, daughter of Elminster.~
==BSandr~(Laughs) I remember you, Amber, the red haired wildcat that set the ward on fire one night - even though you were not really to blame for it. My father did a lot to rebuild it afterwards and gave me a chance to help in it. I hope we made it a better place even if you were not there any more to see the improvements.~
==BM#Amber~Ha, any change to the rotten place would be an improvement. But why do you deny your origin - anyone knows about your father's birth to Mystra.~
==BSandr~My father was born to the human Midnight before her ascension and by that is human just like me. None of us are aasimar and none of us oppose your kin just by race - even though we have a number of enemies among your kin...~
==BM#Amber~Let's drop the topic for the moment. You have not convinced me but we may have found an interesting topic for further talk.~EXIT

CHAIN
IF WEIGHT #-25~Global("SanHealAmber","GLOBAL",5)~THEN BM#Amber SanHealAssi2
~You are Midnight's granddaughter, Sandrah, but not related to the Goddess she became later, it's what you told me before.~
DO~SetGlobal("SanHealAmber","GLOBAL",6)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~I follow Mystra as her priestess but I have not celestial blood in me. ~
==BM#Amber~You also said you met my kin before - very few have met a tiefling before, so the bigotry I'm faced with all the time is based on hearsay and nothing more. ~
==BSandr~I never judge by race, Amber, and this is especially true for tieflings. I have never met two that were alike given the variety of possible demonic ancestors as well as for the non-demonic partner. ~
==BM#Amber~You are right, our parents can manifest themselves in such variety of ways, you are not likely to find two tieflings with exactly similar appearances and abilities. What would you make out of me, with your knowledge and significant lore?~
==BSandr~From your question I take it that you do not know your parents?~
==BM#Amber~My mother was from the surface in Waterdeep, but I can't even say whether she was human. My father was the demonic part for sure, but as you know yourself, there is plenty of them in the Nine Hells and elsewhere.~
==BSandr~We can only make guesses unless I get a chance to inspect you a bit closer. For example these lovely little demonic streaks in your skin are in all probability a direct indication of the nature of your demonic ancestor, while your feline grace and movement may indicate your mother's side.~
==BM#Amber~(Rolls up her sleeve a bit for Sandrah to see more of her tattoo-like pigments.) You make it sound like I received the best of both worlds...~
==BSandr~(Smiles) I will judge on that if I get a closer look at the inner values - the outside looks quite promising - it may contain a beautiful soul as well.~
==BM#Amber~(Blushes.) I...I...I think we must postpone the analysis to another time - if you are still interested then.~EXIT

CHAIN
IF WEIGHT #-26~Global("SanHealAmber","GLOBAL",7)~THEN BM#Amber SanHealAssi8
~(Amber stretches out besides Sandrah who lies in the grass in just her light skirt for the midday rest you have anounced.)~
DO~SetGlobal("SanHealAmber","GLOBAL",8)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~(With a smile Sandrah turns to the tiefling and softly touches the spotted arm that the sleeveless vest exposes with her fingertips.)~
==BM#Amber~You wish to explore my skin? My, my, what a tempting thought...~
==BSandr~We wanted to come closer to your origins, did we not. It requires some *scientific* research... ~
==BM#Amber~Hihi, I know, my friend, I know. And I'm enjoying every moment of it. (She has closed her eyes with a feeling of wellbeing.)~
==BSandr~Mmh. Your temperature is slightly rising...~
==BM#Amber~So, you think I'm hot? Well, you're not so bad yourself, either.~
=~In my case, it's just the little demon inside me that causes me to run slightly hotter than you 'normal' people.~
==BSandr~Amber, you are a creature of the prime after all, not of the Abyss. ~
==BM#Amber~It feels quite good, your science, I mean.~
==BSandr~I am afraid we cannot make the necessary progress at the moment.~
==BM#Amber~Not? ~
==BSandr~The sunlight, the many eyes upon us - there is more than just your arms to be inspected. ~
==BM#Amber~Hmm, I fully trust the doctor's verdict, Sandrah. (Sighs) This will be a long day still before night falls. ~
==BSandr~(Sandrah continues to caress the tiefling's bare skin.)~
==BM#Amber~(Purrs with her eyes closed.) ~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF WEIGHT #-27~Global("SanHealAmber","GLOBAL",10)~THEN BM#Amber SanHealAssi9
~Ah, a bit of rest feels good, doesn't it? Maybe to take again a closer look at my body would be of interest to you. (She pulls Sandrah down into the grass where she has stretched out her tiny body already comfortably.)~
DO~SetGlobal("SanHealAmber","GLOBAL",11)~
==BSandr~You know how to tease me, my little devil. (Lying close beside the tiefling she starts to caress amber's ears.)~
==BM#Amber~(Purrs with her eyes closed.) ~
=~Say, you told me you had some encounters with creatures from the lower planes already?~
==BSandr~There are some hell hounds on my trail, jumping up occasionally and when you need them the least.~
==BM#Amber~Do I know them maybe?~
==BSandr~One pair of clowns are called Alzaligrundel and Naronguth...~
==BM#Amber~You're the one who defeated them, wow...who else?~
==BSandr~A real nasty one by the name of Paraagariel...~
==BM#Amber~The soul stealer!! You are in great danger, my friend.~
==BSandr~He should not be released to the surface for some hundred years again. Do not worry, my sweet succubus...~
==BM#Amber~Speak of the devil...!!~DO~StartCutSceneMode()  SmallWait(4) CreateCreature("CVDaudem",[823.808],8) Wait(4) EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-28~Global("SanHealAmber","GLOBAL",12)~THEN BM#Amber SanHealAssi11
~SANDRAH, are you...?~
DO~SetGlobal("SanHealAmber","GLOBAL",13)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~AMBER, are you...?~
==BM#Amber~Mmmpf. (She has embraced the priestess and her mouth is on Sandrah's mouth already.)~
==BSandr~This fever needs a healer's special care and treatment.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF WEIGHT #-29~Global("SanHealAmber","GLOBAL",15)~THEN BM#Amber SanHealAssi15
~Sandrah, my sweetling, you have spent now a long time in studying my body and my mind. Are you willing to share the results with me?~
DO~SetGlobal("SanHealAmber","GLOBAL",16)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~(Sighs) And if I do, would that end the necessity for those intimate explorations with you?~
==BM#Amber~(Purrs.) We will always find good reasons to learn more about the other, you will not get easily rid of me now I know of the pleasures it provides to both of us.~
==BSandr~You insist to know what I think about your heritage then. Know first that it does not change anything for me as I dearly love the Amber who stands before me, not your ancestors. You have overcome them and their influences and forged your own personality out of it.~
==BM#Amber~Then I am strong enough to face the facts, beloved scientist. Tell me, who was my mother?~
==BSandr~You have inherited all her catlike features, Amber, a strange creature even if of the Prime and one not easily to fall for demonic machinations. A fighter and a thief of race, strong willed like yourself she must have searched for such a partner to gain his abilities. There is only one race here that fits this specification - a Rakshasa.~
==BM#Amber~With a demonic father that makes me doubly evil...or as they say, two wrongs can make one right, sometimes.~
==BSandr~In your case for sure, sweetest succubus.~
==BM#Amber~You called me that before, sweetling, but how can that be? Who is my father really?~
==BSandr~You are a Fey'ri, Amber, just like you always have assumed yourself...~
==BM#Amber~But...~
==BSandr~Yes, I know...prejudice once again, my love.~
=~Most of the succubus we encounter on the surface are female, as they use Faerun as their hunting ground and to seduce the males of the prime. But they are their own kin, even as their males are not so apparent and - women who encountered them do not advertise it afterwards.~
==BM#Amber~Wow, what a mixture...tell you what - you are in great danger.~
==BSandr~A habit of MY ancestors, I would say...~
==BM#Amber~The Rakshasa in me craves for your sweet human flesh and the succubus has already put his spell on you - you cannot resist!~
==BSandr~I surrender...~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF WEIGHT #-30~Global("SanHealAmber","GLOBAL",18)~THEN BM#Amber SanPCLove1
~Sandrah, my sweetling, he is so sweet and careful and caring and...~
DO~SetGlobal("SanHealAmber","GLOBAL",19)RealSetGlobalTimer("AmbSanInt","LOCALS",2000)~
==BSandr~I know all those qualities, my dear. So now you are a woman, Amber.~
==BM#Amber~Another sweet thing we share - he made me a woman, just like you.~
==BSandr~Beware. His passion is not always so restrained. Wait till the Bhaalpowers break out...~
==BM#Amber~WHAT? (Her eyes are wide with fear.)~
==BSandr~(Laughs.) Oh, not in that way, my friend. I just meant that <CHARNAME> can be a very passionate and wild lover if you let him have his way.~
==BM#Amber~Puuh, you almost scared me a bit. Ha, if he wants passion I can provide him with some of the heat I have inside.~
==BSandr~How about a bit of rehearsal, I know a bit about what he likes.~
==BM#Amber~Mmh, I'd love to, just don't let us get too much distracted from our *target*.~
DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF WEIGHT #-30~Global("SanRescHer","LOCALS",1) ~THEN BM#Amber RescHerd
~I never thought it possible that someone would actually dare to venture to the abyss to rescue one of our kind, to rescue a tiefling.~
DO~SetGlobal("SanRescHer","LOCALS",2)~
==BSandr~You doubt that we do that for our friends - after the time you already spent with <CHARNAME> and me?~
==BM#Amber~I am sure none of my kind would do it?~
==BSandr~You just do it right now - or are you intending to leave our company?~
==BM#Amber~Oh, no. Be sure I follow you and <CHARNAME>...even to such a place. I thought it to be impossible - but with your company, well...nothing seems to be impossible after all.~
=~Just one thing, Sandrah...~
==BSandr~Yes?~
==BM#Amber~Would you do for me as well what you now plan to do for Haer'Dalis?~
==BSandr~Definitely.~EXIT

INTERJECT_COPY_TRANS ~M#AmberP~8 SanGlad
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanHealAmber","GLOBAL",5)~THEN ~You really made it out of that hellish house - I am so glad.~
== M#AmberP IF ~InParty("CVSandr") GlobalGT("SanHealAmber","GLOBAL",5)~THEN ~Looks I don't like hellish places that much despite of my origin. Hey, what's that? Is there someone who really cared for my well being?~
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanHealAmber","GLOBAL",5)~THEN ~Eh...mh...yes...I-I had not finished my interesting studies on you, Amber.~
== M#AmberP IF ~InParty("CVSandr") GlobalGT("SanHealAmber","GLOBAL",5)~THEN ~Ah, I see - you are the most unconvincing liar I can imagine, Sandrah. Anyway, it's good to know you care for your companions. (She gives Sandrah a friendly poke in the ribs.)~END


