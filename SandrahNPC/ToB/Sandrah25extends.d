//Fate Spirit

EXTEND_BOTTOM FATESP 6 #17
IF ~!InMyArea("CVSandr") Global("SandrahSummoned","GLOBAL",0)~THEN REPLY~I desperately need Sandrah of Waterdeep by my side.~GOTO NoSan
END

APPEND FATESP

IF~~THEN BEGIN NoSan
SAY~I cannot do as you ask, Child of Bhaal.  The one you seek is protected by a power much greater than mine from such an attempt...~
=~But wait - there seems to be some answer.~
IF~~THEN DO ~
CreateVisualEffect("SPPORTAL",[1799.1228])
Wait(2)
CreateCreature("PelligT",[1799.1228],0)
SetGlobal("SandrahSummoned","GLOBAL",1)
~EXIT
END
END

//Charname's Mother
EXTEND_BOTTOM SOLAR 24
IF~GlobalGT("Formedcloth","GLOBAL",8)~THEN REPLY ~My mother's name was Khalindra, the wife of the wise Elminster and mother also to my companion Sandrah.~GOTO SanErr
END

APPEND SOLAR
IF~~THEN BEGIN SanErr
SAY~An understandable error, but sadly an error of you and your beloved. Wishful thinking that may have helped you in the past but it is time now to face the truth.~
IF~~THEN GOTO 25
END
END

//Saradush Episodes

EXTEND_BOTTOM Sarvolo 9
IF~InParty("CVSandr") ~THEN REPLY~Tell me about Sandrah of Waterdeep.~GOTO VolSan1
IF~InParty("CVJenlig")~THEN REPLY~Ha, you have surely no idea about my Githyanki companion...~GOTO VolJenl1
END

APPEND Sarvolo

IF~~THEN BEGIN VolSan1
SAY~The most beautiful priestess of Mystra in the history of the Realms, born of a bloodline older than any, with a heritage like none except the mighty Bhaalspawn <CHARNAME> with whom she has allied to change the face of Toril for all times.~
=~Her history would fill an immense tome already with even more still to come. Stay close to her and you will have a front seat when the greatest acts of our lifetime will be performed.~
IF~~THEN REPLY~I have a much better reason than that to stay with her, good Volo.~GOTO VolSan2
END

IF~~THEN BEGIN VolJenl1
SAY~Supreme Planewalker Commander Jen'lig of Tu'narath is one of the most fascinating companions of the Bhaalspawn <CHARNAME>...~
IF~~THEN REPLY~Wait a minute, Volo, how can you know such detail about a creature not even from our plane?~GOTO VolJenl2
END
END

CHAIN
IF~~THEN Sarvolo VolJenl2
~A historian and journalist can never reveal his sources, you must understand.~
==BJenli25~(Hiss) Must be hunters of my kin that inquire for me to tell manling!~
==Sarvolo~I..I never saw you before, lady githyanki, I could not tell them anything but the truth I knew about you...which is nothing.~
==BJenli25~They will not come again to you as trail was cold. They will find other source for information...(Hiss).~
END
++~Disturbing news.~+ 9

CHAIN
IF~~THEN Sarvolo VolSan2
~A reason better than a front row seat where history evolves?~
==BSandr25~How about putting some romance and love story in between all the boring *great deeds*.~
==Sarvolo~Ah, to spice up a bit the whole thing!~
==BSandr25~No, Volo, just to at least one time write about the most important thing of them all - Love.~
END
++~Love, Volo, not erotic ramblings, please.~+ 9

ADD_TRANS_ACTION Sarbha03 BEGIN 0 END BEGIN 0 1 2 END ~SetGlobal("SanDoneJahag","ar5007",1)~

ADD_TRANS_ACTION Hgkar01 BEGIN 0 END BEGIN 0 END ~SetGlobal("SanChoices","ar6400",1)~

//Mystra Visits

CHAIN
IF ~Global("SanMystApToB","GLOBAL",2)~THEN sanmyst VisitTob1
~Greetings, Sandrah, my beloved grandchild. Mh, what a place to dwell, (laughs), the price to entwine with a Bhaalspawn.~
DO ~SetGlobal("SanMystApToB","GLOBAL",3) SetGlobal("SanHealToB","GLOBAL",1)~
== BSANDR25 ~Greetings, Mystra and Midnight, my Goddess and my grandmother?~
== sanmyst~I am actually quite content to find you in this place, Sandrah, as you are still on <CHARNAME>'s side where your place is until this war is finally won.~
== BSANDR25 ~A war you call it, Mystra?~
== sanmyst~A war on Faerun and a war in Celestia as you surely know by now. You were always aware that the Time of Troubles were not finished as many liked to believe. There was just a cease fire until the forces on both sides were reinforced.~
== BSANDR25 ~Both sides - well, one side is clear, there are those who work for Bhaal's return regardless of the methods that might be required. Who are the opponents?~
== sanmyst~Look around you and you know the answer.~
== BSANDR25 ~Is that all that stands between the God of Murder and his return?~
== sanmyst~It is much, is it not? More than Midnight had when she fought against Bhaal.~
== BSANDR25 ~Yes and no - Midnight has won one battle and now as you say yourself the forces return. We are this time obliged to win the war.~
== sanmyst~Know, granddaughter, that many trust you and <CHARNAME> to achieve just that. It takes Bhaal's own blood to end the God of Murder - one thing we had not on our side in our fight.~
=~Know also that even your mad grandfather is aware of the danger for himself implied by Bhaal's return.~
=~Now, Sandrah, take this gift which is the reason I came to you this time.~DO~AddXPObject("CVSandr",40000) GiveItemCreate("CVMysClk","CVSandr",0,0,0)~
== BSANDR25 ~This is impossible - I cannot take that, it is for a god to wear...~
== sanmyst~Sandrah, Guardian of the Cloak! How can you guard it better than by wearing it? This is your Goddess' verdict and you are worth it. Farewell you all, I know you will succeed.~EXIT

CHAIN
IF~Global("SanRaiseMys","GLOBAL",2)~THEN sanmyst RaiseSan
~Greetings, Sandrah, my beloved grandchild, my priestess - and my successor.~
DO~SetGlobal("SanRaiseMys","GLOBAL",3)~
== BSANDR25 ~Is this the decision to be made by me now, grandmother Midnight? I wear your cloak already - is it not enough?~
== sanmyst~You have done what I had not the chance to finish - you and <CHARNAME> have finally ended the Time of Troubles and will now be offered what is rightfully yours. Listen to the divine reasoning and then make your choice if you had not made it already deep inside.~
=~Granddaughter, you have learned about the long line you come from and our role to connect the primary plane that is always and will always be our home with the Celestials and the Weave. You have proven that you are steadfast to follow a path that steers to righteousness while paying your dues to the practical circumstances at the same time. You have your ideals but you are no dreamer, you are courageous but not foolish or vain - in a word you are a woman like those who have stood before the decision in the past that is now yours.~
== BSANDR25 ~Why do I have to make this decision - you are Mystra and may continue to be so?~
== sanmyst~Remember your lore, Sandrah, and recall how I came to be what I am now. My reign over the Weave was never foreseen, you might say it was an incident like the untimely death of the one before me. The Time of Troubles created chaos everywhere and the ripples of it were present until today.~
=~Mystra was killed in the struggle while the gods roamed Faerun in their avatars, but AO knew that on their return a rush to stake claims for the unguarded Weave would commence. The Guardian had to be re-established quickly, but the one to take this responsibility was not yet ready for it. She was still nursed by her mother, who was already pregnant from the seed of the God of Murder, Qilandrha who has turned out so differently still. As you have found in your search I was the only one then to substitute the Guardian.~
== BSANDR25 ~Are you saying that your time as Mystra was always a preliminary solution?~
== sanmyst~You may put it that way. AO has granted to me to return to the mortal life I sacrificed to guarantee the stability of the planes on the day the true Mystra would be ready and willing to accept her role.~
== BSANDR25 ~And you have not changed your mind about it in the meantime while you had the opportunity to shape Faerun in the manner it ought to be?~
== sanmyst~I could not do as much as I would have wanted as long as Cyric and the stirring Bhaal and all their followers were not yet defeated.~
=~(Mystra gives you an intensive look that seems to touch your very soul and also the essence inside of you.)~
=~You, Sandrah, may have the ability to fulfil those dreams - with a companion at your side who may turn the power and essence of evil given to <PRO_HIMHER> to the power of love and hope. The pair of new gods to end the Trouble may be the hope for a new Faerun after all this time. I beg you, my beloved grandchild, do not cast this chance aside. Take your place among the immortals.~
== BSANDR25 ~Yes, Mystra, I will.~
=~(Sandrah gives you one of her enigmatic looks. You feel the hope she tries to express almost physically.) I hope I will have the companion at my side to make the change happen.~
==Finsol01~<CHARNAME>, the first decision thus has been made. May yours be just as wise.~
END
++~State your question, Solar.~EXTERN Finsol01 4

CHAIN
IF~Global("SandrahSummoned","GLOBAL",3)~THEN sanmyst RaiseSanNoPc
~Greetings, Sandrah, my beloved grandchild, my priestess - and my successor.~
DO~SetGlobal("SandrahSummoned","GLOBAL",4)~
== BSANDR25 ~Is this the decision to be made by me now, grandmother Midnight? I wear your cloak already - is it not enough?~
== sanmyst~You have done what I had not the chance to finish - you and <CHARNAME> have finally ended the Time of Troubles and will now be offered what is rightfully yours. Listen to the divine reasoning and then make your choice if you had not made it already deep inside.~
=~Granddaughter, you have learned about the long line you come from and our role to connect the primary plane that is always and will always be our home with the Celestials and the Weave. You have proven that you are steadfast to follow a path that steers to righteousness while paying your dues to the practical circumstances at the same time. You have your ideals but you are no dreamer, you are courageous but not foolish or vain - in a word you are a woman like those who have stood before the decision in the past that is now yours.~
== BSANDR25 ~Why do I have to make this decision - you are Mystra and may continue to be so?~
== sanmyst~Remember your lore, Sandrah, and recall how I came to be what I am now. My reign over the Weave was never foreseen, you might say it was an incident like the untimely death of the one before me. The Time of Troubles created chaos everywhere and the ripples of it were present until today.~
=~Mystra was killed in the struggle while the gods roamed Faerun in their avatars, but AO knew that on their return a rush to stake claims for the unguarded Weave would commence. The Guardian had to be re-established quickly, but the one to take this responsibility was not yet ready for it. She was still nursed by her mother, who was already pregnant from the seed of the God of Murder, Qilandrha who has turned out so differently still. As you have found in your search I was the only one then to substitute the Guardian.~
== BSANDR25 ~Are you saying that your time as Mystra was always a preliminary solution?~
== sanmyst~You may put it that way. AO has granted to me to return to the mortal life I sacrificed to guarantee the stability of the planes on the day the true Mystra would be ready and willing to accept her role.~
== BSANDR25 ~And you have not changed your mind about it in the meantime while you had the opportunity to shape Faerun in the manner it ought to be?~
== sanmyst~I could not do as much as I would have wanted as long as Cyric and the stirring Bhaal and all their followers were not yet defeated.~
=~(Mystra gives you an intensive look that seems to touch your very soul and also the essence inside of you.)~
=~You, Sandrah, may have the ability to fulfil those dreams - with a companion at your side that may turn the power and essence of evil given to <PRO_HIMHER> to the power of love and hope. The pair of new gods to end the Trouble may be the hope for a new Faerun after all this time. I beg you, my beloved grandchild, do not cast this chance aside. Take your place among the immortals.~
== BSANDR25 ~Yes, Mystra, I will.~
=~(Sandrah gives you one of her enigmatic looks. You feel the hope she tries to express almost physically.) I hope I will have the companion at my side to make the change happen.~
==Finsol01~<CHARNAME>, the first decision thus has been made. May yours be just as wise.~DO~ActionOverride("Finsol01",SetNumTimesTalkedTo(1))~EXTERN Finsol01 4


// Watcher's Keep Altar Ritual

EXTEND_BOTTOM Goralt1 0
IF ~InParty("CVSandr") Global("CribNote","GLOBAL",0)~THEN REPLY~Sandrah, can my knowledgeable priestess help me with this ritual?~EXTERN CVSan25J SanWKRitu1
IF ~InParty("CVSandr") Global("CribNote","GLOBAL",1)~THEN REPLY~Sandrah, can my knowledgeable priestess help me with this ritual?~EXTERN CVSan25J SanWKRitu2
END

CHAIN
IF~~THEN CVSan25J SanWKRitu1
~In general I know how to perform the ritual but we need to know the right chapter and verse from the book to read during the process. The priest will know it probably or has noted it down somewhere.~
END
++~Puuh, fine, let us look for it.~EXTERN Goralt1 8

CHAIN
IF~~THEN CVSan25J SanWKRitu2
~Yes, I can do it, but watch out for those remaining watcher statues. They are here for some reason and I sense their danger. I will start now.~
=~(She rings the bell.)~
==Goralt1~The altar pulsates with a blue glow as if to response.~
==CVSan25J ~(She rings the bell again.) ~
==Goralt1~The whole temple trembles slightly and you feel magic energy concentrating in the place.~
==CVSan25J ~(Sandrah lightens the candle now.)~
==Goralt1~The tiny candle starts to burn with supra-natural intensity. The trembling beneath your feet increases.~
==CVSan25J ~(Sandrah has opened the book at the passage you found with the priest.) Orontia missnor butani. Olgor in athre. Damon.~
=~(At the last words she rings the bell a third time.)~
END
++ ~(The bell sound and resounds in a mighty echo through the hall.)~EXTERN Goralt1 6

//Enter Undermountain
CHAIN 
IF WEIGHT #-9~Global("San25ChiQuest","GLOBAL",13)~THEN CVRingo EnterUM
~Sandrah, my girl, I see that you finally have the key! A happy day - hopefully.~
DO~SetGlobal("San25ChiQuest","GLOBAL",14)~
==BSandr25~(Smiles) Everybody seems to have been part of this *conspiracy*, everyone I have trusted all my life.~
==CVRingo~Elminster has surely told you how necessary our secrecy had been. Nobody could tell the outcome of Qilandrha's education and development nor of your own Bhaalspawn mission. It has grieved us all, most of all your father, that the two sisters could not grow up together. ~
==BSandr25~Ignorance can be bliss, my teacher, as I have never known to miss something while I have grown up so happily - it must have hurt all of you even more, those who knew the truth.~
==CVRingo~The final result rewards us all. Your sister and you will play their role now to shape Faerun in a way we all have envisioned for so long. Together with you, <CHARNAME>.~
==BSandr25~Can you give us a clue what awaits us beyond Khalindra's gateway?~
==CVRingo~(Laughs) Your sister has advised us to let you take the conventional road to her Realm, not the short cut your father and me use. She claimed that you would want to learn about her world a bit before you meet her.~
END
++~We are supposed to search that dungeon of Undermountain to find her? ~+ EnterUM2

CHAIN
IF~~THEN CVRingo EnterUM2
~Nothing dramatic for a mighty adventurer of your category, <CHARNAME>. Take it more as an invitation to get acquainted with the ambient. You will just see a few of the upper levels on the descent towards Skullport, nothing dramatic.~
END
++~Fine, let's go have some fun.~EXIT
++~Ha, nice way to spend an afternoon, but what did I expect?~EXIT

CHAIN
IF~AreaCheck("CVumo4") Global("QiTest","cvumo4",0)~THEN SAMYSTP1 Mystpr251
~Greetings, My lady Sandrah, Grandchild of Midnight, Guardian of the Cloak. The seeker has found another step on the path.~
==BSandr25~Even you have known all this for a long time, Rhanthona?~
==SAMYSTP1~No, Sandrah, your sister and me have only met after you left the temple for your quest. I feel welcome down here, where everybody is accepted for his nature and heart's alignment without regard to race.~
==BSandr25~You can serve Mystra in both places I assume.~
==SAMYSTP1~This is what I do, Sister of the High Priestess.~
=~<CHARNAME>, I was sent to greet you here before you can move on to the temple behind me. Tell me what you have seen on your way to get here?~
END
++~The usual creatures and monsters that occupy places that have been abandoned by civilisation, nothing special.~DO~IncrementGlobal("QiTest","cvumo4",1)~+ Mystpr252
++~I have passed areas of death, traps and cruelty to find an oasis of peace in the end.~DO~IncrementGlobal("QiTest","cvumo4",3)~+ Mystpr252
++~Some dungeons that were not a big challenge for my companions and me. And finally this place that seems to be different.~DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr252

CHAIN
IF~~THEN SAMYSTP1 Mystpr252
~Can you imagine what reaching this place means for those who are not with such a powerful party like yours?~
END
++~It's a mystery to me how some have made it at all to here. They must be either really faithful or quite desperate to take up such a challenge.~DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr253
++~It's like everywhere else, the strong make it through and the weak are selected out. It's nature's way.~DO~IncrementGlobal("QiTest","cvumo4",1)~+ Mystpr253
++~Faerun is a cruel place for the suffering, outcast and weak. My party helps them where we can, still our work is like a tab in the ocean only.~DO~IncrementGlobal("QiTest","cvumo4",3)~+ Mystpr253

CHAIN
IF~~THEN SAMYSTP1 Mystpr253
~Will you tell others who may seek this shelter about it, now that you know it yourself?~
END
++~You surely don't want advertisements all over the place *Come to Undermountain*. I guess those who deserve to know will find it through their faith or through Eilistraee's guidance.~DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254
++~This is not for me to decide, I am just a guest here accompanying Sandrah to see her sister. Your secret is save with me.~DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254
++~There are a few whom I know well enough, Drow who have left and forsaken the Underdark for a better life and brighter future. They deserve to know there is a community that might welcome them.~DO~IncrementGlobal("QiTest","cvumo4",2)~+ Mystpr254

CHAIN
IF~~THEN SAMYSTP1 Mystpr254
~I thank you, <CHARNAME> for having been so open to my inquiries.~
END
IF~Global("QiTest","cvumo4",4)~THEN REPLY~Was this some kind of test again?~+ Mystpr255
IF~GlobalGT("QiTest","cvumo4",4)~THEN REPLY~Was this some kind of test again?~+ Mystpr256

CHAIN
IF~~THEN SAMYSTP1 Mystpr255
~In some way yes. You must wait here, Bhaalspawn, while Sandrah goes to see her sister.~
DO~SetGlobal("San25ChiQuest","GLOBAL",90) EscapeArea() ~EXIT

CHAIN
IF~~THEN SAMYSTP1 Mystpr256
~In some way yes. We trust you, Bhaalspawn, you may now go with Sandrah to see her sister. Take the entrance behind me, farewell.~
DO~SetGlobal("San25ChiQuest","GLOBAL",16) GiveItemCreate("CVUmward",Player1,0,0,0) EscapeArea()~EXIT

ADD_TRANS_ACTION AMCLER02 BEGIN 9 END BEGIN 0 END
~SetGlobal("SanBaltMelis","GLOBAL",1)~

//Szass in Neera quest
I_C_T OHNSzass 1 SanOhSzassR
==OHNSzass IF~InParty("CVSandr")~THEN~I was sure we meet again, miniature Mystra. Shall I extinct you right here and now or would you be my willing tool this time?~
==BSandr25 IF~InParty("CVSandr")~THEN~It is not my death you want, otherwise you had already advised your lackeys to attempt it. We are far too useful at the moment and you want not the unnecessary publicity of my demise in Thay.~
==OHNSzass IF~InParty("CVSandr")~THEN~(Grins) I will not underestimate you again, priestess. Still, your analysis is correct.~
==OHNSzass IF~InParty("CVSandr")~THEN~Back to you, Neera and <CHARNAME>.~
END

//Melissan Showdown
INTERJECT_COPY_TRANS Finmel01 27 SanOddElement1
==CVSan25J IF ~InParty("CVSandr") OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~You never had a chance to succeed - neither for your own ambitions nor for the case you had really followed Bhaal's orders.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~YOU!! Priestess, you and your goddess have dared to intervene again and again. You should not be here at all but dead since long already. But never mind, this will all be corrected now.~
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~With the essence of Qilandrha missing from your equations and the power of Mystra against you, you will fail.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~Who by the Nine Hells is Qilandrha?~
==CVQidr IF~InParty("CVSandr") InMyArea("CVQidr")~THEN~I am Qilandrha - born to Khalindra of Mystra's bloodline, sired by Bhaal.~
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~Tragic if it were not so laughable, Amelyssan. Did Bhaal not tell you about the one he spawned to end Mystra's line? The one who has more of the essence than the Five or even <CHARNAME>.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~A silly bluff - if such a power existed I would know it...it is impossible...Unless - the spawn failed and you are Mystra's descendent who survived...~
==CVSan25J IF ~InParty("CVSandr")!InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~It is even worse for you, as Qilandrha has defeated the calling of her blood and turned it into a power against Bhaal and yourself.~
==CVQidr IF ~InParty("CVSandr")InMyArea("CVQidr") ~THEN~It is even worse for you, as I have defeated the calling of my blood and turned it into a power against Bhaal and yourself.~END

INTERJECT_COPY_TRANS Finmel01 25 SanOddElement2
==CVSan25J IF ~InParty("CVSandr") OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~You never had a chance to succeed - neither for your own ambitions nor for the case you had really followed Bhaal's orders.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~YOU!! Priestess, you and your goddess have dared to intervene again and again. You should not be here at all but dead since long already. But never mind, this will all be corrected now.~
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~With the essence of Qilandrha missing from your equations and the power of Mystra against you, you will fail.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~Who by the Nine Hells is Qilandrha?~
==CVQidr IF~InParty("CVSandr") InMyArea("CVQidr")~THEN~I am Qilandrha - born to Khalindra of Mystra's bloodline, sired by Bhaal.~
==CVSan25J IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~Tragic if it were not so laughable, Amelyssan. Did Bhaal not tell you about the one he spawned to end Mystra's line? The one who has more of the essence than the Five or even <CHARNAME>.~
==Finmel01 IF ~InParty("CVSandr")OR(2) InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~A silly bluff - if such a power existed I would know it...it is impossible...Unless - the spawn failed and you are Mystra's descendent who survived...~
==CVSan25J IF ~InParty("CVSandr")!InMyArea("CVQidr") PartyHasItem("CVQCall")~THEN~It is even worse for you, as Qilandrha has defeated the calling of her blood and turned it into a power against Bhaal and yourself.~
==CVQidr IF ~InParty("CVSandr")InMyArea("CVQidr") ~THEN~It is even worse for you, as I have defeated the calling of my blood and turned it into a power against Bhaal and yourself.~END

INTERJECT_COPY_TRANS Finsol01 14 SanQidrEssence1
==CVSan25J IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN~What will happen to my sister and her essence that she uses in the name of Eilistraeee and Mystra and has no intention to apply in an evil way.~
==Finsol01 IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN~The odd element, hidden by those mortals from all...even from the celestials except for your goddess. What would you do about it had you the right to decide, Sandrah?~
==CVSan25J IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN~I trust my sister as I have seen her deeds and accomplishments at Undermountain. Her essence has been turned into something positive and it is where it belongs.~
==Finsol01 IF ~InParty("CVSandr") !InMyArea("CVQidr2") ~THEN~So it shall be, Sandrah, I take it as the verdict of the one you will soon become.~END

INTERJECT_COPY_TRANS Finsol01 14 SanQidrEssence2
==CVQidr IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN~What will happen to the part of the essence that is within me but which I use in the name of Eilistraeee and Mystra and have no intention to apply in an evil way ever.~
==Finsol01 IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN~The odd element, hidden by those mortals from all...even from the celestials except for your goddess. What would you do about it had you the right to decide, Sandrah?~
==CVSan25J IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN~I trust my sister as I have seen her deeds and accomplishments at Undermountain. Her essence has been purified and turned into something positive and it is where it belongs.~
==Finsol01 IF ~InParty("CVSandr") InMyArea("CVQidr2") ~THEN~So it shall be, Sandrah, I take it as the verdict of the one you will soon become.~END

ADD_TRANS_TRIGGER Finsol01 3
~!InParty("CVSandr")~

EXTEND_BOTTOM Finsol01 3
IF~InParty("CVSandr")~THEN DO ~SetGlobal("SanRaiseMys","GLOBAL",1) ClearAllActions()  StartCutSceneMode() StartCutScene("cut233h")~EXIT
END

ADD_TRANS_TRIGGER Finsol01 33
~!InParty("CVSandr")~

EXTEND_BOTTOM Finsol01 33
IF~InParty("CVSandr") GlobalLT("PPEvilChoices","GLOBAL",3) Global("PlayerChoseEssence","GLOBAL",1)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s1") ~EXIT
IF~!InParty("CVSandr") GlobalGT("PPEvilChoices","GLOBAL",2) Global("PlayerChoseEssence","GLOBAL",1)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s2") ~EXIT
IF~InParty("CVSandr") Global("PlayerChoseEssence","GLOBAL",0)~THEN DO~ClearAllActions() StartCutSceneMode() StartCutScene("cut233s3") ~EXIT
END

APPEND Finsol01

IF WEIGHT #-10~Global("SanRaiseMys","GLOBAL",1)~THEN BEGIN SanMystCalls
SAY~It will soon be the time for you to decide your fate, godchild. Maybe the decision to be made by one of your companions before that will impact your own choice.~
=~Sandrah of Waterdeep, your goddess demands for you. You have found your way and you have aided <CHARNAME> to find the own. You have done the unexpected again and again. Mystra requests you to make your choice prior to <CHARNAME> and only true to your own heart this time.~
IF~~THEN DO~SetGlobal("SanRaiseMys","GLOBAL",2) ActionOverride("Finmel01",DestroySelf()) ActionOverride("Balth2",DestroySelf()) ActionOverride("CVqidr2",DestroySelf())ClearAllActions()StartCutSceneMode() StartCutScene("CVcut301")~EXIT
END

IF WEIGHT #-11~Global("SandrahSummoned","GLOBAL",2)~THEN BEGIN SanMystCalls2
SAY~It will soon be the time for you to decide your fate, godchild. Maybe the decision to be made by one of your former companions before that will impact your own choice.~IF~~THEN DO~SetGlobal("SandrahSummoned","GLOBAL",3) ClearAllActions()StartCutSceneMode() StartCutScene("CVcut304")~EXIT
END

END


EXTEND_BOTTOM CHALCY01 1
IF~InParty("CVSandr")~THEN GOTO S101
END

CHAIN
IF~~THEN CHALCY01 S101
~Especially we need to get rid of so-called family who have a tendency to lean to the wrong side...~
==CVSan25J IF~Global("SanKevl","GLOBAL",0)~THEN~Any reminder of Mystra or even Kelemvor may result in another boost of madness, *grandfather*.~
==CVSan25J IF~GlobalGT("SanKevl","GLOBAL",0)~THEN~Any reminder of Mystra or your son may result in another boost of madness, *grandfather*.~
==CHALCY01~That witch of all witches has got her agent into here. Why AO has allowed such is hard to comprehend given the threat he issued to us gods for mingling with Bhaal...~
==CVSan25J ~I have no intent to disturb your conversation with <CHARNAME>, <PRO_HESHE> is more than capable to face you alone, Prince of Lies.~
==CHALCY01~To business then!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutch4b")~EXIT

