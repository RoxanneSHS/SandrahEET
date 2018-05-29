BEGIN CVBrage

CHAIN
IF~AreaCheck("bd7300")~THEN CVBrage Saerch1
~Are you here to re-open the pass? I must move on to the north.~
==CVSandrJ~Brage? Brage of Nashkel! We have met before.~
==CVBrage~I remember you...even if just vaguely.~
==CVSandrJ~The allied forces fighting against the Crusade could need a competent fighter like you.~
END
++~Where do you need to go so urgently? ~+ Saerch2
++~The officers in the camp a little south would welcome you. ~+ Saerch2

CHAIN
IF~~THEN CVBrage Saerch2
~I cannot waste time, I need to go on. The Stormhorns wait for me.~
==CVSandrJ~Why the Stormhorns?~
==CVBrage~Sharkta Fai - I am wasting time here...~DO~AddJournalEntry(@970,QUEST) EscapeAreaDestroy(35)~EXIT

CHAIN
IF~AreaCheck("id4004")~THEN CVBrage Saerchi1
~Is this the temple of Eldath?~
==CVSandrJ~Brage? Brage of Nashkel! We have met before.~
==CVBrage~I remember you...even if just vaguely.~
==CVSandrJ~We met Laryssa in Kuldahar not long ago, she was searching for you.~
==CVBrage~My good sister...I hope she is well?~
==CVSandrJ~Better than you, Brage. She returned to the south, the circumstances in Icewind Dale were not suitable for a woman travelling alone. But what do you do here?~
==CVBrage~I need to find a document, here in the enclave of Eldath...Sharkta Fai...~
==CVSandrJ~This place has been overrun by all types of reptiles in the service of a marilith. The priests are dead.~
==CVBrage~But the library, it cannot be destroyed!~
==CVSandrJ~Partly yes, parts are still intact. Will you come back with us to civilization?~
==CVBrage~No, my friends, the place is now save. I need time to search and to study it - time to search and study myself. Leave me here now, maybe our paths will cross someday.~DO~AddJournalEntry(@973,QUEST) MoveToPoint([900.1180]) Wait(4) EscapeAreaDestroy(35)~EXIT