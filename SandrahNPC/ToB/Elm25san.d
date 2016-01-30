BEGIN Elm25san

CHAIN
IF~Global("San25ChiQuest","GLOBAL",7)~ THEN Elm25san SanSist1
~ The time hath come for thee to hear what a caring and loving father had to hide from his own blood and her companions for so long. Mine beloved daughter, thou will soon understand why this had to be done for all of our sake.~
DO~SetGlobal("San25ChiQuest","GLOBAL",8)~
==BSandr25~ I trust you, father. You have not hidden the fate of my mother's Bhaalspawn from me to hurt me or out of mistrust, it must have been to protect me and that child alike.~
==Elm25san~ Thine insight is correct and makes the delivery of mine story easier for the father of two beloved daughters.~
==BSandr25~ A girl! And you call her daughter even though she is neither of your nor Khalindra's blood. (She has embraced the old man and lays her head to his breast to listen to the rest of the story.)~
==Elm25san~ I pray to Mystra that thou will call Qilandrha thy sister soon.~
==BSandr25~ Qilandrha - Khalindra, Qilue...~
==Elm25san~Thou willst soon understand more. Now let me get back to those dark past days when the evil was sown that haunts us these days.~
=~ <CHARNAME>, thine *father* left his essence in abundance on Toril when he learned about his nearing defeat. His spawns are of all kin and races, many weak, some powerful - thou hath encountered enough of them to tell.~
=~Much of that is contingency and redundancy introduced against his own enemies.~
==BSandr25~Mystra and Cyric?~
==Elm25san~Especially Mystra, yes, she hath a special role for the God of Murder. Thou will see soon.~
=~ Of the great number of Bhaalspawns there was only a dozend that really play a role for the return of the God of Murder.~
END
++~The five of that alliance? Myself, the mysterious traitor, who else?~+SanSist2
++~And you know who they are, old man?~+SanSist2

CHAIN
IF~~ THEN Elm25san SanSist2
~ Those five of the alliance, right, thyself or course, Sarevok,...~
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~ THEN~ I lost the power of Bhaal.~
==Elm25san IF~InParty("Sarevok")~ THEN~ Be thankful for it, only thine essence would be required, not thyself. Now thou may survive all of it.~
==BSandr25 IF~!InParty("Sarevok")~ THEN~ Sarevok was one of the mighty ones as well.~
==BIMOEN25 IF~InParty("Imoen2")~THEN~ And me?~
==Elm25san IF~InParty("Imoen2")~ THEN~ Thou areth, but among those whose essence would be required, not thyself. Now thou may come happily out of the war.~
==Elm25san~ Sarevok, Imoen - and Qilandrha. The rest have not survived.~
==BSandr25~ My sister as well, protected by you.~
==Elm25san~ Among those mighty Bhaalspawns there are three that are essential as at least one of them is required for the final ritual.~
END
++~A ritual??!! The dead god betrayed them all. None is to follow him - he wants to return himself!~+ SanSist3

CHAIN
IF~~ THEN Elm25san SanSist3
~ Yes. When enough of his essence is gathered in his domain in the Abyss he will attempt a return in the ritual. To perform it the responsibility for this he gave to his three most devoted high priestesses Alianna, Amelyssan and Nyalee and their temples.~
==BSandr25~You once already tried to prevent this from ever happening, did you not, father?~
==Elm25san~Soon after Midnight was elevated to Mystra her companion Cyric in one of his last clear moments revealed some evidence he had found when assuming Bhaal's portefolio. Our goddess requested me and the Harpers to strike against the Bhaalists.~
=~ Gorion attacked Alianna's temple and killed the one who had chosen to become the vessel for one of the spawns herself. What came then thou knowest best, <CHARNAME>.~
=~ Mineself attacked the temple of Nyalee who escaped my wraith with mine own mad father's aid. She rescued and raised another one of the Spawns, Yaga-Shura.~
END
++~What went wrong?~ + SanSist4
++~The third one was missed?~ + SanSist4

CHAIN
IF~~ THEN Elm25san SanSist4
~ AO himself intervened with Mystra claiming the goddess was shifting the balance too much to one side by interferring in this way on the primary plane. The Prince of Lies himself was ordered to shield the remains of Bhaal's devotees and the third temple. Now the only way ever to destroy it and to prevent the ritual would be from inside.~
==BSandr25~Does that mean the only ones to get access would be those required for the ritual itself - one of those three you mentioned and of whom <CHARNAME> is one?~
==Elm25san~ Absolutely correct. All hope lies with <CHARNAME> now.~
==BSandr25~ One of the three but the only one who knows that much, the other two may still think they may acquire their father's power and throne.~
==Elm25san~ Only one of them by now. One of the remaining from the Five - which one I do not know due to Cyric's diffusion. For the other I can give thee my word that she will not partake in it all.~
==BSandr25~ My sister?~
==Elm25san~Thou were correct in your assumption that Bhaal would place the mightiest of his spawns right next to the last remaining female of Mystra's bloodline.~
END
++~Only it was not me like we had thought.~ + SanSist5

CHAIN
IF~~ THEN Elm25san SanSist5
~ Qilandrha combines Bhaal's power with the blood from Mystra. She is even more powerful than you, <CHARNAME>. Sandrah, I had to keep my both daughters apart until it became assured which part of Qilandrha's heritage would be her destiny.~
==BSandr25~And then it was too late...I had met <CHARNAME> and we loved each other and travelled together. If my Bhaalspawn would chose the way for his father's powers he would be the most dangerous enemy on Toril for my sister.~
==Elm25san~Thou understand my concerns now, Sandrah. I will retreat to my study.~
==BSandr25~Can I not meet my sister after all, father?~
==Elm25san~Thou canst, darling. 'tis for you now to talk to <CHARNAME> and get the oath that the meeting will not end in bloodshed - otherwise you need to part and you can only go alone.~ DO~ EscapeAreaMove("CVStud",359,237,6)~ EXIT

CHAIN
IF~Global("San25ChiQuest","GLOBAL",10)~ THEN Elm25san SanSist6
~I see that between thee all is agreed.~
DO~SetGlobal("San25ChiQuest","GLOBAL",11)~
==BSandr25~ It is, you have our oath that I will meet Qilandrha with the love you have taught me and that she has received from you so far.~
==Elm25san~Thou knowest by now that thy sister hath never left Waterdeep but was hidden carefully from all who might have persued her. The priestesses of Eilistraee and Mystra and mineself raised and educated her and tried to give her the love of a family.~
==BSandr25~ I know very well what that means, dearest father.~
==Elm25san~She was told about her Bhaal heritage early when she discovered the first abilities that resulted from it, yet she is different from all the other spawns I have studied. Thine mother's love for her even as she knew the unborn's heritage and her own fate - this love and the power of her bloodline have infiltrated the Bhaal seed. Qilandrha controls the power within her and uses it for her sworn purpose.~
==BSandr25~ Tell me about it, please, father.~
==Elm25san~Bhaal implanted his spawns in all races and forms, not always necessarily the same as the poor vessels he chose as their *mothers*.~
==BSandr25~ She is not human, you mean?~
==Elm25san~In his arrogance and mad humour Bhaal chose to remind me of the heritage from Khalindra's line he planned to destroy.~
==BSandr25~ Qilue's heritage that is?~
==Elm25san~Right, mine firstborn, thy sister is drow and it is a gift that turned out much different from what Bhaal intended. I told thee about her education and abilities. Like a mirror of thyself she has become a priestess and is now the High Priestess of Eilistraee at Undermountain.~
==BSandr25~Is she willing to see me?~
==Elm25san~She yearns for it, Sandrah, having followed thine way and development with mine aid with the Shard all the time. Thy aim and hers are not apart, both the pride of mine heart.~
==BSandr25~Will you come with us to meet her?~
==Elm25san~This occasion is for thee and her alone. We will have time later to rejoin what is left of our family. Go now through the path laid by the one who has born thee both.~ DO ~GiveItemCreate("CVUmoK","CVSandr",0,0,0) EscapeArea()~EXIT









