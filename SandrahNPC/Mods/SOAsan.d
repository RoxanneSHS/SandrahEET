APPEND  CVSANDRJ
IF~ Global("Mecorima","ars002",2)~THEN BEGIN SanMecorima1
SAY~Some items could tell long stories if they had a mouth - like for example this chain mail.~
IF~~THEN REPLY~ You probably could speak for it, my learned counsellor.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("Mecorima","ars002",3)~GOTO SanMecorima2
IF~~THEN REPLY~ I bet you know the story it may have to tell us, right?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1) SetGlobal("Mecorima","ars002",3)~GOTO SanMecorima2
IF~~THEN REPLY~ By Talos, woman, not now!~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-5) SetGlobal("Mecorima","ars002",3)~EXIT
END

IF~~THEN BEGIN SanMecorima2
SAY~The Chain Mail was made for the Sun elve Mecorima Sylerim, a gifted diplomat of her kin who needed something extra to ward off rival factions. To achieve this she had this armor made that would save her life from assassination attempts and bend the will of noble lords. ~
=~It is reported that agents of the Stormlord Talos assassinated Mecorima as she disturbed some of their sinister plots. They took the chain mail from her corpse. Its destiny from there was unknown - until today. ~
IF~~THEN REPLY~ She is dead but Talos followers are not. It is probably one of those items we gain that draws unwanted attention to our party...~EXIT
IF~~THEN REPLY~ As there is no one to claim it from us today, we may keep it as compensation for the revenge we took on those Talos devotees in Mecorima's name.~EXIT
END
END

//Stone of Askavar
INTERJECT_COPY_TRANS CEARWIN 23  SoAHarp1
== BSANDR IF ~ InParty("CVSandr")~ THEN~ Say, Cearwin, as we have put our effort in assisting the Harpers in this urgent task, may we expect some information from your group in return?~
== CEARWIN IF ~ InParty("CVSandr")~ THEN~ Lady, you are quite knowledgeable and have seen well through our secrecy. It is indeed the Harpers you are helping out, as well as any just citizens of the Sword Coast.~
== BSANDR IF ~ InParty("CVSandr")~ THEN~ Well, may I inquire a bit about a recently deceased member of the Harpers? Gorion.~
== CEARWIN IF ~ InParty("CVSandr")~ THEN~ Grave news it was for us. But there is nothing I can tell you about him or his ward, lady, being just a messenger of lesser standing in the organisation myself.~
== BSANDR IF ~ InParty("CVSandr")~ THEN~ What about Aranor?~
== CEARWIN IF ~ InParty("CVSandr")~ THEN~ He is the local overseer at least for this case. If you successfully return the missing Stone to him, you may find him grateful enough to answer your questions. I am personally sorry I cannot provide you with more at the moment.~
END

INTERJECT_COPY_TRANS ARANOR 18 SoAHarp2
== BSANDR IF ~ InParty("CVSandr")~ THEN~ Actually a compensation in gold and such is not what we would have expected for helping the Harpers in such an urgent issue.~
== ARANOR IF ~ InParty("CVSandr")~ THEN~ You know much, respectable young lady. So I assume you are as well aware that the Harpers acted not for their own interests but for the welfare of the Realms at large. Anyway I will listen to you.~
== BSANDR IF ~ InParty("CVSandr")~ THEN~ We need a bit of lore about a deceased member of the Harpers, Gorion of Candlekeep.~
== ARANOR IF ~ InParty("CVSandr")~ THEN~ Hmm, hmm. Your father, Sandrah of Waterdeep, must have his reasons to let you and your companion, Gorion's Ward <CHARNAME>, come to your own conclusions. I will not interfere with Elminster, even if I had the knowledge you are seeking, which is not the case.~
== BSANDR IF ~ InParty("CVSandr")~ THEN~ (Laughs) I should have known, you already knew who we are. Probably then it was no coincidence that we received this quest. From your words I deduct that my father and Gorion - yes, and Winthrop - are the only ones even among the Harpers who could have the answers we require.~
== ARANOR IF ~ InParty("CVSandr")~ THEN~ Knowing your abilities by now, I am sure you will succeed. And you are wise enough not to blame your father for the way he operates. There are good reasons for it, I assure you, even if I myself do not know them. The Bhaal issue has always been kept to the highest ranks in the Harpers only.~
END