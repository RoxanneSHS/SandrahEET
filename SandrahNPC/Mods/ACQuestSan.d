INTERJECT_COPY_TRANS IF_FILE_EXISTS ACQXZAH1 0 SanCapKal1
== ACQXZAH1 IF ~InParty("CVSandr")  ~THEN @0
== CVSandrJ IF ~InParty("CVSandr")  ~THEN @1
== ACQXZAH1 IF ~InParty("CVSandr")  ~THEN @2
== CVSandrJ IF ~InParty("CVSandr")  ~THEN @3
== ACQXZAH1 IF ~InParty("CVSandr")  ~THEN @4
== CVSandrJ IF ~InParty("CVSandr")  ~THEN @5
== ACQXZAH1 IF ~InParty("CVSandr")  ~THEN @6
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS ACQXZAH1 3 SanCapKal2
== ACQXZAH1 IF ~InParty("CVSandr") ~THEN @0
== CVSandrJ IF ~InParty("CVSandr") ~THEN @1
== ACQXZAH1 IF ~InParty("CVSandr") ~THEN @2
== CVSandrJ IF ~InParty("CVSandr")  ~THEN @3
== ACQXZAH1 IF ~InParty("CVSandr")  ~THEN @7
== CVSandrJ IF ~InParty("CVSandr") ~THEN @5
== ACQXZAH1 IF ~InParty("CVSandr") ~THEN @6
END

