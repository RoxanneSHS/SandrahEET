APPEND CVSANDRJ
END

INTERJECT_COPY_TRANS ~B!HERB06~ 2 Cassil1
== CVSANDRJ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN ~ Be careful, my stately lover, you do not want to buy those Cassil herbs.~
== ~B!HERB06~ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN ~ Mylady, sometimes their effect on a male is much wanted in a given situation.~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN ~ I can assure you, good man, it is not an effect that is wanted by me on *this* man here. (She giggles and winks at you.)~
END

INTERJECT_COPY_TRANS ~B!HERB06~ 2 Cassil2
== CVSANDRJ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",2) OR(2) InParty("Driz2") InParty("P#Kivan")~ THEN ~ Be careful, my lovethirsty leader, you do not want to buy those Cassil herbs.~
== ~B!HERB06~ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~ THEN ~ Mylady, sometimes their effect on a male is much wanted in a given situation.~
== CVSANDRJ IF~ InParty("CVSandr") Global("SanRomPath","GLOBAL",2) OR(2) InParty("Driz2") InParty("P#Kivan")~ THEN ~ I can assure you, good man, these ladies here want their men in a quite opposite condition. (She giggles and winks at you.)~ 
END