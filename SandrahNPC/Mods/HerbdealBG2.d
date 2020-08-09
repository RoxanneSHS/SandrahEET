APPEND CVSANDRJ
END

INTERJECT_COPY_TRANS ~B!HERB06~2 Cassil1
== CVSANDRJ IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN @0
== ~B!HERB06~IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN @1
== CVSANDRJ IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN @2
END

INTERJECT_COPY_TRANS ~B!HERB06~2 Cassil2
== CVSANDRJ IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) OR(2) InParty("Driz2") InParty("P#Kivan")~THEN @3
== ~B!HERB06~IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",1)~THEN @4
== CVSANDRJ IF~InParty("CVSandr") Global("SanRomPath","GLOBAL",2) OR(2) InParty("Driz2") InParty("P#Kivan")~THEN @5
END