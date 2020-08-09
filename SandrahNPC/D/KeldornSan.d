APPEND BSANDR

IF~Global("SanKelMaria","LOCALS",1)~THEN BEGIN SanKelMar1
SAY@0
IF~~THEN REPLY@1DO~SetGlobal("SanKelMaria","LOCALS",2) IncrementGlobal("Sanpoints","GLOBAL",-2)~EXIT
IF~~THEN REPLY@2DO~SetGlobal("SanKelMaria","LOCALS",2) IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanKelMar2
END

IF~~THEN BEGIN SanKelMar2
SAY@3
IF~~THEN REPLY@4GOTO SanKelMar3
IF~~THEN REPLY@5GOTO SanKelMar3
END

IF~~THEN BEGIN SanKelMar3
SAY@6
=@7
IF~~THEN REPLY@8EXIT
IF~~THEN REPLY@9EXIT
END
END



CHAIN
IF~Global("SanKeldorn","GLOBAL",2) ~THEN BSandr SanKeldInq
@10
DO~SetGlobal("SanKeldorn","GLOBAL",3)~
==BKeldor@11
==BSandr@12
==BKeldor@13
==BSandr@14
=@15
==BKeldor@16
==BSandr@17
==BKeldor@18
==BSandr@19
EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",4) ~THEN BSandr SanKeld2
@20
DO~SetGlobal("SanKeldorn","GLOBAL",5)~
==BKeldor@21
==BSandr@22
==BKeldor@23
==BSandr@24
==BKeldor@25
==BSandr@26
==BKeldor@27EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",7) ~THEN BSandr SanSlavChiHunt1
@28
DO~ SetGlobal("SanKeldorn","GLOBAL",8) ~
==BKeldor@29
==BSandr@30
==BKeldor@31
==BSandr@32
==BKeldor@33
==BSandr@34
==BKeldor@35
==BSandr@36
==BKeldor@37
END
++@38+ SanSlavChiHunt2

CHAIN
IF~~THEN BSandr SanSlavChiHunt2
@39
==BKeldor@40
END
++@41EXIT

CHAIN
IF~Global("SanKeldorn","GLOBAL",10)~THEN BSandr SanKeldPe
@42
DO~SetGlobal("SanKeldorn","GLOBAL",11)~
==BKeldor@43
==BSandr@44EXIT

