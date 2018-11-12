BEGIN BJenli25

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",8)~THEN BJenli25 JenQStor1
~(Hiss) Now without <CHARNAME> cadre Jen'lig be alone - alone like Vlaakith...~
=~Alone not Githyanki concept.~
DO~SetGlobal("CVJenTOBRet","GLOBAL",9) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25~Do you mind to tell your cadre friends what happened between you and your queen...For a moment you almost sounded like you pity her, but I know, pity is not a concept of your race.~
==BJenli25~(Hiss) Sandrah right, pity is emotion and not part of Githyanki nature. But still good word to explain.~
=~Vlaakith should be in cadre with all of Githyanki race - but Jen'lig found is very much alone. Githyanki who is alone cannot serve race, be it queen or soldier. Isolated queen cannot serve our race in the long term.~
==BSandr25~You could not connect to her and get this message through to her consciousness?~
==BJenli25~Sandrah as always, understands concepts that are very far from her own.~
=~When Jen'lig returned sword of Kastya to Tu'narath was happy day for town cadre. Much respect was gained for Planewalkers. Not long until Jen'lig received summoning to meet with queen.~
==BSandr25~You were expecting that - including your possible assimilation by your godqueen.~
==BJenli25~Correct - Jen'lig long spent time for meditation and preparation, made her mind shield strong against queen. Vlaakith struggled hard to enter Jen'lig mind and power but found defence too strong. Finally began to listen to her counselor...~
==BSandr25~She listened - but still you are here today.~
==BJenli25~Queen was struggling long with Jen'lig but struggling more - much more - with own self.~
=~What Jen'lig proposed was best for race - and Githyanki in Vlaakith agreed. But part of Queen is not longer Githyanki, is loneliness, is greed, is hunger.~
==BSandr25~The hungry part, the Lich part, could not withstand the temptation of such a strong addition to her power like her Supreme Planewalker Commander.~
==BJenli25~You see more than any Githyanki can see about my kin. You see what only Jen'lig has seen of all her race. (Hiss)~EXIT

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",10)~THEN BJenli25 JenQStor2
~(Hiss) Cadre and <CHARNAME> will withstand any foolish Githyanki attempt. Not danger if Jen'lig be detected and hunted.~
DO~SetGlobal("CVJenTOBRet","GLOBAL",11) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25~You think that such a thing could happen?~
==BJenli25~(You almost have to laugh aloud when you see Jen'lig's long limbs in the imitation of a shoulder shrug she must have observed on - yourself.)~
=~Queen may be unforgiven, may think Jen'lig resistance is bad example for others of our race.~
==BSandr25~I am sure we have nothing to fear, my friends. It would take an invasion army to the Prime to capture the Supreme Planewalker of Tu'narath in the company of her friends. I can think of only one Githyanki capable of such a thread - and that is the hunted herself.~
==BJenli25~(Hiss) Jen'lig fully agrees with counsellor analysis.~EXIT

CHAIN
IF~Global("CVJenTOBRet","GLOBAL",12)~THEN BJenli25 JenQStor3
~Tiamat child made Mind Globe strong enough item.~
DO~SetGlobal("CVJenTOBRet","GLOBAL",13) RealSetGlobalTimer("CVJen25Intvl","GLOBAL",2000)~
==BSandr25~Strong enough to be used against Vlaakith you think?~
==BJenli25~At right moment in right hands it will be, Sandrah counsellor. Right moment will be when queen and Jen'lig alone.~
==BSandr25~If you go back to Tu'narath they will overwhelm you. You cannot fight your whole kin.~
==BJenli25~Jen'lig not fight own kin any more, only the one who no longer is true Githyanki. (Hiss) Jen'lig not fool but has listened to <CHARNAME>'s dead manling god story and considered carefully.~
=~Bhaal god is dead but not among dead gods of Astral Plane - yet.~
==BSandr25~I think I see where it leads to. We have a common goal in this aspect. Bhaal has to stay dead and his remains must be transferred to your plane.~
==BJenli25~(Hiss) Arrival of new god will be great disturbance and will disrupt local energies - those protecting queen palace as well. Will allow Jen'lig to return and use globe.~
==BSandr25~You will do to her what she has planned to do with you - you will assimilate her.~
==BJenli25~Sandrah thinks that Jen'lig cruel beast? No.~
=~Sandrah knows that Jen'lig true child of Gith (Hiss).~
==BSandr25~You do it for the Githyanki, to free them of the slavery of Vlaakith like Gith has freed them from the Mind Flayers long ago.~
==BJenli25~Githyanki deserve better queen. Queen who serves race, not herself.~
==BSandr25~Like the Supreme Plane Walker who only knew her honour and the welfare of her people.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

CHAIN
IF~Global("CVJenSarRom","GLOBAL",1)~THEN BJenli25 SarLover1
~(Hiss - Jen'lig's ornamented talon darts out towards Sarevok.)~
DO~SetGlobal("CVJenSarRom","GLOBAL",2) RealSetGlobalTimer("JenSarDel","LOCALS",4100)~
=~Manling from same hatchery as <CHARNAME>, good strong breeding.~
==IF_FILE_EXISTS BSAREV25~The heritage of the god of murder is common to us, githyanki.~
==BJenli25~Jen'lig not care for concept of stupid manling gods - but Jen'lig very much likes good strong fighter. Fearless warrior is Githyanki concept. Good concept for race and breeding.~
==IF_FILE_EXISTS BSAREV25~Ehem...is this some kind of...eh...offer...eh...~
==BJenli25~Jen'lig study Sarevok fighting. Is good and deadly. (Hiss) Will call by name from now on Sarevok - Sarevok will call Githyanki by name as well from now, say Jen'lig.~
==IF_FILE_EXISTS BSAREV25~Ha, if that does not break the ice, I don't know. Well, we fight side by side now - Jen'lig.~EXIT

CHAIN
IF~Global("CVJenSarRom","GLOBAL",3)~THEN BJenli25 SarLover1
~(Hiss) Good fight again, Sarevok.~
DO~SetGlobal("CVJenSarRom","GLOBAL",4) RealSetGlobalTimer("JenSarDel","LOCALS",4100)~
==IF_FILE_EXISTS BSAREV25~You as well, Jen'lig. I appreciate that moment just before you take your enemy's life when you lock your gaze to his and let him know what he faces - the END.~
==BJenli25~Sarevok alone among manlings, not with female at his side.~
==IF_FILE_EXISTS BSAREV25~Women are pathetic - most of them. They are a hindrance for a warrior.~
==BJenli25~Githyanki concept is that body needs other stimulation than fighting and eating at times. Is good to have valid companion in cadre at such time.~
==IF_FILE_EXISTS BSAREV25~Are you honestly suggesting what I think you are suggesting...you are quite exotic...~
==BJenli25~Jen'lig sure not a hindrance for Sarevok warrior.~
==IF_FILE_EXISTS BSAREV25~What can I say? Your bedroll or mine?~
==BJenli25~Jen'lig bedroll better - has right fabric to smoothly caress Jen'lig's scales when out of armour.~
==IF_FILE_EXISTS BSAREV25~Same for the scarred body of a fighter I guess. As for caressing your scales...I am not as unexperienced with your gender as you might think.~
==BJenli25~(Hiss) Not talking more, show Jen'lig deeds.~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT




CHAIN
IF~RandomNum(6,1)~THEN  BJenli25 Random1
~(Hiss) All day marching not for githyanki feet.~EXIT

CHAIN
IF~RandomNum(6,2)~THEN  BJenli25 Random2
~(Hiss) Is day, is night, is day again. Jen'lig accepted new concept of time.~EXIT

CHAIN
IF~RandomNum(6,3)~THEN  BJenli25 Random3
~(Hiss) Maybe teach commander use psychic bonds to give orders in battle. Too much words on prime.~EXIT

CHAIN
IF~RandomNum(6,4)AreaType(CITY)~THEN  BJenli25 Random4
~(Hiss) Manling city weak compared to Tu'narath.~EXIT

CHAIN
IF~RandomNum(6,5)AreaType(DUNGEON)~THEN  BJenli25 Random5
~(Hiss) Manling cellars are strangely decorated.~
END
++~This is a dungeon, Jen'lig. I wouldn't really call this a decoration.~EXIT

CHAIN
IF~RandomNum(6,6)AreaType(OUTDOOR)~THEN  BJenli25 Random6
~Concept of weather is new but good. Jen'lig likes cooling rain on own scales, so clean.~
END
++~Restrain yourself, hihi, it would cause quite some commotion if people saw a naked githyanki beauty dancing in the rain.~EXIT

