APPEND CBAVRSLG
END

EXTEND_BOTTOM CBAVRSLG 12
IF~ InParty("CVSandr")~ THEN REPLY ~Sandrah, my counsellor, you are best suited to take over this situation.~ EXTERN CVSANDRJ SanDiploAC
END

CHAIN
IF~~ THEN CVSANDRJ SanDiploAC
~Centurion, I understand everybody here has your word of honour that there will be no violence until we have finished the hearing that will start in a moment.~
DO~SetGlobal("CbAngryVillagersRevolt","GLOBAL",4)~
==CBAVRSLG ~MEN, we will not act unless directly attacked by anyone. Lady, you have an officer's word.~
==CVSANDRJ~ You have heard it, good man. We will listen to your case as long as no blood is shed. There is no need for the knife on anyone's throat.~
==CBAVRVLF~We trust your and <CHARNAME>'s reputation. Men, listen, we came here to clarify some injustice not to kill. Let us keep peace so they listen to us. (He lets go the cowled wizard.)~
==CBAVRCWB~I demand in the name of the cowled....~
==CVSANDRJ~IN THE NAME OF THE GODDESS OF ALL MAGIC, you will keep the peace as everybody else around here while we hear those people out. Your powers are frozen by Mystra herself.~
==CBAVRCWB~(Twitches his hands uselessly.) What is...my spell...priestess?~
==CVSANDRJ~Now that we have finished the preliminaries, citizen, explain to us in terms that we all can understand while you came here in such a rage.~
==CBAVRVLF~The taxes recently demanded in the name of the cowled..... ~
==CVSANDRJ~.....(A long winding argument between the parties follows, now and then interrupted by suggestions and clarifications from your counsellor. You and your companions are too tired to really follow the details - what is important is that the arguments of the involved get more and more pointed and violence seems to be forgotten.)~
==CBAVRSLG ~...this agreement has finally been reached. I will hand the negotiated papers to the council and with this dismiss this gathering. MEN, ASSURE THAT ALL LEAVE THIS PLACE IN PEACE AND IMMEDIATELY!!~ DO~ ReputationInc(3) AddexperienceParty(8500)~EXIT