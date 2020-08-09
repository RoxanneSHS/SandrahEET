BEGIN CVBrage

CHAIN
IF~AreaCheck("bd7300")~THEN CVBrage Saerch1
@0
==CVSandrJ@1
==CVBrage@2
==CVSandrJ@3
END
++@4+ Saerch2
++@5+ Saerch2

CHAIN
IF~~THEN CVBrage Saerch2
@6
==CVSandrJ@7
==CVBrage@8DO~AddJournalEntry(@970,QUEST) EscapeAreaDestroy(35)~EXIT

CHAIN
IF~AreaCheck("id4004")~THEN CVBrage Saerchi1
@9
==CVSandrJ@1
==CVBrage@2
==CVSandrJ@10
==CVBrage@11
==CVSandrJ@12
==CVBrage@13
==CVSandrJ@14
==CVBrage@15
==CVSandrJ@16
==CVBrage@17DO~AddJournalEntry(@973,QUEST) MoveToPoint([900.1180]) Wait(4) EscapeAreaDestroy(35)~EXIT