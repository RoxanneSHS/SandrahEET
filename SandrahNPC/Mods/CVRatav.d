INTERJECT_COPY_TRANS IF_FILE_EXISTS CMGRatav 0 SanCMGdisguise1
== CVSandrJ IF ~InParty("CVSandr") ~THEN @0
== CMGRatav IF ~InParty("CVSandr") ~THEN @1
END

INTERJECT_COPY_TRANS CMMystr 0 SanCMGdisguise2
== CVSandrJ IF ~InParty("CVSandr") ~THEN @0
== CMMystr IF ~InParty("CVSandr") ~THEN @2
END