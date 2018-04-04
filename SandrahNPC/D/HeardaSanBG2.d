BEGIN Alzalih

APPEND BSANDR
IF ~ Global("SanHaerRel2","GLOBAL",3) ~ THEN BEGIN SanHaerRelSlv
SAY ~ It feels good to have this poor man released from such senseless slavery. Thank you, <CHARNAME>.~
IF~~THEN REPLY ~ (The smile in her eyes and the kiss she gives you are a greater reward than most you received for your quests.)~ DO~ SetGlobal("SanHaerRel2","GLOBAL",4)~EXIT
END
END

APPEND CVSandrJ
IF~ Global("SanHaerRel1","GLOBAL",19)~THEN BEGIN SanHaerHunt1
SAY~So our first target is the area of the forgotten temple near Umar. Our two demons may try to find a way to the abyss through the old ruins.~
=~(She stops for a moment as a certain thought crosses her mind.) We will of course follow them to restore Haer'Dalis, right, <CHARNAME>?~
IF~~THEN REPLY~I forgive you this question, my love, and the doubt it expresses. You are a bit upset by the events as I see. Let's go to Umar.~DO~SetGlobal("SanHaerRel1","GLOBAL",20)AddJournalEntry(@739,QUEST)~EXIT
IF~~THEN REPLY~You know that this is not possible at the moment and it means sheer death for all of us to venture against the Nine Hells...~GOTO SanHaerHuntOver
END

IF~~THEN BEGIN SanHaerHuntOver
SAY~I give everything for the tiefling...I would have done the same for a Bhaalspawn but now I see that such loyalty is not applicable to your kind.~
IF~~THEN DO~ ReputationSet(9) SetGlobal("Sandrahjoined","GLOBAL",0) LeaveParty() EscapeArea()~EXIT
END

IF~Global("SanHaerRel1","GLOBAL",27)~ THEN BEGIN SanHaerHunt2
SAY~See the new indication on the map, <CHARNAME>. It seems we are nearing the gate we are so desperately searching for.~
IF~~THEN REPLY~ The Shadow Thieves' guild in Baldur's Gate. Why do you think the gate to the abyss will be there?~DO~SetGlobal("SanHaerRel1","GLOBAL",28)~GOTO SanHaerHunt3
END

IF~~ THEN BEGIN SanHaerHunt3
SAY~Oh, not the guild itself, but what is beneath that location.~
IF~~THEN REPLY~ I am lost, Sandrah, what do you mean?~ GOTO SanHaerHunt4
IF~~THEN REPLY~ Do you refer to the old ruins, the place where we defeated Sarevok?~GOTO SanHaerHunt4
END

IF~~ THEN BEGIN SanHaerHunt4
SAY~ Remember Bhaal's old temple below the guild building. Remember the scene of Sarevok's defeat, <CHARNAME>. Remember those images when the Bhaalspawn's essence left the body we had struck down.~
IF~~THEN REPLY~ I am still unsure if I follow your reasoning...~GOTO SanHaerHunt5
IF~~THEN REPLY~ His essence left his body and went to where?~ GOTO SanHaerHunt5
END

IF~~ THEN BEGIN SanHaerHunt5
SAY~ When we struck down Sarevok's mortal body, the Bhaal essence within left before our eyes and returned to its source in a way, to the residence of his father - your father - Bhaal.~
=~The path the essence took from this plane to the abyss must be the one our two friends are now trying to use to return there themselves.~
IF~~THEN REPLY~But we have no way to return to Baldur's Gate, my love.~GOTO SanHaerHunt6
END

IF~~ THEN BEGIN SanHaerHunt6
SAY~Like it or not, <CHARNAME>, the Shadow Thieves are an organisation that has a network all through the realms. They have ways to operate between the branches of their guilds and their loot goes this way and that to conceal their traces. I am definitely sure they will have a way to get us to their quarter at Baldur's Gate, provided the price is right.~
IF~~THEN REPLY~I see, let us return to Athkatla and try our connections there.~EXIT
END
END

APPEND Voleta
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",32)~THEN BEGIN HaerH1
SAY~Ah, the infallible hero appears again to destroy evil and rescue Faerun!~
IF~~THEN REPLY~ You sound quite sarcastic for one whom we helped last time.~ GOTO HaerH2
IF~~THEN REPLY~ What do you mean by that?~ GOTO HaerH2
END

IF~~THEN BEGIN HaerH2
SAY~It is apparent that this time you bit off more than you can chew.~
IF~~THEN DO~ DestroySelf()
CreateCreature("Caddem2",[488.2662],14)~EXIT
END
END


CHAIN
IF ~Global("SanHaerRel3","LOCALS",2) ~ THEN BSANDR SanHaerMissedInt
~ A bird shall be free to sing and never be anyone's slave. You will not be kept by bounds to us that you do not accept yourself.~
DO~ SetGlobal("SanHaerRel3","LOCALS",3) SetGlobal("SanHaerRel1","GLOBAL",2) RealSetGlobalTimer("SanHaerRelT","LOCALS",2000) ~
==BHAERDA ~ Words of utmost delight from the lips of a girl who can only be a dream, too wonderful to be real - both the words and the girl.~
== BSANDR~ Come back to reality, wordy poet. Yes you must be a poet of sorts, a bard maybe?~
==BHAERDA~ Your bard from now on, my lady, bound by voluntary slavery to a mistress so kind and ...wait, what is that?~
= ~ You are one not bound by the chains of this plane yourself! How come we have never met before?~
== BSANDR~ What are you talking about, my confused bard? I am of this plane, a human who has never left Toril except in her dreams.~
==BHAERDA~ Can it be? You are and you are not. Or maybe not yet. Your bird must nest close to your heart to find that out...~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",3)~ THEN BSANDR SanHaerMist1
~ Give me a minute of your precious time please, my bard.~
DO~ SetGlobal("SanHaerRel1","GLOBAL",4)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA~ A minute or a lifetime, whatever you desire. For us time has no meaning nor has space.~
== BSANDR~ You are already at the topic I wanted to address myself, Haer'Dalis. I had the impression at our first meeting and now I have it again that you mistook me for a being similar to yourself. How is that?~
==BHAERDA~ Oh, Goddess, not like myself of course, not from the chaotic existence that has spawned me. What I meant was that you are a bird as free as me, not bound to the clumsy material world of the humans, but travelling the spheres and planes at will - or at least most of the time unless your will itself is bound.~
== BSANDR~ (Laughs) My will may be as free as to do the travelling you refer to - still, my material self is human, my friend, and as such my existence is bound to the primary plane. It always was.~
==BHAERDA~You are not one to lie, morning dove. Then how can my senses betray me so. I have felt it in you so very strongly when my eyes regained their sight freed from that wizard's spell whom you sent to the Nine Hells yourself...Only a powerful being can do such things, not a poor clay born creature.~
== BSANDR~ I am a priestess of Mystra, my goddess grants me some access to the Weave in her service. It is probably that connection that you have sensed.~
==BHAERDA~Maybe or maybe not. Are you under a spell not knowing who you are? But there is no spell that I can sense. Is it your goddess? If so, you are closer to her than any priest I have ever known is to his god.~
== BSANDR~ I am Midnight's granddaughter, my friend.~
==BHAERDA~ Is it that or is it more? I must flutter now from your side to find it out.~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",5)~ THEN BSANDR SanHaerMist2
~ Do my feet fascinate you so, poet?.~
DO~ SetGlobal("SanHaerRel1","GLOBAL",6)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA~ I just dreamt of kneeling down and kissing them, goddess. Toe for toe.~
== BSANDR~ And then my ankles, I assume.~
==BHAERDA~ If you grant me such, my morning dove, my lips will continue their venture upwards.~
== BSANDR~ (She has closed her eyes.) My thighs await the fearless wanderers.~
==BHAERDA~ My lips and tongue know the way to follow to the temple of the goddess...~
== BSANDR~ (She opens her eyes and smiles at Haer'Dalis.) Poetry can be nice if it were not only fiction. I love those lines that resemble reality.~
==BHAERDA~ Nightfall will reveal the true nature of my words, do not flutter away till then, my dove. (He blows a kiss in the direction of Sandrah's feet.)~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",7)~ THEN BSANDR SanHaerMist3
~ (Hihi) It tickles just like your quill would tickle your parchment.~
DO~ SetGlobal("SanHaerRel1","GLOBAL",8)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA~ If your smooth skin is my parchment I will write an epos about endless love upon it, my dove. The story of the goddess that raised the poor descendent of the deep to the light which she shines over Faerun.~
==BHAERDA~ (Haer'Dalis has made himself comfortable at Sandrah's feet and has removed one of her silver sandals to caress her toes and ankle.)~
== BSANDR~ Is there no way to stop the endless flood of wonderful words, my poet? Oh...maybe this will work. (She bends forward and lifts his chin before placing a kiss on his mouth.)~
==BHAERDA~ Your poor bard will starve now, my morning dove. How can these lips touch any food now that removes the sweet taste you gave to them.~
== BSANDR~ Do not fear, it can easily be renewed whenever necessary. (She gives him another kiss.)~
==BHAERDA~ Can this moment not last in its sweetness, my goddess?~
== BSANDR IF~!InParty("Aerie") ~ THEN~You sweet liar...nevertheless, I am happy to be your training ground so you and I can reach some further mastery in the art that pleases us so.~
== BSANDR IF~InParty("Aerie") ~ THEN~You sweet liar...I am happy to be your training ground so you can present your true mastery to the wingless angel who deserves it. (Haer'Dalis follows her gaze to where Aerie is sitting in her deep thoughts.)~
==BHAERDA~ There is not much that you do not see and do not understand. But this night is ours and the morning is a long time away.~ DO ~  RestParty() ~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",9)~ THEN BSANDR SanHaerMist4
~ (Sandrah appears to be still slumbering in Haer'Dalis' naked arms resting her head on his bare chest.)~
DO~ SetGlobal("SanHaerRel1","GLOBAL",10)RealSetGlobalTimer("SanHaerRelT","LOCALS",2000)~
==BHAERDA~ (He kisses her forehead lightly.) Sleep and dream, my slumbering goddess, unaware of the power that is growing in you...First I thought you were concealing your true identity, my morning dove, but now I know what I have seen in you is still to come.~
== BSANDR~ (Yawns) What are you mumbling, my raven? A new poem or is it more?~
==BHAERDA~ (He smiles and brushes a stray lock from her forehead.) Probably an epic rather than a poem but one that the history of Toril is writing, not your poor little bard here.~
== BSANDR~ I sense it that your wandering between the planes has revealed more to you than we *clay born* creatures are supposed to know. Maybe it is better to be unaware of details in our fate that lie still in the future.~
==BHAERDA~ As always you are right in your wise perception. What if you knew one thing or other and decide to change something that has to be?~
== BSANDR~ To know about future events and to change them in the now thus disturbing the continuum of time - it might be desastereous.~
==BHAERDA~ For those for whom time is a river that takes them with it in the one direction such is true. There are creatures however that jump through those currents like a salmon.~
== BSANDR~ Beware! The salmon return to the well where it was born - and it dies there having left its seed for the next generation.~
==BHAERDA~ Do not brood over it, my dove. You are no salmon.~
EXIT

CHAIN
IF ~Global("SanHaerRel1","GLOBAL",11)~ THEN BSANDR SanHaerMist5
~*Sandrah once more has made herself comfortable with her tiny feet resting in Haer'Dalis' lap.*~
DO~SetGlobal("SanHaerRel1","GLOBAL",12)~
==BHAERDA~*The tiefling never seems to get tired of caressing Sandrah carefully toe for toe.*~
== BSANDR ~ Say, my hellish lover, you seem to share a certain penchant with a footwear fetishist from the Abyss I once met.~
==BHAERDA~You, my dove, seem to have a fondness with our kin, is that possible?~
== BSANDR ~ I cannot really say that Naronguth and me are actually very fond of each other...~
==BHAERDA~...NARONGUTH!! You are acquainted with that mad descendant of the Nine Hell's? Quickly, my morning dove, tell me more.~
== BSANDR ~Well, we encountered him and Alzaligrundel while we were still on the Sword Coast...~
==BHAERDA~Beware!! That other mad devil as well? And you survived that encounter - ah, sure you did, my dove, they are no match for you.~
== BSANDR ~So you know both of them as well, I see. I cannot believe they are friends of yours. (Giggles) What did you steal from them?~
==BHAERDA~How can you know...Ah, my dove reads me like an open book of lore. Yes, I took something from them that they were fighting about all the time.~
== BSANDR ~You were not successful to stop their endless fight by that.~
==BHAERDA~No, that was not to be expected. I just made myself another nice pair of enemies that way.~
== BSANDR ~Another thing we have in common, my raven. (She gets solemn for a moment.) Imagine they find out where they could find us both together entwined just like we are now...~
==BHAERDA~Speak of the devil...!!~ DO~StartCutSceneMode()  SmallWait(4) CreateCreature("narong2",[823.808],8) Wait(4) CreateCreature("alzalig",[933.912],8)  EndCutSceneMode()~ EXIT

CHAIN
IF WEIGHT #-1~AreaCheck("CVDre3") Global("SanHaerRel1","GLOBAL",12)~THEN Alzalig CatchHaer1
~ And here they are, old friend, nesting together like dove and raven like I promised.~
DO~SetGlobal("SanHaerRel1","GLOBAL",13)~
==Narongu~Who would have guessed such a combination possible...~
==BHAERDA~Who would have guessed such a coalition possible, my dove...old friends of yours?~
== BSANDR ~I thought you invited them.~
==Narongu~WE INVITE YOU, DOUBLE FOOL PACK!!! WE INVITE YOU TO A FUNERAL PARTY, HAHAHA. YOUR OWN FUNERAL.~
== Alzalig~What a catch...the mage's own daughter and our filthy little thief.~ DO~Enemy()~
==Narongu~What a feast in all the Nine Hells.~DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-2~OR(2) AreaCheck("ar1400") AreaCheck("ar1404") Global("SanHaerRel1","GLOBAL",21)~THEN Alzalig CatchHaer2
~ Ha, bloody idiotic demon!! The passage is blocked. Can you feel that power that denies us access to the path below?~
DO~SetGlobal("SanHaerRel1","GLOBAL",22)~
==Narongu~WHO ARE YOU TO CALL ME AN IDIOT - YOUR FOOLISH DISGUISE MAKES YOU TOO BIG FOR THE NARROW WAY!!~ DO~ReallyForceSpell("Alzalig",WIZARD_FIREBALL)~
== Alzalig~We have no time to change that now. So switch to plan B.~ DO~ReallyForceSpell("Narongu",WIZARD_FIREBALL)~
==Narongu~AARGH!!~
DO~ActionOverride("Narongu",ReallyForceSpell(Myself,DRYAD_TELEPORT))
ActionOverride("Alzalig",ReallyForceSpell(Myself,DRYAD_TELEPORT))~EXIT

CHAIN
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",29)~THEN Brus2 GetToBG
~I's heard 'bout a cleric lady seekin' ta sell some stuff o' sorts.~
DO~SetGlobal("SanHaerRel1","GLOBAL",30)~
==CVSandrJ~I need to make sure that my blue Waterdeep pearls will not show up here in Amn or some other places I do not want them to be seen on any girl's fat earlobes.~
== Brus2~ Only place I coulda think of those gems would be placed right were your own ears, my beauty, but kinda get the drift that ain't the advice ya seekin', he.~
==CVSandrJ~Let it be known that I intend to sell them to Baldur's Gate. There are three of the pearls and one will end in the pocket of the one who arranges the deal.~
== Brus2~ Balda's Gate, well, well...Tell ya what, lady, in all frien'shp, why not seek out Black Lily stayin' at da docks these days, she dwells up there at our branch. Now gotta get goin'.~ DO~EscapeArea()~EXIT

CHAIN
IF WEIGHT #-4~Global("SanHaerRel1","GLOBAL",31)~ THEN BlackL GetToBGL
~What will ye need today? ~
DO~ SetGlobal("SanHaerRel1","GLOBAL",32)SetGlobal("SanToBGTH","AR0300",1)~
==CVSandrJ~ Take a look here on the side at these three earring pearls.~
== BlackL~Nine Hells and number ten on top!! They'll hang ye from gallows as high as Ramazith's tower if they'd catch you with those!! That's way too hot for me.~
==CVSandrJ~ No need to worry, Lily, they are rightfully mine. But you will understand that I will not travel the open road in times like these having to deliver them to Baldur's gate urgently.~
== BlackL~Ay, guess I sense what this is up to. Little transportat'n probl'm, he?~
==CVSandrJ~ Exactly. You surely have a secret way to get us to your guild up north. One of those may rightfully grace your own ear in a couple of days.~
== BlackL~Whatcha waitin' for, lady, sure 'nuff you have a deal. My honest vow as Shadow Thief, you'll stand ya feet on the Gate's soil on the morrow.~
DO~ EscapeArea()~EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",32)~THEN Alzalih Final
~Whoever would have thought - you are really a pain in the neck, young priestess.~
DO~SetGlobal("SanHaerRel1","GLOBAL",33)~
==CVSandrJ~You should never have taken what is dear to my heart, demon. There is a power in the Realms that is much stronger than you and your Nine Hells.~
==Alzalih~ You err and you die for it. Your goddess is not strong enough for your ambitions.~
==CVSandrJ~You err and you die for it. I was not talking of the power of Mystra - I was referring to the Power of Love.~
==Alzalih~Uuuh??~DO~Enemy()~EXIT

CHAIN
IF WEIGHT #-5~Global("SanHaerRel1","GLOBAL",34)~THEN Haerdap SanRescue
~My morning dove!! How could I ever have doubted that my goddess would be able to overcome even the barriers of the Nine Hells to rescue me.~
==CVSandrJ~My raven!! (She darts to the tiefling and embraces him. A long series of kisses follows.)~
==Haerdap ~We will soon sing our love song again together, my young goddess. But now let us make haste to get out of here. The master of this place is known for his shifting tempers and may change his generous behaviour soon.~
=~There is a temporary exit right here behind me.~DO~AddXPObject("CVSandr",55000) AddXPObject("Haerdalis",55000) SetGlobal("KickedOut","LOCALS",0) JoinParty() ~EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",35) ~THEN BSandr SanHaeReunite
~ I should really put my sweet raven in a golden cage to protect him.~
DO~SetGlobal("SanHaerRel1","GLOBAL",36)~
==BHAERDA~You would do such a thing, you who so much love all creatures to be free, my dove?~
==BSandr~This fact saves you from such a measure, my tiefling bard, but not from my protection.~
==BHAERDA~How could I resist the sweetest of the Prime's guardians watching over me...~DO~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~
EXIT

EXTEND_BOTTOM TSBlackL 20
IF~ OR(2) Global("SanHaerRel1","GLOBAL",30)Global("SanHaerRel1","GLOBAL",31)InParty("CVSandr")~ THEN REPLY ~ My companion Sandrah requires your assistance today.~ EXTERN TSBlackL LilGetToBGL
END

CHAIN
IF ~~ THEN TSBlackL LilGetToBGL
~What will ye need today, sweetheart? ~
DO~ SetGlobal("SanHaerRel1","GLOBAL",32)ActionOverride("CVSandr",SetGlobal("SanToBGTH","LOCALS",1))~
==CVSandrJ~ Take a look here on the side at these three earring pearls.~
== TSBlackL~Nine Hells and number ten on top!! They'll hang ye from gallows as high as Ramazith's tower if they'd catch you with those!! That's way too hot for me.~
==CVSandrJ~ No need to worry, Lily, they are rightfully mine. But you will understand that I will not travel the open road in times like these having to deliver them to Baldur's gate urgently.~
== TSBlackL~Ay, guess I sense what this is up to. Little transportat'n probl'm, he?~
==CVSandrJ~ Exactly. You surely have a secret way to get us to your guild up north. One of those may rightfully grace your own ear in a couple of days.~
== TSBlackL~Whatcha waitin' for, lady, sure 'nuff you have a deal. My honest vow as Shadow Thief, you'll stand ya feet on the Gate's soil on the morrow.~EXIT