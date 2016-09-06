APPEND BSANDR

// First Night after Dungeon
IF~Global("SanSleepBG2","GLOBAL",1)~ THEN BEGIN SanAnmNig1
SAY ~ How I have missed your nearness, <CHARNAME>, even if it were mere days we were separated by the events. Hold me close and let me feel you are mine again.~
IF~~ THEN REPLY ~ Wow, my passionate companion, you seem to be in quite some mood...~ DO ~ SetGlobal("SanSleepBG2","GLOBAL",2)~ GOTO SanAnmNig2
END

IF~~ THEN BEGIN SanAnmNig2
SAY ~ (You have no chance to elaborate further on the subject as her hungry mouth has already taken possesion of your lips and her intruding tongue licks up your words before they have a chance to come from your mouth.)~
IF~~ THEN DO ~
ClearAllActions()
SetInterrupt(FALSE)
TextScreen("BG2Nite")
Wait(2)
SetInterrupt(TRUE)
RestParty()~EXIT
END

// Jon Dreams
IF~Global("SanJonDream","LOCALS",1)~ THEN BEGIN Sanjondreams1
SAY ~ The dreams begin again, my love, like you had them on the Sword Coast when Sarevok and your *father* tried to talk to your soul. What is it this time?~
IF~~THEN REPLY ~ Those are just dreams, they had not changed me then and they will not change me now.~ GOTO Sanjondreams2
IF~~THEN REPLY ~ (Tell Sandrah about the dreams and Jon's role in them.)~ GOTO Sanjondreams2
IF~~THEN REPLY ~ Maybe you can help me, counselor. Those dreams on the Sword Coast had their meaning - two powers fighting inside of me. The dreams now -  a power still dormant within me that this Jon tries to awaken?~ GOTO Sanjondreams2
END

IF~~ THEN BEGIN Sanjondreams2
SAY ~ We had already guessed that this Jon Irenicus has followed your development secretly for a long time - yours and Imoen's to be precise. We can also assume for certain that the reason is your Bhaal heritage and the power that it still has, yet unknown to yourself and probably best so.~
IF~~THEN REPLY ~ All the hints are clear, I guess, he wants to awaken that power and having got a slight notion of his character, he will not use them for any good purpose.~  GOTO Sanjondreams3
END

IF~~ THEN BEGIN Sanjondreams3
SAY ~ So much is guaranteed, my love. Imoen has this power as well, even if deeper hidden in her personality than yours. He wants both of you and I think the reason is that he is not alone.~
IF~~THEN REPLY ~ His *sister*? Somewhere there was the mentioning of her, do you remember?~ DO~ SetGlobal("SanJonDream","LOCALS",2) RealSetGlobalTimer("SanJonDreamDel","LOCALS",7200) ~ GOTO Sanjondreams4
END

IF~~ THEN BEGIN Sanjondreams4
SAY ~ Yes, it is her who is related to those vampires we have encountered. She is Jon's ally and in a way also his General commanding those creatures. Maybe...~
IF~~THEN REPLY ~ ...she is one of them herself, a vampire?~ GOTO Sanjondreams5
IF ~~THEN REPLY ~ ...she is dead - or rather undead? He wants to revenge her maybe.~  GOTO Sanjondreams5
END

IF~~ THEN BEGIN Sanjondreams5
SAY ~ That is possible. Let me think about all of that for a bit. (She takes your hand and gives you one of those reassuring kisses that seem to correct your whole confused world in an instant.) ~
IF~~THEN REPLY ~ (Once more you realise that you are not alone in your hours of need.) Oh, how I love you, Sandrah!~ EXIT
IF~~THEN REPLY ~ (If ever somebody will stand by you come what may, it is her. Once more you realise how endlessly you love her.)~EXIT
END

IF ~Global("SanJonDream","LOCALS",3)~  THEN BEGIN Sanjondreams6
SAY ~ Oh those damned foggy elves!!~
IF~~THEN REPLY ~ Sandrah? I know you dearly love one or the other of them. What's going on?~ GOTO Sanjondreams7
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY ~ (Pretend to ignore her.) Women..hm..hm..~ GOTO Sanjondreams7
IF~Global("SanRomPath","GLOBAL",2) ~THEN REPLY ~ (Pretend to ignore her.) Sometimes I just don't seem to know her at all...hm...~ GOTO Sanjondreams7
END

IF~~ THEN BEGIN Sanjondreams7
SAY ~ The elves and their secrecy that they never lift to anyone not their kind. But without a glimpse inside I am stuck.~
IF~~THEN REPLY ~ Stuck in what matter, dear counselor?~ DO~ SetGlobal("SanJonDream","LOCALS",4)~  GOTO Sanjondreams8
END

IF~~ THEN BEGIN Sanjondreams8
SAY ~ Jon Irenicus. You maybe recall that when I first heard the name I was already reminded of some mysterious story concerning him. I was not sure at the time and all I have found since then is that it involves some major events among the elves.~
IF~~THEN REPLY ~ And there comes that barrier of mist then?~ GOTO Sanjondreams9
END

IF~~ THEN BEGIN Sanjondreams9
SAY ~ I could not have said it any better, my love. Unless we find a way through it the only other chance I see to find out about our enemy's motifs is from the man himself - once we find him.~
IF~~THEN REPLY ~ He has those deep blue eyes, I will never forget how they stared at me when he did those experiments on me in the dungeon...~ GOTO Sanjondreams10
END

IF~~ THEN BEGIN Sanjondreams10
SAY ~ (Mumbles) Unforgettable deep blue eyes...like only elves have...~
IF~~THEN EXIT
END

//Oghma Tempel
IF~Global("SanTempOghmAmn","LOCALS",1)~ THEN BEGIN SanAmTempl1
SAY~ A temple of wisdom here in the darkest quarter of this cursed town. Like a beacon for a ship in the night to guide us. (Sigh) So much wisdom may be gathered here by Oghma's priest - if I could only find some time for some studies one day...~
IF~~THEN REPLY~ We may take a look if you like, Sandrah, but it may only frustrate you more to see all the books and not be able to study them - I need you by my side and you know it.~ GOTO SanAmTempl2
IF~~THEN REPLY~ Is there not a temple of your goddess in a capital like this?~ GOTO SanAmTempl3
END

IF~~THEN BEGIN  SanAmTempl2
SAY~ And there is no other place than by your side where I want to be. Still, as there is no official temple of Mystra in this town, except in the privacy of the local harpers, this place is where I would stay if I needed a shelter for a time.~
IF~~ THEN REPLY~ My little historian, you would make a good disciple of Oghma yourself with your love for old tomes and lore.~ GOTO SanAmTempl4
END

IF ~~THEN BEGIN  SanAmTempl3
SAY~ There is none officially, except in the privacy of the local harpers, at this time where the cowled wizards *control* the use of magic in Athkatla. So this place is where I would stay if I needed a shelter for a time.~
IF~~ THEN REPLY~ My little historian, you would make a good disciple of Oghma yourself with your love for old tomes and lore.~ GOTO SanAmTempl4
END

IF ~~THEN BEGIN  SanAmTempl4
SAY~ That would be the case for any true follower of Mystra, <CHARNAME>. We have much in common as we also seek wisdom in order to use Mystra's gift in full and for the right purpose. Without knowledge and the responsibility you learn from history we would just be dumb spellcasters - or even worse, like the example of those Red Thays shows us.~
IF~~ THEN REPLY~ And I learn so much at your side as well. But rather than old dusty tomes I have your sweet glossy lips to deliver the wisdom - and of course other things...~ DO~ SetGlobal("SanTempOghmAmn","LOCALS",2)~GOTO SanAmTempl5
END

IF ~~THEN BEGIN  SanAmTempl5
SAY~ (Smiles) Charmer!~
IF~~ THEN REPLY~ (You bend forward and kiss those lips.)~EXIT
END

//Alhoon
IF~Global("SanKillAlh","ar0711",1)~ THEN BEGIN Sanillthid1
SAY~We have destroyed an Alhoon down here, a very rare creature.~
IF~~THEN REPLY~ A what?~ DO~ SetGlobal("SanKillAlh","ar0711",2)~ GOTO Sanillthid2
IF~~THEN REPLY~ A special mindflayer, probably their leader.~ DO~ SetGlobal("SanKillAlh","ar0711",2)~ GOTO Sanillthid2
END

IF~~ THEN BEGIN Sanillthid2
SAY~An Alhoon is an undead form of an illithid. A kind of Lich, even if the mindflayer's lifeform reacts differently from the human. An Alhoon can become nearly as powerful as an illithid mastermind.~
IF~~THEN REPLY~ Then he was surely leading this mysterious operation down here. Had they planned to undermine and later overtake the city?~ GOTO Sanillthid3
END

IF~~ THEN BEGIN Sanillthid3
SAY~I am afraid we can only guess unless we find some evidence as to their plans. Given their telepathic ways of communication I doubt that we will find much substantial proof of what they actually did or wanted to do. ~
IF~~THEN REPLY~ I still have the feeling we stopped something really evil down here.~ GOTO Sanillthid4
END

IF~~ THEN BEGIN Sanillthid4
SAY~ I agree. The fact that we found the key to this installation with Firkraag should be sufficent evidence for that. It is hard to imagine the red dragon's involvement in anything that would not be utmost evil.~
IF~~THEN EXIT
END

//Tiax in Spellhold
IF ~ Global("SanSHtiax","LOCALS",1)~ THEN BEGIN SanSHtxR
SAY~ Once this asylum must have had a valid purpose. The presence of Tiax here is a proof for that. But obviously everything has run out of control. You cannot gather such much madness in one place without risking some unwanted effects.~
IF~~THEN DO~ SetGlobal("SanSHtiax","LOCALS",2)~ EXIT
END

//Shar-Teel in Anm
IF ~ Global("SharInJail","GLOBAL",1)~ THEN BEGIN SanSharAmJail1
SAY ~ Did you hear that? Our wildcat is here in Amn - and of course in trouble. (Shakes her head in disbelief)~
IF~GlobalLT("SanSharInt","GLOBAL",31)~THEN REPLY ~ Our child! How can she do such a thing? What...~ DO ~ SetGlobal("SharInJail","GLOBAL",2)~ GOTO SanSharAmJail2
IF~GlobalGT("SanSharInt","GLOBAL",30)~THEN REPLY ~ Our child! How can she do such a thing? What...~ DO ~ SetGlobal("SharInJail","GLOBAL",2)~ GOTO SanSharAmJail3
END

IF ~~ THEN BEGIN SanSharAmJail2
SAY ~ Oh, please, <CHARNAME>, do not blame her for anything without knowing the facts. I believe in her sense of responsibility and she would not take a risk on herself and your unborn child without the best of reasons. We should investigate the matter of her coming to Amn right away.~
IF~~THEN REPLY ~ Oh, counselor, of course you are right. I was just so shocked, expecting her to be safely at Waterdeep. And now this. Let us find out about her reasons to be here and of course let us help her in whatever is her task here.~ EXIT
IF~~THEN REPLY ~ I was a fool to trust her! I was a fool to listen to you as well! She will never change. Would she not carry our child inside her I would let her rot in that jail - damn it.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF ~~ THEN BEGIN SanSharAmJail3
SAY ~ Oh, please, <CHARNAME>, do not blame her for anything without knowing the facts. I believe in her sense of responsibility and she would not take a risk on herself and leave your child without the best of reasons. We should investigate the matter of her coming to Amn right away.~
IF~~THEN REPLY ~ Oh, counselor, of course you are right. I was just so shocked, expecting her to be safely at Waterdeep. And now this. Let us find out about her reasons to be here and of course let us help her in whatever is her task here.~ EXIT
IF~~THEN REPLY ~ I was a fool to trust her! I was a fool to listen to you as well! She will never change. Would she not be the mother of our child I would let her rot in that jail - damn it.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
END

IF ~ Global("sharplot","GLOBAL",9)~ THEN BEGIN SanSharAmJail5
SAY ~ It was good to see our wildcat again and being well. Even if the reason for it was not a pleasant one. It will not be long until one more happy family will live in Faerun.~
IF~~THEN REPLY~ How she has changed - and still she has somehow remained the same. She is a woman of honour and principles and she will be a careful mother. I feel a bit of ashamed as I was first angry of seeing her here in town instead of being in Waterdeep.~ DO~ SetGlobal("sharplot","GLOBAL",11)~ GOTO SanSharAmJail6
END

IF ~ Global("sharplot","GLOBAL",10)~ THEN BEGIN SanSharAmJail15
SAY ~ It was good to see our wildcat again and being well. Even if the reason for it was not a pleasant one. We can travel to Waterdeep anytime if you want to reumite the happy family for a few days.~
IF~~THEN REPLY~ How she has changed - and still she has somehow remained the same. She is a woman of honour and principles and she has become a careful mother. I feel a bit of ashamed as I was first angry of seeing her here in town instead of being in Waterdeep.~ DO~ SetGlobal("sharplot","GLOBAL",11)~ GOTO SanSharAmJail6
END

IF ~~ THEN BEGIN SanSharAmJail6
SAY ~ Do not be too hard on yourself, <CHARNAME>, it was a bit of a shock to meet her here in town, especially in jail. But it has all turned out to be based on a good reason. Even if you already miss her again by now, do not forget there is someone to comfort you anytime...~
IF ~~ THEN REPLY~ Oh, how could I ever forget that, Sandrah. (You kiss her willingly offered mouth tenderly.)~ EXIT
END

//Jaheira Departure
IF~Global("SanJahMiss","LOCALS",1)~THEN BEGIN SanJahGoAft1
SAY~ We are not going to let our beloved Druid alone in this situation, right <CHARNAME>?~
IF ~~ THEN REPLY~ You mean Jaheira? ~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO SanJahGoAft2
IF ~~ THEN REPLY~ We are already on our way to the Harper's compound, my love. I can read her words as clearly as they are *not* written in her letter.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanJahGoAft3
IF ~~ THEN REPLY~ Jaheira clearly says that I am not to follow her. Is my counselor telling me otherwise?~ GOTO SanJahGoAft4
END

IF~~ THEN BEGIN SanJahGoAft2
SAY~ Oh, I forgot that you have a harem of those wonderful creatures at your disposal and do not really recognise that one is missing.~
IF ~~ THEN REPLY~ Jaheira clearly says that I am not to follow her. Is my counselor telling me otherwise?~ GOTO SanJahGoAft5
END

IF~~ THEN BEGIN SanJahGoAft3
SAY~ I am glad to love a man who has a heart to read a woman's soul as well as her letters.~
IF ~~ THEN REPLY~ Whatever those false Harpers still want from her, they will face all of us in that.~ DO~SetGlobal("SanJahMiss","LOCALS",2)~ EXIT
END

IF~~ THEN BEGIN SanJahGoAft4
SAY~ Your counselor only emphasises what your heart is already pounding to your ears, <CHARNAME>. If you feel anything for her, your place is at her side NOW.~
IF ~~ THEN REPLY~ We are already on our way to the Harper's compound, my love. I can read her words now as clearly as they are *not* written in her letter.~ DO~SetGlobal("SanJahMiss","LOCALS",2)~ EXIT
END

IF~~ THEN BEGIN SanJahGoAft5
SAY~ She really has deserved a better man than you are. But we women are sometimes blind with our choices it seems. Your counselor only emphasises what your heart should be pounding to your ears already, <CHARNAME>. If you feel anything for her, your place is at her side NOW.~
IF ~~ THEN REPLY~ We are already on our way to the Harper's compound, my love. I can read her words now as clearly as they are *not* written in her letter.~ DO~SetGlobal("SanJahMiss","LOCALS",2)~ EXIT
END

//Proud of PC
IF~ Global("SanPCInfluen","LOCALS",1)~ THEN BEGIN SanProudPCdeci1
SAY~ I am very proud to be your companion and lover, <CHARNAME>.~
IF~~THEN REPLY~ Because of what we just did?~ GOTO SanProudPCdeci2
IF~~THEN REPLY~ I hope you are, Sandrah, I try my very best each day.~ GOTO SanProudPCdeci2
END

IF ~~ THEN BEGIN SanProudPCdeci2
SAY ~Yes, you have become an excellent leader, knowing many ways to solve a problem, not just by rashness or sword.~
IF~~THEN REPLY~I think I owe much to my teachers and counselors, Sandrah, people like Gorion...and Jaheira and Khalid.~ DO ~ SetGlobal("SanPCInfluen","LOCALS",2) ~GOTO SanProudPCdeci3
END

IF ~~ THEN BEGIN SanProudPCdeci3
SAY ~Even to know whom to thank and whom to listen to makes you a great leader.~
IF~~THEN REPLY~I did not yet mention the most important influence of them all.~ GOTO SanProudPCdeci4
END

IF ~~ THEN BEGIN SanProudPCdeci4
SAY ~Which is? ~
IF~~THEN REPLY~YOU.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY~My godly blood.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-25)~EXIT
END

// Travel Parcel
IF~Global("SanCanTravel","GLOBAL",1)~ THEN BEGIN TravelParc1
SAY~ (Sandrah has sat herself apart from everyone else and has retrieved her Magic Parcel and a couple of scribbled notes she has made during the past few days.)~
IF~~THEN REPLY~ Are you working on some improvement of your toy there?~ GOTO TravelParc2
IF~~THEN REPLY~ (You let her work undisturbed but give her interested glances now and then.)~ GOTO TravelParc2
END

IF~~ THEN BEGIN TravelParc2
SAY~ (Noticing your interest she looks up and smiles.) I guess it is finished - an improvement I had in mind for long and now found time to install. If it works we will all benefit a lot from it. (She laughs)...especially our feet.~
IF~~THEN REPLY~ Please, I can't stand the suspense, Sandrah. What is it?~ DO~SetGlobal("SanCanTravel","GLOBAL",2) ~ GOTO TravelParc3
END

IF~~ THEN BEGIN TravelParc3
SAY~ You remember that so far the parcel has stored the identity of rare items we have found during our travels but have lost or mislaid. It has the ability to retrieve them again for us.~
=~ So, now I have advanced it to do the same with locations we have visited.~
IF~~THEN REPLY~ Wow! Does it mean we can now travel the Realms at our will and go over long distances by your magic?~ GOTO TravelParc4
END

IF~~ THEN BEGIN TravelParc4
SAY~ In principle you are right. The parcel stores the locations of places we visit and can transport us back there if we activate it.~
IF~~THEN REPLY~Fantastic!...but you said *in principle*, means there are limits?~ GOTO TravelParc5
IF~~THEN REPLY~We are free as the birds...and, yes, our sore feet and legs will sing your praise.~ GOTO TravelParc5
END

IF~~ THEN BEGIN TravelParc5
SAY~ Under normal circumstances we can go back to places we have been before in almost no time. There are a few rules to observe and some limits to the ability.~
=~ As I have to keep the box steady and focussed for some time and specify where we want to go, we cannot use it in a battle. But we were never among those who flee in the middle of a fight, right?~
=~ And then there are areas on this plane or on other planes where this magic simply does not work, they are shielding and reflecting any transportation by magic.~
IF~~THEN REPLY~Even with those limits it appears to be a great invention. You can really be proud of it, grandmaster of magics.~EXIT
END

//Castle Ownwer
IF~Global("SanCasOwn","GLOBAL",8)~ THEN BEGIN Darnicasown1
SAY~Once again we stand on the high walls of a mighty castle ruling the land around it.~
IF~~THEN REPLY~Yes, I remember our talks on similar occasion. The topic always was our future.~ GOTO Darnicasown2
IF~~THEN REPLY~Another occasion for some philosophical talk?~ GOTO Darnicasown3
END

IF~~THEN BEGIN Darnicasown2
SAY~Our common future, if I may add. And about responsibility.~
IF~~THEN REPLY~ You are right, a lot of things have changed for us in a relatively short time.~ DO~ SetGlobal("SanCasOwn","GLOBAL",9) IncrementGlobal("Sanpoints","GLOBAL",2)~ GOTO Darnicasown4
END

IF~~THEN BEGIN Darnicasown3
SAY~ We were always talking about our perspectives for the future. Philosophical? I tend to think the recent developments have shown we were talking about topics that have come closer to reality by now.~
IF~~THEN REPLY~ You are right, a lot of things have changed for us in a relatively short time.~ DO~SetGlobal("SanCasOwn","GLOBAL",9) IncrementGlobal("Sanpoints","GLOBAL",2) ~GOTO Darnicasown4
END

IF~~THEN BEGIN Darnicasown4
SAY~ You have grown much, my love, and you have quickly learned to make decisions that impact a lot of people. You have grown to one who can handle the burdon of responsibility. I still remember your words about how a good ruler would act with and for his people, the land and all of Faerun.~
IF~~THEN REPLY~ You see me as such, Sandrah? You *want* me as such? ~GOTO Darnicasown5
IF~~THEN REPLY~ I have a clearer understanding now of what that really means. It is still not something I really strive for.~ GOTO Darnicasown5
END

IF~~THEN BEGIN Darnicasown5
SAY~It is not that I want you to become ruler of some land and people, I really want you as what you are - and what you will become together with me. It is only - it makes me both proud and confident to see how you could use your potential should the necessity arise.~
IF~~THEN REPLY~ (You kiss her) I would know where to look for an advisor and counselor should it really happen.~EXIT
END

//Necromancers
IF~Global("SanNecroHa","LOCALS",1)~ THEN BEGIN SanNecrohate1
SAY~ (Sigh) Sometimes we must accept that we need to do things we despise nonetheless from the bottom of our heart and our principles.~
IF~~ THEN REPLY~ Like the killing that is so often forced upon us?~ GOTO SanNecrohate2
END

IF~~THEN BEGIN SanNecrohate2
SAY ~ One example, you are right, my love, but not what bothers me today. Those I refer to are already dead. ~
=~ Mystra as a goddess is responsible for all the magic skills and schools that we know - except for one - Necromancy.~
IF~~THEN REPLY ~ She is the goddess of all magic arts - are you saying that Necromancy does not belong among them?~ GOTO SanNecrohate3
IF~~THEN REPLY ~ I have a vague rememberance about that from my Candlekeep teachings, but I must confess that it is better to consult an expert on that - like a priestess of Mystra herself.~ GOTO SanNecrohate3
END

IF~~THEN BEGIN SanNecrohate3
SAY~ It will be a comprehensive talk, <CHARNAME>, maybe you should ask me for it at a quiet moment?~
IF~ AreaCheck("ar0800")~ THEN REPLY~ Where could be a better place for the subject than here in a graveyard. Please go on.~ GOTO SanNecrohate4
IF~~THEN REPLY ~ Maybe you are right. I will ask you about it later, I see that it worries you.~ DO ~ SetGlobal("SanNecroHa","LOCALS",2)~ EXIT
IF~~THEN REPLY ~ I can see the topic is heavy on your soul at the moment. Share your knowledge with me, please.~ GOTO SanNecrohate4
END

IF~~THEN BEGIN SanNecrohate4
SAY ~ I would not accept the idea of Necromancy being one of the magical arts under the guard of my Goddess. It is a sacrilege and a blasphemy trying to break the boundaries of our existence on the material plane and gaining prolongation to a life in a way that is not part of our nature. You see the failed results of those who fumble with it - the liches and rotting undead, the vampires and worse.~
IF~~THEN REPLY ~ But you yourself have ressurected our fallen comrades many time from the dead, Sandrah.~ DO ~ SetGlobal("SanNecroHa","LOCALS",3)~GOTO SanNecrohate5
END

IF~~THEN BEGIN SanNecrohate5
SAY ~  My Goddess allows me to use the power of the Weave to do so, for one whose life was taken prematurely before his or her time on Toril has come. It is an act of healing in this case and can only be applied before the soul has left the body completely and when the flesh has not decayed beyond a certain amount. It has nothing to do with the acts of Necromancers and their foul practices. The powers they use are not of the Weave but mostly drained from the life power of other creatures, just like a vampire drinks the blood of the living. ~
IF~~THEN REPLY~ But who if not Mystra provides those powers then?~ GOTO SanNecrohate6
IF~~THEN REPLY ~Still there must be some higher power involved here from which the Necromancers get their abilities, a kind of negative instance of the Weave.~ GOTO SanNecrohate6
END

IF~~THEN BEGIN SanNecrohate6
SAY ~ You are a good observer, my darling, and you have hit the spot that itches me when it comes to dealing with necromancers.~
=~ Today most scholars think that Velsharoon is the deity supporting Necromancy. But scratch the surface just a bit and you find that he is just the lesser successor who came into power after the downfall of the Dead Three.~
IF~~THEN REPLY ~ I see why you are concerned, Sandrah. Bhaal!~ GOTO SanNecrohate7
END

IF~~THEN BEGIN SanNecrohate7
SAY ~ Not directly this time, <CHARNAME>. Although the thousands of dead sacrificed to the God of Murder were part of the fuel provided for necromantic acts. But the God in question this time is Myrkul, Bhaal's close companion in the dark deeds of those evil gods.~
=~ From Myrkul the Dark Magic Societies of the east learned their skills and were inflicted with their maddening hunger for eternal life.~
IF~~THEN REPLY ~ Well, now I am losing a bit of the connection to us, I mean to you...~ GOTO SanNecrohate8
END

IF~~THEN BEGIN SanNecrohate8
SAY ~ You will see in a minute, my love. One of those eastern groups concentrating on the studies of abnormal acts to gain eternal life were the red wizards from Halruaa. I think you know your lore well enough from there, as they were involved in the founding of Thay.~
IF~~THEN REPLY ~ I see, your old archenemies, the red wizards appear out of that dark mist of history now. Another good reason for your hate on that group. You gave me a lot of food for thought. Let us continue another time, Sandrah.~ EXIT
END

//  The archive
IF~ Global("SandragQuestn","cvtml1",1)~ THEN BEGIN SanArchDrgQ1
SAY~ A dragon's lair? Can any of those creatures be old enough to keep the record of the bloodlines?~ 
IF~~THEN REPLY~ Maybe it is just a guardian for the book?~ DO~ SetGlobal("SandragQuestn","LOCALS",2)~ EXIT
IF~~THEN REPLY~ Oh, no, I hope not another one has found an archive a wonderful place for his lair, like in Umar...~ DO~ SetGlobal("SandragQuestn","cvtml1",2)~ EXIT
END

// Abyss
IF~Global("SanhellComm","ar2900",1)~THEN BEGIN SanKeepCool1
SAY~ (While everybody including yourself slowly fights down the internal turmoil your flight to the Abyss has caused your counselor seems to have started the exploration of the area already.)~
IF~~THEN REPLY~ Counselor?~ GOTO SanKeepCool2
IF~~THEN REPLY~ There is not much anymore that can threaten you, Sandrah, not even death or hell, it seems.~ GOTO SanKeepCool2
END

IF~~ THEN BEGIN SanKeepCool2
SAY~ We are obviously not dead even if you still have not recaptured your soul. But the fact that we are here where Irenicus has taken it proves that chances are we will get it. And if I look at that portal here with those eyes that appear to be keys I sense the chance to get out of here again once we have finished what has not been achieved.~
IF~~THEN REPLY~ Please go on, even if it's just a straw you cling onto.~ GOTO SanKeepCool3
IF~~THEN REPLY~ Cold blooded analysis in an overheated place like this. Once again I'm glad to have you by my side.~ GOTO SanKeepCool3
END

IF~~ THEN BEGIN SanKeepCool3
SAY~ I suggest to explore the area carefully to find the possible keys - but most of all to find Irenicus.~
IF~~THEN REPLY~ Irenicus - we have killed him or not?~ DO~SetGlobal("SanhellComm","ar2900",2)~ GOTO SanKeepCool4
END

IF~~ THEN BEGIN SanKeepCool4
SAY~  You do not really believe that, <CHARNAME>. Your soul was not dark enough to go to here on its own. He still has it and he must have arranged some pact to retreat to this darkest of all places. He may belong here but we surely not.~
IF~~THEN REPLY~ You are right - we do not belong here, friends. Let us find the way back to the light.~EXIT
END

//Defeated Jon
IF~Global("SanAfterJon","GLOBAL",2) ~THEN BEGIN SoulBack1
SAY~ You have regained your soul, my love, and you have even learned quite a bit about yourself in the process.~
IF~~THEN REPLY~ One thing I knew before already has been confirmed, with you by my side I can even withstand hell and Bhaal's curse.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("SanAfterJon","GLOBAL",3)~ GOTO SoulBack2
IF~~THEN REPLY~ Even the part that had remained with me has known all the time whom I love the most, Sandrah.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)SetGlobal("SanAfterJon","GLOBAL",3)~ GOTO SoulBack2
IF~~THEN REPLY~ Irenicus' malice has not affected my soul - or so I hope. But without my friends and my wonderful lover it may not have ended that well.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)SetGlobal("SanAfterJon","GLOBAL",3)~ GOTO SoulBack2
END

IF ~~THEN BEGIN SoulBack2
SAY~ Even if Jon was not a Bhaalspawn he has able to make use of the dead god's power. He used your soul to create his army and to finally turn himself into the Slayer. Do not forget this impression, <CHARNAME>, as such will be the opponents you will have to face sooner or later - *we* will have to face, that is.~
IF~~THEN REPLY~ Are you warning me of the other Bhaalspawns that may still be searching and hunting me?~ GOTO SoulBack3
END

IF ~~THEN BEGIN SoulBack3
SAY~ Yes, I do. In addition I want you to be aware that those who remain in the struggle for Bhaal's Throne - those you have to face sooner or later to survive - will have equivalent power. Their way, even if totally different from yours, will have been of comparable difficulty. ~
IF~GlobalGT("Sanpoints","GLOBAL",120) Global("SanKhalBlood","GLOBAL",16)~THEN REPLY~ What they may not have are companions like mine.~ GOTO SoulBack4
IF~GlobalLT("Sanpoints","GLOBAL",121) Global("SanKhalBlood","GLOBAL",16)~THEN REPLY~ What they may not have are companions like mine.~ GOTO SoulBack5
IF~GlobalGT("Sanpoints","GLOBAL",120) GlobalLT("SanKhalBlood","GLOBAL",16)~THEN REPLY~ What they may not have are companions like mine.~ GOTO SoulBack6
IF~GlobalLT("Sanpoints","GLOBAL",120) GlobalLT("SanKhalBlood","GLOBAL",16)~THEN REPLY~ What they may not have are companions like mine.~ GOTO SoulBack7
END

IF ~~THEN BEGIN SoulBack4
SAY~ You have surely grown as much inside as outside, my love. Only a leader like you can bring out such dedication and love in ones companions. Others may have hirelings and armies of thralls - you have much more than that.~
IF~~THEN EXIT
END

IF ~~THEN BEGIN SoulBack5
SAY~ If you had grown as much inside as outside, <CHARNAME>. A leader like you could bring out much dedication and love in <PRO_HISHER> companions. Others may have hirelings and armies of thralls - you can much more than that.~
IF~~THEN REPLY~Have I offended you somehow?~GOTO SoulBack8
END

IF ~~THEN BEGIN SoulBack6
SAY~ You have surely grown as much inside as outside, my love. Only a leader like you can bring out such dedication and love in ones companions. Others may have hirelings and armies of thralls - you have much more than that.~
=~It is now the right point to remind you that I myself have yet to accomplish my quest. Let us find out what this Book That Writes Itself has to tell me.~
IF~~THEN REPLY~Sure. I will stand by you in this just as you did for me.~EXIT
IF~~THEN REPLY~You said your path would be mine. It looks like you are making now too much extra demands. I say nay.~GOTO SoulBack9
END

IF ~~THEN BEGIN SoulBack7
SAY~ Empty words, <CHARNAME>, you have done nothing to justify them. You have finished your quest but mine lies unresolved. From the way you have treated me all the time I cannot expect any help from you with it anymore.~
IF~~THEN REPLY~Sandrah, my love - if I made mistakes in the past we will correct them - together.~ GOTO SoulBack10
IF~~THEN REPLY~ You said your path would be mine. It looks like you are making now too much extra demands. I say nay, go if you must.~GOTO SoulBack9
END

IF ~~THEN BEGIN SoulBack8
SAY~We have both completed our quest due to your leadership. If you would only treat me with as much love as I feel for you (sigh).~
IF~~THEN REPLY~Our situations are bringing me to the brink often enough. I'm sorry if had not always the patience with you that you deserve.~ EXIT
IF~~THEN REPLY~Complaints from you? You chose this life - you were not forced to it like I was.~EXIT
IF~~THEN REPLY~Maybe now after this battle we are allowed a bit more time. I swear I will improve, my love.~EXIT
END

IF ~~THEN BEGIN SoulBack9
SAY~ I had never expected this to be possible...~
=~Well, I have done my part and I am cast aside. I have no idea where you will go from here. Only fate can reunite us again. I wish you all the best. (She turns away apruptly.)~
IF~~THEN REPLY~ But...~ DO ~SetGlobal("SandrahJoined","GLOBAL",0) ActionOverride("CVSandr",MoveBetweenAreas("CVRtf1",[803.624],2)) ~ EXIT
END

IF ~~THEN BEGIN SoulBack10
SAY~It is now the right point to remind you that I myself have yet to accomplish my quest. Let us find out what this Book That Writes Itself has to tell me.~
IF~~THEN REPLY~Sure. I will stand by you in this just as you did for me.~EXIT
IF~~THEN REPLY~You said your path would be mine. It looks like you are making now too much extra demands. I say nay.~GOTO SoulBack9
END

IF~Global("SanAfterJon","GLOBAL",4)~THEN BEGIN BhaalDream
SAY~(Sandrah comes to your bed this time with a hunger and passion you have not experienced for some time, given the turmoil of the recent events.)~
=~(Time and time again you both reach a common climax you have long yearned for.)~
IF~~THEN REPLY~(When sleep finally overwhelms you, you are saturated and tired in a most pleasant way...)~DO~ClearAllActions() StartCutSceneMode() StartCutScene("SanBh01")~EXIT
END

//Cyric
IF~Global("CyrDisg","ar0304",3)~THEN BEGIN CyricGuild1
SAY~(Mumbles) A family affair..?~
IF~~THEN REPLY~ Was that someone you knew? He appeared to be a little more than our average shadow thief.~ GOTO CyricGuild2
IF~~THEN REPLY~ A strange man - my hair stand up on end, puuh - do you know him?~ GOTO CyricGuild2
END

IF~~THEN BEGIN CyricGuild2
SAY~ I have never met him before, <CHARNAME>, but I have the feeling my grandmother knew him quite well.~
IF~~THEN REPLY~You mean...*that* was your grandfather?~ DO~SetGlobal("CyrDisg","ar0304",4)~GOTO CyricGuild3
END

IF~~THEN BEGIN CyricGuild3
SAY~ No, THIS was not my grandfather - he just took on the avatar and looks of his former human manifestation.~
IF~~THEN REPLY~ I am lost??~EXIT
IF~~THEN REPLY~ Cyric?? Was he interested in me or in you...?~EXIT
IF~~THEN REPLY~ More and more forces seem to gain an interest in me - or in you...or in us.~EXIT
END

IF~Global("SanKevl","GLOBAL",1)~THEN BEGIN SanKeve1
SAY~(Sandrah had been quite silent and thoughtful since the meetings with Cyric and Mystra.)~
IF~~THEN REPLY~Another love story gone bad, Ellesime and Jon, Cyric and Mystra... ~GOTO SanKeve2
END

IF~~THEN BEGIN SanKeve2
SAY~ Only that Ellesime would have forgiven Jon had he only found a way of redemption instead of the road of revenge he chose.~
IF~~THEN REPLY~ Your goddess is not that forgiving?~ GOTO SanKeve3
IF~~THEN REPLY~ You never told me what really separated your grandparents.~ GOTO SanKeve3
END

IF~~THEN BEGIN SanKeve3
SAY~Soon after Cyric and Mystra were elevated to gods by AO, Mystra found out the truth about Kelemvor, who became a god himself...~
IF~~THEN REPLY~Kelemvor, god of the dead. How is he involved here?~ GOTO SanKeve4
IF~~THEN REPLY~Kelemvor? He was a dead hero and still became a god - of course the god of the dead.~ GOTO SanKeve4
END

IF~~THEN BEGIN SanKeve4
SAY~If you recall your lore, <CHARNAME>, Kelemvor was one of the adventurers who set out in AO's name at the time of trouble, the others being Adon, Cyric, and Midnight. They had travelled over Toril together already for a number of years and Kelemvor was Midnight's true love at the time.~
IF~~THEN REPLY~But she ended up with Cyric in the end and Kelemvor was dead?~DO~SetGlobal("SanKevl","GLOBAL",2)~GOTO SanKeve5
END

IF~~THEN BEGIN SanKeve5
SAY~ Cyric fell in love with Midnight during their adventures. As her heart belonged to Kelemvor Lyonsbane, the later-to-become Prince of Lies decided to get rid of his rival by betrayal. He arranged an ambush on the whole group and used the turmoil of the battle to kill him with the sword Godsbane, the same one he later used on Bhaal.~
=~Afterwards he played the caring and soothing companion to help Midnight in her grief and by that won her heart.~
=~ Mask as Godsbane hid Kelemvor's soul from Cyric and when the adventurers finally succeeded in their final mission, Ao judged it fair to elevate Kelemvor to godhood and give him the Realm of the Dead. Only then and after she had given birth to their son, Mystra found out the truth about the death of her former lover.~
IF~~THEN REPLY~And she never forgave Cyric, who had become the Mad God by that time anyway.~EXIT
IF~~THEN REPLY~Thus the two became archenemies among the gods and we have to suffer the consequences.~EXIT
END

//Growing Powers
IF~Global("SanFinCult","LOCALS",2)~THEN BEGIN SanGrowPo1
SAY~We have done well to destroy that wicked beast cult thoroughly, <CHARNAME>.~
IF~~THEN REPLY~ I am glad I had your advice, counselor, to chose the right moment for the strike.~ GOTO SanGrowPo2
IF~~THEN REPLY~ The deed itself was good - anyhow...I'm still puzzled by the immense power you revealed against the cult's highest.~ GOTO SanGrowPo3
IF~~THEN REPLY~ Can you explain to me your growing powers, my darling? And then - you were mistaken for Mystra herself...and not for the first time, as I recall.~GOTO SanGrowPo3
END

IF~~THEN BEGIN SanGrowPo2
SAY~(Smiles) I am quite sure you would have done the right thing alone. I have gained full confidence in your attitude towards such issues by now.~
IF~~THEN REPLY~ You have once hinted at your possible actions should it have come otherwise...I'm still puzzled by the immense power you revealed against the cult's highest.~ GOTO SanGrowPo3
END

IF~~THEN BEGIN SanGrowPo3
SAY~ We both know the sources of our growing powers - yours as well as mine. While mine have a clear purpose, yours are defined by the actual use you make of them.~
IF~~THEN REPLY~Yours may as well grow to always be ready to strike against Bhaal's power should such be needed...~DO~SetGlobal("SanFinCult","LOCALS",3)~ GOTO SanGrowPo4
END

IF~~THEN BEGIN SanGrowPo4
SAY~(Looks troubled for a moment.) <CHARNAME>...~
=~It is my deepest believe that you will be the one tasked to defeat the last Bhaalspawn that threaten's Faerun with the return of the God of Murder.~
=~It will require our joint efforts to defeat him or her and end what the Times of Trouble have not ended. It is for no other purpose that my goddess provides this strength to me.~
IF~~THEN REPLY~It is good to be reassured of your loyalty, Sandrah.~EXIT
IF~~THEN REPLY~(Mumble) *Those powers are always ready to strike the other way, should she  loose her faith in me...*~EXIT
IF~~THEN REPLY~(Nod silently. You are well aware that she would be the obstacle that ANY aspiring God of Murder would have to overpower.)~EXIT
END

//Nib Jansen Hints

IF ~ Global("KnowStorm","GLOBAL",3)~ THEN BEGIN NibHint1
SAY ~ <CHARNAME>, when I was scouting through the city in search of any hints as to where you and our friends may have been taken, I encountered this gnome inventor on the promenade. He had an interesting device for travelling large distances. He mentioned such places as the Stornhorn Mountains or the Umar Hills.~
IF~~ THEN REPLY ~ Counselor, please, I don't want to hurt your feelings, but magic travelling devices? Remember those mages caught on an icy island in a magic trap. We escaped, I admit, but I won't try my luck on that again.~ GOTO NibHint2
IF~~ THEN REPLY ~ Oh, great, we should keep that in mind, even if currently we do not have plans to go to those places. Even if I have a bit of relunctance to magic travelling. One may sometimes end up in places not intended.~ GOTO NibHint2
END

IF ~~ THEN BEGIN NibHint2
SAY ~ I understand that this gnome - Nib Jansen - is not using magic but one of those fantastic gnomish inventions. It is a ship that sails the clouds rather than the waves. Sounds promising to me, or at least like a complete new experience.~
IF~~ THEN REPLY ~ Sounds dangerous as well. But danger has always attracted our curiosity, doesn't it?~ DO ~ SetGlobal("KnowStorm","GLOBAL",4)~EXIT
END

// Landed in the Stormhorns
IF ~ Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",2)~ THEN BEGIN LandStorm1
SAY ~ Is everybody fine? Some healing required?~
IF ~~ THEN REPLY ~ He has warned us about the landing part. Oh, he is gone again already. So let us take a look at where we are.~ DO ~ SetGlobal("Nibfly","GLOBAL",5)~ EXIT
END

IF ~ Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",3)~ THEN BEGIN LandStorm3
SAY ~ Is everybody fine? Some healing required?~
IF ~~ THEN REPLY ~ He has warned us about the landing part. Oh, he is gone again already. But this is surely not Trademeet. Much too wild for that.~ GOTO LandStorm5
END

IF ~ Global("Airjump","LOCALS",3)Global("Nibfly","GLOBAL",4)~ THEN BEGIN LandStorm4
SAY ~ Is everybody fine? Some healing required?~
IF ~~ THEN REPLY ~ He has warned us about the landing part. Oh, he is gone again already. But these are surely not the Umar Hills. Much too wild for that.~ GOTO LandStorm5
END

IF ~~ THEN BEGIN LandStorm5
SAY ~ I heard him mumble something about *navigational difficulties* before we went down. This is surely an unplanned stop. But we are here with no way to attach the blame to this gnome.~
IF ~~ THEN REPLY ~ We've been through worse. So let us take a look at where we are.~ DO ~ SetGlobal("Airjump","LOCALS",4) SetGlobal("Nibfly","GLOBAL",5)SetGlobal("SanBreStorm","ar3520",1)~ EXIT
END


// Shauhana

IF ~ Global("Shamyrkfound","GLOBAL",7) ~ THEN BEGIN ShauHer1
SAY~ Our new friend Shauhana is a real strong personality, do you not think so?~
IF~~THEN REPLY~ She must be, with all she has already been through.~ DO ~ SetGlobal("Shamyrkfound","GLOBAL",8)~ GOTO ShauHer2
END

IF ~~ THEN BEGIN ShauHer2
SAY ~ That is what made her strong. That and her belief to be orc.~
IF~~THEN REPLY~ The way you say that sounds, as if you do not believe her.~ GOTO ShauHer3
END

IF ~~ THEN BEGIN ShauHer3
SAY ~ Oh, I do believe her - I mean I believe she tells truely all she knows about herself. My doubt is that she herself knows who she is. Even with a possible grandfather like General Ghotal, her strength, her intelligence and her outer appearance are not explainable.~
IF~~THEN REPLY~ Sounds like you fall for that godchild thing. Well, you seem to attract them, my love.~ GOTO ShauHer4
END

IF ~~ THEN BEGIN ShauHer4
SAY ~ (Laughs with you.) Something must be there, otherwise I see no reason why such a creature like the Guardian should sense it. Then take her strength - it is not orcish strength like she thinks herself it is. Observe her, see her act and move, and tell me that is orc.~
= ~ Her intelligence then. I agree not all orcs are stupid, but her willingness to learn and her ability to follow her own thoughts go way beyond what I found in any orc so far.~
IF~~THEN REPLY~ Except maybe her grandfather, Ghotal.~ GOTO ShauHer5
END

IF ~~ THEN BEGIN ShauHer5
SAY ~ Hm, yes. The godchild Ghotal, Myrkul's spawn. But it is not Myrkul that one sees when it comes to Shauhana...~
IF~~THEN REPLY~ Nor is it Bhaal that one sees when it comes to me - at least that is my deepest hope.~ GOTO ShauHer6
END

IF ~~ THEN BEGIN ShauHer6
SAY ~ (She has taken your hand and pulls you close to her now.) That is correct, my wonderful lover. I have to confess, I am stuck with my research at the moment. I just see that another godchild needs my attention right now.~
IF ~~THEN REPLY~ And how! (Embrace her tightly and cover her lips with kisses.)~
EXIT
END

//Shadowtemple
IF~Global("SanArch","ar1402",1)~THEN BEGIN SanArchloss1
SAY~ I once read that each Amaunator temple had an area only accesible to the priests that was called *The Archive*. Sounds like a place were records and such are kept, a place to store immense knowledge.~
IF ~~THEN REPLY~ It must hurt a scholar and seeker like yourself deeply that all that now seems to be lost due to the dragon's destruction.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2) SetGlobal("SanArch","ar1402",2) ~ GOTO SanArchloss2
IF ~~THEN REPLY~ Stupid dragon!~ DO~SetGlobal("SanArch","ar1402",2) ~ EXIT
IF ~~THEN REPLY~ Probably heaps of dusty parchments never to be read by anyone. No great loss, I guess.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2) SetGlobal("SanArch","ar1402",2) ~GOTO SanArchloss3
END

IF~~ THEN BEGIN SanArchloss2
SAY~It is not only the scholar and the seeker as you rightfully call me - who knows what practical information concerning ourselves is now lost (Sigh).~
IF ~~THEN REPLY~ At least the dragon's hoard may have some practical use for us.~EXIT
END

IF~~ THEN BEGIN SanArchloss3
SAY~Among those - who knows what practical information concerning ourselves is now lost (Sigh). My studies and knowledge have served us well time and time again, I would claim.~
IF ~~THEN REPLY~ At least the dragon's hoard may have some practical use for us.~EXIT
END

//Mae Var
IF~Global("CVMaeDidKN","ar0300",1)~ THEN BEGIN MaeVarRec1
SAY~That was the one! Good for us that he prefers his quarters so ill-lit that he could not recognise our faces.~
IF~~THEN REPLY~ The one? Which one?~ GOTO MaeVarRec2
IF~~THEN REPLY~ Mae'Var? How is he supposed to know us?~ GOTO MaeVarRec2
END

IF~~ THEN BEGIN MaeVarRec2
SAY~ Remember when I told you about the different thieves' guilds in this town and how one of them was involved in your kidnapping on behalf of Irenicus? This is the one.~
IF~~THEN REPLY~ But why did you not tell us down there, counselor? I surely had liked to put some questions to the guy, I can tell you!~ GOTO MaeVarRec3
END

IF~~ THEN BEGIN MaeVarRec3
SAY~ In time, darling, in time. For now its is good that we can stay incognito. Let us finish this Bloodscalp job first. We already know that Mae'Var runs his own little side business. It may be much easier to ask him about Irenicus when he sees his own destruction coming down on him.~
IF~~THEN REPLY~You are right. Provided he even knows anything more than the sum of money he had received for the job.~ GOTO MaeVarRec4
END

IF~~ THEN BEGIN MaeVarRec4
SAY~ I suspect that may not be the case. Why should the mage have shared anything with this hireling?~
IF~~THEN DO~SetGlobal("CVMaeDidKN","ar0300",2)~EXIT
END

//Amaunator
IF~Global("SanNoNeht","ar0204",1) ~THEN BEGIN SanAmautemp1
SAY~Amaunator.~
IF~~THEN REPLY~What?~ GOTO SanAmautemp2
IF~~THEN REPLY~Another dead god if I remember right what I heard in Candlekeep.~ GOTO SanAmautemp2
END

IF~~THEN BEGIN SanAmautemp2
SAY~ I am sure they once worshipped the ancient sun god Amaunator down here. And they have forgotten him in this sunless place.~
IF~~THEN REPLY~You're probably right, the avatar mentioned something about a home in the sun or stuff like that.~DO~ SetGlobal("SanNoNeht","ar0204",2) ~ GOTO SanAmautemp3
END

IF~~THEN BEGIN SanAmautemp3
SAY~ It is the nature of those we call *gods* to exist only as long as they have followers believing in them. A forgotten god is a dead god.~
=~ Not many today have a knowledge of the ancient god, but any follower of the lightbringer Lathander shares part of the old belief in the sun just as any paladin of Helm is a disciple in the fight against evil.~
IF~~ THEN REPLY~Priestess, you impress me once again. So many things connect and make sense when you explain them. You could well be a teacher in Oghma's name.~EXIT
END

//Underdark
IF~Global("SanNaza","LOCALS",1)~THEN BEGIN sannarz1
SAY~Do we grant this creature the final wish and take his essence to the surface?~
IF ~~THEN REPLY~ We defeated him once, so I see no great risk even if it's a trap.~ GOTO sannarz2
IF ~~THEN REPLY~ You tell me, Sandrah, why do I give rare rations to a counselor if not for advice, haha.~ GOTO sannarz2
END

IF~~THEN BEGIN sannarz2
SAY~He sounded like he was not trapped in his state here by his own will or misguided necromancy but rather by some curse. I would put his soul to rest. The risk that it is a trap we can manage, <CHARNAME>.~
IF ~~THEN REPLY~Fine, let's do it that way.~DO~SetGlobal("SanNaza","LOCALS",2)~ EXIT
IF ~~THEN REPLY~As long as a risk exists I will not enforce it on the group. We'd rather not mingle with things we don't know.~ DO~ TakePartyItem("d0qpliph") DropItem("d0qpliph",[-1.-1]) SetGlobal("SanNaza","LOCALS",2) ~EXIT
END

IF~Global("RE_BjorninSex","GLOBAL",2) ~ THEN BEGIN PchadBjorn1
SAY~(Sandrah smiles knowingly at you and corrects the fit of your shirt under the belt wordlessly.)~
IF~~THEN REPLY~ Well, another shared experience - a very pleasant one.~ DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~ EXIT
IF~~THEN REPLY~ (Smile back at her and blow her a kiss. You know that she knows that you know...)~ DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~ EXIT
IF~~THEN REPLY~ Secret conaisseur. You choose your men with expertise.~ DO~SetGlobal("RE_BjorninSex","GLOBAL",3)~ EXIT
END

IF~Global("SanNitePh","LOCALS",2)~THEN BEGIN SanPhNot1
SAY~ You did not stay long with Phaere, my love, not long enough to learn from the drow lady so you can bring some fresh impulses to *our* bedchamber.~
IF~~THEN REPLY~ What? Are you blaming me for not having betrayed you with that slut?~ GOTO SanPhNot2
IF~~THEN REPLY~When I gave her a hint of who my mistress was, her lust quickly disappeared. She must have quite some respect for you.~ GOTO SanPhNot2
IF~~THEN REPLY~ I always had the feeling you and I had quite some satisfaction between the sheets. YOU really don't need much teaching in that area, my love.~ GOTO SanPhNot2
END

IF~~ THEN BEGIN SanPhNot2
SAY~ You did what you did. So now it is up to me to gain the drow experience you have waived. Probably with Solaufein when we meet again.~
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~ SANDRAH! You will not...~ GOTO SanPhNot4
IF~Global("SanRomPath","GLOBAL",2)~THEN REPLY~ SANDRAH! You will not...~ GOTO SanPhNot3
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY~ Solaufein? (Grumpily) Hm, I guess that's only fair...(I hope he will not emerge again, grrr.)~  GOTO SanPhNot3
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY~ Solaufein? (Grumpily) I hope he will not emerge again, grrr.~  GOTO SanPhNot3
END

IF~~THEN BEGIN SanPhNot3
SAY~ Hush! I would not have blamed you if you had her so I expect the same from you.~ 
IF~~THEN DO~ SetGlobal("SanNitePh","LOCALS",3)~ EXIT
END

IF~~THEN BEGIN SanPhNot4
SAY~ Hush! I would not have blamed you if you had her so I expect the same from you. (She gives you a glimpse of the cruel drow whip she must have purchased during your time with Phaere.)~ 
IF~~THEN DO~ SetGlobal("SanNitePh","LOCALS",3)~ EXIT
END

IF~Global("SanNitePh","LOCALS",1)~ THEN BEGIN SanPhhad1
SAY~ (Smiles) Are those drow ladies really up to their reputation, <CHARNAME>?~
IF~~THEN REPLY~ Sandrah, please, I did it for our survival, for the group, for you...~ GOTO SanPhhad2
IF~~THEN REPLY~ It was a completetly new experience, quite different from - you.~ GOTO SanPhhad2
IF~~THEN REPLY ~ Hm, I actually like my lovers a little bit more...restraint. But yes, it was not as painful as I feared it to be...~ GOTO SanPhhad2
END

IF~~THEN BEGIN SanPhhad2
SAY~ I hope you were an eager student so you can bring some fresh impulses to *our* bedchamber, my love.~
IF~~THEN REPLY~ I will not disappoint you, but I will not tell you more not to spoil the surprise.~GOTO SanPhhad3
IF~~THEN REPLY~ Now you disappoint a bit, Sandrah. Can you not show a little bit more of jealousy?~GOTO SanPhhad5
IF~~THEN REPLY~ You are a surprise, as always. I did not expect such a reaction.~ GOTO SanPhhad3
END

IF~~THEN BEGIN SanPhhad3
SAY~ Sounds promising to me. And I will surely be a good student between the sheets. I do not want to disappoint Solaufein when we meet again.~
IF~~THEN REPLY~ SANDRAH! You will not...~ GOTO SanPhhad4
IF~~THEN REPLY~ Solaufein? (Grumpily) Hm, I guess that's only fair...(I hope he will not emerge again, grrr.)~ DO~ SetGlobal("SanNitePh","LOCALS",4)~ EXIT
END

IF~~THEN BEGIN SanPhhad4
SAY~ Hush! (She gives you a glimpse of the cruel drow whip she must have purchased during your night with Phaere.)~
IF~~THEN DO~ SetGlobal("SanNitePh","LOCALS",4)~ EXIT
END

IF~~THEN BEGIN SanPhhad5
SAY~Jealousy because of that black slut? You will never see her again after this night while I will continue to be by your side. I will make you forget her just the next night and this will be just an interesting anecdote for us. Did you really think my love for you was that weak?~
IF~~THEN REPLY~ I should have known you better, your persistency and loyalty is not injured by every little incident.~ DO~ SetGlobal("SanNitePh","LOCALS",4)~ EXIT
END
END

//===================================================================
//                    CHAINS BELOW
//===================================================================

// Irenicus Dungeon

CHAIN
IF ~Global("SanFurcDungI","LOCALS",1) ~ THEN BSANDR SanFurcDungIm
~ This parcel is a really nice invention.~
DO~ SetGlobal("SanFurcDungI","LOCALS",2)~
==BIMOEN2 ~ Oh, besta Sandrah, I so love and love this coat and now even more with Henning so farthest away from me.~
EXIT

CHAIN
IF~ Global("SawKhalid","AR0603",1)~ THEN BSANDR DeKhalReac
~ (Sandrah has wordlessly taken Jaheirah's hand. You know from your own experience the calm and strength that she can consign to you by her healing power in such a moment.)~
DO~ SetGlobal("SawKhalid","AR0603",2)~
==BJAHEIR ~ (Jaheira leans against Sandrah having lost her balance for a moment.)~
END
++~ Was there nothing you could have done to spare her this sight, Sandrah? You must have passed here on your way into the dungeon.~+ DeKhalReac2

CHAIN
IF~~THEN BSANDR DeKhalReac2
~ I had considered it, judging the risk that someone may discover the restoration on the body and knew of me intruding as neglectable in this whole turmoil. But I decided against it.~
= ~I think it is important that Jaheira sees him like that. It makes her accept the fact that Khalid is gone beyond any hope and nohing can bring him back. It hurts, yes, but it clarifies the facts.~
==BJAHEIR ~ You have loved him, too, Sandrah, and have lost him with me. You are the most caring person I know. Yes, he is gone but we are not. No use to dwell here just one moment longer.~
EXIT

// Imoen Saerileth
CHAIN
IF~Global("SanseaYou","GLOBAL",7)~ THEN BSANDR SanSaerImoFri
~ Why do you stroll around me like that without saying a word, my besta friend?~
DO~ SetGlobal("SanseaYou","GLOBAL",8)~
==BIMOEN2 ~ 'cos I needa talk but I won't like to anger ya...see, It's about friendship and what it means and such.~
== BSANDR~Did I do anything wrong? I was not aware that our friendship was at a risk ever.~
==BIMOEN2 ~Nay, you do allright..no complains. But sometimes things are a bit overcomplexicated, you see...I mean, can I be friends with somebody else if you don't like that person at all.~
== BSANDR~In principle I would say yes, you may just avoid to invite us both to the same party and let us sit side by side for dinner. But please be a bit more specific, so I can give you a valid answer.~
==BIMOEN2 ~Take your picture then...see, tomorrow's my birthday...~
== BSANDR~Is it? I was unaware of that, I need urgently prepare a surprise for you then?~
==BIMOEN2 ~Ouuuh, dummy, stop it! I just want ya to imagine it were, and there comes the party and then I place you at the table right besides Saerileth...~
== BSANDR~As Saerileth is a friend of yours and I am as well.~
==BIMOEN2 ~Yeah, so it is - so, would that be okay for you?~
== BSANDR~Serve a soup for dinner, or maybe porridge.~
==BIMOEN2 ~Uuuh?~
== BSANDR~Anything that does not require the baby paladin to get a knife in her hands.~
==BIMOEN2 ~Aaaay see, guess I gotcha meaning, my still-besta friend. Let's talk of something else...~
EXIT

// Shar-Teel's Baby

CHAIN
IF ~ Global("SanSharInt","GLOBAL",32)~ THEN BSANDR SanSharbirthGorion1
~ (As soon as she sees Shar-Teel, your healer dashes to the coming mother in her duty.) Wildcat!~
DO~ SetGlobal("SanSharInt","GLOBAL",33)~
== CVshabab~ Pussycat!...ah, and there is this little wannabe daddy...Come here, loverboy, or do you expect me to get up for you?~
END
++~ It is so good to see you, my love. I was really missing your *sweet* voice.~+ SanSharbirthGorion2

CHAIN
IF ~~ THEN BSANDR SanSharbirthGorion2
~ (Sandrah motions you to kneel beside the bed and puts Shar-Teel's hand into yours.)~
== CVshabab~ Time you came, you...you lovely bastard. That brat you planted into me can't keep still any moment at all - looks like it wants to see us as urgently as I want to get rid of that extra weight.~ DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() Wait(2)~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",33)~ THEN BSANDR SanSharbirthGorion3
~ (It does not take long for your beloved Shar-Teel to deliver your baby to the world.) ~
DO~ SetGlobal("SanSharInt","GLOBAL",34)~
== CVshabab~ (Shar-Teel remains completely silent during her labour, only once or twice the pressure on your hand increases in her pain. Her eyes look into yours in silent agreement.)~
== BSANDR~ Just one more push, Wildcat...yes, it is accomplished!~
== Sangori~ Weeeeh...Weeeh.~ 
== BSANDR~ Welcome to the world, little boy.~
== Sangori~ Weeeeh...Weeeh.~
END
++ ~ Welcome to the world, little Gorion.~+ SanSharbirthGorion4

CHAIN
IF ~~ THEN BSANDR SanSharbirthGorion4
~ (Sandrah expertly wraps the newborn into a blanket and lays it to his mother's breast) Congratulation, you two.~
== CVshabab~ Gorion? A boy? Oh, loverboy..you, you...Little Gorion, tututu, yes, this is mammy, oh, how sweet you are.~
== Sangori~ Weeeeh...Weeeh.~
== CVshabab~ Mmmh, those little hands...those little feet...(She gives you a glance full of love.) Well done. loverboy, you are good for something after all. Who would have thought.~
END
++ ~ (You lean forward to kiss your son's forehead and then you kiss Shar-Teel's longing mouth.)~ +SanSharbirthGorion5

CHAIN
IF ~~ THEN BSANDR SanSharbirthGorion5
~ So according to your agreement the father gives the name for the boy, Gorion.~
== CVshabab~ My little Gorion. A good choice for a name, <CHARNAME>. Tututu, Gorion...~
END
++ ~ I am glad you agree to my choice, darling. Would you mind to tell me what would have been your girl's name? ~ +SanSharbirthGorion6

CHAIN
IF ~~ THEN BSANDR SanSharbirthGorion6
~ (Sandrah opens Shar-Teel's nightgown to reveil her budding breasts. A first drop of milk becomes visible on one of the mother's rose buds.)~
== CVshabab~ There is only one way for you to find that out, loverboy. Make it a girl next time.~
== Sangori~ Weeeeh...Weeeh.~
== CVshabab~ (She gently moves the baby's mouth to its tab.) Hey, loverboy, I have two of that outlets. (She grabs you behind the head and pulls you down to her other breast in love.)~
== BSANDR~ Next time? Looks like somebody here has a definite plan.~
== CVshabab~ You can say that, Pussycat. Our little Gorion sure needs a little sister by his side soon...~
 DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

//Viconia in BG2
CHAIN
IF~Global("SanDrowHerV","GLOBAL",1)~ THEN BSandr SanQilVic
~Is something wrong, Viconia?~
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==BVICONI ~ I am confused because I always thought that you were a friend to those drow who despise the wickedness of the Underdark - and a friend of mine.~
==BSANDR ~And what have I done that makes you think I am not?~
==BVICONI ~  You are a descendant of Eresseae Qilue but you denied your drow heritage to <CHARNAME>.~
==BSANDR ~Oh, no, my friend, I would never deny my heritage from one as great as *The Dark Sister*. I was just referring to the historical fact that it does not make me more drow than anyone else on the surface.~
=~ Qilue like her elder sisters was born to a human couple, as you know. Her father had killed her mother when he had found out that she had been possessed by Mystra, the goddess of magic. Mystra, seeking to keep the child alive, came upon a pregnant drow priestess of Eilistraee whose child had died in her womb, and made a pact with Eilistraee that served both their intentions. ~
==BVICONI ~  This is the history I know as well.~
==BSANDR ~ Veladorn has become a fair and mighty priestess of both Mystra and the good drow goddess Eilistraee. She is one that gives me much inspiration of how the races can come together and live peacefully.~
==BVICONI ~  (The drow relaxes) I had hoped that I was mistaken and your reasons would be sound. Even if Shar and Mystra are opponents I have never seen you as my enemy. Sandrah, you proof your birthright every single day on which I have the pleasure to observe you.~
==BSANDR ~ (Sandrah nods silently to the drow.)~ DO~RestParty()~EXIT

//Collector
CHAIN
IF~ Global("CVColleEnc","GLOBAL",13)~THEN BSandr CollNightVis
~What was that?~
DO~SetGlobal("CVColleEnc","GLOBAL",14)~
==Pellig~ (The large cat drops a piece of red cloth in front of Sandrah's feet. Obviously a piece torn from the robe of the nightly visitor.)~
==BSandr~ (Sandrah just touches the piece with the tip of her boot without picking it up.)~
=~ The red of a rare sort of snail, extracted to colour clothing in specific circles of Thayan society.~
==Pellig~ Growl.~
==BSandr~ The last ones we have encountered of that type - except for Edwin whom I personally declare innocent this time - were Szass Tam and...this strange *Collector*.~
==Pellig~GROWL!!!~
==BSandr~ He was very interested in some artifact from me...was he really here to gather it?~
END
++~ Eh, darling, you may want to take a look into your handmirror...~+ CollNightVis2
++~ (You touch her hair near her left temple where her ever perfect hairdo is a bit ruffled) Probably?~+ CollNightVis2

CHAIN
IF~~THEN BSandr CollNightVis2
~ (She quickly gets her small mirror from her backback.) He really cut a tiny strand of my hair - a disgusting man.~
=~I cannot imagine a man following us into this remote wilderness, entering the camp of a well-armed party like us at night just to satisfy himself with a lock of my hair. What does he want with it?~
END
++~We will make him confess it and reveil his motif next time we run into him.~ + CollNightVis3
++~He was interested in something from your body already last time. It surely goes beyond some type of fetishism or such.~+ CollNightVis3

CHAIN
IF~~THEN BSandr CollNightVis3
~ I am afraid we may not get a chance to inquire it from him. Now that he has what he always was after he will give up his visits under his collector disguise. There are many things a Thayan mage may do with a lock of hair from a person, prepare a curse or a specific spell designed for just that one victim...~
END
++~Whatever the use may be it is surely not to be a pleasant surprise.~ + CollNightVis4
++~And you have no idea of what he may plan or why?~ + CollNightVis4

CHAIN 
IF~~THEN BSandr CollNightVis4
~No.~EXIT

CHAIN
IF ~ Global("SanBooPel","GLOBAL",11) ~ THEN BSANDR SanBoo17
~ Look at this.~
DO ~ SetGlobal("SanBooPel","GLOBAL",2)~
== Pellig ~ (Pelligram sits on her hindlegs beside Minsc and stares at Boo who is sitting on the big warrior's shoulder.)~
== BMinsc ~ Boo likes the big cat very much, you know, Sandrah.~
== BSANDR ~ Maybe. It seems to be rather interest than hunger I sense in her.~
== BMinsc ~ Big cat would never eat Boo. Do you not see, they are both of the same warrior spirit. They understand each other without need for words.~
== BSANDR ~ (Sandrah has moved next to Pelligram and strokes the pantheress' head gently.)~
== Pellig ~ Purr.~
== BMinsc ~ Boo likes Sandrah also very much. Boo says, Sandrah has a great warrior spirit herself, just like her big cat. We are all friends.~
== BSANDR ~ Yes, we are. (Sandrah gently touches Boo without Minsc objecting to it.)~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",21) ~ THEN BSANDR SanBoo21
~ Minsc, are you on dajemma as well?~
DO ~ SetGlobal("SanBooTlk","GLOBAL",22)~
== BMinsc ~ We are, Minsc and Boo. I must prove my manhood to be accepted to my berserker's lodge at home. Boo must prove nothing, he is a great warrior already.~
== BSANDR ~ You are as well, Minsc. Word will get to Rashemen soon about that.~
== BMinsc ~ Sandrah, tell us, how did you accomplish your own dajemma?~
== BSANDR ~ I have not yet. Maybe being here today at <CHARNAME>'s side could be seen as my dajemma, in a way.~
== BMinsc ~ Boo is puzzled by your words. Such a mighty fighter and great healer must have gained her approval long ago.~
== BSANDR ~ In my country we do not have this habit, Minsc. It is only my own self that is on a journey to find - myself.~
== BMinsc ~ Boo says he understands well. Boo hopes that Minsc will find the same one day - find myself.~
== BSANDR ~ (Sandrah has taken Minsc's hand in hers. Boo jumps from Minsc's shoulder to Sandrah's lap and back again, summersaulting with joy.) You will find yourself surely, Minsc, yourself and your way. It will not be easy, but it is never for any of us.~
== BMinsc ~ It is not for one like you, Sandrah? Boo has heard something like that from Dynaheir as well. All pretty damsels need protection.~
== BSANDR ~ I will gladly accept yours, my paladin.~
== BMinsc ~ Boo says we have four eyes for one witch. That fits.~
== BSANDR ~ (Laughs and places a small kiss on Boo's nose.)~
== BMinsc ~ Boo likes that.~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",23) ~ THEN BSANDR SanBoo5
~ Minsc, my courageous warrior, hold still for a moment and let me see to your wound.~
DO ~ SetGlobal("SanBooTlk","GLOBAL",24) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc ~ Sandrah, you are always looking to help your comrades, that is nice. But it is not right to care so much for Minsc.~
== BSANDR ~ You are hurt and I heal you, what is wrong with that?~
== BMinsc ~ Minsc and Boo must defend the brave hearted Sandrah, not Sandrah must protect Minsc.~
== BSANDR ~ We are comrades and friends, Minsc, each of us will look and care for the other one. Each of us will provide to the other what he can best, according to his or her talents.~
== BMinsc ~ Boo says these are wise words. Minsc and Boo will provide shield and sword for Sandrah.~
== BSANDR ~ Minsc, you already have a witch to protect. I know I can rely on you, but I do not need a guardian.~
== BMinsc IF~!InParty("CVShau")~THEN~ Boo says you are right, I am Dynaheir's guardian by oath. But I am your protecting friend by heart's command.~
== BMinsc IF~InParty("CVShau")~THEN~Boo says you are right, I am Shauhana's guardian now by heart as once I was Dynaheir's guardian by oath. ~
== BSANDR ~ So be it. (Sandrah places a small kiss on Boo's nose. She stand on her tiptoes and just reaches the tip of Minsc's chin for a kiss there.)~  DO ~ ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~ Global("SanMinsDung","LOCALS",11) ~ THEN BSANDR SanBooDung
~ Hello, Boo?~
DO ~ SetGlobal("SanMinsDung","LOCALS",12) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc ~ Boo says that you are the greatest fighter we have ever seen. Fearless and beautiful. Minsc almost forgot to fight himself from all the watching.~
== BSANDR ~ Thank you for the compliment. I means much from the greatest space hamster warrior I know.~
== BMinsc ~ (Laughs) Boo likes to know how many other space hamster warriors you have ever met.~
== BSANDR ~ Enough to know who is the best of them. Minsc, we make a good team together, but please do not look at me too much during the fight or I must heal all your nasty wounds afterwards.~
== BMinsc ~ Not too bad for me, I love your healing. But you are right, I can spend all the time after the fight to admire your beauty and grace. Minsc has learned to concentrate on fighting alone when it is need to fight. Our enemies always take advantage if me and Boo do not concentrate enough.~
== BSANDR ~ Fine. You do not need to bleed from your wounds if you want my company after a fight. You are always welcome, Minsc.~
== BMinsc ~ Boo says he thinks we have just made a rendezvous with a very fine special lady.~
EXIT