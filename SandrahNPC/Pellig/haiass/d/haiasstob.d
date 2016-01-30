EXTEND_TOP FATESP 6

IF ~!Dead("Haiass")
    !InMyArea("Haiass")
    Global("HaiassSummoned","GLOBAL",0)~ THEN
  REPLY @0 DO ~SetGlobal("HaiassSummoned","GLOBAL",1)~ GOTO 8
END
