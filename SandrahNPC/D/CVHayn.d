BEGIN CVHayn

CHAIN
IF ~NumTimesTalkedTo(0) !See([ENEMY])~THEN CVHayn Orcpr
@0
END
++ @1+  Orcpr2

CHAIN
IF ~~THEN CVHayn Orcpr2
@2
== Bimoen @3
== CVHayn @4
== Bimoen @5
== CVHayn @6
== Bimoen @7
== BSandr @8
== Bimoen @9
== BSandr @10
END
++ @11DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Orcpr3
++ @12+ Orcpr3

CHAIN
IF ~~THEN CVHayn Orcpr3
@13
== BSandr @14
== CVHayn @15
== BSandr @16
== CVHayn @17
END
++ @18+ Orcpr4

CHAIN
IF ~~THEN CVHayn Orcpr4
@19
== BSandr @20
END
++ @21+ Orcpr5

CHAIN
IF ~~THEN CVHayn Orcpr5
@22
= @23
== Bimoen @24
== CVHayn @25
== Bimoen @26
== BSandr @27
== CVHayn @28
== BSandr @29
== CVHayn @30
END
++ @31+ Orcpr6

CHAIN
IF ~~THEN CVHayn Orcpr6
@32
== BSandr @33
== Bimoen @34
== CVHayn @35
== BSandr @36
== CVHayn @37
END
++ @38+ Orcpr7
++ @39+ Orcpr7

CHAIN
IF ~~THEN CVHayn Orcpr7
@40DO ~MoveToPointNoInterrupt([839.1262]) EscapeArea()~EXIT





