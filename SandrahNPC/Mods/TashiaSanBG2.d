CHAIN
IF WEIGHT #-11~Global("SanTashiaB","GLOBAL",1)~THEN BTashia SanSorc
~Is that a look of approval on my spellcasting, Sandrah?~
DO~SetGlobal("SanTashiaB","GLOBAL",2)~
==BSandr~(Laughs) Oh, no, even as a disciple of the Goddess of All Magic it is not my role to judge other's talents. I was just once again fascinated by the fact that sorcerers have such a natural feeling and skill for their art, other than the scroll users that recite their texts.~
==BTashia~I understand it is not so much different from your own way - even if you in person seem to be different again from all other priests I have encountered.~
==BSandr~You are right, some abilities come to me almost naturally - I guess pretty similar to your own experiences.~
==BTashia~Yes and no - I still see a slight difference as I get new spells to my repertoire with experience but they are, hm, traditional arcana. You seem to *invent* new stuff which is based on the personal experience you make.~
==BSandr~Hm, I have never given it much thought before but I guess that is a valid observation. I often discovered some new ability after a certain experience I made or a foe I defeated.~
==BTashia~Do you have some explanation for it - I mean even for Mystra's priests that is quite unusual?~
==BSandr~If it is not a very special talent than it is maybe my blood relationship to the Goddess.~EXIT

CHAIN
IF WEIGHT #-11~Global("SanTashiaB","GLOBAL",3)~THEN BTashia SanSorc
~All those healing spells of yours are something that are not granted to me.~
DO~SetGlobal("SanTashiaB","GLOBAL",4) RealSetGlobalTimer("TashSanInt","LOCALS",1500)~
==BSandr~As a priestess I have specialized from the beginning in this aspect of the Weave's powers. The spells are just a tool, Tashia, I have tried to learn much more about the physical and spiritual bodies of the mortals in order to help and heal them.~
==BTashia~Do you think you would have become a healer even if you had not the access to magic?~
==BSandr~Hm, I probably would, even if that task would require much more dedication and time for the patients. I could never have gone on an adventuring quest like we do as the quick help and first aid required in our battles would not be possible without magic.~
==BTashia~Mystra be thanked for it then.~
==BSandr~Still I study the non-magical arts whenever I can. Especially the mind and the temper of a person can rarely be cured by some quickly cast spells. If you want to help a grieving or distorted person you must take your time and explore the other one deeply and carefully.~
==BTashia~One must be a very caring person to offer such help...maybe one day I may ask you about that again.~
==BSandr~I will always take my time for you, be assured, Tashia.~EXIT

CHAIN
IF WEIGHT #-11~Global("SanTashiaB","GLOBAL",5)~THEN BTashia SanBhalT
~Sandrah, you said you would always have time for a comrade in need of your aid.~
DO~SetGlobal("SanTashiaB","GLOBAL",6)RealSetGlobalTimer("TashSanInt","LOCALS",1500)~
==BSandr~ Sure - I assume it is not the body that requires my attention unless I have lost my diagnostic skills over night.~
==BTashia~You haven't, it's indeed my soul that's suffering. Given the time you travel with <CHARNAME> and the closeness of you two, you are aware of <PRO_HISHER> heritage.~
==BSandr~You are afraid of Bhaal's blood in our leader?~
==BTashia~You are not, obviously, and I am neither after all I observed so far. It's not <CHARNAME> I'm worried about so much.~
==BSandr~You knew another one before, right. We met you in Trademeet among the remains of a broken romance. You were in love with a Bhaalspawn. What went wrong?~
==BTashia~(Sigh) Your diagnostic skills are fully intact, Sandrah. Almost over night the man at my side turned into his bad twin, caused by the tainted blood as I found out later.~
==BSandr~The heritage of Bhaal is a heavy burden and lets none of the heirs unchanged. However, it is my thorough believe and experience so far that each spawn can forge and control the power inherited in his and her way.~
==BTashia~You mean, if it turns out evil it's just because the person was evil even before that?~
==BSandr~Not necessarily. The influence of Bhaal is an evil one and will change the bearer if he or she has not the strength, will and support to reject or modify it. We have seen the example of <CHARNAME>'s brother Sarevok whom we fought on the Sword Coast. In his case it were a step father and a power hungry advisor who nurished the call of the blood rather than help Sarevok control it.~
==BTashia~Like you help <CHARNAME> to do it?~
==BSandr~I hope I do. <CHARNAME>'s essence of Bhaal seems to be a rather powerful portion. It could make <PRO_HIMHER> a force in the Realms in one way or the other. It is a fate and there is no choice to ignore it - but a possibility to forge it.~
==BTashia~Can you think of a way to revert on the path once chosen under Bhaal's influence?~
==BSandr~I am afraid it will require even more effort than to steer the growing power into the right direction from the very beginning. As a healer, I seldom declare a case as hopeless.~
==BTashia~Thank you, Sandrah. I have no idea if my path, our path, will ever cross with Arilistan's again.~
==BSandr~You can count on your friends should it really happen.~EXIT