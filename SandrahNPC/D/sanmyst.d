BEGIN sanmyst

CHAIN
IF ~ Global("SanEndBG1Plot","GLOBAL",3)~ THEN sanmyst Undercity1
~ (Looks around pensively) A location chosen well for the occasion. It has seen many sacrificed in the name of the God of Murder.~
DO ~ SetGlobal("SanEndBG1Plot","GLOBAL",4)~
== CVSandrJ ~ You have been here before during the ages, Mystra? Or shall address you as Midnight?~
== sanmyst~ Sandrah, Elminster's daughter, you have done well to be here on this day. A very good sign.~
= ~ Midnight has been here, she led Cyric to this place where Murder was defeated. Mystra has the knowledge of all places and all events that those who wore her mantle throughout the ages have encountered. By this I have seen this place and the deeds done here before.~
== CVSandrJ ~ I have sensed your hand in the events that have led us here today. I have followed them but mostly I have followed what my heart told me to do.~
== sanmyst~ This is the way your grandmother Midnight would have done it herself. ~
== CVSandrJ ~ I confess that often I seek her paragon to guide me, instead of consulting my goddess.~
== sanmyst~ (Laughs gently) You do well in that, as it will lead you to the same result anyway. Finding the way through the mortal example that was before you makes you see the path of Mystra just the same, Sandrah.~
== CVSandrJ ~ Why have you come? Is it to confirm what I guess already - the story has not ended with Sarevok?~
== sanmyst~ You are right, Sarevok's defeat was the closing of one chapter and the beginning of the next. It is for you and <CHARNAME> to continue what you have begun. ~
== CVSandrJ ~ To finish what was not granted to yourself - or to Midnight - to provide the final end for the god of murder.~
== sanmyst~ I see the expectations put on you by so many are not in vain. Yes, you may phrase your mission as such, and today you have experienced what this might mean. As the love for <CHARNAME> has grown in your heart, your motivation and your chances have largely grown, a circumstance that was not foreseen but is very much for the good. Continue together. Go with my blessing.~ DO~ AddexperienceParty(27500)AddXPObject("CVSandr",20000)~
EXIT

CHAIN
IF ~ Global("SanLive","GLOBAL",2)~ THEN sanmyst Everlive
~ Greetings, Sandrah, my grandchild and my priestess.~
DO ~ SetGlobal("SanLive","GLOBAL",3)~
== BSANDR ~ Greetings, Mystra and Midnight, my goddess and my grandmother?~
== sanmyst~ (Laughs) We will not resolve this dilemma of what I am to you. But do we need to worry about it yet?~
== BSANDR ~ Not as far as I am concerned, I really do not see a need. But you have surely not materialised here for a bit of smalltalk?~
== sanmyst~ (Laughs again) Oh, how I wish the grandmother could do just that with her grandchild - but, alas, you are right. 'tis not the case. Your progress is fast, my child, and your way and decisions have been found just and promising again and again. The path becomes clearer daily.~
== BSANDR ~ I have become confident in many ways, my goddess, my healing gifts and my fighting abilities have become of great value for my companions and me...~
== sanmyst~ ...and not only for them - your work on this plane is magnificent and you are about to establish yourself as a force on Toril to be counted - just like your father.~
== BSANDR ~ You will not compare me to the great Elminster, Mystra, although I recognise your support to my abilities.~
== sanmyst~ Elminster is Elminster, and Sandrah is...well, let us see what Sandrah will be in the end. Even if your way is of utmost importance it just stays that - YOUR way. You need to follow it and you do it well.~
== BSANDR ~ Mmmh, it is not smalltalk we are having, grandmother, but still you are vague as always. Is there something specific you would demand of me or my companions today?~
== sanmyst~ As a healer you know how important recognition and admiration are to the soul, do you not? Know that your goddess is with you, my child, and gives you the strength to continue as the road now gets steeper and steeper. I will grant you some of my gifts as you deserve them and my blessing be on you. Hmm, it has been good to see you, Sandrah.~
== BSANDR ~ It has been good to see you. Mys..., grandmother.~ DO~ CreateVisualEffectObject("SPFLESHS",Myself) ~EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",33)~ THEN sanmyst doneShau
~My brave girl, I greet you - and you as well, <CHARNAME>, steadfast hero.~
DO~SetGlobal("SanHintFactory","GLOBAL",34)~
== BSANDR ~ Greetings, Mystra, goddess of all magic - even if some fools may think otherwise. I was expecting you in some way already.~
== sanmyst~Ah, you did? Oh, yes, of course, clever granddaughter. The attempted assault on the Weave of course did not remain unnoticed.~
== BSANDR ~ And you - or was it AO himself - let us deal on our own with a threat that might have affected much more than our Toril?~
== sanmyst~Your assessment is in a large way correct. The merging of the Dark Weave's matter and energy with that of the Prime results in the annhilation  of both. On a large scale such destruction will be a danger for the balance of the other planes as well.~
== BSANDR ~I understand *in principle* and *on a large scale*. Are you saying Szass Tam had not advanced far enough?~
== sanmyst~Thanks to you, fearless adventurers, he did not come far this time. But the danger will remain for all of us. He has noticed your common potential, Sandrah and <CHARNAME>, and has withdrawn in time from you.~
== BSANDR ~You know where he has gone?~
== sanmyst~Yes, he returned to Thay for the moment. He has similar installations in other Realms, always feeding on the religious beliefs on the Afterworld, so he will continue his perverted research with the aid of dark helpers not to be named here today.~
=~This is not for your care however at the present. You have done what you could within your current domain and your own tasks are now pressing on you again. You have won a mighty ally in Shauhana and her orcs as well today.~
== BSANDR ~The plan you and Arvoreen made has come to its result?~
== sanmyst~(Smiles) Like always with you, my good girl, more was achieved than was expected. And Shauhana herself - well, great things have been set in motion...Now continue, friends.~EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",16)~THEN Sanmyst Haersearch
~ Sandrah, he is beyond the reach of your healing skills.~
DO~SetGlobal("SanHaerRel1","GLOBAL",17)~
== BSANDR ~Grandmother? Yes, I know he is. But he is not beyond the reach of this group's other skills.~
== sanmyst~Will you really dare to venture where you need to go for the love of this creature, a thieving tiefling?~
== BSANDR ~I will and you know it, Mystra!!~
=~The heroine Midnight would not have hesitated one moment to dart to the Nine Hells for a drow named Drizzt or to storm Mount Celestial for a thief named Cyric.~
== sanmyst~(Sigh) I should have known your answer, grandchild. As it is inevitable, all I can do is aid you within my limits. For us celestials the Realms of Demogorgon are forbidden territory.~
== BSANDR ~I was anticipating from my lore that it is there we need to go. With Hear'Dalis' body and the demon heart of his murderer he can be restored there, right?~
== sanmyst~Provided you can get Demogorgon to cooperate, this is correct. Luckily for you those two quarreling demons got injured by your battle and to follow their trace will guide you the path that would otherwise be inpenetrable.~
== BSANDR ~What advice would my goddess and grandmother give me?~
== sanmyst~Stay away from that task - no, I know you will not listen to this.~
=~So, the demons need to return to their Realm and that will show you the entrance you need to take. One is losing occasional blood drops from your magic weapon's injury. These unique blooddrops we can locate and follow.~
=~Here, take this map, it shows you where the first blood drop has fallen on the surface of the Prime. Once you have found it, consult the map again and it will guide you to the next drop.~ DO~GiveItemCreate("CVBloMa1","CVSandr",1,0,0)~
== BSANDR ~I thank my goddess for her understanding - and I thank my grandmother for her love.~
== sanmyst~My blessing on all of you.~ DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
