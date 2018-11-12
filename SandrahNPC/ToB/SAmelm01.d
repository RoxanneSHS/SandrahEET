//Elminster ToB Appearance

APPEND Amelm01

IF WEIGHT #-9~NumTimesTalkedTo(0) InParty("CVSandr")~THEN BEGIN SanElmTob1
SAY~Greetings, old friend, 'tis good to see thee and mine eldest daughter here and in good health.~
IF~Global("VxVarElm1","GLOBAL",0) InParty("VxVar") ~THEN REPLY~Elminster?~DO~SetGlobal("VxVarElm1","GLOBAL",1) ~EXTERN Amelm01 SanElmTob2
IF~!InParty("VxVar") ~THEN REPLY~Elminster?~EXTERN Amelm01 SanElmTob2
END
END

CHAIN
IF~~THEN Amelm01 SanElmTob2
~I observed thine progress and received report as well from Qilandrha these days. I should have watched over thee even more closely as Gorion had been right in his judgement of thee.~
=~As right as thou, Sandrah, my heart. Me, I should have done more than merely issue warnings about thine fate.~
==BSandr25~Father, you have aided <CHARNAME> as you could, same as I did. In the end nobody can take the responsibility and the required decisions out of <CHARNAME>'s hands, neither you nor me, not even the gods should they attempt it.~
== Amelm01~Thou speakest with the wisdom that should be mine, daughter. 'tis true what thou sayest and it is thine chosen role to counsel in the hours that are ahead.~
==BSandr25~Both of your daughters will be at <CHARNAME>'s side in the crucial hour.~
== Amelm01~At thine side, <CHARNAME>, or in your way should thine final verdict fail - Sandrah and Qilandrha are part of thine fate as thou arth part of theirs. I hope dearly Gorion hath not misjudged thee.~
END
++~I count on the loyalty of my companions as only with their aid I have come as far as this.~EXTERN Amelm01 3