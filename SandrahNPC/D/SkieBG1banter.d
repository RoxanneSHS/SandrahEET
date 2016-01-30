CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",1) ~THEN Bskie CVJenSki1
~I wonder how you do it that your nails never break when you open a lock - *I* have to be OOH so careful not to ruin mine.~
DO~SetGlobal("CVJenSkiB","LOCALS",2)RealSetGlobalTimer("CVSanBantTi","LOCALS",1200) ~
==BJenli~(Hiss) Talons useful heritage from old slave days. Can use for open lock, can use for weapon - can use to make mate feel pleasure.~
==Bskie IF~InParty("Eldoth")~THEN~ Hm, I'm not sure Eldoth would enjoy my showing him affection in this way...~
==BJenli IF~InParty("Eldoth")~THEN~Eldoth not male worth of any female, even Skie should know better than lower herself so much.~
==Bskie IF~InParty("Eldoth")~THEN~Baah, what does a reptile know about TRUE LOVE.~
==Bskie IF~!InParty("Eldoth")~THEN~ (Giggles) If only this adventuring life would allow me to grow them like yours. And if only this adventuring life would allow me to find a suitable candidate to try your advice...~
==BJenli IF~!InParty("Eldoth")~THEN~Good male for breeding never easy to find, not on Prime, not on Astral plane. Easy to loose even when have.~EXIT

CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",3) ~THEN Bskie CVJenSki2
~I learned from our companions that for your people, the githyanki, it is exceptional to become a thief.~
DO~SetGlobal("CVJenSkiB","LOCALS",4) RealSetGlobalTimer("CVSanBantTi","LOCALS",900)~
==BJenli~(Hiss) Jen'lig learn that rich people on Prime steal more from other manlings than any other but are not condemned as criminals for that.~
==Bskie~That is not true for me...or my family...we are...were...responsible people. I simply became a thief because I needed the skills to leave the estate and gain some freedom. How about you?~
==BJenli~Good that Skie not thief to become rich by it. Same true for Jen'lig, became thief to protect githyanki. Thieves steal from githyanki while own race not know concept of stealing. Must know how thieves think and operate to persue them and defend against them.~
==Bskie~I have read that some of our *manling* sorcerers seek for your silver weapons because of their magical abilities.~
==BJenli~They not only steal, they murder to get what they desire.~
==Bskie~Oh, my...I see...they killed someone dear to you, right?~
==BJenli~Jen'lig will avenge Kastya and restore githyanki honor.~
==Bskie~I am sure you will, yes...~EXIT

CHAIN
IF WEIGHT #-3~Global("CVJenSkiB","LOCALS",5) ~THEN Bskie CVJenSki3
~I envy you for those golden scales that grace you. They always look sooo perfect and gleaming and all...look at me, I can't keep my make up standards under these conditions and my hair is a complete mess, damn it.~
DO~SetGlobal("CVJenSkiB","LOCALS",6)RealSetGlobalTimer("CVSanBantTi","LOCALS",1100) ~
==BJenli~(Hiss) Scales result of Illithids manipulation on their slaves. But githyanki overthrow and defeat their masters. Now proud race that rules Astral Plane. Githyanki love to decorate beautiful body.~
==Bskie~OOOH yes, you do. It's so unfair how you can wear all that jewelry while fighting all the time while I look so clumsy and ...unsexy...in this garb I must wear.~
==BJenli~(Hiss) Maybe ask conselor Sandrah. Manling girl knows how to attract males like only Prime siren creatures can.~
==Bskie~I envy her even more than I envy you. Life is simply unjust, yes, it is.~EXIT


CHAIN
IF WEIGHT #-3~Global("CVSanSkieHeal","LOCALS",4)~THEN Bskie SanHeal1
~Brilliant, a healer with your skills makes life of an adventurer a bit more bearable.~
DO~SetGlobal("CVSanSkieHeal","LOCALS",5) RealSetGlobalTimer("CVSanBantTi","LOCALS",700)~
==BSandr~This life of an adventurer is what you chose over the dull life of the aristocracy on the Sword Coast, *mylady*.~
==Bskie~Ah, well...that is no excuse for the dirt and inconvenience and...the hurt and blood.~
==BSandr~I like comfort and a warm bath myself, when the time for it is right. If we cannot have that every single day on the road, we have no one but ourselves to blame.~
==Bskie~Ah, but how practical to have one with your abilities in the group. Even better - you know how a well manicured toe nail needs to look like - see, not like this one right here.~
==BSandr~And you ask me to repair it with a spell while our comrades are suffering and requiring my attendance. No, Lady Silvershield, definitely not!~
==Bskie~We should go. Eh...do you by any chance have any spell for a headache? ~EXIT

CHAIN
IF WEIGHT #-3~Global("X#SummonDora","GLOBAL",4)~ THEN Bskie Sanskpade
~WHY...why have you not foreseen and prevented that...you, you, you superclever counselor?~
DO~SetGlobal("X#SummonDora","GLOBAL",5)~
==BSandr~Hush, we could not have helped a ruling duke in our current status of criminals, so much is true.~
==Bskie~*Sandrah lays her arms around the sobbing girl who immediately starts to furiously beat Sandra's breast with both fists.* WHY???~
==BSandr~Let it out, Skie, show me how you will treat your father's murderer.~
==Bskie~HA - LIKE THIS ... And take THIS...and THIS...~
==BSandr~Right, we cannot let them get away with that murder.~
==Bskie~Oh, Sandrah, what did I do...did I, did I hurt you..?~
==BSandr~Psst, nothing happened to me, never mind. It had to come out.~
==Bskie~Was there really nothing we could have done to prevent it? Did we try everything, did we?~
==BSandr~Skie, he was a well-respected ruler and he was in the security of his own city. It did not save him, so how could we have done it?~
==Bskie~We couldn't - I know you are right...that does not make it hurt less, can't you understand it?~
==BSandr~My own mother, Elminster's own wife, was killed in the security of her home by the God of Murder. Be sure I can understand how bitter and helpless you feel.~
==Bskie~I am sorry for having yelled at you, I forgot your own fate. I wish we can do something, anything...~
==BSandr~We can, Skie, and we will. The God of Murder is at the heart of this, his blood trying to return from the Abyss. We will prevent this return by stopping Sarevok. ~
==Bskie~Your mama and my papa will be avenged!~
==BSandr~It is not for those who have gone we do our deeds, it is for those who may otherwise suffer an equal fate.~
==Bskie~Let us not waste a moment. <CHARNAME>, let us move, Sarevok must be stopped.~EXIT

CHAIN
IF WEIGHT #-1~InParty("CVSandr") InParty("Skie") InParty("Eldoth") !GlobalTimerNotExpired("Ransom","GLOBAL") ~THEN Elkart Gameup
~I see that you're here prompt for your ransom money, Eldoth.  I hope you don't think you'll get away with this forever!~
DO~SetGlobal("RansomTaken","GLOBAL",9)~
==SkieJ~What?...Elkart, what do you do here?~
==EldotJ~Hush, baby, quit babbling, will you!~
==SkieJ~How dare you...what's going on here...~
==EldotJ~Hush, I said, idiotic brat.~
==SkieJ~I...Sandrah, you are the only one it seems I can trust. What is the matter here?~
==CVSandrJ~I am relieved to hear you have no idea about this betrayal, Skie. Your *beloved* scoundrel uses you to squeeze some ransom money out of your father.~
==SkieJ~He would never...ELDOTH?~
==EldotJ~What - two rich spoiled brats in union now? Do you have any idea what it costs a man to support the likes of you. Will you now BOTH SHUT UP and let me do my business.~
==Elkart~You foolish little prigs, your game is up.  HEY!  They're all here ripe for the slaughter!~DO~CreateCreature("FLAMSCO",[0.0],0)CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0)CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0) CreateCreature("FLAMSCO",[0.0],0) EraseJournalEntry(106273)
EscapeAreaDestroy(90) ~EXIT

CHAIN
IF WEIGHT #-4~InParty("CVSandr") Global("RansomTaken","GLOBAL",9)!AreaCheck("BG0105") ~THEN Bskie Gameup2
~Sandrah...I still do not...Eldoth...what has happened?~
DO~SetGlobal("RansomTaken","GLOBAL",10)~
==BSandr~It looks like you are not the good investment he had in mind when *freeing* you from your father.~
==Bskie~I cannot believe he did all of what he did just for money! He must love me, HE MUST.~
==BSandr~Whether he does or does not is to be decided just between the two of you. What we have learned today is that Eldoth always is able to look after his own profit and make some extra money out of everyone.~
==Bskie~But...maybe he will spend it on something nice for me,...not?~
==BSandr~After today I have my doubts in that. You may have lost much of your worth and thus your attraction for him - provided he even cared for you at all.~
==Bskie~(Sigh) I had hoped you would be more helpful, Sandrah, but you just say what they all say about him...~
=~...(and what if she's right - and everyone else as well?)~EXIT