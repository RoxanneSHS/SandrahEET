CHAIN
IF~Global("SanSola","GLOBAL",17)~THEN BSandr25 SanSolGods
~Your goddess and mine have much in common, Solaufein.~
DO~SetGlobal("SanSola","GLOBAL",18)RealSetGlobalTimer("SanSolaT","LOCALS",3600)~
==BSOLA25~ Both are not easily understood by the broad masses as their portfolio and heritage is tainted for many.~
==BSandr25~ Yes, I have often found the mistrust to Mystra because also evil characters use her magic. Especially from those surfacers who claim to know all about good and evil.~
==BSOLA25~ Those self-righteous paladins who claim that only a dead drow is a good drow?~
==BSandr25~ Yes, those and other like minded people. This is definitely not true for the disciples of Mystra.~
==BSOLA25~ I have heard that often she and Eilistraee are worshipped in the same places.~
==BSandr25~ Waterdeep, my home town, is one of them. Even if I cannot say that I actually *worship* my goddess - I would rather claim I work for her goals and follow her example.~
==BSOLA25~ You do not pray to her or expect her rewards for your service?~
==BSandr25~ Solaufein, I believe that the reward is in the Faerun we create through our deeds. Our life is here and now on this material plane. It is our responsibility - not the playground of the gods. Mystra's gifts aid me in my struggle to improve things and her example, that of my grandmother Midnight, shows me the way.~
==BSOLA25~ If it's a better Faerun we would achieve it may be one for us, for elves and for drow.~
==BSandr25~ The way our goddesses co-operate may set the example for us, my friend.~EXIT

CHAIN
IF~Global("SanSola","GLOBAL",19)~THEN BSandr25 SanSolResp
~Solaufein, what is more important to you, your own initiative and relying on your goddess?~
DO~SetGlobal("SanSola","GLOBAL",20)RealSetGlobalTimer("SanSolaT","LOCALS",1600)~
==BSOLA25~I would think one is the source of power for the other. Eilistraee gives me the confidence and guides my way but it is me who takes the steps on that road.~
==BSandr25~ And that road, do you think it is defined already by your destiny?~
==BSOLA25~ A question I often ponder myself - is it all pre-set like some prophesies let us think or do we have the freedom of our own decisions? With your background, Sandrah, you must have given this question quite some thought, haven't you?~
==BSandr25~My grandmother has been my inspiration and guidance in many situations, just like Eilistraee is for you. My heritage defines me - and where I come from is partly responsible for where I will go...still...~
==BSOLA25~...partly, you said?~
==BSandr25~Yes, only partly. Take <CHARNAME>'s example, the Bhaal heritage and the prophesies of Alaundo. I do not believe in prohesies to tell us everything, they are just some vague hint of possibilities. Still there is no denying that <CHARNAME> - and we as well - will play an important role in the coming events. This is the *where we come from* part, Solaufein.~
==BSOLA25~And the *where-we-go-to* part?~
==BSandr25~ We have our free will and the right to decide. We cannot influence all of the parameters and events around us but we can make our own decisions. We are nobody's toys or slaves.~
==BSOLA25~This gives us much responsibility...~
==BSandr25~...and much hope. Nothing is done unless we decide to do it.~ EXIT

CHAIN
IF~Global("SanSolUM1","GLOBAL",2)~ THEN BSandr25 SanSolUM
~An unexpected new perspective, Solaufein. I have observed it made some impact on you as well.~
DO~SetGlobal("SanSolUM1","GLOBAL",3)~
==BSOLA25~You are ever the caring companion and observer. I thought I had learned in the Underdark to hide my feelings but you see them nevertheless.~
=~Your sister is really Eilistraee's High Priestess in that legendary foundation in Undermountain. The tales are rich among us believers regarding this shelter and place of hope.~
==BSandr25~May it be a place where you can find new roots and a new life?~
==BSOLA25~If your sister by any means resembles you...well, it needs to be seen. At the moment my fate connects to <CHARNAME>. But one day, when this is all over, we may be looking for a home and place to dwell. It is good to know there may exist this option.~EXIT

EXTEND_BOTTOM SOLA 343
IF~InParty("CVSandr") Global("Waiting","LOCALS",0)!InParty(Myself) Global("SolaUmo5","LOCALS",1)~THEN REPLY~ We cannot travel together at the moment, my friend.~GOTO Qidr1
END

APPEND SOLA
IF~~THEN BEGIN Qidr1
SAY~As you wish, <CHARNAME>. I have seen the place where I can go in Eilistraee's name. You will find me in Qilandrha's enclave in Undermountain if you desire to meet me again.~
IF~~THEN DO~ SetGlobal("Waiting","LOCALS",1)EscapeAreaMove("CVUMO5",1380,1078,4)~EXIT
END
END