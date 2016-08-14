BEGIN  WDFish1
BEGIN  WDFish2
BEGIN  WDFish3
BEGIN  WDFish5

CHAIN
IF~Global("WDFishermen","GLOBAL",1)~THEN WDFish1 Fishplot1
~You there!...I know you, please wait!~
==CVSandrJ~Yes?~
==WDFish1~You are one of the priestesses at Mystra's temple, aren't you?~
==CVSandrJ~Yes, I am Sandrah. Do you require the aid of my goddess or the aid of a healer?~
==WDFish2~We're not sure, Lady Sandrah, it's just a straw we cling to...~
==WDFish1~We're worshipping the Water Queen rather than your goddess, to be honest.~
==CVSandrJ~That should not be a problem - depending of what the issue is you need help with.~
==WDFish2~Our goddess does not answer us anymore, you know.~
==WDFish1~Our nets are empty and our prayers are unanswered since five days now.~
==CVSandrJ~That is not only a problem for you. ~
=~<CHARNAME>, those fishermen and their collegues play an important role for the supply of this Capitale, my hometown. In the long term their problems become a problem of the city.~
END
++~Have you done anything to anger Umberlee?~ + Fishplot2
++~What has happened that has deprived you of the goodwill of your goddess?~ + Fishplot2

CHAIN 
IF~~THEN WDFish1 Fishplot2
~We have inquired with all the fishermen and their families but no one is aware of any transgression that could have angered the Water Queen.~
==CVSandrJ~Someone outside of your circles may have sinned against the sea and her creatures and thus has caused the problem.~
==WDFish2~We have prayed to Her already to tell us of the cause of her anger but there was no answer.~
==WDFish1~Some are already proposing an old ritual of sacrifice like it was sometimes done by our forefathers...~
==CVSandrJ~Oh, no! The times of such sacrifices are no longer for a modern city like my hometown. We need to find a way to negotiate with Umberlee.~
==WDFish2~We'd prefer that too, if we only knew how.~
==CVSandrJ~There is a way to summon an Ambassador of the Sea to the shoreline and talk to him about your goddess' wishes.~
==WDFish1~See, I told you that Mystra's priests have the knowledge we need in such a case.~
==WDFish2~We'll see, my friend, we'll see. So, Sandrah, how will you accomplish that?~
==CVSandrJ~We need a bowl of Umberlee and the corresponding scroll for the ritual.~
END
++~Where is the Water Queen's temple here in town?~ + Fishplot3

CHAIN 
IF~~THEN WDFish1 Fishplot3
~(Laughs) You're not from around here, I guess. You're standing right in it already.~
==WDFish2~The shoreline is our goddess' temple, it's here we worship her.~
==CVSandrJ~Mystra makes no deals with the Water Queen. The items we are looking for may be in one of the other temples in the West of town.~
END
++~We can take a look at the Temple of Splendor then.~DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT
++~Why not inquire at the Temple of the Siamorphe then?~DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT
++~I have nothing against another visit at the festhall of Sharess, hm.~  DO~SetGlobal("WDFishermen","GLOBAL",2)~EXIT

CHAIN
IF~GlobalGT("WDFishermen","GLOBAL",0) GlobalLT("WDFishermen","GLOBAL",5)~THEN WDFish1 FishplotR
~Have you found a way to help us?~
==CVSandrJ~We are still searching for the required items.~
==WDFish2~For the sake of us and the town, please do so!~EXIT

CHAIN
IF~ Global("WDFishermen","GLOBAL",5)~THEN WDFish1 FishplotS
~Have you found a way to help us?~
==CVSandrJ~We have the items to summon an Ambassador of the Sea.~
==WDFish2~We may have our fish knifes ready in case the creature is hostile.~
==CVSandrJ~No! Please, all of you, sheath your weapons. We want a peaceful negotiation.~
==WDFish1~Sandrah is right, Yantl. Our goddess is already angry, we should do anything to bequiet her.~
==CVSandrJ~Fine, now that is agreed, I will start the recitation.~
=~*Sandrah starts with a strange incantation in an unknown language...*~DO~SetGlobal("WDFishermen","GLOBAL",6)~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",7)~ THEN WDFish3 FishplotF
~FLESHLINGS...(splash)~
DO~SetGlobal("WDFishermen","GLOBAL",8)~
==WDFish2~Umberlee's servants greet you.~
==WDFish1~Umberlee's servants humbly greet you.~
==WDFish3~WE'RE ANGRY...(splash)~
==WDFish1~How have your faithful servants angered you, great Ambassador of the Sea?~
==WDFish3~Umberlee's servants here have done nothing to free the goddess' creature held captive in this town.~
==WDFish2~We know of no such captive, we swear it.~
==WDFish3~Not knowing is no excuse.~
==CVSandrJ~We are willing to help and free that creature if you provide us with more details.~
==WDFish3~MYSTRA'S STINK IS ON YOU, FLESHLING,...(splash)..., but you are the one who is not shivering in fear and may have power to aid.~
==CVSandrJ~State your case.~
==WDFish3~A creature of the sea has been lured to the land by a fleshling magician. She will perish if she is not returned to her elemental in time.~
==CVSandrJ~Are you talking of a sirine, Ambassador?~
==WDFish3~You fleshlings call our sisters by that name.~
=~Find her and return her to the sea then Umberlee will be at peace with you.~DO~ TakePartyItem("CVWDFi1") TakePartyItem("CVWDFi2") CreateVisualEffect("icwrati",[2252.294])  Wait(2) CreateVisualEffect("icwrati",[2212.254]) Wait(2) ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",23)~THEN WDFish1 Sacri1
~Have you been successful in our case? The anger of Umberlee has not yet ceased.~
DO~SetGlobal("WDFishermen","GLOBAL",24)~
==CVSandrJ~We have found the missing sirine but we could not save her. She is the victim of her own misguided love to a mortal man. Nobody is guilty for her fate, only herself.~
==WDFish2~Bah, the Water Queen will not buy your story, neither do I. Right, Henk?~
==WDFish1~(Sigh) To set our trust in Mystra or any other God was a mistake. There is no other way - Umberlee will receive the sacrifice she demands.~
==WDFish2~What...Henk, what are you doin'?...Henk!...HENK!!!~DO~ClearAllActions() StartCutSceneMode()ActionOverride("WDFish1",MoveToPoint([1841.322])) MoveViewPoint([1841.322],FAST)Wait(8) CreateVisualEffect("spanisum",[1938.322])ActionOverride("WDFish1",DestroySelf()) EndCutSceneMode() ReputationInc(-1) EscapeArea() ~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",12)~THEN WDFish1 Sacri2
~Have you been successful in our case? The anger of Umberlee has not yet ceased.~
DO~SetGlobal("WDFishermen","GLOBAL",13)~
==CVSandrJ~We have found the missing sirine and will now give her back to her mother. She was with her mortal lover by her own will but it could not turn out well. The sea should soon be your friend again.~
==WDFish1~(Cheerful) To set our trust in Mystra was no mistake. We thank you, Sandrah.~
==WDFish2~Bah, we will see, Henk, we will see. Don't praise another than Umberlee too early.~ DO~ClearAllActions() StartCutSceneMode() TakePartyItem("WDfibod") CreateCreature("WDFish5",[2155.290],0) Wait(6) ActionOverride("WDFish5",MoveToPoint([1841.322])) MoveViewPoint([1841.322],FAST) Wait(8) CreateVisualEffect("spanisum",[1938.322])ActionOverride("WDFish5",DestroySelf()) ActionOverride("WDFish1",EscapeArea()) EndCutSceneMode() ReputationInc(1) AddexperienceParty(9000) EscapeArea()~EXIT


CHAIN
IF~Global("WDFishermen","GLOBAL",8)~ THEN CVSandrJ FishplotF2
~So we need to find a captive siren in a town as big as Waterdeep.~
DO~SetGlobal("WDFishermen","GLOBAL",9)~
==WDFish2~Henk...tell her what you told me the other night when you returned from inspecting the nets.~
==WDFish1~Tell her what?~
==WDFish2~The magician...near the shore at night...don't you remember?~
==CVSandrJ~Anything may be helpful, otherwise we have no hint where to start our search and your problems will get bigger with every day you cannot fish out at sea. And with that Waterdeep will be without fresh fish on the market.~
==WDFish1~Really, I saw nothing...I mean I saw not what he did...I just saw he was there...~
END
++~Man, spit it out.~ + FishplotF3
++~WHO WAS THERE?? Damn it, speak.~ + FishplotF3
++~Either you tell us what you saw or you'll be without help from us.~ + FishplotF3

CHAIN
IF~~ THEN CVSandrJ FishplotF3
~*Sandrah smiles at you in silent agreement to your outburst*~
==WDFish1~Whyrtman, that strange mage...he never comes out here to the fish market. But that night he was there, near the nets, staring out at the sea...~
==CVSandrJ~It was the night before your trouble started?~
==WDFish2~Now that you say it, yes it was, wasn't it Henk?~
==WDFish1~Right...yes, yes. But I saw no sirine or anybody else and I did not see anything he did other than staring out at the water, unmoving for minutes.~
==CVSandrJ~It is the only trace we have at this moment, <CHARNAME>. Whether he is involved or not, I suggest to at least ask him for the sake of Waterdeep.~
==WDFish2~You seem not too happy with the task, Sandrah?~
==CVSandrJ~Whyrtman is not an easy man, to say the least. Anyway, he lives near the Harbourmaster's house in the south western ward.~
END
++~Let's go there.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++~It will not hurt to investigate this clue. Maybe he's involved or maybe he's just a witness, we will not find out by just standig here any longer.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++~I'm afraid if I say no to this quest, the rage of some mighty priestess will be upon me for not caring enough about her hometown.~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",10)~ THEN CVSandrJ FishplotCrys
~This crystal seems to be some device to control creatures within this house - at least it was.~
DO~SetGlobal("WDFishermen","GLOBAL",11)~
END
++~They were quite hostile towards us.~ + FishplotCrys2
++~It must have lost quite a bit of its power - or the attack was intended.~ + FishplotCrys2

CHAIN
IF~~ THEN CVSandrJ FishplotCrys2
~It seems that the crystal is losing the last of its energy just as we talk. The aggression we encountered was due to the loss of control.~
END
++~Another of those mages fiddling with powers far too big for their skills.~+ FishplotCrys3
++~I take it then that this mage is at the core of the trouble that befell the fishermen.~+ FishplotCrys3

CHAIN
IF~~ THEN CVSandrJ FishplotCrys3
~Do not tempt me to a premature judgement - I never liked that Whyrtman before.~
=~Anyway, we must anticipate that also the sirine we seek might have been under control of the crystal.~
END
++~But not any longer...I see what you mean.~EXIT

CHAIN
IF~Global("WDFishermen","GLOBAL",11)~ THEN WDFish5 Sirine1
~Are you the ones to free me or the ones to end my already fading life?~
==CVSandrJ~Did you kill him and turn him to stone?~
==WDFish5~Yes and no. It is more complex than this.~
==CVSandrJ~With him petrified - obviously by your sirine's gaze - you are yourself trapped here by his creatures that are no longer under control.~
==WDFish5~It is like you say. But all of this is not my fault alone, if you listen to me another minute you will see.~
END
++~A sirine does what you did, any man knows that and this mage was a fool to consider himself superior.~ + Sirine2
++~We should really kill you before you do to us what you did to him.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2) ~ + Sirine2
++~There must be more to this story than mere stupidity of an arrogant mage, I think.~ + Sirine2

CHAIN
IF~~ THEN WDFish5 Sirine2
~Who is to blame, me or Whyrtman? I cannot say.~
==CVSandrJ~How come you are here in the first place?~
==WDFish5~A lonely man comes to the sea shore every night. This must attract a sirine coming to the shallow water at the same time. The usual story between my kin and the land dwellers you will say. But...this time it's different.~
=~He was bewitched by my charm - not the one from my spells against which his magic protected him but the one from my natural personality.~
=~And me, I felt something I had not known before...the care and admiration of a man not under my spell but bound to me by his feelings.~
==CVSandrJ~We know little of your kin, it seems. We are taught that you are unable to feel what you just described.~
==WDFish5~Whyrtman called it love and claimed it would be possible even between us. He said he could resist and neutralize my dangerous enchantments with a crystal that focusses his own magical skill. And it worked...for a while. I...I don't know what went wrong...(sob) it was so beautiful but all of a sudden...~
==CVSandrJ~We found the crystal upstairs. It appeared like it had run out of energy.~
==WDFish5~We were so happy - and so careless. I don't know how this crystal worked, maybe he forgot to *feed* it in time?~
==CVSandrJ~You must return to the sea. The Water Queen assumes you have been kidnapped and is full of hatred against us land dwellers.~
==WDFish5~It was just an illusion we both have followed, was it?~
END
++~A nice little story, too good to be true. The only witness who could say otherwise is dead.~ + Sirine3
++~You must return to your kin, otherwise more men and women will suffer from your crazy dream.~ + Sirine3
++~You have experienced all the love that your kin and us may probably share. Wake up and return to your queen.~+ Sirine3

CHAIN
IF~~ THEN WDFish5 Sirine3
~I will not live much longer in this dry place without Whyrtman's art to create an ambient for me, I'm fading with every minute. Will you help me return to the water or will you sentence me for the deed that happened?~
==CVSandrJ~Whyrtman was aware of the risk he took. The fact that he perished from your act has nothing to do with murder. This is not a case for justice but for mercy.~
==Bimoen IF~InParty("Imoen2")~THEN~Life can be sooo unfair!! Sure we take you back home, right, <CHARNAME>? ~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Trust a male to handle critical stuff and you end in a mess. She deserves the fate she faces due to her own stupidity.  ~
== BVICON  IF~ InParty("Viconia") ~ THEN ~ Just let her perish, she isn't even worth to soil our blades with her blood. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Her kin is the threat of my sea elf brothers but her fate touches my heart. Let us take her to the sea and her home. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ To rescue the damsel and help the fishermen would be another heroic deed on the pages of the famous hero <CHARNAME>. Anything else my quill will not report. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Justice needs to be done. If only Helm would give us a sign what justice looks like in this case. ~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ The fishermen should pay us a bit more for dealing with a sirine. To let her die would not be profitable. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ In love you sometimes must take a risk or you will regret it all your life. We must think of the fishermen and help their case.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Magic is to be mistrusted in itself. She already received her punishment. The fishermen will gain nothing if we do not bring her to the shore.~
==BNeera_ IF~ InParty("Neera") ~ THEN ~All magic can go wild under certain circumstances, somebody always will have to suffer the consequences - the mage did already, no need for her to suffer as well.~ 
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ The Water Queen is an angry goddess, any islander can tell you that. 'tis foolish not to bring her lost child back to her.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Any road we may chose has as little promise as the other. Does it really matter how we persue this case further... ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Nobody gains anything if we kill this sirine. And my, she has such beautiful eyes.  ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~Aye, Sandrah, 'tis not a good day for Mystra nor for Sune as neither love nor magic could help those two lovers. We can only do some good by helping the fishermen now.~
== BGARRI IF~ InParty("Garrick") ~ THEN  ~  Well, a tale of sad love as any bard could ask for, Give it a happy ending for at least one of the lovers, <CHARNAME>.~
==IF_FILE_EXISTS BT2Val IF~ InParty("T2Val") ~ THEN ~ Look at it from the point of logic not from a point of justice. Waterdeep's supplies are only guaranteed if we pacify the Water Queen.~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ (Mumbles to herself) Will it be the god of murder who leads thy hand or the voice of reason, <CHARNAME>.~
== BYESLI IF~ InParty("Yeslick") ~ THEN ~ Damned creature should stay in their water and not mingle with men. Throw the fish back in the pool and be done with the mess.~
==BTIAX IF ~ InParty("Tiax") ~ THEN ~ Blood shall flows in the name of CYRIC and let those fishermen suffer as well for not seeking OUR blessing!~
== BJAHEI  IF~ InParty("Jaheira") ~ THEN ~ <CHARNAME> has learned all there is to learn for <PRO_HIMHER>. I trust <PRO_HISHER> decisions by now with all my heart ~
==BDorn_ IF~ InParty("Dorn") ~ THEN ~ Be *mercyful* and kill her, mercyful towards all she may entangle next.~
== BSAFAN IF~ InParty("Safana") ~ THEN~Who cares about sirines and fisherman at all? We're in the City of Splendor, let's enjoy our stay and leave this damp hole, I say.~
==BJenli IF~ InParty("CVJenlig") ~ THEN ~Go to sleep with a mind flayer and wake up with your brain devoured. (Hiss) Only you will not wake up again. Manling too stupid for easy reasoning. Throw fish back to water, commander.~
== BSANDR~ The lovers' fate is one thing but let me remind you that my hometown will suffer from a wrong decision in this case. ~
END
++~We will bring you back to the water immediately, Neerol, enough suffering has come out of this fated love already, we must act on behalf of those who live on.~DO~SetGlobal("WDFishermen","GLOBAL",12) ActionOverride("WDFish5",DestroySelf())GiveItemCreate("WDfibod","CVSandr",1,0,0)~EXIT
++~I will leave you here, Neerol, the way out is clear. Go back to your Water Queen if you want. The fishermen must deal with their problem alone, I will not be judge in this case.~DO~SetGlobal("WDFishermen","GLOBAL",22) ~EXIT
++~*You pull out your dagger and cut the sirine's throat.*~DO~Kill("WDFish5")SetGlobal("WDFishermen","GLOBAL",32)~EXIT
