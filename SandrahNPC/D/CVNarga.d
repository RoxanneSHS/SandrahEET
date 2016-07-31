BEGIN CVNarga

CHAIN
IF~Global("Narga","BG0200",1) ~ THEN CVNarga InBGTown1
~You sssere!! Ssstand and give me a talk.~
==BIMOEN IF~InParty("Imoen2")~ THEN~ Oooh, I washed myself this very morn, no use to shower me with spittle!~
==CVSandrJ IF~!InParty("Imoen2")~ THEN~ A very unwelcome shower of spittle...who may you be?~
==CVSandrJ IF~InParty("Imoen2")~ THEN~ Who may you be - another red wizard it seems?~
==CVNarga~ Ssssweet, so sssweet - and ssstill ssso deadly...Have you met the man Ve'xelt inside sssere?~
==CVSandrJ~ If he was a companion of yours then be warned. He attacked us without a reason as we tried to retrieve an artifact for the owner of that house.~
==CVNarga~Very good!! I do not care for sssat fool'sss fate - but you know where the renegade isss.~
==CVSandrJ~ The intention of a red wizard can never be aligned with our dealing with the situation. We have no reason to tell you where Ordolath dwells.~
END
++~The man you seek is...ouch!!~ + InBGTown2
++~I agree with my companion, get lost, red scum.~ + InBGTown3

CHAIN 
IF~~THEN CVNarga InBGTown2
~(A sharp pain explodes in your toe as Sandrah's spiked boot heel crushes down on it.)~
==CVSandrJ~ Have you lost your mind, <CHARNAME>. We have no reason to tell you anything, red scum.~
==CVNarga~A bad choice, my sssweet ssssoon to be lovessslave. I will find him by the artefact you will now deliver to me. NOW!!~ DO~ SetGlobal("Narga","BG0200",2) Enemy() ~EXIT

CHAIN
IF~~THEN CVNarga InBGTown3
~A bad choice, my sssweet ssssoon to be lovessslave. I will find him by the artefact you will now deliver to me. NOW!!~ DO~ SetGlobal("Narga","BG0200",2) Enemy() ~EXIT