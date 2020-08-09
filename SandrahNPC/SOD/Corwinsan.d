CHAIN
IF~Global("SanCorwin","Global",3)~THEN BDCORWIJ Corwiheal1
@0
DO~SetGlobal("SanCorwin","Global",4)~
==CVSandrJ@1
==BDCORWIJ@2
==CVSandrJ@3
==BDCORWIJ@4
==CVSandrJ@5
==BDCORWIJ@6EXIT

CHAIN
IF~Global("SanSarevCorw","Locals",1)~THEN BDCORWIJ CorwiCand1
@7
DO~SetGlobal("SanSarevCorw","Locals",2)~
==CVSandrJ@8
==BDCORWIJ@9
==CVSandrJ@10
==BDCORWIJ@11
END
++@12+ CorwiCand2
++@13+ CorwiCand2
++@14+ CorwiCand2

CHAIN
IF~~THEN BDCORWIJ CorwiCand2
@15
==CVSandrJ@16
==BDCORWIJ@17
==CVSandrJ@18
==BDCORWIJ@19
==CVSandrJ@20
==BDCORWIJ@21
==CVSandrJ@22
==BDCORWIJ@23EXIT

CHAIN
IF~Global("DauShield","GLOBAL",2)~THEN BDCORWIJ CorwiDad
@24
DO~SetGlobal("DauShield","GLOBAL",3)~
==CVSandrJ@25
=@26
==BDCORWIJ@27
==CVSandrJ@28
==BDCORWIJ@29
==CVSandrJ@30EXIT
