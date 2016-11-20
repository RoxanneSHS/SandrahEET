APPEND BSANDR

IF ~ Global("SanCloInGr","LOCALS",1)~ THEN BEGIN SanCloInGr1
SAY~ Did the Yr'kai kensai ask you for money to join our course?~
IF~~ THEN REPLY~ No. You mean because Chloe is a sellsword? Maybe she will, let's see.~ DO~ SetGlobal("SanCloInGr","LOCALS",2)~ EXIT
IF~~ THEN REPLY~ How could she? We saved her out of a trouble and she follows me without a contract.~ DO~ SetGlobal("SanCloInGr","LOCALS",2)~ EXIT
END
END

// Chloe Healing
CHAIN
IF~~THEN BSANDR ChloHealed
~ You are a terrific fighter, if not a bit careless.~
DO~ SetGlobal("SanHealChlo","GLOBAL",4)RealSetGlobalTimer("SanCloeInterv","LOCALS",800)~
== RCHLOEJ ~ (Laughs) A healer like you persuades one to act a bit careless. (Smiles meaningful at Sandrah and kisses the fingertips from which she had just received the healing.)~
== BSANDR~ I would never hold back from a companion what he or she might urgently need (Smiles back at Chloe, willingly letting her take more possession of her hand.)~
== RCHLOEJ ~ (Kisses Sandrah's palm) Not at all the hand of the fighter wielding the most deadly hammer I have ever encountered. You are a girl of many surprises.~
== BSANDR~ Hopefully you will find them to be pleasant ones.~
EXIT

CHAIN
IF~~THEN BSANDR ChloHealed2
~ (Smiles at Chloe) Do you have a special task for them, dear?~
DO~ SetGlobal("SanHealChlo","GLOBAL",8) RealSetGlobalTimer("SanCloeInterv","LOCALS",800)~
== RCHLOEJ ~ (Chloe puts Sandrah's hands to her own chest not covered by any armour, just to where her heart is.) Their healing abilities may find further need should they explore the patient intensively.~
== BSANDR~ You have my promise that such an examination will be performed as soon as we find a quiet place and <CHARNAME> will allow us to rest.~
== RCHLOEJ ~ You understand your profession quite well. (She is so sweet, I hope she really understands where this may lead to.)~
== BSANDR~ For me it has always been more than just a profession to help the friends that are dear to me with their needs. (She removes one of her hands from Chloe's grasps and touches the other girl's cheek.) You will not have to wait too long for the cure to be applied.~
EXIT

//Chloe Romance

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",2)~ THEN BSANDR SanChloRPell
~ (Sandrah stands beside Pelligram and strokes the mighty cat's large head.)~
DO ~ SetGlobal("SanCloeRom","GLOBAL",3) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ Would your wonderful panther allow it if I would touch her, too?~
== BSANDR~ (Grins) You like her? Well, if you have the courage try it - if she likes you as well, she will admit it. Take it as a test, she has the same attitude to a person that I have.~
== RCHLOEJ ~ (Smiles back at Sandrah.) Well. (She moves up to Pelligram without hesitation and holds out her hand in front of the cat's nose to sniff on.)~
== PELLIG ~ Purr. (Pelligram looks up to Chloe for an instant, then she licks the outstretched hand.)~
== RCHLOEJ ~ (Chloe starts to fondle Pelligram's ears.)~
== PELLIG ~ Purr. (Closes her eyes luxurious.)~
== BSANDR~ There you have your answer, dear. (Her fingers meet Chloe's as they both pamper Pelligram.)~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",4)~ THEN BSANDR SanChloR1
~ (Laughs) You are looking at me as if you just discovered I had a wart on my nose, Chloe.~
DO ~ SetGlobal("SanCloeRom","GLOBAL",5) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ Oh, no, simply the opposite, it was more a look of admiration. It's nice to see your fighting style, Sandrah. Even in your armour and shield which are rejected by the Yr'kai tribe it somehow resembles the kensai technique. May I ask why you decided to pursue it? ~
== BSANDR~ Look at me and you see yourself that I cannot physically rely on strength.~
== RCHLOEJ~ A tiny beautiful girl like you looks as remote from a melee fighter as one can imagine, that is true, little snowcap.~
== BSANDR~My fighting is based on skill and speed, not hoping that I can cope with a blow if I were too slow and lazy to dodge. And of course it was detected by my teacher and refined by his lessons.~
== RCHLOEJ~ Your teacher must have been a kensai then?~
== BSANDR~ No, he was a drow - however completely different from any drow as you may know them.~
== RCHLOEJ~ Like for example Drizzt Do'Urden is.~
== BSANDR~ (Laughs loud.) A well placed kensai hit, Chloe. It was Drizzt in person who taught me my combat lessons.~
== RCHLOEJ~ Wow! You are quite a lucky girl for that...did he also teach you...oh, forget it...~
== BSANDR~ What?~
== RCHLOEJ~ (Blushes.) Drow males have a reputation for other expertise as well...but maybe not Drizzt...~
== BSANDR~ (Smiles at Chloe.) I had many teachers in that area, my friend, both male and - female.~
== RCHLOEJ~ There are many discoveries to be made on you, Sandrah of Waterdeep.~
== BSANDR~ Take your time to explore then, I may not reject your curiosity. (She gently brushes a stray lock out of Chloe's face.)~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",6)~ THEN BSANDR SanChloR2
~ (Sandrah has taken a thin old looking manuscript from her backpack.)~
DO ~ SetGlobal("SanCloeRom","GLOBAL",7) RealSetGlobalTimer("SanCloeInterv","LOCALS",500) ~
== RCHLOEJ ~ You are reading a lot, Sandrah, all of this old dusty stuff - what does it tell you?~
== BSANDR~ Actually I retrieved these pages because I thought they might interest *YOU*.~
== RCHLOEJ ~ Me? I read little except for some special type of poetry.~
== BSANDR~ Like this here? (Turns to the manuscript to quote:) *My eyes burn, my hand trembles*... ~
== RCHLOEJ ~ *My heart yearns, my lips quiver*...~
== BSANDR~ * My body still tingles where you last touched*~
== RCHLOEJ ~ What? Does it say that? Let me see...ah, whoever copied it must have made a mistake, it should read *My skin still tingles...*.~
== BSANDR~ In this case it probably was changed in a later edition.~
== RCHLOEJ ~ A later edition? Do you mean this handwriting is...by the author herself.~
== BSANDR~ I think so. On the second page it has this dedication. Look!~
== RCHLOEJ ~ (Chloe moves close to Sandrah to look over her shoulder.) *To you, Midnight, and the pleasure you alowed us to share. C.* - Oh, yes, C as Celeste. This is her own manuscript. Oh, please Sandrah, may I touch it?~
== BSANDR~ (Sandrah half turns to the girl behind her and offers the small booklet to Chloe?) It is yours, please.~
== RCHLOEJ ~ Sandrah! You can't...are you honest? You want to give me the original copy of Celeste of Waterdeep's early poems as a gift.~
== BSANDR~ I can think of no one better to receive it than you. Few people, including myself, would value it like you do.~
== RCHLOEJ ~ (Chloe instinctively embraces Sandrah and kisses her passionately.)~
== BSANDR~ (Returns Chloe's kiss.)~
== RCHLOEJ ~ I had no idea...oh... you are so...amazing.~
== BSANDR~ (Kisses Chloe again.)~
== RCHLOEJ ~ How come you possess such a treasure, my snowcap?~
== BSANDR~ You mean the booklet? It is a heritage.~
== RCHLOEJ ~ This girl, Midnight, she was from your family then?~
== BSANDR~ Yes, my grandmother.~
== RCHLOEJ ~ To be your grandmother she must have loved men as well as women after her affair with Celeste?~
== BSANDR~ Looks like that, does it not? A habit that seems to run in the family.~
== RCHLOEJ ~ There are worse heritages, my snowcap. (The girls kiss each other again.)~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",8)~ THEN BSANDR SanChloR3
~ (Chloe and Sandrah are cuddled together reading again in Celeste's manuscript.)~
DO ~ SetGlobal("SanCloeRom","GLOBAL",9) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ I had a bit of time to think about what we inherited, snowcap.~
== BSANDR~ Books from a grandmother? Or are you referring to your godly heritage?~
== RCHLOEJ ~ In fact all of that, dear. If that grandmother Midnight is the one I'm thinking of right now, than we share maybe a similar origin.~
== BSANDR~ Not really, Chloe, even if dealing with godchilds has become a regular occupation to me now, it seems, <CHARNAME>, Imoen, yourself. I do not belong to the club.~
== RCHLOEJ ~ I see, I was just thinking that Midnight and you being a priestess of Mystra...~
== BSANDR~ Oh, you were right with that, Chloe. My grandmother is in fact the woman Midnight who was raised by Ao to become Mystra after she defeated the renegade Gods in the Time of Troubles.~
== RCHLOEJ ~ But why do you exclude yourself then from *the club*?~
== BSANDR~ I am a descendent of the human woman Midnight, not of the goddess she later became. See, Midnight gave birth to my father when she was still a human, an adventurer and a priestess.~
== RCHLOEJ ~ Just like yourself...I see. So your blood is not that of the goddess but of the woman she was before. Hm. It puzzles me a bit.~
== BSANDR~ Are you disappointed?~
== RCHLOEJ~ Oh, no, my silly darling. Just puzzled. Some of the things I have sensed in you would have been explained by a godly heritage. But as you have not such, they are the more amazing.~ DO~RestParty()~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",10)~ THEN BSANDR SanChloR4
~ * My body still tingles where you last touched*~
DO ~ SetGlobal("SanCloeRom","GLOBAL",11) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ (Chloe moves to Sandrah and puts her hand gently on the other girl's upper thight just below to where her armour ends.) Was is there, my snowcap?~
== BSANDR~ (Dreamily) Oh, a bit further up, how could I forget that...~
== RCHLOEJ ~ Your armour protects you from your foe - but also from your friend and lover sometimes.~
== BSANDR~ (Smiles) It is quite practicable that the kensai do not wear such protection. You have no defense against me this way.~
== RCHLOEJ ~ Why would I want to? I can vividly remember where YOU last touched ME. Can you as well?~
== BSANDR~ Definitely! (Sandrah takes Chloe's hand and the two move quickly into the darkness and out of sight.) ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",12)~ THEN BSANDR SanChloR5
~ With your godly mother you have probably grown up more or less without much family life, Chloe?~
DO ~ SetGlobal("SanCloeRom","GLOBAL",13) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ Oh, in this I haven't missed much, as the Yr'kai children grow up together in the community. Our family is the whole tribe where all the elders teach the young and train them.~
== BSANDR~ Not bad, considering the many orphans in the realms. With your idea you would never feel like one.~
== RCHLOEJ ~ What about your mother, snowcap? Your eyes have taken such a sad look when the topic came up. Sad, but so lovely. (Chloe kisses one of Sandrah's eyelids.)~
== BSANDR~ I never knew my mother personally - I know her just through the tales of others. I was merely one year old when she died.~
== RCHLOEJ ~ (Chloe kisses Sandrah's other eyelid.) What happened?~
== BSANDR~ She died when she gave birth to <CHARNAME> or another of that tainted blood.~
== RCHLOEJ ~ (Jumps back as if bitten by a snake.) WHAT?~
= ~ ...you and <CHARNAME> are siblings??...you are a Bhaalspawn, is that the power I have sensed in you all the time ...but you are Mystra's grandchild...~
= ~ (Chloe straightens herself and returns to stand close to Sandrah. Her face is calm again and she takes the priestess' hand.) No - you would not betray me so, my snowcap, there must be something more to this story.~
== BSANDR~ Thank you for your trust, my squirrel, you are not mistaken. I am no Bhaalspawn, for you know that my father is Elminster. I am also not a sibling to <CHARNAME> as the dead god Bhaal has used my mother as a vessel to breed of his spawns but that does not make us *family*. Bhaal htried to revenge on the ones to kill him, Mystra and Cyric, my grandparents by hurting their son and his wife that way.~
== RCHLOEJ ~ But the bastard has failed. Not only has <CHARNAME> found a different use of Bhaal's heritage but also the girl the evil god made motherless is accompanying the spawn today.~
== BSANDR~ It is not the only case, Chloe, where the Gods of Faerun have underestimated the peristence and the freedom of the mortals. We are not their toys.~
== RCHLOEJ ~ A valid thought - I am Akadia's child and she is mother to me. And still it is my life I live and my fate I decide upon myself. It feels good to share that with you, snowcap. (She seals her words with kissing Sandra's eyelids again, one after the other.)~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",15)~ THEN BSANDR SanChloR6
~ It troubles you, Chloe? This one - or the thought of death in general?~
DO ~ SetGlobal("SanCloeRom","GLOBAL",16) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ (Chloe stands above the slain body of her foe in deep thought, the tip of her boot soiled by the creature's blood.)~
= ~ You are caring and wise, my sweet friend. You seem to read me like an open book.~
== BSANDR~ This page is not written in secret language. Not to one who cares about each page that is to be discovered.~
== RCHLOEJ ~ Are you afraid of death, my seemingly fearless fighter?~
== BSANDR~ Yes.~
= ~ It will be the ultimate end of this person, this soul and everything concerning Sandrah of Waterdeep. Anything not done, thought or accomplished until that final moment will be forever left undone and forgotten.~
== RCHLOEJ ~ Why would be your fate such a final one, without the hope of any afterlife for Sandrah of Waterdeep?~
== BSANDR~ I do not think that my fate in this is different from that of any other creature on this material plane.~
== RCHLOEJ ~ You do not believe in any type of existence waiting for us in a next life, once we leave this one?~
== BSANDR~ I am sorry, Chloe, daughter of Akadia...I did not want to hurt your feelings...even if you believe there will be something waiting for you beside your godly parent, I live my life and my relationship to you as intense and true as possible, thinking that we only have this single chance to do things and to do them right.~
== RCHLOEJ ~ You have not hurt me, just the opposite, you have me given some comfort, my snowcap. My existence comes from the essence of the goddess that mothered me and will one day return to that same essence - and Chloe will cease to exist. I was always thinking that this was my personal price to pay for being a godchild. You say it is the same for everybody else? Your goddess has no promise for her priestess in the next life?~
== BSANDR~ She has never promised anything to me nor have I ever expected it. This here is our reality and it is all we will ever know. If we do not like it we need to change it right here and now in order to make it what we want it to be. There will be no re-run, no second chance or no better world than the one we create ourselves.~
== RCHLOEJ ~ At first I thought your vision was utterly pessimistic - but now I see where your energy and will to change things on Toril comes from. We must fight and change what is wrong around us as no one else will do it and it would remain thus for all the time that is given to us.~
EXIT

CHAIN
IF ~ Global("SanCloeRom","GLOBAL",17)~ THEN BSANDR SanChloRMo
~ (Sandrah and Chloe lie entwined in the single bedroll they have shared for the night. They do not seem to intend to rise immediately as your other companions are still snorting around you.)~
DO ~ SetGlobal("SanCloeRom","GLOBAL",18) RealSetGlobalTimer("SanCloeInterv","LOCALS",1800) ~
== RCHLOEJ ~ You are an inspiration to me, snowcap, I think one of these days I will start to write some poems just like Celeste.~
== BSANDR~ Do not use wrinkled dusty old parchment for that, my lady poet, I offer you my own skin to write upon with lips and fingertips.~
== RCHLOEJ ~ A surface so smooth and warm will make the rhymes come almost by themselves until the poem finds its own climax...~
== BSANDR~ Must you artists always be so wordly - this willing subject yearns for the deeds...~
== RCHLOEJ ~ A parchment is not supposed to speak until the poet gives it the words to issue - like this. (Chloe's lips and tongue begin their work below Sandrah's right ear and slowly but steadily find their path downward from there...)~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~ Global("SanCloeBryn","LOCALS",1) ~ THEN BSANDR SanChloBryn1
~So Imoen's rescue and our reunion should be accomplished in not too long a time.~
DO~ SetGlobal("SanCloeBryn","LOCALS",2) ~
== RCHLOEJ ~ Tell me, my snowcap, as you have known Imoen for so long, what is she to you?~
== BSANDR~ In her own words she calls me her *besta friend* and I have no reason to object to that description.~
== RCHLOEJ ~ That means...eh..you are very close to each other...~
== BSANDR~ Yes, we are - but hold on, Chloe, before you get things wrong - I do not fall in love with girls routinely. Imoen is my besta friend and just that.~
== RCHLOEJ ~ Sorry, Sandrah, was my jealousy really so obvious?~
== BSANDR~ Yes, it was, but nevermind, I take it as a good sign that you really care for me.~
== RCHLOEJ ~ (Smiles) I do. (She kisses Sandrah's nose.) Yes, I do. (She kisses Sandrah's mouth.)~
EXIT

CHAIN
IF~ Global("SanChlEd","LOCALS",1) ~ THEN BSANDR SanChloEddi1
~Say, squirrel, is Edwin advancing you in some bold way?~
DO~ SetGlobal("SanChlEd","LOCALS",2) ~
== RCHLOEJ ~ How do you know...ah, you are not spared by him as well?~
== BSANDR~ (Laughs) When it comes to females, his self-attested intellect seems to be completely eroded.~
== RCHLOEJ ~ He is a man under a bad spell, my friend, and the spellcaster sits in his own loins, hehehe.~
== BSANDR~ It would be laughable or useable whatever you prefer if it were not for the lowly Thayvan ways with women.~
== RCHLOEJ ~ There is no peril for any of us to end up as his toy or slave, Sandrah. He can call himself lucky for any day he stays alive himself in our company - that red scum.~
== BSANDR~ You say it. (The girls kiss each other, making sure that Edwin can observe them well.)~
== BEDWIN ~ (Edwin's face is as red as his robe. Mumbles) The two of you in couple on my leash - that is my vision of paradise. Just a tug left or right and the one there will crawl up to me to pleasure my flesh, aaah...~EXIT

CHAIN
IF~Global("SanCloeBryn","LOCALS",3)~ THEN BSANDR SanChloBryn2
~ Are you convinced now, Chloe, that your jealousy concerning Imoen was not justified?~
DO~SetGlobal("SanCloeBryn","LOCALS",4)~ 
== RCHLOEJ ~ I was sure of that before, snowcap, you are one to be above suspicion...you are, but not someone else.~
== BSANDR~ Is there something you think you want to tell me? If you care for me like we thought you do then maybe I would deserve to know.~
== RCHLOEJ ~(Sigh) Like always, Sandrah, you are right. You deserve it to hear it from me although I am sure you know it already...Imoen...how can I say it...~
== BSANDR~ (Steps up to Chloe and embraces her.) There is nothing to worry about, Chloe. She has won your heart, maybe even before I did.~
== RCHLOEJ ~You...you understand that, really?~
== BSANDR~ You two match really nice together, by your ways and characters - only I cannot promise you that Imoen will feel the same for you.~
== RCHLOEJ ~We two also matched quite well, my agile little snowcap. I do not regret any moment we have shared and I will never forget a single detail.~
== BSANDR~ Nor will I, my bushy squirrel. It was a wonderul experience.~
== RCHLOEJ ~(The girls kiss each other with a passion you have never observed before - which means quite something for them.)~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~Global("SanHealChlo","GLOBAL",10)~THEN SanSuWL CelBook
~Wanderers, I greet you!~
=~Book lovers with an exquisit taste are a rare find in these times and these areas.~
DO~SetGlobal("SanHealChlo","GLOBAL",11)~
== RCHLOEJ ~And why would someone come to look for them in such a place then?~
==CVSandrJ~I can recall having met such strange figures like you once on the Sword Coast. They were asking for a rare toom in quite a notorious manner.~
==SanSuWL~And did they succeed in their quest?~
==CVSandrJ~Would I not know that their leader died in the attempt to steal the book from us I would swear he stands before me now.~
==SanSuWL~I hope we can avoid any hostility this time, my friends. Just some poems to delight the heart... ~
== RCHLOEJ ~He is not asking for Celeste's manuscript, Sandrah? I knew it is precious, but this here starts to get weird.~
==CVSandrJ~Someone must have an exaggerated interest in it, Chloe. These people seem to specialize in the hunting for books that contain more than meets the eye.~
==SanSuWL~Enough silly girlish babbling. Which one of you has the book now? Hand it over quickly!~
==CVSandrJ~It is an inherited item given further on as a gift of love.~
== RCHLOEJ ~Quite right, it is neither for sale nor otherwise disposable.~
==SanSuWL~It will soon be available from your dead corpses, my beauties...~EXIT

CHAIN
IF WEIGHT #-9 ~Global("SanHealChlo","GLOBAL",13) ~THEN RCHLOEJ BHAssault
~ Uuh...What the hell was that?? Your gifts are truely dangerous, my snowcap.~
DO~SetGlobal("SanHealChlo","GLOBAL",14) ~
== BSANDR~I declare myself innocent, my squirrel. There was nothing in that booklet to hint at any secret that would endanger you, I swear it.~
== RCHLOEJ ~Oh, don't get worried, I was not blaming you. Even if you had known I would appreciate that you trusted such a treasure to me.~
== BSANDR~The last book these men were hunting was in the end the key to a large treasure, or so they thought. This time it may just be some wealthy collector who wants the booklet for its rarity.~
== RCHLOEJ ~Bad luck for the guy. It's also rare to me and furthermore it's a gift I dearly appreciated. I will not part with it for a mountain of gold or an army of golems threatening me.~
== BSANDR~I knew it was the right thing to give it to you. You are the one to value its true meaning.~
== RCHLOEJ ~Its contents is love, my snowcap, and how it can be expressed to another girl...so don't just stand there idle, you read it yourself...~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

// Chloe
INTERJECT_COPY_TRANS RCHLOE 4 ChloDun
== RCHLOE IF ~ InParty("CVSandr") ~ THEN ~ Beautiful cleric girl, I think I saw you around the Seven Dens the other day. If I knew you planned to get into here as well, we could have been a good team together. (My, is she lovely!)~
== CVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ You have an interesting heritage, Chloe. I can sense something very special about you. I hope we get a chance to get to know each other better. But first let us make it out of this dungeon together.~
== RCHLOE IF ~ InParty("CVSandr") ~ THEN ~I hope your party leader is of the same opinion.~
END

//=====================APPENDS
APPEND RCHLOEJ
IF WEIGHT #-9 ~ Global("SanHealChlo","GLOBAL",3)~ THEN BEGIN SanHealChloe
SAY ~ Aah, good. (Chloe takes Sandrah's hand which just has cast the healing spell upon her.)~
IF~~ THEN EXTERN BSANDR ChloHealed
END

IF WEIGHT #-8 ~ Global("SanHealChlo","GLOBAL",7)~ THEN BEGIN SanHealChloe2
SAY ~ Sandrah, mmh. These hands are so delicate and still so powerful in what they can provide.~
IF~~ THEN EXTERN BSANDR ChloHealed2
END
END

