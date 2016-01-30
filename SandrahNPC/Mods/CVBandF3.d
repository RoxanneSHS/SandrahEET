BEGIN CVBandF3

IF~ NumTimesTalkedTo(0)~ THEN BEGIN Stop1
SAY~ STAND!!! You're not goin' anyway with that cursed deserter!~
IF~~THEN REPLY~ The man needs help urgently. Isn't he one of your companions?~ GOTO Stop2
IF~~THEN REPLY~ That's none of your business, step aside!~ GOTO Stop3
IF~~THEN REPLY~ There's a bounty on his head. How much will you pay me to get him?~ GOTO Stop4
END

IF~~THEN BEGIN Stop2
SAY~If he leaves this area and talks to the officials he's a traitor - and a foe just like you. Get him, men!~
IF~~THEN DO ~ IncrementGlobal("Sanpoints","GLOBAL",2) ActionOverride("CVBandf3",Enemy())~EXIT
END

IF~~THEN BEGIN Stop3
SAY~ It's our concern 'cause if he leaves this area and talks to the officials he's a traitor - and a foe just like you. Get him, men!~
IF~~THEN DO ~ IncrementGlobal("Sanpoints","GLOBAL",1)ActionOverride("CVBandf3",Enemy())~EXIT
END

IF~~THEN BEGIN Stop4
SAY~ We will give you loads of steel and arrowheads, my friend, more than you and your bunch are able to take, hahaha. ~
IF~~THEN DO ~ IncrementGlobal("Sanpoints","GLOBAL",-4)ActionOverride("CVBandf3",Enemy())~EXIT
END
