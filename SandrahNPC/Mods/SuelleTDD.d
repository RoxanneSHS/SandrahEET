ADD_TRANS_TRIGGER suelle2 5
~OR(2)!InParty("CVSandr")GlobalGT("SanAfterJon","GLOBAL",2)~

ADD_TRANS_TRIGGER suelle2 8
~OR(2)!InParty("CVSandr")GlobalGT("SanAfterJon","GLOBAL",2)~

EXTEND_BOTTOM suelle2 5
IF ~InParty("CVSandr")GlobalLT("SanAfterJon","GLOBAL",3)~ THEN DO ~SetGlobal("SanAfterJon","GLOBAL",2)~ EXIT
END

EXTEND_BOTTOM suelle2 8
IF ~InParty("CVSandr")GlobalLT("SanAfterJon","GLOBAL",3)~ THEN DO ~SetGlobal("SanAfterJon","GLOBAL",2)~ EXIT
END