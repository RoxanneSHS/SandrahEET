// Sil and the Pirates
INTERJECT J#PIRAT1 14 PiratediscoverG
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @0
== J#PIRAT1 IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @1
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @2
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18) Global("SanLHpir","LOCALS",2)~THEN @3
== J#PIRAT1 IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @4
=@5DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1 14 PiratediscoverL
== CVSandrJ IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @3
== J#PIRAT1 IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @6
== CVSandrJ IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @7
== J#PIRAT1 IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @4
=@5DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1  16  PiratediscoverpapG
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @0
== J#PIRAT1 IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @1
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @2
== CVSandrJ IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18) Global("SanLHpir","LOCALS",2)~THEN @3
== J#PIRAT1 IF ~InParty("CVSandr") GlobalGT("SanSuBH","GLOBAL",18)~THEN @4
=@5DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT

INTERJECT J#PIRAT1  16  PiratediscoverpapL
== CVSandrJ IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @3
== J#PIRAT1 IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @6
== CVSandrJ IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @7
== J#PIRAT1 IF ~InParty("CVSandr") GlobalLT("SanSuBH","GLOBAL",18) Global("SanLHpir","GLOBAL",2)~THEN @4
=@5DO~SetGlobal("J#PirateFight","GLOBAL",1)Enemy()~
EXIT


EXTEND_TOP SIL 15 #3

IF ~Global("J#PirateFight","GLOBAL",4)
~THEN REPLY  @8GOTO 21
END