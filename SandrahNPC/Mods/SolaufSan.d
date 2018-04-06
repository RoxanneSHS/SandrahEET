CHAIN
IF~Global("SanSola","GLOBAL",9)~THEN BSANDR SanSvSol
~Are you aware of the fact that you are staring at me for quite a while now, Solaufein.~
DO~ SetGlobal("SanSola","GLOBAL",10) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA~Ehem...Be not offended, please. Know that I was fascinated by you when we met in the Underdark and you were in your drow disguise. Your beauty and your aura caught me at once.~
==BSANDR~ And now that illusion has gone. Are you disappointed?~
==BSOLA~ The illusion has gone but the fascination has remained. Now I see that even your drow avatar could not conceal your true nature.~
==BSANDR~ (Smiles) Drow males are not known for their exquisite compliments to a lady. You are different in that respect.~
==BSOLA~Maybe not - it was not a compliment but the simple truth.~
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",11)~THEN BSANDR SanSvSol2
~You are staring at me again, Solaufein. On the surface this is not considered to be polite - by a lady.~
DO~ SetGlobal("SanSola","GLOBAL",12) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA~ Your words imply that you are ready to forgive me and maybe teach me better?~
==BSANDR~ Sure.~
==BSOLA~ I am aware up here relationship between male and female are different, alas I do not know how they are - especially not relating to one like you.~
==BSANDR~ One like me? I am your companion in this party, I am this party's healer and counsellor, mh, that about describes it.~
==BSOLA~In your disguise in Ust Natha you were considered to be a handmaiden of Lolth at least - if not even a matron's daughter. What would that relate to up here.~
==BSANDR~ Nothing that could be applied to me, Solaufein. I am a priestess of Mystra and the companion of <CHARNAME>, nothing else.~
==BSOLA~I have no reason to disbelieve you, even if it is hard to imagine you are not more than that. But as I take your words for what they are I will deal with you as my equal.~
==BSANDR~ I hope you will. You are always welcome if you like to talk with me. (She smiles reassuringly.)~
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",13)~THEN BSANDR SanSvSol2
~We are progressing, my friend.~
DO~ SetGlobal("SanSola","GLOBAL",14) RealSetGlobalTimer("SanSolaT","LOCALS",800)~
==BSOLA~ (Laughs) Drow male are able to learn without the whip, even if our females would never admit that.~
==BSANDR~ What was your question, Solaufein?~
==BSOLA~ I was contemplating our initial meetings in the dark times. You not only identified me as a follower of Eilistraee but also mentioned you had friends among the drow before.~
==BSANDR~ When I was at the point to leave my childhood behind and began to notice what it means to be a woman, the very first man to whom I lost my heart was a drow.~
==BSOLA~ Do you mind telling me?~
==BSANDR~ Well, he was much older than me and he was my combat teacher...(Your two companions fall a bit behind the group as Sandrah tells Solaufein about her past and Drizzt Do'Urden.)~
EXIT

CHAIN
IF~Global("SanSola","GLOBAL",15)~THEN BSandr SanSolSing
~I observed that you carry that book of poems along with you and study it often, Solaufein.~
DO~SetGlobal("SanSola","GLOBAL",16)RealSetGlobalTimer("SanSolaT","LOCALS",1000)~
==BSandr IF~ Global("SolaDiscussWoods","GLOBAL",2)~THEN~You were even reciting some lines in that forest recently.~
==BSOLA~ The possession of it would be considered a fatal crime in Ust Natha but it's a passion dear to my heart.~
==BSANDR~ You risked a lot for a bit of beauty in the dark realms. Even if many of its words may only reveal their true meaning now that you are on the surface...moonlight, clouds, birds...~
==BSOLA~ Baah, it was a calculated risk to have such a book - after all, who would search the belongings of the mighty Solaufein except for Phaere and she knew about it.~
==BSANDR~ She never made use of that knowledge, I wonder if she shared it with you once.~
==BSOLA~ She was a different woman long time ago. (Sighs) She is dead and I am on the surface. Things get new meanings with change.~
= ~ Let us put the past aside, Sandrah. Is poetry among the arts you enjoy?~
==BSANDR~ I am more into music and playing instruments.~
==BSOLA~ I heard that surfacers sing poetic words to matching tunes.~
==BSANDR~ True, only my own voice is not made for that. Ah, but your soft pronunciation I heard on those poems may make a nice voice for singing.~
==BSOLA~ Maybe we should try at a quiet moment, my dear, you play and I try singing.~
==BSANDR~ A new experience for all of us, a singing drow.~EXIT

CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr SanSolGods
~Your goddess and mine have much in common, Solaufein.~
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==BSOLA~ Both are not easily understood by the broad masses as their portfolio and heritage is tainted for many.~
==BSANDR~ Yes, I have often found the mistrust to Mystra because also evil characters use her magic. Especially from those surfacers who claim to know all about good and evil.~
==BSOLA~ Those self-righteous paladins who claim that only a dead drow is a good drow?~
==BSANDR~ Yes, those and other like minded people. This is definitely not true for the disciples of Mystra.~
==BSOLA~ I have heard that often she and Eilistraee are worshipped in the same places.~
==BSANDR~ Waterdeep, my home town, is one of them. Even if I cannot say that I actually *worship* my goddess - I would rather claim I work for her goals and follow her example.~
==BSOLA~ You do not pray to her or expect her rewards for your service?~
==BSANDR~ Solaufein, I believe that the reward is in the Faerun we create through our deeds. Our life is here and now on this material plane. It is our responsibility - not the playground of the gods. Mystra's gifts aid me in my struggle to improve things and her example, that of my grandmother Midnight, shows me the way.~
==BSOLA~ If it's a better Faerun we would achieve it may be one for us, for elves and for drow.~
==BSANDR~ The way our goddesses co-operate may set the example for us, my friend.~EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr SanSolResp
~Solaufein, what is more important to you, your own initiative and relying on your goddess?~
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==BSOLA~I would think one is the source of power for the other. Eilistraee gives me the confidence and guides my way but it is me who takes the steps on that road.~
==BSANDR~ And that road, do you think it is defined already by your destiny?~
==BSOLA~ A question I often ponder myself - is it all pre-set like some prophesies let us think or do we have the freedom of our own decisions? With your background, Sandrah, you must have given this question quite some thought, haven't you?~
==BSANDR~My grandmother has been my inspiration and guidance in many situations, just like Eilistraee is for you. My heritage defines me - and where I come from is partly responsible for where I will go...still...~
==BSOLA~...partly, you said?~
==BSANDR~Yes, only partly. Take <CHARNAME>'s example, the Bhaal heritage and the prophesies of Alaundo. I do not believe in prohesies to tell us everything, they are just some vague hint of possibilities. Still there is no denying that <CHARNAME> - and we as well - will play an important role in the coming events. This is the *where we come from* part, Solaufein.~
==BSOLA~And the *where-we-go-to* part?~
==BSANDR~ We have our free will and the right to decide. We cannot influence all of the parameters and events around us but we can make our own decisions. We are nobody's toys or slaves.~
==BSOLA~This gives us much responsibility...~
==BSANDR~...and much hope. Nothing is done unless we decide to do it.~ EXIT

INTERJECT_COPY_TRANS SOLA 4  SanSolCoat
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN~ Solaufein, here is an item we have retrieved for you from the city that is no longer yours.~
==SOLA IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN~ And from a lover that no longer was mine and now no longer is at all. (Sigh) Thank you, Sandrah, I will keep it to remind me of the ones who have saved my life.~
== CVSANDRJ IF~InParty("CVSandr") PartyHasItem("Misc9W")~THEN~See it also as a symbol that the life saved will become a new life for you.~ DO~ GiveItem("Misc9W","Sola") ~
END