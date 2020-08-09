BEGIN CVZLord

IF~NumTimesTalkedTo(0)~THEN BEGIN 1
SAY@0
IF~~THEN DO~Enemy()~EXIT
END

BEGIN hobjoia

IF~NumTimesTalkedTo(0)~THEN BEGIN Stealers
SAY@1
=@2
IF~~THEN DO~ReallyForceSpell(NearestEnemyOf(Myself(Myself)),WIZARD_AGANNAZAR_SCORCHER) Wait(3) ReallyForceSpell(SecondNearestEnemyOf(Myself(Myself)),WIZARD_FIREBALL) ~EXIT
END

