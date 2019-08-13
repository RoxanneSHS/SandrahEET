I_C_T Stoflund 4 StoSanBlDrag
==CVSandrJ IF~InParty("CVSandr")~THEN~These dragons are aquatic creatures that live in sea and swamps and they feed on fish, shellfish and a tad of red meat from terrestrial creatures. They are known to be extremely ill tempered and cruel.~
==Stoflund IF~InParty("CVSandr")~THEN~Right, lady. And there was one at the mouth of River Chionthar a while ago.~
END

I_C_T StoWinsk 6 StoSanWinsk
==CVSandrJ IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN~Sarevok does not need you anymore, Winski Perorate. You lie only to yourself but do not fool us. Your ward has long outgrown the one who wanted to be his master.~
==Stowinsk IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN~Elminster's daughter, you will learn your lesson in time. Or do you really think that <CHARNAME> would need YOU! Maybe I failed and maybe I know it, but you think you can handle a child of Bhaal, you dreamer.~
==CVSandrJ IF~InParty("CVSandr") OR(3) GlobalGT("WinskApp1","GLOBAL",2)GlobalGT("SanOrDiEarly","GLOBAL",1)GlobalGT("SanOrDiId","GLOBAL",5)~THEN~So far we have always been able to counteract your plans and those of Sarevok.~
END

I_C_T BDDarskh 1 StoSanDarskh
==CVSandrJ IF~InParty("CVSandr") Global("StoSanWinsk","Global",1) ~THEN~This is the same illithid we have seen at the Sea Tower. It seems that we interrupted their operation only for a short while. Mind flayers love complex plans with many options. Anyway, here we are to stop another one.~
END

CHAIN
IF~Global("StoOtherWay","Sto301",2)~THEN CVJenliJ IlliSeaTow
~Githyanki cadre found illithids and almost destroyed. Jen'lig recognise elite captain over there. Did enough damage and left brain to die alone.~
DO~SetGlobal("StoOtherWay","Sto301",3)~
==CVSandrJ IF~InParty("CVSandr")~THEN~It looks like your kinsmen also took whatever evidence might have existed that could have given us a clue to the nature of those activities down here.~
==CVJenliJ~Manlings may never know what brain eaters wanted here as Githyanki took all clues away to Queen.~EXIT