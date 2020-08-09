BEGIN CVEntar

CHAIN
IF ~Global("SanSafaBan","GLOBAL",9)~THEN CVEntar SafAccus1
@0
DO~SetGlobal("SanSafaBan","GLOBAL",10)~
== CVSafgua@1
== BSAFAN@2
== BSANDR@3
== CVEntar @4
END
++ @5+ SafPCDef1
++ @6+ SafSandDef1

CHAIN
IF~~THEN CVEntar SafPCDef1
@7
== CVSafcit @8
== BSAFAN@9
== CVEntar @10
== BSAFAN@11
END
++@12+ SafPCDef2

CHAIN
IF~~THEN CVEntar SafSandDef1
@7
== CVSafcit @8
== BSAFAN@9
== CVEntar @10
== BSAFAN@11
== BSANDR@12
END
++@13+ SafSandDef2

CHAIN
IF~~THEN CVEntar SafPCDef2
@14
== CVSafcit @15
== CVEntar @16
== BSAFAN@17
END
++ @18+  SafSandDef3
++ @19+ SafSandDef3

CHAIN
IF~~THEN CVEntar SafSandDef2
@20
== CVSafcit @15
== CVEntar @16
== BSAFAN@17
END
++ @21+  SafSandDef3


CHAIN
IF~~THEN CVEntar SafSandDef3
@22
== BSANDR@23
== CVSafcit @24
== BSANDR@25
== CVSafcit @26
== BSANDR@27
== CVSafcit @28
== BSANDR@29
== CVSafcit @30
== BSANDR@31
== CVSafcit @32
== BSANDR@33
== CVSafcit @34
== CVEntar @35
== BSANDR@36
== CVSafcit @37
== BSANDR@38
== BSAFAN@39
END
++ @40+ SafSandDef4

CHAIN
IF~~THEN CVEntar SafSandDef4
@41
== BSANDR@42
== BSAFAN@43
== BSANDR@44
== CVSafcit @45
== BSANDR@46
== CVEntar @47
== BSANDR@48
== CVSafcit @49
== BSANDR@50
== BSAFAN@51
== CVEntar @52
== BSANDR@53
== CVEntar @54
== CVSafgua@55
== CVEntar @56
= @57DO~AddexperienceParty(5000) EscapeArea() ~
EXIT


