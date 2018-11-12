BEGIN CVAjam

BEGIN CVAjab

CHAIN
IF~Global("SanAjaThief","GLOBAL",1)~THEN CVAjab AjaThief1
~NO, please not anymore! I give it all back...(Sniff)~
DO~SetGlobal("SanAjaThief","GLOBAL",2)~
==CVAjam~Scoundrel! (Hits the boy with his stick again.)~
=~Thief and son of a thief...(Hits again)~
==BSandr~The boy has stolen something from you?~
==CVAjam~Sure, he has - today again, I swear it was him just two days ago.~
==BSandr~Stop your beating. (Her hammer gleams dangerously.) He has confessed it already.~
==CVAjab~I am giving it back, lady. Here!~
==BSandr~Is that what he took from you?~
==CVAjam~It's what he took today...but in the past - and surely in a few days if we let him go on with that...~
==BSandr~It is what you can actually proof, right. If you are unhappy with that I will put the same amount on top of it and we settle the case right here. Otherwise we need to call the authorities.~
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN~Sandrah, we should call them anyway. A crime has been done and must be punished.~
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN~Sandrah, we should call them anyway. A crime has been done and must be punished.~
==BSandr~I agree with you, Ajantis, this boy has been beaten badly, he is injured beyond justification...~
==CVAjam~He's a thief like all his family...~
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN~Eh, Sandrah, that was not the crime I was referring to - I meant the theft itself.~
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN~Eh, Sandrah, that was not the crime I was referring to - I meant the theft itself.~
==BSandr~Attacking and beating a boy is no crime then? One misdeed justifies another one?~
==CVAjam~(Grabs the money from Sandrah's hand and starts to move away slowly.)~
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN~Wait, Sir, you will be needed as a witness...~
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN~Wait, Sir, you will be needed as a witness...~
==CVAjam~Thank you, paladin, but I have my money back...~DO~EscapeArea()~
==BSandr~Move quickly, boy, enough for today.~DO~ForceSpell("CVAjab",CLERIC_HEAL)~
==CVAjab~Thanks, ma'am...anyway, pa will just hit me again for comin' with no booty...~DO~EscapeArea() ~
==IF_FILE_EXISTS BAjant IF~InParty("Ajantis")~THEN~(Sighs) Hopeless.~
==IF_FILE_EXISTS C#AjanB IF~InParty("C#Ajantis")~THEN~(Sighs) Hopeless.~
==BSandr~(Takes Ajantis' hand and squeezes it lightly.) We will not give up that easily.~EXIT