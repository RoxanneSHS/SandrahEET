BEGIN SANORWI

CHAIN
IF ~NumTimesTalkedTo(0) ~THEN  SANORWI Hint1
~NOOO! Not any more stinking orcs!!~
= ~AH, no orcs , my rescue. Dear travellers, please protect me from these orcs!~
== BIMOEN~You saw orcs, where and when, where did they run to? MAN, don't stand there open-mouthed, quickest tell us all!~
== SANORWI ~A large orc hord indeed, thirty or more, and in quite a hurry.~
== BSANDR ~Did you see a prisoner with them, a man, a human?~
== SANORWI ~Some of them where carrying a large sack, the size of a human, but what was inside? I had no chance to see and did not dare to look either. Just ran.~
== BIMOEN~But there is no trace hereabouts, they ran along further. Did you see whereto?~
== SANORWI ~They took to north-east over there, the way to the halflings village of Gullykin. They must be there before daybreak if they run on like this.~
== BSANDR ~Are you sure that it was north-east? That would not lead them to the Cloakwood at all.~
== SANORWI ~Surely not. They stopped for a while at that fork of the road yonder, shouting and quarrelling, I was almost hoping they would kill each other. But they took the other way, that is for sure.~DO ~EscapeArea()~
END
++ ~They are orcs and without a brain to lead them on. Maybe they really just took the wrong way. Why should they want to go to the halflings village?~DO~AddJournalEntry(@955,QUEST) EraseJournalEntry(@186)~
EXIT