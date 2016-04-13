BEGIN CVBrage

CHAIN
IF~AreaCheck("bd7300")~THEN CVBrage Saerch1
~Are you here to re-open the pass? I must move on to the north.~
==CVSandrJ~Brage? Brage of Nashkel! We have met before.~
==CVBrage~I remember you...even if just vaguely.~
==CVSandrJ~The allied forces fighting against the Crusade could need a competent fighter like you.~
END
++~Where do you need to go so urgently? ~+ Saerch2
++~The officers in the camp a little south would welcome you? ~+ Saerch2

CHAIN
IF~~THEN CVBrage Saerch2
~I cannot waste time, I need to go on. The Stormhorns wait for me.~
==CVSandrJ~Why the Stormhorns?~
==CVBrage~Sharkta Fai - I am wasting time here...~DO~AddJournalEntry(@970,QUEST) EscapeAreaDestroy(35)~EXIT