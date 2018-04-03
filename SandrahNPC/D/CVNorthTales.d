// Northern Tales
INTERJECT_COPY_TRANS NTOLIVIA 1 Freepotn
== CVSandrJ IF ~ InParty("CVSandr")!PartyHasItem("POTN45")~ THEN ~ Next time we pass here we should have a potion of freedom with us to give you. Your dream may come true then.~
== NTOLIVIA IF ~ InParty("CVSandr")!PartyHasItem("POTN45")~ THEN ~ You are kind, fair traveller. Most passing call me crazy and insult me.~ DO~ AddexperienceParty(120)~
END

INTERJECT_COPY_TRANS NTDRAAGI 0 SanBlackHand
== CVSandrJ IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN~  Good old Brother Hasdar is here as well, I see. He has counted on our persistence to gather the great book for him. He should have known we would also show the same initiative to collect our debts.~
== NTDRAAGI IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~ THEN~ You have come to the wrong place, my girl. Nothing you would gather here would be of any use to you as you will not leave here to enjoy it.~
== CVSandrJ IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~THEN~ I told your good Hasdar already that we just need the ring to end the orc ritual in the north. That is not too much, I assume, for the service we have provided.~
== NTHASDAR IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~ THEN~ Haeball must have told her about Ghotal's ring - before she killed him. She is extremely dangerous, Brother Draagis.~
== CVSandrJ IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~ THEN~ Interesting, <CHARNAME>, another piece of the puzzle. The ring is here and it had belonged to the great orc general. We are gaining another bit of insight.~ DO ~ AddexperienceParty(11000)~
== NTDRAAGI IF ~ OR(2) Global("NTTalkedToHasdar","GLOBAL",5) Global("HasdarReturnToTemple","GLOBAL",1) InParty("CVSandr")~ THEN~ And you can ponder on that insight for an eternity, girl, as you will have a lot of time from now on - in the Nine Hells.~
END

INTERJECT_COPY_TRANS  NTGGHOTA 0 SanHasGSw
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ We have the sword, but you know that your journey is over. It is for *her* who follows you.~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ Then it is true? My pleas to the gods that have left me have been heard. There will be one to follow where I have been betrayed. Light! What do you know?~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Our hope was that you could tell us. The orcs who have betrayed you in your final battle seem to fear a *godchild* to follow you. She will claim the sword.~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ Vennegrat and the traitors will be punished, good news. One will finally unite the orcs to defend their lands against the hungry mob from the south.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ So you were rather a defender than an aggressor, Ghotal?~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ I am sure your elders taught you otherwise, ha. History is written by the winners in their favour, such is our fate. But you have given me the hope today that all will be corrected.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ And you know who *she* is?~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ How can I know. I am cursed to this place since the day the battle was lost. I know nothing and I have but worthless sons who hopefully have not survived the battle to spawn even more worthless orcs. It soothes my soul in this final hour that *she* exists.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Rest in peace, Ghotal.~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ I will after you have laid me to rest. You might be capable of that as you were able to come here at all.~
END


INTERJECT_COPY_TRANS  NTGGHOTA 1 SanNoHasGSw
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Our hope was that you could tell us what has happened here. The orcs that tried to revoke you are no more.~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ Those fools, did they really try that? One will finally unite the orcs to defend their lands against the hungry mob from the south. Vennegrat and the traitors will be punished, one will follow me but not a revived zombie clone of myself. ~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ So you were rather a defender than an aggressor, Ghotal?~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ I am sure your elders taught you otherwise, ha. History is written by the winners in their favour, such is our fate. But I have the hope today that all will be corrected someday.~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ And you know who it is to follow you?~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ How can I know. I am cursed to this place since the day the battle was lost. I know nothing and I have but worthless sons that hopefully have not survived the battle to spawn even more worthless orcs. ~
== CVSandrJ IF ~ InParty("CVSandr") ~THEN ~ Rest in peace, Ghotal.~
== NTGGHOTA IF ~ InParty("CVSandr") ~THEN ~ I will after you have laid me to rest. You might be capable of that as you were able to come here at all.~
END

INTERJECT_COPY_TRANS NTKRESTI 3 SanKresti
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Smiles at the handsome elf.)~
== NTKRESTI IF ~ InParty("CVSandr")~ THEN ~ My lady, this island holds pleasures I am sure a connoisseur in these areas would dearly love to explore.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ I am knowledgeable in many areas, including the pleasures an elf can learn to provide, given the long years he is allowed to gather his experiences.~
== NTKRESTI IF ~ InParty("CVSandr")~ THEN ~ We understand each other quite well, my lady. If you want to explore this topic a bit more, I suggest you come back to me in a while and - alone.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Out of the corner of your eye you think you see her wink at the elf and blow him a quick kiss...)~
END

// Ordolath
INTERJECT_COPY_TRANS NTORDOL 10 SanHint17
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ With that candle a little bit more of light could be shed into mysterious happenings.~
== NTORDOL IF ~ InParty("CVSandr")~ THEN ~Little priestess, you seem to be well capable of finding your part of the truth and counselling this group on its way without my humble assistance.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ I would not have learned my lessons well, if I would not know how to listen to any sage advise.~
== NTORDOL IF ~ InParty("CVSandr")~ THEN ~ Of that I have none for the future goddess to rise...Let me be off now quickly.~
END

// Haeball

INTERJECT_COPY_TRANS NTHAEBAL 0 Strangemage
== NTHAEBAL IF ~ InParty("CVSandr")~ THEN ~ NO! He found me! What? No it's not him...~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Whispers to you:) This mage is hiding something, be very careful with him, <CHARNAME>.~
== NTHAEBAL IF ~ InParty("CVSandr")~ THEN ~ (Haeball regains his posture and smiles slickly at you.) I was mistaken... must be the dim light...I thought I recognized a devilish mage's presence. But no. ~ DO ~ IncrementGlobal("ElmHint","GLOBAL",1)~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ (Whispers) Who is the devilish mage here? Surely not the one who's blood you have sensed, villain. ~ DO~SetGlobal("9001Fi","GLOBAL",1)~
END

INTERJECT_COPY_TRANS NTHASDAR 10 SanKnowsHas
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ Brother Hasdar of the Black Hand, we should talk a bit before we maybe hand you the book.~
== NTHASDAR IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ Black Ha...what are you talking about, girl?~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ No charades, please, else we might talk directly to the leaders in the Sharp Teeth Wood.~
== NTHASDAR IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ So you made Haeball talk, you witch ?~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~You will get to know my methods shortly, so do not blame the late Haeball too much.~
== NTHASDAR IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ You killed him? The great...who are you really, you harmless little cleric girl.~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ I am the one you have to fear as much as Elminster, you talk to the destroyer of the Balor Cult.~
== NTHASDAR  IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ What the hell do you want from me, as you seem to know already everything?~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ We need the second half of the key to the orc ritual. Where is the ring? ~
== NTHASDAR  IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ Haha, now I have you, girl. So you haven't been to the temple in the east yet, the Forest of Forgotten Souls scared even you!~ DO ~ RevealAreaOnMap("ar60pb")~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ We have passed that wood already, maybe your information about the temple is not correct, Hasdar. We even destroyed the Dark One out there.~
== NTHASDAR  IF~ InParty("CVSandr") Global("SanKnowsHasdId","GLOBAL",4) ~ THEN ~ What? You were that close? You must have missed the temple just by bad luck. Or call it good luck, as otherwise you would never have returned. Even you would not survive a trip to the temple. But the time for talk is over, give me the book. NOW!~
END

INTERJECT_COPY_TRANS NTPANDRI 2 Pandris1
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Are they really...? This must have been the place, sure, the location is approximately where this battle must have happened.~
==  NTPANDRI IF ~ InParty("CVSandr")~ THEN ~ There sure was a battle here but some generations ago already, I found the signs everywhere when I inspected the soil for probable farming.~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Did those orcs mention this leader's name by any chance?~ DO ~ SetGlobal("SanFDGGoth","GLOBAL",1) ~
==  NTPANDRI IF ~ InParty("CVSandr")~ THEN ~ Gothric?~
== CVSandrJ IF ~ InParty("CVSandr")~ THEN ~ Ghotal, General Ghotal.~
END

INTERJECT_COPY_TRANS NTPANDRI 3 Pandris2
== CVSandrJ IF ~ InParty("CVSandr") Global("9001Fi","GLOBAL",3)~ THEN ~ Haeball. Remember, <CHARNAME>, that mage we found in the old tower in Larswood? He was suspicious to me even then.~
==  NTPANDRI IF ~ InParty("CVSandr") Global("9001Fi","GLOBAL",3)~ THEN ~ Haeball it was, right m'lady.~
END
