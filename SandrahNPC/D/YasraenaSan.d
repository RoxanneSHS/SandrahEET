// Yasraena
APPEND BSANDR

IF ~Global("SanYasParty","LOCALS",1) ~THEN BEGIN SanYasPar1
SAY ~Somehow we seem to attract the dark elves to our company, <CHARNAME>.~
IF~~THEN REPLY ~It was you, my counsellor, who told me we understand them so well as we are used to being outlaws and mistrusted ourselves.~DO~SetGlobal("SanYasParty","LOCALS",2)~EXIT
IF~~THEN REPLY ~The ones we have met have proven themselves loyal companions and amazing fighters for our quests. I have learned from you, my love, to judge not by colour but by what is under that skin.~DO~SetGlobal("SanYasParty","LOCALS",2)~EXIT
END
END

// Yasraena Healing

CHAIN
IF~~THEN BSANDR YasHealed1
~I have no reason not to be with you. You trust me and your swords have helped me more than once in the recent battles.~
DO~SetGlobal("SanHealYas","GLOBAL",6)~
==BYASRAEN~Your surfacer's notions of camaraderie and friendship are still foreign to me - but they feel like something I may like.~
==BSANDR ~Do not be afraid of them, and do not be afraid to make mistakes. I am a bit of a counsellor to <CHARNAME> and I offer you the same if you feel the need for someone to help you along, or simply just someone to talk to.~
==BYASRAEN~I will gladly do that, Sandrah. I cannot survive and find Divalir without the help of others. You are a good choice for that. (She smiles shyly at Sandrah.)~
==BSANDR ~(Sandrah returns the smile and squeezes Yasraena's hand for assurance.) It will not be too bad with us, you will see.~
EXIT


CHAIN
IF~~THEN BSANDR YasHealed2
~(Smiles) Almost...I had to kill one of them once. <CHARNAME> and me also faced the Bregan D'aerthe on the Sword Coast.~
DO~SetGlobal("SanHealYas","GLOBAL",10)~
==BYASRAEN~And you survived! Amazing - you are not proud of it though, as I hear from your tone.~
==BSANDR ~I get no joy from killing. I just do what must be done.~
==BYASRAEN~Still you do it with unmatched skill, even with artful grace.~
==BSANDR ~I had a drow teacher for part of it, even if it was a male.~
==BYASRAEN~My teacher and master was Divalir, also a male. I have not that attitude of the drow females to men, Sandrah. One of the reasons I am on the surface. But tell me about your teacher, do I know him maybe?~
==BSANDR ~Probably, as you hail from Menzoberranzan. It was Drizzt do'Urden, he is very close to me.~
==BYASRAEN~Drizzt! In this case you have indeed a completely different view on my kin than the average surfacer. I am glad I am in your company - (with some hesitation)...and to call you my friend.~
==BSANDR ~(Takes Yasraena's hand.) Please honour me by calling me your friend, Yasraena.~
EXIT

// Yasraena Friendship

CHAIN
IF ~Global("SanYasfr","GLOBAL",2) ~THEN BSANDR SanYasUndw
~Yasraena, are you originally from Menzoberranzan?~
DO ~SetGlobal("SanYasfr","GLOBAL",3) ~
==BYASRAEN~Yes, you know about my home? I am maybe not the first drow you encounter - and have not killed on sight.~
==BSANDR ~(Smiles) As you can see, neither <CHARNAME> nor me kill somebody at first sight just because of the race. There are some drow I even call my friends.~
==BYASRAEN~Such things happen on the surface, Sandrah? I was fearing worse.~
==BSANDR ~And you better keep your defences in general, Yasraena. We are exceptions here on the surface, maybe because we spend our times as outcasts ourselves and have learned to judge our companions and friends by other means than the colour of their skin.~
==BYASRAEN~I see that it were lucky circumstances that it was you I met in that dungeon. I would like to hear more about your drow friends when we have the time.~
==BSANDR ~Sure, Yasraena.~
EXIT

  
CHAIN
IF ~Global("SanYasfr","GLOBAL",4) ~THEN BSANDR SanYasUndw
~Another bloody dance is ahead.~
DO ~SetGlobal("SanYasfr","GLOBAL",5) RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN~Not often a deadly fight is referred to as *dance*. Although I would admit it describes quite adequately the style of your attacks.~
==BSANDR ~Another elf I knew some time ago found this description for my combat style. He was very scared that one of my pirouettes would let me stumble one day.~
==BYASRAEN~An observant elf, just like the one that taught me my *sword-dance*.~
==BSANDR ~(Sandrah looks astonished, but decides to say nothing.)~
==BYASRAEN~In the Underdark I had little time for pleasure. I was training at Melee Magthere, always involved in some training or other. I suppose that is why I learned to enjoy my sword-dance more than most anything else. ~
==BSANDR ~Maybe the teacher had a bit to do with that as well.~
==BYASRAEN~Yes. You understand well.~
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",6) ~THEN BSANDR SanYasUndw
~So pensive? What are you thinking of, Yasraena?~
DO ~SetGlobal("SanYasfr","GLOBAL",7) ~
==BYASRAEN ~Strange feelings. I hate the Underdark and everything that goes on there, still I miss some of the things - the shelter of its caves, the beauty that can be found in many places - and my language which can express what I really think.~
==BSANDR ~Usstan tlun Sandrah D'Elminster N'a' Waterdeep. Ust ssinssrig Drizzt Qu'ellar do'Urden. Daermon N'a'shezbaernon?~
==BYASRAEN~Usstan tlun Yasraena d' Qu'ellar Arkhenneld.~
==BSANDR ~I have to disappoint you, this was about all I can say in drow.~
==BYASRAEN~(Laughs) The way you sing our words rather than to spit them out, you make my mother tongue sound like it was made for friendship talk rather than to express the nine hundred methods to kill your family members, Sandrah of Waterdeep daughter of Elminster.~
==BSANDR ~But then no drow would say something like that at all.~
==BYASRAEN~(Sighs) Yes, no drow would say *daughter of* and then add her father's name, even if she knew it.~
==BSANDR ~There are things that can be expressed in any language, or rather they do not really need words to be expressed at all.~
==BYASRAEN~(Smiles) That is true. You understand more of me than I can say to you in your tongue.~
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",8) ~THEN BSANDR SanYasdres
~Sandrah has already dressed into her shining short evening skirt of the clinging silk that emphasises her female beauty ultimately.~
DO ~SetGlobal("SanYasfr","GLOBAL",9) ~
==BYASRAEN~Next to her Yasraena is as well removing her armour for the night and reveals her curves in a clinging gown of some strange indigo colour. ~
==BSANDR ~That looks wonderful, may I please touch it, the texture is foreign to me?~
==BYASRAEN~(The drow seems to be puzzled at first but then relaxes.) It is called ssansirr, and it is a common fabric for noble drow in Menzoberranzan. (Yasraena smooths the folds of her dress with unconscious pleasure.)~
==BSANDR ~Some things from the Underdark are not too bad. It feels fantastic. (She gently strokes the gown at Yasraena's hip.) And it is quite teasing.~
==BYASRAEN~(Again the drow seems to be puzzled but then she grins.) Divalir told me of that, for a drow female it is quite normal to be *teasing*, but maybe it is not good for the males around here.~
==BSANDR ~Unless you are interested in one of them.~
==BYASRAEN~I greatly enjoy the pleasures of the bedchamber. But I have a ssinssrig, Divalir holds my heart.~
==BSANDR ~(Sandrah's hand is still on the drow's gown, now stroking her back along the spine.) You are not only tempting for the males around here.~
==BYASRAEN~(Yasraena moves her back slowly to show Sandrah how welcome her touching hand is. She steps a bit further to the priestess.) It is long since I have had a mate to share my bed. I would never betray Divalir - with another male...~
==BSANDR ~(Sandrah's exploration of the drow's body has moved them even closer together.)~
==BYASRAEN~(The drow has started to gently feel the silken bit of nothing that covers Sandrah's body, moving with such expertise that the human girl closes her eyes in anticipation of the things to come...)~
DO ~RestParty() ~
EXIT

CHAIN
IF ~Global("SanYasfr","GLOBAL",10) ~THEN BSANDR SanYasfreed
~Does the sun hurt your eyes, Yasraena, I see you seem to squint? .~
DO ~SetGlobal("SanYasfr","GLOBAL",11) RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN~You are so caring, my friend. The daylight and the open landscape are something we drow are not made for initially. I must still get used to it even though I start to like it more and more.~
==BSANDR ~The Underdark must have its own beauty even if we surfacers will have the same hardship to adjust ourself to the new situation before we can enjoy it.~
==BYASRAEN~(Yasraena's eyes take on a faraway expression.) I know that you will like it, Sandrah, you are so free of prejudice and always willing to learn more. Oh, if I had only the possibility to show you my world down there. Imagine to take a friend by the hand and show her all of the beauties she has never seen or even dreamt of before. I would love to share that with you one day.~
==BSANDR ~I see forward to that day with joy, my dear. Meanwhile you remind me of my duty to be your guide through my world up here. What have you found most to your liking on the surface so far?~
==BYASRAEN~It is a thing that is at the same time frightening and fascinating, Sandrah. It is the endlessness and the freedom that is all around us. In the Underdark there is always a ceiling and a wall somewhere, even if some of the caves and underground domes are immense. But here, there is the horizon and behind it there is still no end. And above is the sky that goes on and on with no apparent limit.~
==BSANDR ~I see, it is much more than just a difference in landscape, it is the mindset and the feelings that are developped in the different surroundings.~
==BYASRAEN~You are the best example, Sandrah. Your freedom to act and to think seems to be as limitless as that horizon and the sky and you always are curious of what lies outside of your vision. So completely different from the minds of the drow...~
==BSANDR ~Not all drow, my sweet philosopher. There are exceptions to that and I have the privilege to know some of them. (She kisses her friend tenderly.)~
==BYASRAEN~(Sighs.) Another wonderful reason to enjoy the surface...(She closes her eyes to receive another kiss.)~DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~~THEN  BSANDR YasKill10
~ (Smiles.) Silly, giggling, weeping creatures under the thumb of their males, is that the drow women's prejudice on surfacer girls?~
DO ~SetGlobal("SanYasKill","GLOBAL",2)~
==BYASRAEN~It is, but I do not share it. And now that I am here I am witness of the opposite. Especially with you, my friend. Did you ever weep at all?~
==BSANDR ~I am sure I did. You know I am a very emotional person and I have no reason to hide my feelings to my companions and friends. Since you ask, Yasraena, I do not especially recall any special event, though.~
==BYASRAEN~Maybe your mother's death?~
==BSANDR ~No, surely not. I was much too young to realise what had happened then. Her death came to my consciousness only much later.~
==BYASRAEN~I first wept when I had to take another's life the first time ever. I have taken many lives since then and I have never shed a tear about any since.~
==BSANDR ~That does not mean that you have got used to it now or that you even appreciate killing other creatures. I have sensed the opposite in you, quite unusual for a drow - but then you are different from your race in many other aspects as well.~
==BYASRAEN~You are very observant, Sandrah. And so am I. I think it is one of the many things we have in common. We both hate to kill and we would always try to avoid it, yet we have developed it into an art in which we are masters - forced by the circumstances we have to face.~
==BSANDR ~Do you have such a vision...I mean, do you dream of a better world in some way - maybe even one where drow and humans can live peacefully together?~
==BYASRAEN~(Remains silent for a time, obviously considering this vision at length.) No, that would be an illusion never to be achieved. But I can see this drow and some few surfacers creating their own little Faerun in peace and friendship - and love. (You see a single tear well up in her crimson eye.)~
==BSANDR ~(Gently wipes the tear from Yasraena's eye while a similar one appears in her own eye.) Now you see this silly surfacer girl in tears, Yasraena.~
==BYASRAEN~(Kisses the tear from Sandrah's eye.) Do that more often. Your emotions mean much to me.~
EXIT

CHAIN
IF ~Global("SanYasDams","LOCALS",1)~THEN BSANDR SanYasSleepDung
~You are welcome. (Sandrah still has a slightly puzzled look on her face as Yasraena puts her bedroll next to her own with a questioning look.)~
DO~SetGlobal("SanYasDams","LOCALS",2)~
==BYASRAEN~I hope it is acceptable for you to stay close together as <CHARNAME> makes us rest in this dungeon tonight? (Her smile is pleasant and she casts her wonderful eyes down shyly.)~
==BSANDR ~Of course it is wonderful, my dear, but do not try to tell me you are afraid in the dark or something similar.~
==BYASRAEN~Would you not believe that? Is that not how girls on the surface tease a lover to come close and to protect them?~
==BSANDR ~(Sandrah laughs while she pulls Yasraena gently down beside her and embraces the drow.) And is it not the way of the drow women to be most seductive and to assimilate whatever practice they feel useful to their love game?~
==BYASRAEN~(Giggles) Was I convincing? Would you hold me close to you and protect me, my powerful heroine?~
==BSANDR ~(Sandrah pulls Yasraena into her bedroll and kisses her neck passionately.) You are very convincing. Do not fear any bad dreams, my love - there will be no chance to dream at all for you tonight...~
DO ~RestParty() ~
EXIT

CHAIN
IF~Global("SanYasHus","LOCALS",1)~THEN BSANDR SanYasHusb
~I know this puzzled expression well, Yasraena. The surface has caught you with a surprise once again?~
DO~SetGlobal("SanYasHus","LOCALS",2)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN~Sandrah, my friend, I have learned about your strange surfacer's concept of *husband* instead of having a patron.~
==BSANDR ~(Smiles) I would guess that the idea may be strange for other drow females, but maybe not for you. To be true and faithful to one man only in your life - is that not equivalent to your relationship to Divalir?~
==BYASRAEN~(The drows eyes sparkle in deep red when contemplating that idea.) As so often, you seem to be right, Sandrah. Is Divalir my husband then?~
==BSANDR ~He could be your future one, Yasraena. Among the humans and the elves it requires a certain ritual in which you openly swear an oath to each other in front of witnesses.~
==BYASRAEN~If such is required, I am more than willing to swear any oath for him...~
==BSANDR ~There are many couples on the surface who live in a similar fashion without an official procedure to sanction it. On the other hand, the marriage procedure as such is often considered one of the most important and happy days in your life. You may consider your current state as being engaged with Divalir, which means you have found each other and you have agreed to become husband and wife in the future.~
==BYASRAEN~Some of your surfacer's ideas are not that bad. I was always lacking the words to describe how I am to him - now I can express my feelings.~
= ~But say, lovely, are you engaged...or maybe have a husband already?~
==BSANDR ~Neither of the two. I feel I am still young and I have the freedom to look out for opportunities. I am not even sure that my conduct of life would qualify me for a good married wife - but who knows. Never say never.~
==BYASRAEN IF ~InParty("P#Kivan")~THEN~And what about Kivan? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("P#Kivan")~THEN~(Dreamily) My poor elf has lost already a wife in his life. But if we should ever decide on such a step I confide to you, my friend, he will be one good candidate - we have dreamed one time already about a lonely little place to spend our life in peace and enjoying nature and each other...(sighs)..dreams!~
==BYASRAEN IF ~InParty("Xan") !InParty("P#Kivan") ~THEN~And what about Xan? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("Xan") !InParty("P#Kivan") ~THEN~My poor elf would probably never have the courage to take such a step in fear of any of us losing the beloved the next moment. As if that loss would be any different when married or not...But if we should ever decide on such a step I confide to you, my friend, I am sure I can convince him - although he would make a lousy husband I guess...(laughs)...but then I may not be any better as his wife.~
==BYASRAEN IF ~InParty("Minsc") !InParty("P#Kivan") !InParty("Xan")~THEN~And what about Minsc? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("Minsc")!InParty("P#Kivan") !InParty("Xan")~THEN~I care much for Minsc, Yasraena, and he for me. But fate has a different intention for the both of us. I am but a substitute for the true love he will one day find. Until then, yes, we enjoy each other knowing it will someday end...end happily.~
==BYASRAEN IF ~InParty("Ajantis") !InParty("P#Kivan")!InParty("Xan")!InParty("Minsc")~THEN~And what about Ajantis? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("Ajantis")!InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") ~THEN~I love him, yes, but our ideas of a common life, especially his ideas about a wife's role in a marriage are very far from mine. He would be a nightmare of an husband for me I guess...(laughs)...but then I will surely not be any better as his wife. No, it can only work between us as long as we lead our current lifestyle and enjoy the pleasures and the freedom it allows. I will never become the happy bird in his golden cage.~
==BYASRAEN IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN~And what about Drizzt? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN~Drizzt and marriage, a revolutionary idea, my friend. He would make a lousy husband I guess...(laughs)...but then I will surely not be any better as his wife. No, it can only work between us as long as we lead our current lifestyle and enjoy the pleasures and the freedom it allows. There was only one woman ever who could have changed him...~
==BYASRAEN IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN~And she is no more? I know you well enough not to assume you have killed her to get him.~
==BSANDR IF ~InParty("Driz2") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")~THEN~What? Oh no, she is not even dead. She became a goddess - and she was my grandmother.~
==BYASRAEN IF ~InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~ THEN~And what about Gavin? I had thought you two have a relationship like that.~
==BSANDR IF ~InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN~I love him, yes, but our ideas of a common life, especially his ideas about a wife's role in a marriage and family are very far from mine. No, it can only work between us as long as we lead our current lifestyle and enjoy the pleasures and the freedom it allows. I will never become the happy bird in his golden cage.~
==BYASRAEN IF ~InParty("Tsujath")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN~And what about Tsujatha? I had thought you two have a relationship like that. ~
==BSANDR IF~InParty("Tsujath")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") ~THEN~An unexpected idea - I do not even know if the concept exists on his world, he never mentioned anything about it.~
==BYASRAEN IF ~InParty("FHFRN")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") ~THEN~And what about Faren? I had thought you two have a relationship like that. ~
==BSANDR IF~InParty("FHFRN")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") ~THEN~My friend, even on the surface there are men who are only slightly more than a nice entertainment for a woman. The difference to a drow male is, that he plays this role voluntarily and expects nothing more from me.~
==BYASRAEN IF ~InParty("Anomen")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") ~THEN~And what about Anomen? Although I admit I do not understand what kind of relationship you two have. ~
==BSANDR IF ~InParty("Anomen")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") ~THEN~Anomen, we have no relationship at all, my blinded friend. That tin head! If the two of us were the last remaining surfacers our kin would end with us.~
==BYASRAEN IF ~InParty("B!Haldamir")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") ~THEN~And what about Haldamir? I had thought you two have a relationship like that. ~
==BSANDR IF ~InParty("B!Haldamir") !InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") ~THEN~It is always a very difficult situation between a human and an elf - as a dark elf you may not consider it - but how can you bind yourself for a lifetime if that time is so different for each partner? Still I enjoy every day together that is granted to me.~
==BYASRAEN IF ~InParty("J#Kelsey")!InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") !InParty("B!Haldamir") ~THEN~And what about Kelsey? I had thought you two have a relationship like that. ~
==BSANDR IF ~InParty("J#Kelsey") !InParty("B!Gavin") !InParty("P#Kivan") !InParty("Xan")!InParty("Minsc") !InParty("Ajantis")!InParty("Driz2") !InParty("Tsujath") !InParty("FHFRN") !InParty("Anomen") !InParty("B!Haldamir")~THEN~Mmh. I have a certain sympathy for him, but marriage? I am afraid he will never get to the point to accept me as an equal partner, I will always stand high on some pedestal for him, not a good foundation in the long term.~
==BYASRAEN IF ~GlobalGT("SanHaerRel1","GLOBAL",18) !Dead("Haerdalis")~THEN~And what about Haer'Dalis? I had thought you two have a relationship like that. What more can a woman do than go to the Nine Hells for a man?~
==BSANDR IF ~GlobalGT("SanHaerRel1","GLOBAL",18)!Dead("Haerdalis")~THEN~I accept the twirly bird for what he is, my friend. I will never make the mistake to put him in a cage even if the bars were made of pure gold.~
==BYASRAEN IF ~Global("SanRomPath","GLOBAL",1)~THEN~And what about <CHARNAME>? I had thought he would be your husband, or at least your fiancee.~
==BSANDR IF ~Global("SanRomPath","GLOBAL",1)~THEN~(Laughs) Do we look like an old married couple to you. (Solemn) <CHARNAME> and me have never talked about such a thing, Yasraena. Our current circumstances do not invite such plans...But if I should ever decide on such a step I confide to you, my friend, he will be my number one candidate - although he would make a terrible husband even if he is a wonderful lover...(laughs)...but then I may be a better sweetheart than a wife.~
EXIT

CHAIN
IF~Global("SanYasfr","GLOBAL",13)~THEN BSANDR SanYasMorntalk
~(Sandrah and Yasraena lie entwined in the single bedroll they have shared for the night. Your normally solemn drow companion appears to be very happy this morning.)~
DO~SetGlobal("SanYasfr","GLOBAL",14)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN ~Hmm, after all it seems that my time spend disguised as a male was not totally in vain.~
==BSANDR ~If you mean that you have learned how to really pleasure a female you are right. I would recommend to your teachers to give you an A grade for this.~
==BYASRAEN ~It is good that you are a person who can find as much pleasure in making love than I can. You are my very best friend in other matters that ail my soul but you also understand what my body needs. ~
==BSANDR ~I gain as much from our relationship as you do, my love. Let us not waste the few minutes we still have before <CHARNAME> calls us to move with silly words...~
==BYASRAEN ~(The drow cuts off any remaining words from her human girlfriend with her passionate kisses.)~DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanYasfr","GLOBAL",15)~THEN BSANDR SanYasStartalk
~Do the stars so fascinate you, my love? You will get a stiff neck looking up like that for hours.~
DO~SetGlobal("SanYasfr","GLOBAL",16)RealSetGlobalTimer("SanYasInterv","LOCALS",1000)~
==BYASRAEN ~They are very beautiful, it makes the endlessness above us more visible than in the day. Still this dome of glittering lights above us reminds me of my home again, as such was the sight of the wonderful larger caves down there.~
==BSANDR ~Stargazing is a thing that lets the mind wander, I know that myself. Since the eldest days the people of the surface have given the stars names and associated them with legends.~
==BYASRAEN ~And also with the Gods, I heard. Lolth does not have a star, neither here nor in the Underdark, paah.~
==BSANDR ~Nor has Bhaal or some other evil gods of Faerun. It seems that in their dreams and visions all folks have a tendency to the good and the light rather than to dark and evil.~
==BYASRAEN ~(Sigh) I would wish that could be the same for drow. Is it the lack of light and stars that has made them loose these visions?~
==BSANDR ~You have come to the surface, my friend, and now you share the visions of the surfacers. But the longing for it was in you before your eyes saw all of it.~
==BYASRAEN ~This is true. (She embraces Sandrah while they both stare at the nightly sky.) And this gives me hope for the drow. There is a longing deep inside of us and it can be saturated...~
EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",1)~THEN BSANDR SanYasUD1talk
~Perilous and beautiful at the same time, Yasraena.~
DO~SetGlobal("SanYasUD","LOCALS",2)~
==BYASRAEN ~Do you see me this way, Sandrah?~
==BSANDR ~Could be...but I was actually referring to where you come from - the Underdark.~
==BYASRAEN ~Is it how you imagined it?~
==BSANDR ~I start to comprehend why you miss it. It has its beauties of a kind that can be found nowhere else and are beyond what I had thought them to be. I never could imagine how many different colours and shades are visible in the dark once you start to acquaint yourself.~
==BYASRAEN ~Oh, Sandrah, I would love to show you so much - but fate has it that we had to come to this part of the Underdark...the backyard.~
==BSANDR ~I will try not to judge prematurely - you mean this is like getting your first impression of the surface by looking at Athkatla's slums?~
==BYASRAEN ~(Laughs) You precisely hit the mark. There is so much beauty to be found in the Underdark but this is the worst place to start. However this is the ideal training ground for the perils of my home.~
==BSANDR ~(Takes the drow's hand) You and me are not scared by such, right?~
==BYASRAEN ~(Kisses Sandrah's mouth) Especially not if we face them side by side.~
=~(Sighs) Somewhere around here must be the place where they hold dear Divalir. I am sure with you and <CHARNAME> to aid we will free him soon now.~EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",3)~THEN BSANDR SanYasUD2talk
~You are starring at me, Yasraena, are you aware of it?~
DO~SetGlobal("SanYasUD","LOCALS",4)~
==BYASRAEN ~I am in deed perplexed. You are the most beautiful drow I have ever seen in the Underdark.~
==BSANDR ~You did not like my human appearance that much?~
==BYASRAEN ~Oh, I was not saying so, just as a human I was not sure how beautiful you were as I do not know how to judge that. Now as a drow I can see what human males must see in you.~
==BSANDR ~Thank you for that compliment, it comes from one who must know it - judging from my own impression of you, my dear.~
==BYASRAEN ~Yes, I am beautiful for drow eyes - but you are stunning, it may even be dangerous for us.~
==BSANDR ~(Laughs) I know that situation from my days in Waterdeep, Yasraena, that hollow *plunk* when a male head hits a lamppost because he was gazing after me instead of watching his steps.~
==BYASRAEN ~Drow can see in the dark, we do not have lampposts, hihi. The perils down here are more dangerous, my love - and you need not fear the males here but the females.~
==BSANDR ~(Smiles) ...like I said, just the same as in Waterdeep.~
==BYASRAEN ~(Laughs as well) I know you will manage it well. Allow me to kiss the most beautiful drow of Ched Nasad.~DO ~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanYasUD","LOCALS",5)~THEN BSANDR SanYasUD2talk
~Did you not trust me and my love enough to share the truth with me, Yasraena?~
DO~SetGlobal("SanYasUD","LOCALS",6)~
==BYASRAEN ~(Slowly) I knew you would see through the disguises, Sandrah. Do you understand me not?~
==BSANDR ~I think I do and it explains a lot now. You love your home world but despise the ways the drow have now. Because you have seen the alternative and...he was your teacher.~
==BYASRAEN ~If me and him can find each others hearts there must be a chance for my folk and his folk to come together again.~
==BSANDR IF~!InParty("Driz2")~THEN ~A hope that other drow and friends share with you...(Whispers) Drizzt, I wish you were here...~
==BSANDR IF~InParty("Driz2")~THEN ~A hope that other drow and friends share with you...(Whispers) Drizzt, maybe this is the man you were searching for so long - Divalir.~
==BSANDR ~Times are bad for that at the moment, my friend, just as the drow here have started a war with their brothers on the surface.~
==BYASRAEN ~This time it is not the doing of the drow but fuelled by the vicious Irenicus.~
==BSANDR ~Ironically enough one of Divalir's own city as it seems. But see it this way, Yasraena, we will defeat that villain and his sister in the end, believe me.~
==BYASRAEN ~A first step to end the war - and then new hope can begin for drow and elves!~
==BSANDR ~Remember Divalir's own words, <CHARNAME> is on a great journey, the end of which shall alter the Realms forever - for the good.~
==BYASRAEN ~You and me, Sandrah, we will not rest in our support to make these changes.~
==BSANDR ~You have my word on it, beloved. For a Toril where a love like yours is possible.~EXIT

CHAIN
IF~Global("YasraenaSvirfObjection","GLOBAL",3)~THEN BSANDR SanYasSnif
~We will find a way to solve this without bloodshed to innocents, I would resent such as much as you do.~
DO~SetGlobal("YasraenaSvirfObjection","GLOBAL",4)~
==BYASRAEN ~I am not willing to sacrifice all my believes just to saturate the bloodthirst of those Matrons.~
==BSANDR ~Neither am I. We need allies to survive and get out of here but we do not need to become their puppets. There are always alternatives. <CHARNAME> will find himself quite alone should <PRO_HESHE> insist on such an unnecessary massacre.~
==BYASRAEN ~Your words give me hope again, my friend.~EXIT

CHAIN
IF~Global("SanDrowHerY","GLOBAL",1)~THEN BSandr SanQilYas
~Is something wrong, Yasraenea?~
DO~SetGlobal("SanDrowHerD","GLOBAL",2) SetGlobal("SanDrowHerV","GLOBAL",2) SetGlobal("SanDrowHerY","GLOBAL",2)~
==BYASRAEN~I am confused because I always thought that you were a friend to those drow who despise the wickedness of the Underdark - and a friend of mine.~
==BSANDR ~And what have I done that makes you think I am not?~
==BYASRAEN~You are a descendant of Eresseae Qilue but you denied your drow heritage to <CHARNAME>.~
==BSANDR ~Oh, no, my friend, I would never deny my heritage from one as great as *The Dark Sister*. I was just referring to the historical fact that it does not make me more drow than anyone else on the surface.~
=~Qilue like her elder sisters was born to a human couple, as you know. Her father had killed her mother when he had found out that she had been possessed by Mystra, the goddess of magic. Mystra, seeking to keep the child alive, came upon a pregnant drow priestess of Eilistraee whose child had died in her womb, and made a pact with Eilistraee that served both their intentions. ~
==BYASRAEN~This is the history I know as well.~
==BSANDR ~Veladorn has become a fair and mighty priestess of both Mystra and the good drow goddess Eilistraee. She is one that gives me much inspiration of how the races can come together and live peacefully.~
==BYASRAEN~(The drow embraces her human friend) I had hoped that I was mistaken and your reasons would be sound. Yes, Sandrah, you proof your birthright every single day on which I have the pleasure to observe you.~
==BSANDR ~(Sandrah kisses the drow.)~DO~RestParty()~EXIT

CHAIN
IF~Global("SanYasStay","LOCALS",2)~THEN BSandr SanYasStay
~It has done you good to see your ssinssrig in his own town and in safety.~
DO~SetGlobal("SanYasStay","LOCALS",3)~
==BYASRAEN~Oh, yes, this has been a happy day for me even under the events that overshadow my joy a bit.~
==BSANDR ~You accepted Divalir's suggestion to stay with us further without much hesitation.~
==BYASRAEN~I love him, my friend - you and <CHARNAME> have been with me in the most important period of my lifetime. You are much more than mere companions, even if my language has not the word for it and your words have not a meaning for my feelings.~
==BSANDR ~I am happy you have stayed and I look forward to every new day we can spend together.~
==BYASRAEN~Honor and gratitude are not a good basis for friendship, Sandrah - or for love.~
==BSANDR ~Even if Divalir's words were indicating thus, I know that those are not your motives to stay with us.~
==BYASRAEN~(The two women embrace each other and kiss long and tenderly.)~EXIT


//==================================Yasraena Appends

APPEND BYASRAEN

IF WEIGHT #-9 ~Global("SanHealYas","GLOBAL",5)~THEN BEGIN SanHealYas1
SAY ~You do not just heal me because I am your comrad in arms, Sandrah. You are a friendly person by nature.~
IF~~THEN EXTERN BSANDR YasHealed1
END

IF WEIGHT #-8 ~Global("SanHealYas","GLOBAL",9)~THEN BEGIN SanHealYas2
SAY ~The skills you have both in healing and in battle spells are remarkable, Sandrah. You almost match our High Priestesses in that.~
IF~~THEN EXTERN BSANDR YasHealed2
END

IF WEIGHT #-7 ~Global("SanYasKill","GLOBAL",1)~THEN BEGIN SanYasKill1
SAY ~I have not yet seen you ever shed a tear Sandrah, although I was told you surfacer girls do so constantly.~
IF~~THEN EXTERN BSANDR YasKill10
END
END

EXTEND_BOTTOM YasraenP 9
IF~InParty("CVSandr") GlobalLT("Chapter","GLOBAL",21)~THEN REPLY~Sandrah, our counsellor - your friend, she will surely know a safe place for you to wait until we can continue together.~EXTERN CVSandrJ Yaspart
END

CHAIN
IF~~THEN CVSandrJ Yaspart
~I recommend you to go to Mystra's temple at Waterdeep. When you use this item here, it will transport you there safely. My mentor Ringhontal will take care of you. You are completely safe there until we can continue our common quest.~
==YasraenP~I would not take that advice from anyone else but you, Sandrah. I know you will stand to your word and mean it well. I will do as you said.~DO~SetGlobal("YasraenaJoined","GLOBAL",3)ActionOverride("Yasraena",EscapeAreaMove("cvelm3",300,350,3)) ~EXIT

APPEND YasraenP
IF WEIGHT #-7~Global("YasraenaJoined","GLOBAL",3)~THEN BEGIN YasWD1
SAY~You have come just like Sandrah has promised. Will we travel again together?~
IF~~THEN REPLY~Yes, welcome back. ~GOTO YasWD2
IF~~THEN REPLY~Not this time but we will return for you in time.~GOTO YasWD3
END

IF~~THEN BEGIN YasWD2
SAY~Very well.~
IF~~THEN DO~SetGlobal("YasraenaJoined","GLOBAL",1)JoinParty()~EXIT
END

IF~~THEN BEGIN YasWD3
SAY~I understand. This is a good place full of friends, I will stay here and may your journeys be safe.~
IF~~THEN EXIT
END
END



