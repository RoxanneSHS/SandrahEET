BEGIN sanmyst

CHAIN
IF ~Global("SanEndBG1Plot","GLOBAL",3)~THEN sanmyst Undercity1
@0
DO ~SetGlobal("SanEndBG1Plot","GLOBAL",4)~
== CVSandrJ @1
== sanmyst@2
= @3
== CVSandrJ @4
== sanmyst@5
== CVSandrJ @6
== sanmyst@7
== CVSandrJ @8
== sanmyst@9
== CVSandrJ @10
== sanmyst@11DO~AddexperienceParty(27500)AddXPObject("CVSandr",20000)~
EXIT

CHAIN
IF ~Global("SanLive","GLOBAL",2)~THEN sanmyst Everlive
@12
DO ~SetGlobal("SanLive","GLOBAL",3)~
== BSANDR @13
== sanmyst@14
== BSANDR @15
== sanmyst@16
== BSANDR @17
== sanmyst@18
== BSANDR @19
== sanmyst@20
== BSANDR @21
== sanmyst@22
== BSANDR @23DO~CreateVisualEffectObject("SPFLESHS",Myself) ~EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",33)~THEN sanmyst doneShau
@24
DO~SetGlobal("SanHintFactory","GLOBAL",34)~
== BSANDR @25
== sanmyst@26
== BSANDR @27
== sanmyst@28
== BSANDR @29
== sanmyst@30
== BSANDR @31
== sanmyst@32
=@33
== BSANDR @34
== sanmyst@35EXIT

CHAIN
IF~Global("SanHaerRel1","GLOBAL",16)~THEN Sanmyst Haersearch
@36
DO~SetGlobal("SanHaerRel1","GLOBAL",17)~
== BSANDR @37
== sanmyst@38
== BSANDR @39
=@40
== sanmyst@41
== BSANDR @42
== sanmyst@43
== BSANDR @44
== sanmyst@45
=@46
=@47DO~GiveItemCreate("CVBloMa1","CVSandr",1,0,0)~
== BSANDR @48
== sanmyst@49DO~ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
