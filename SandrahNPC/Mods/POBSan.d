// Branwen in BG2
INTERJECT DL#BWN 0 BranAgain
== DL#BWN IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~Oh, Sandrah, 'tis good to see thine loving face again. Have you fared well, my friends? (Your two priest companions dearly embrace and kiss each other.)~
== CVSANDRJ IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~Much has happened on our journeys since you left us, Branwen. Imoen has been arrested, Kahlid and Dynaheir are dead. We are searching the man behind both Imoen's arrest and Khalid's death, Jon Irenicus. He is a powerful wizard who captured and tortured <CHARNAME> and killed Khalid. We are worried for Imoen who has been arrested by the Cowled Wizards for illegal use of magic.~
== DL#BWN IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~It sounds like you could use my help again. Is this true?~
== CVSANDRJ IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~But how have you been, my friend? (Sandrah gently caresses Branwen's cheek.) Have you come to terms with your duties to Tempus?~
== DL#BWN IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~After we parted I went to the temple at Beregost. It was a good and peaceful time but I was not yet ready to settle down. I took some counsel from the Chief Priest there and he suggested I travel south to Amn. It really wasn't quite as simple as that, and I didn't expect to catch up with you.~
== CVSANDRJ IF ~InParty("CVSandr") GlobalGT("SanBranDec","GLOBAL",3)~THEN ~Would your tasks here allow you to join us again, my friend?~
END DL#BWN 6