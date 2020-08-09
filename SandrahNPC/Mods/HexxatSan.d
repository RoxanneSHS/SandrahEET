CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",3)~THEN BHexxat Vamphe1
@0
DO~SetGlobal("Sanhealhex","GLOBAL",4)~
==Bsandr@1
==BHexxat@2
==Bsandr@3
==BHexxat@4
==Bsandr@5EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",5)~THEN BHexxat Vamphe2
@6
DO~SetGlobal("Sanhealhex","GLOBAL",6)~
==Bsandr@7
==BHexxat@8
==Bsandr@9
==BHexxat@10
==Bsandr@11
=@12
==BHexxat@13
==Bsandr@14
==BHexxat@15
==Bsandr@16
EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",7)~THEN BHexxat Vamphe3
@17
DO~SetGlobal("Sanhealhex","GLOBAL",8)~
==Bsandr@18
==BHexxat@19
==Bsandr@20
==BHexxat@21
==Bsandr@22
==BHexxat@23
==Bsandr@24EXIT

CHAIN
IF WEIGHT #-2~Global("Sanhealhex","GLOBAL",9)~THEN BHexxat Vamphe4
@25
DO~SetGlobal("Sanhealhex","GLOBAL",10)~
==Bsandr@26
==BHexxat@27
==Bsandr@28
==BHexxat@29
==Bsandr@30
==BHexxat@31
==Bsandr@32EXIT

CHAIN
IF WEIGHT #-2~Global("SanVampHex","LOCALS",1) ~THEN BHexxat Vamphwd
@33
DO~SetGlobal("SanVampHex","LOCALS",2)~
==Bsandr@34
==BHexxat@35
==Bsandr@36
==BHexxat@37
==Bsandr@38
==BHexxat@39EXIT

REPLACE_ACTION_TEXT  ~renal~~SetGlobal("PlayerHasStronghold","GLOBAL",1)~~~

EXTEND_BOTTOM Renal 48
IF~InParty("Hexxat") OR(2) Global("PlayerHasStronghold","GLOBAL",1) !Class(Player1,THIEF_ALL) ~THEN DO~AddXPObject(Player1,11375)
AddXPObject(Player2,11375)
AddXPObject(Player3,11375)
AddXPObject(Player4,11375)
AddXPObject(Player5,11375)
AddXPObject(Player6,11375) SetGlobal("RenalJob","GLOBAL",4)~GOTO RenalHex1
END

CHAIN
IF~~THEN Renal RenalHex1
@40
=@41
=@42
==BHexxat@43
END
++@44EXTERN Renal 64