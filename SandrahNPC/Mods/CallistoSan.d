APPEND BCMCalli

IF WEIGHT #-9 ~ Global("SanHealcalli","GLOBAL",3)~ THEN BEGIN CalliHeal
SAY ~ I don't need those healing attempts you struggle with, provided by the useless tiny goddess you choose to follow. I have survived worse than this all on my own.~
IF~~THEN EXTERN BSANDR SanCalliHeal
END

IF WEIGHT #-10 ~ Global("SanHealcalli","GLOBAL",6)~ THEN BEGIN CalliGranny
SAY ~ I admire your skills in battle, Sandrah. I still wonder how someone like you could get her mind so blurred and fogged as to follow the mumbo jumbo of a goddess like you do.~
IF~~THEN EXTERN BSANDR SanCalliHeal2
END

IF WEIGHT #-11 ~ Global("SanHealcalli","GLOBAL",8)~ THEN BEGIN CalliRead
SAY ~ You read a lot, priestess. Religious treaties?~
IF~~THEN EXTERN BSANDR SanCalliHeal3
END
END

APPEND BSandr
IF~Global("CmCalliEndGame","AR2600",2)~THEN BEGIN CalliEnd1
SAY~ *Sandrah stares down at Callisto's dead body and shakes her head in disbelief.*~
IF~~THEN REPLY~So much hatred, it's unbelievable...not even you foresaw this end.~ DO~SetGlobal("CmCalliEndGame","AR2600",3)~ GOTO CalliEnd2
END

IF~~THEN BEGIN CalliEnd2
SAY~Yes and no, my dear. I was afraid that her blind destructive hatred would be her premature end - but I had no idea that you were in its focus.~
IF~GlobalLT("Chapter","GLOBAL",20)~THEN REPLY~ She mentioned my grandmother?? A priestess of Bhaal?? What does that mean...~GOTO CalliEnd3
IF~GlobalGT("Chapter","GLOBAL",19)~THEN REPLY~  She mentioned my grandmother?? A priestess of Bhaal?? What does that mean...~GOTO CalliEnd4
END

IF~~ THEN BEGIN CalliEnd3
SAY~She also metioned an elven city to be located around here. I am not sure what any of the two mean...if one were true the other might be as well.~
IF~~THEN REPLY~As there is no elven city here her hatred against me and my family probably comes from the same distorted imagination.~GOTO CalliEnd5
END

IF~~ THEN BEGIN CalliEnd4
SAY~ She also metioned the elven city to be located around here. As the one were true the other might be as well.~
IF~~THEN REPLY~But Khalindra's mother was no priestess of Bhaal, right? ~GOTO CalliEnd5
END

IF~~ THEN BEGIN CalliEnd5
SAY~ (If Sandrah had heard your last remark she shows no reaction in her deep thoughts.)...no one can be thrown off the scent that far for half a lifetime. If I had only had have half a chance to get some of that story out of her.~
IF~~THEN EXIT
END
END


CHAIN 
IF~~ THEN BSANDR SanCalliHeal
~ I am sure you did, Callisto, it has left its scars on your body - and your soul.~
=~But now you travel with companions that help each other out according to the skills they possess. Mine are the skills of a healer.~
DO~SetGlobal("SanHealcalli","GLOBAL",4)RealSetGlobalTimer("SanCallisT","LOCALS",1200)~
==BCMCalliBCMCalli~ Baah! I prefer the skills of a fighter you obviously possess as well in abundance. If you believe so much in that comrad stuff, use them to guard my back in battle.~
== BSANDRBSANDR~ You can rely on that as well as on my healing provided afterwards.~
==BCMCalliBCMCalli~Fine - now leave me be - priestess! (She spits out the last word as if it were meant as an insult, which it probably is for her.)~EXIT

CHAIN
IF~~THEN BSANDR SanCalliHeal2
~What do you know about Mystra to come to that judgement?~
DO~SetGlobal("SanHealcalli","GLOBAL",7) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
==BCMCalliBCMCalli~Priests and their damned false gods! I don't have to know the details of that "Protector of the Weave" - she was not protecting me or my family or Sylla'cerra when she should have...she's like them all!~
== BSANDRBSANDR~ She was not even a goddess yet when that happened, Callisto.~
==BCMCalliBCMCalli~ What?~
== BSANDRBSANDR~ Well, I will tell you. She was a human adventurer and a priestess named Midnight, a magnificent fighter and powerful spellcaster. She was so fearless that AO chose her to hunt down the renegade gods in the Time of Troubles.~
==BCMCalliBCMCalli~I see a glimpse of what you like about her - she must have been very similar to you.~
== BSANDRBSANDR~Many have commented on that fact before, most probably because I have chosen to model myself after her. After all she was my grandmother...~
==BCMCalliBCMCalli~Wow - you say that a human just like you became a goddess later?~
== BSANDRBSANDR~She was not afraid to chase and destroy the renegades as she saw the necessity to do it. She went out to destroy Bhaal himself - she and her companion were elevated to godhood later to replace the ones killed in the Time of Troubles.~
==BCMCalliBCMCalli~A great heroine indeed - and it just shows how weak and useless those despiseable gods really are. I bet you would kill one of them as well if you must.~
== BSANDRBSANDR~(Smiles) There are a few whom I cannot count among my friends. Stay with <CHARNAME> and me and you may one day have to face one of them and his wrath yourself with us.~
==BCMCalliBCMCalli~You and me, we sure have the heart and the skills to stand our ground against anyone, puny gods included.~EXIT

CHAIN
IF~~THEN BSANDR SanCalliHeal3
~I am not really religious...I study the knowledge of the Realms.~
DO~SetGlobal("SanHealcalli","GLOBAL",9) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
==BCMCalliBCMCalli~ That's something worthy, I have to admit. It can help you defeat your foes even better.~
== BSANDRBSANDR~ It is true that <CHARNAME> and me have succeeded several times by using the lore and the brain instead of relying on our weapon's force alone.~
==BCMCalliBCMCalli~ Good to have you on my side instead of against me. You're right - I never saw you snivling on your knees and begging for a useless god's grace.~
== BSANDRBSANDR~ I follow a certain path of values and ideals. By coincidence it is the one aligned with serving Mystra. Like I told you before, Callisto, I am as much inspired by the deeds she performed herself when she was still the human Midnight.~
==BCMCalliBCMCalli~The fact that she was able to slay a god herself only shows how weak and impotent those really are.~
== BSANDRBSANDR~ It only shows they can fall like everything else on this plane under a specific set of circumstances. I would not underestimate their power or seek quarrel with them without very good cause.~
==BCMCalliBCMCalli~And I still bet you wouldn't be one to back down in case you really are forced to fight them. Or take revenge on them.~
== BSANDRBSANDR~ Revenge has never been among my motivations, Callisto.~DO~RestParty()~ EXIT

CHAIN
IF WEIGHT #-3~Global("SanHealcalli","GLOBAL",11)~THEN BCMCalli SanCalliHeal4
~*Callisto sits brooding at her side of the table while Sandrah reads in her tome on the other side.*~
DO~SetGlobal("SanHealcalli","GLOBAL",12) RealSetGlobalTimer("SanCallisT","LOCALS",3100)~
== BSANDRBSANDR~*Finally Sandrah looks up from her pages and for an instant seems to be puzzled by Callisto's staring at her.*~
=~So it is revenge that has determined your path all these years since Sylla'cerra's destruction, Callisto?~
==BCMCalliBCMCalli~ Do your tomes tell you that story? Or has your silly goddess confessed her guilt to you - guilty for doing nothing?~
== BSANDRBSANDR~Neither. No god except maybe Lolth, the drow Spider Queen, had anything to do with that past event. And there was probably no one to write down the story of that day in Sylla'cerra.~
==BCMCalliBCMCalli~It is up to me to write the bloody story of that bloody day. And I will write it as it needs to be written - in blood. Revenge? You have no idea - you surely have not suffered a loss such as mine.~
== BSANDRBSANDR~My mother died when I was one year old. She was raped and died when giving birth to the spawn.~
==BCMCalliBCMCalli~Ha - and you traced and tortured the culprit to death.~
== BSANDRBSANDR~I was not given that opportunity. He was already dead. It was Bhaal.~
==BCMCalliBCMCalli~Bhaal...mmmh...~
=~You travel with a Bhaalspawn now. You share your bed with a Bhaalspawn. Does <CHARNAME> know about that part of your past, hm?~
== BSANDRBSANDR~ There are a number of hints that let us both believe that <CHARNAME> was my mother's second child but we have not found the final proof for it yet.~
==BCMCalliBCMCalli~And if you did - I mean being a Bhaalspawn would be reason enough for revenge - but if <CHARNAME> was your mother's murderer in person?~
== BSANDRBSANDR~ The spawn was not the murderer, Callisto. An innocent newborn baby is not a killer. It makes no sense to judge a child for the deeds of the father.~
==BCMCalliBCMCalli~Baah, what a nonsense! The black blood is proof enough...~
== BSANDRBSANDR~Proof enough for me are <CHARNAME>'s deeds alone. And my love for the wonderful person which has come out of such a dark seed.~
=~(She gives Callisto a long silent glance.) Whoever intends to harm <CHARNAME> will have to defeat me first.~EXIT

CHAIN
IF~Global("SanCalliMar","ar0511",1)~THEN BSANDR SanCallimarD
~Good.~
DO~SetGlobal("SanCalliMar","ar0511",2)~
==BCMCalliBCMCalli~Good you left him to me - yeah! No one deserved my wraith more than this man.~
== BSANDRBSANDR~Definitely.~
==BCMCalliBCMCalli~ I was afraid you would strike him down with your deadly hammer before I had a chance to finish him off. What grudge have you held against him?~
== BSANDRBSANDR~I have never met him before.~
==BCMCalliBCMCalli~ But...? ~
== BSANDRBSANDR~I heard his confession. Do you think I would one like him get away with such deeds? You may think I am the innocent rich girl out on an adventuring trip just for fun but, believe it or not, I have seen what men like him do and the hurt and death they spread for their base motives. Brigands, slave traders...I saw their trail and witnessed their deeds and I will fight them whereever I meet them.~
==BCMCalliBCMCalli~ Your goddess should have sent you to Sylla'cerra on the right day if she really had cared.~
== BSANDRBSANDR~I was three years old on that day.~EXIT

CHAIN
IF~Global("SanCalReviv","ar1100",1)~ THEN BSANDR SanCalliSor
~Do you want me to revive and restore them for you, Callisto?~
DO~SetGlobal("SanCalReviv","ar1100",2)~
==BCMCalliBCMCalli~HaH!! And we can punish them once again...Wait - are you mocking me? ~
== BSANDRBSANDR~Not at all. They have surely deserved it and even without your story about their deed I have heard with my own ears their pitiless testimony. They do not deserve my pity - but you do.~
==BCMCalliBCMCalli~So why would you revive them for my repeated wraith?~
== BSANDRBSANDR~I am a healer, I search for a way to cure you before your hatred endangers yourself and the ones I care for.~
==BCMCalliBCMCalli~But you have witnessed that those bastard deserved the revenge I brought onto them. You used your own hammer against them without hesitation.~
== BSANDRBSANDR~I have prevented their further deeds in the same vein as what they have done in the past.~
==BCMCalliBCMCalli~Ha, priestess, and maybe you want to salve your conscience for your goddess not preventing the deeds that have caused all this.~
== BSANDRBSANDR~I would only have a guilty conscience for deeds I could have prevented but let happen. As for those - there are none.~EXIT

INTERJECT_COPY_TRANS CMMarius 4 SanMarius1
== CVSandrJCVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ (You observe that Sandrah's face has turned ultimately grim as she weights her hammer ready to strike.)~
==CMCalliJCMCalliJ IF ~ InParty("CVSandr") ~ THEN ~ Leave him to me, priestess, I have an older right.~
== CVSandrJCVSandrJ IF ~ InParty("CVSandr") ~ THEN ~ (Nods approvingly.)~
END