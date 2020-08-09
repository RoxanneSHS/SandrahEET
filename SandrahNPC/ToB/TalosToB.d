BEGIN CVTiamal
BEGIN CVSharg

CHAIN
IF~Global("Talos25R","GLOBAL",2)~THEN CVTalos reveil1
@0
DO~SetGlobal("Talos25R","GLOBAL",3) IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J@1
==CVTalos@2
==CVSan25J@3
==CVTalos@4
==CVSan25J@5
==CVTalos@6
==CVSan25J@7
==CVTalos@8
==CVSan25J@9
==CVTalos@10
END
++@11+ reveil2

CHAIN
IF~~THEN CVTalos reveil2
@12
=@13
==CVSan25J@14
==CVTalos@15
==CVSan25J@16
==CVTalos IF~DifficultyGT(NORMAL)~THEN@17DO~StartCutSceneMode() Wait(2) ScreenShake([905.1965],20) ApplyDamagePercent(Player1,49,CRUSHING) Wait(2) ApplyDamagePercent(Player2,49,CRUSHING) Wait(2) ApplyDamagePercent(Player3,49,CRUSHING) Wait(2) ApplyDamagePercent(Player4,49,CRUSHING) Wait(2) ApplyDamagePercent(Player5,49,CRUSHING) Wait(2) ApplyDamagePercent(Player6,49,CRUSHING) Wait(2) EndCutSceneMode() ReallyForceSpell(Myself,DRYAD_TELEPORT)~
==CVTalos IF~DifficultyLT(HARD)~THEN@17DO~StartCutSceneMode() Wait(2) ScreenShake([905.1965],20) ApplyDamagePercent(Player1,70,CRUSHING) Wait(2) ApplyDamagePercent(Player2,70,CRUSHING) Wait(2) ApplyDamagePercent(Player3,70,CRUSHING) Wait(2) ApplyDamagePercent(Player4,70,CRUSHING) Wait(2) ApplyDamagePercent(Player5,70,CRUSHING) Wait(2) ApplyDamagePercent(Player6,70,CRUSHING) Wait(2) EndCutSceneMode() ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT



CHAIN
IF~Global("CVTiamal","AR6000",1)~THEN CVTiamal reveil3
@18
DO~SetGlobal("CVTiamal","AR6000",2) IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J@19
==CVTiamal@20
==CVSan25J@21
==CVTiamal@22
==CVSan25J@23
==CVTiamal@24
END
++@25+ reveil4

CHAIN
IF~~THEN CVTiamal reveil4
@26
DO~GiveItemCreate("chan20",Player1,1,0,0)~
==CVTiamal@27
DO~ActionOverride("CVSandr",AddSpecialAbility("cvdra11"))  ActionOverride("CVSandr",AddSpecialAbility("cvdra12"))~
==CVTiamal@28
DO~SetGlobal("Leave","LOCALS",2)~EXIT



CHAIN
IF~Global("CVShar","AR6108",1)~THEN CVSharg reveil5
@29
DO~IncrementGlobal("SanGodInvolve","GLOBAL",1)~
==CVSan25J@30
==CVSharg@31
==CVSan25J@32
==CVSharg@33
==CVSan25J@34
==CVSharg@35
==CVSan25J@36
==VICON25J IF~InParty("Viconia")~THEN@37
==CVSharg IF~InParty("Viconia")~THEN@38
==VICON25J IF~InParty("Viconia")~THEN@39
==CVSharg IF~InParty("Viconia")~THEN@40
==CVSharg@41
END
++@42DO~SetGlobal("CVShar","AR6108",2)~EXIT
++@43DO~SetGlobal("CVShar","AR6108",3)~EXIT