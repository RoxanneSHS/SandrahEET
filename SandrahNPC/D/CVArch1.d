BEGIN CVARCH1

CHAIN
IF~IsGabber([PC])~THEN CVARCH1 Records
~Welcome to the archive of the Book That Writes itself.~
== CVARCH1 IF~InParty("RChloe")~ THEN~ Chloe, blessed daughter of Akadia, do you come for your record?~
== IF_FILE_EXISTS RChloeJ IF~ InParty("RChloe")~ THEN~ Blessed? Well maybe, but I don't care what's written - you wait for what I do and write it down afterwards.~
== CVARCH1~None of you is in my part of the register.~EXIT

BEGIN CVARCH2
CHAIN
IF~IsGabber([PC])~THEN CVARCH2 Records2
~Welcome to the archive of the Book That Writes itself.~
=~None of you is in my part of the register.~EXIT

BEGIN CVARCH3
CHAIN
IF~IsGabber([PC])~THEN CVARCH3 Records3
~Welcome to the archive of the Book That Writes itself.~ 
== CVARCH3 IF~InParty("Imoen2")~ THEN~ Imoen of Candlekeep, the Bhaalspawn files have been accessed already...~
== IMOEN2J IF~InParty("Imoen2")~ THEN~ Heya, babble not, old geezer, we know already 'n' I told your dragon buddy upstairs I don't wanna know none of that Murder god weirdnesses. SHUT UP!~
== CVARCH3~None of you is in my part of the register.~EXIT

BEGIN CVARCH4
CHAIN
IF~IsGabber([PC])~THEN CVARCH4 Records4
~Welcome to the archive of the Book That Writes itself.~
=~None of you is in my part of the register.~EXIT

BEGIN CVARCH6
CHAIN
IF~IsGabber([PC])~THEN CVARCH6 Records6
~Welcome to the archive of the Book That Writes itself.~
== CVARCH6 IF~InParty("Viconia")~ THEN~ Viconia, dark priestess of Shar...~
== ViconiJ IF~InParty("Viconia")~ THEN~ (Hiss), male, wait until I address you just in case I would need your service which I don't.~
== CVARCH6~None of you is in my part of the register.~EXIT
