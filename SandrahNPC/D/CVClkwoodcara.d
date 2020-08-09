CHAIN
IF ~Global("Altalk","BG1800",4)~THEN CVSandrJ Clakwoodcara
@0
DO~SetGlobal("Altalk","BG1800",5)~
== BIMOEN IF~InParty("Imoen2") ~THEN @1
== BSHART IF~InParty("Sharteel") ~THEN @2
== BVICON  IF~InParty("Viconia") ~THEN @3
== BKIVAN  IF~InParty("Kivan") ~THEN @4
== IF_FILE_EXISTS BSUFINCH  IF~InParty("Sufinch") ~THEN @5
== BAJANT  IF~InParty("Ajantis") ~THEN @6
==BJenli IF ~InParty("CVJenlig")~THEN@7
== IF_FILE_EXISTS ~B!GAVINJ~IF ~InParty("B!GAVIN")~THEN @8
== IF_FILE_EXISTS ACBreB IF~InParty("ACBre") ~THEN  @9
==CVSandrJ IF~InParty("ACBre") ~THEN  @10
== BBRANW  IF~InParty("Branwen") ~THEN @11
== BXANNN  IF~InParty("Xan") ~THEN @12
== BSANDR IF~InParty("Xan") ~THEN @13
== BEDWIN_  IF~InParty("Edwin") ~THEN @14
== BCORAN  IF~InParty("Coran") ~THEN  @15
== IF_FILE_EXISTS BRH#ISRA  IF~InParty("RH#ISRA") ~THEN @16
==CVSandrJ IF~InParty("RH#ISRA") ~THEN  @17
== BDYNAH  IF~InParty("Dynaheir") ~THEN @18
== BMINSC_ IF ~InParty("Minsc") ~THEN@19
== BJAHEI  IF~InParty("Jaheira") ~THEN @20EXIT