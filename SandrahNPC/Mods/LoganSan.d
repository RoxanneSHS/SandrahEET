APPEND BSandr
IF~Global("SanFemTeosHad","ar0411",1) ~THEN BEGIN SanHowWasTeo1
SAY~And? - How was that cowled one - uncowled?~
IF~~THEN REPLY~Teos?~DO~SetGlobal("SanFemTeosHad","ar0411",2) ~GOTO SanHowWasTeo2
END

IF~Global("SanFemTeosHad","LOCALS",2) ~THEN BEGIN SanHowWasTeo2
SAY~Are there more of them hidden in the secret chambers of this sphere?~
IF~~THEN REPLY~Studying spells is an interesting pastime...I know why YOU never miss a chance, darling.~EXIT
IF~~THEN REPLY~There is a kind of magic that requires no licence...but I surely do not need to convince YOU of that fact.~EXIT
IF~~THEN REPLY~Interested in him yourself? Sorry, but I have the exclusive licence to use THIS magic...~EXIT
END
END


