CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",3)~THEN BKindrek San1
~Though I suffer priests to be near me, I will have none of your magic! Do not ever try again to cast your healing spells on me. ~
DO~SetGlobal("SanHealKindrek","GLOBAL",4) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr~Is that a threat?~
==BKindrek~My hand is set against all magicians! You will do as I say, or I will bury Disruptor in your skull!~
==BSandr~I am not only a priestess - you know I can handle this hammer quite well.~
==BKindrek~I saw it. It's impressive. ~
==BSandr~You saw nothing yet. I can show you how I would use it against a brute who tries to scare me for maintaining the health and power of <CHARNAME>'s party.~
==BKindrek~So you really have a backbone! Perhaps you are in the wrong profession.~
==BSandr~I seldom make my choices without sufficient reason. ~
==BKindrek~You are not easily provoked. I will say no more. ~EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",5)~THEN BKindrek San2
~Magic only destroys. It does not preserve!~
DO~SetGlobal("SanHealKindrek","GLOBAL",6) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr~A most stupid remark in the presence of a healer. I am the granddaughter of the Goddess of All Magic, just in case you were unaware of that fact.~
==BKindrek~Ha! Do not speak your mind so loudly, lest you have a fight on your hands! But maybe you crave battle as I do. I suffer your spellcasting for <CHARNAME>'s sake. Do not tempt me by walking too near.~
==BSandr~What I use on you is not magic. It is the divine power of the Weave. There is a difference.~
==BKindrek~You are arrogant. I like that! You use something of the energy that the gods used to make the world. It is by definition creative.~
==BSandr~I repair the structure of a part of the Weave that has been disrupted in battle.~
==BKindrek~You are expert in it - just like you are in killing. ~EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",7)~THEN BKindrek San3
~I was really turned on by watching your movements in that battle.~
DO~SetGlobal("SanHealKindrek","GLOBAL",8) RealSetGlobalTimer("HeilKindrT","LOCALS",900)~
==BSandr~Is that why you got injured in this way? Keep your eyes on our foes not on my buttocks.~
==BKindrek~Why? Your battle-dance shows me parts of your body I usually do not have the pleasure of seeing in the most stimulating way. I want to taste more of your body.~
==BSandr~I am not sure you really know what you ask for.~
==BKindrek~You're a lady of taste but also one of passion, I have observed you and by the way - come, I am freshly bathed! ~
==BSandr~Let us see. *Her gloved hand darts out and gets an iron grip between Kindrek's unprotected loins.* ~
=~Trust my healer's skill, my friend, I know exactly how much pressure it needs to make this instrument unusable for your lust for all times while giving you the maximum amount of pain every time you try to relief yourself.~
==BKindrek~Witch! ~
=~*Turning slowly away from her he mumbles* Be vigilant, little girl, and sleep not, lest I come upon you unaware and chop you up! ~EXIT

CHAIN
IF WEIGHT #-5~Global("SanHealKindrek","GLOBAL",9)~THEN BKindrek San4
~*Kindrek instinctively grabs his mighty halberd as a small pebble hits his temple while he has taken off his helmet to prepare for rest. He immediately recognises however that it was Sandrah who has thrown the stone at him.*~
=~Witch, you want to fight?~
DO~SetGlobal("SanHealKindrek","GLOBAL",10) ~
==BSandr~In some way or other, Berserker. My bedroll is empty tonight.~DO~AddSpecialAbility("CVDrag10")~
==BKindrek~HOHOHO, the little girl is scared to sleep alone in this dungeon? Your spells are not enough to keep the monsters away at night, is it that?~
==BSandr~If your love making is as lousy as your conversation, I already regret my offer.~
==BKindrek~You are right for once, little princess, we have already wasted too much breath on talking. Ha, you will need all your strength now for Kindrek's mighty unsheathed rapier!~DO~RestParty()~EXIT

