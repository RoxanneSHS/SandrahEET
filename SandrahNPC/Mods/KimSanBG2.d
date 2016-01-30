CHAIN
IF~Global("SanKimTalks","GLOBAL",1)~ THEN KIMJ SanFirst
~ You know <CHARNAME> for a long time already, Sandrah.~
DO~SetGlobal("SanKimTalks","GLOBAL",2) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~We met on the Sword Coast when <PRO_HESHE> just had to leave Candlekeep and I had just come from my home in Waterdeep. A long journey already and still much more to come.~
== KIMJ~ Ha, then you're an incredible source of information about those great deeds - or the truth about them.~
==BSandr~I am a first hand witness. And,...yes, if people see <CHARNAME> as a hero there is at least some reason behind it. Not many are able to act so courageous and responsible when thrown into such a struggle unprepared.~
== KIMJ~ Depending on who's telling the tale you hear more or less about your own role in those adventures. Now that I have met you both I tend to believe that those sources are correct that claim you had much to do with <CHARNAME>'s big success. Just tell me why are you still together instead of leading your own heroic troupe?~
==BSandr~I am a seeker for some thruth and history of which I am sure that it connects to <CHARNAME>'s further fate. And it has surely not remained hidden to you that we are lovers.~EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",3)~ THEN KIMJ SanSecond
~ Ready to share some of your past adventures with me, Sandrah?~
DO~SetGlobal("SanKimTalks","GLOBAL",4) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~ Is there a special topic you would be interested in, Kim?~
== KIMJ~ Lots, but to start somewhere - how about encounters with pirates?~
==BSandr IF~GlobalGT("Homesail","GLOBAL",6) ~THEN~ Does the name Monteelah tell you something.~
== KIMJ IF~GlobalGT("Homesail","GLOBAL",6) ~THEN~ Death, certain death. Among our crew it was forbidden to even mention that dreaded name.~
==BSandr IF~GlobalGT("Homesail","GLOBAL",6) ~THEN~ He was feared even among the pirates themselves?~
== KIMJ IF~GlobalGT("Homesail","GLOBAL",6) ~THEN~ Was? Oh, he had an encounter with <CHARNAME> and you then, I guess. Good to know. I can hardly imagine anyone else to stand against this King of Pirates.~
==BSandr IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN~ We once had a female companion who claimed to have sailed with a pirate king.~
== KIMJ IF~ GlobalGT("SanSafaBan","GLOBAL",10)~THEN~ Yes? Maybe I know her, what was her name?~
==BSandr IF~GlobalGT("SanSafaBan","GLOBAL",10)~THEN~ I doubt it, Kim, her sailing with the pirate and her love affair with the captain were just a rich bored girl's fantasies, loaded with romantic desires.~
== KIMJ IF~ GlobalGT("SanSafaBan","GLOBAL",10)~THEN~ Baah, I hope you have no intention to compare me with such a slut. My adventures are true through and through and no filthy captain has laid his hands on me!~
==BSandr IF~GlobalLT("Homesail","GLOBAL",6) GlobalLT("SanSafaBan","GLOBAL",10)~THEN~ It may be hard to believe but we met none on the Sword Coast.~EXIT

CHAIN
IF~ Global("SanHealKim","GLOBAL",4)~ THEN KIMJ SanHealKim
~Thanks for patching me up, Sandrah. You're skilled at that I must say.~
DO~SetGlobal("SanHealKim","GLOBAL",5)RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~It is one reason I have chosen Mystra's path and not the most unimportant for me.~
== KIMJ~You resemble little the shrivelled old priest I've known or the surgeons with their bone saws we had on the ships. You tried to keep sane just not to fall into their clutches which almost meant your death with some certainty.~
==BSandr~That is what you get for chosing the pirate's way. For me the occupation of a healer and the goals of a pirate crew are mutually exclusive. It is not to be expected that a decent healer would hire out to a pirate.~
== KIMJ~You think this adventuring business we do is much "cleaner", he?~
==BSandr~I guess you have not missed the fact that the goals of this party are not primarily riches and adventures even if we get our share of both in abundance anyway.~
== KIMJ~Yeah, yeah, sure enough. I also observe you're one to know how to have some fun for yourself and you're not some preaching do-good paladin tin head. I can live with your attitude, girl.~
==BSandr~I am glad you left the stupid bloodshed of the pirates behind. The thrills you are seeking can be found by other means as well.~EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",5)~ THEN KIMJ Sanremin
~ Why that curious look, Sandrah?~
DO~SetGlobal("SanKimTalks","GLOBAL",6) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~ (Laughs) If I were a man you would be rebuked by my silly attempt but so...You remind me of someone.~
== KIMJ~As you're very obviously not a man...well, you got me interested.~
==BSandr~ Your eagerness to make yourself a name, to be recognised for what you are...that is one of the reasons I left Waterdeep and followed <CHARNAME>.~
== KIMJ~You? The famous Sandrah of Waterdeep?~
==BSandr~ You see, it has come true - but without the adventures on the Sword Coast I would still be only *Elminster's Daughter*. ~
== KIMJ~Wouldn't that be something great as well, hey?~
==BSandr~To be recognised by everybody as the daughter of a great man only? Do not get me wrong, I dearly love and admire my father and I am proud to be his daughter, but that tells nothing about my own personality, my own achievements and qualities.~
== KIMJ~Guess I get the drift...you wanna be your own woman stepping out of that mighty mages' overwhelming shadow, so to say.~
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~ THEN~ There is another one you resemble, Shar-Teel Dorsan. Have you known her back in Baldur's Gate?~
== KIMJ IF~GlobalGT("SanSharInt","GLOBAL",10)~ THEN~That bastard Angelo's daughter? The worst of them male swine in the flaming Fist!!~
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~ THEN~ You sound exactly like her now, yes she hated her father and tried to make herself a name of her own just to pay him back.~
== KIMJ IF~GlobalGT("SanSharInt","GLOBAL",10)~ THEN~One can say she succeeded, right. But you must've known her better than any.~
==BSandr IF~GlobalGT("SanSharInt","GLOBAL",10)~ THEN~ Yes, she is a remarkable woman and a close friend of mine. Deep in her heart she is much better than most, honest, strong, independent.~
== KIMJ ~Hey, then I take your comparisson with me as a compliment, I guess.~EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",7) ~ THEN KIMJ SanWeirdLove
~You are quite, eh...liberate in your choice of lovers, Sandrah.~
DO~SetGlobal("SanKimTalks","GLOBAL",8) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~ (Laughs) I am not hindered by any prejudice if my heart feels some calling for a person, if that is what you refer to. It is how I was raised and one of the advantages if you grow up in a metropolis like Waterdeep. Anyone special you have in mind with your question?~
== KIMJ~ Hm, a Bhaalspawn, a drow, a tiefling, several girls...I wonder by which criteria you make choices.~
==BSandr~ What about your own experiences, Kim? All I heard so far was about Greenbeard and that was a one-sided affection only?~
== KIMJ~ (Blushes) Psst, you hit the point. My possibilities so far have been limited, I admit.~
==BSandr~ (Raises a brow) First in a company of soldiers and then on a ship full of pirates? None of them was to your liking at all?~
== KIMJ~ They were disgusting, their attempts sheer hunger and lust - there must be more to this whole lovething than slobbering male cretins.~
==BSandr~You were in deed in bad company so far to make any of the wonderful experiences connected to love - and to real lust.~
== KIMJ~ Maybe this is one of the aspects that will change now -with my new companions and friends.~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~ (Looks into your direction) Anyone in particular who has come into the range of your spyglass?~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~ (Looks questioningly at the sweet young ex-pirate) Anyone in particular who has come into the range of your spyglass?~
== KIMJ~ It may be a bit premature to tell yet. Anyway, may I count on your discretion and...advice as a friend...?~
==BSandr~You can talk to me about anything and at anytime, my friend. I will be your counsellor and...maybe more.~
== KIMJ~Wonderful! (She gives Sandrah a quick kiss on the cheek and darts away.)~EXIT

CHAIN
IF~Global("SanKimTalks","GLOBAL",9)~ THEN KIMJ SanWeirdLove2
~We started this love topic discussion some time ago, remember? You're still willing to share your views on that with me?~
DO~ SetGlobal("SanKimTalks","GLOBAL",10) RealSetGlobalTimer("KimSanInt","LOCALS",3000)~
==BSandr~Sure, I am always interested in that specific subject, one of my favourites.~
== KIMJ ~ As for me, it's really calm. I have to admit something to you... men disgust me. They are dirty, brutal, violent, aggressive, domineering, and unable to think beyond their own pleasure. ~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~ Their pleasure can be ours, provided you find one of those exceptions to your general description. They exist, trust me.~
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN ~Well, yes, they do. And then they are so rare that if you're lucky to find one, he's most likely been found by someone with the same taste already.~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~You are just experiencing that?~
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN ~Don't play the dummy, my dear, you know which similar taste we both share. (She glances quickly in your direction.) ~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~So you think he's taken already - much to your disappointment now you start to develop some feeling?~
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN ~The pirate in me would fight over anything she wants, Sandrah - but that's no solution here, I guess.~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~I agree. He is not one to settle with the winner just because she has won a hen fight...~
== KIMJ IF~Global("SanRomPath","GLOBAL",1)~THEN ~Hey, we both know who would be the winner anyway - you have nothing to loose in any case.~
==BSandr IF~Global("SanRomPath","GLOBAL",1)~THEN ~Maybe I have just won someone, Kim, someone to share <CHARNAME>'s kind and loving heart with. It is up to you to make the right move now.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~And women? ~
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN ~Eh, of course not... even though sometimes I tell myself that a woman would probably be softer and more understanding.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~ You just did not have the courage to follow that feeling along just to find out.~
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN ~(Blushes.) You...looks like you have found the perfect solution for yourself, just ding it however it suits yoou best.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~I make my decisions depending on the person I face not on the race or gender or occupation. I can see nothing wrong with that.~
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN ~It#s not about right or wrong - it's just unusual.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~My impression of you is that *usual*, *normal*, *habit*, *rules* or similar are not the criteria to rule over your life and feelings, Kim.~
== KIMJ IF~Global("SanRomPath","GLOBAL",2)~THEN ~A pirate is as free as a seabird...unless she#s caught...by whatever trap, oh my.~
==BSandr IF~Global("SanRomPath","GLOBAL",2)~THEN ~It would make me sad to think that you could experience it as a trap...~
== KIMJ ~I...Sandrah...I-I...I think somehow I love you...~
=~(Her face is deep red and agitated and she darts into the shelter of the shade nearby.)~DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT
