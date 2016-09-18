BEGIN CVVicsis

CHAIN
IF~Global("SanVicArrst","GLOBAL",1)~ THEN CVSafgua VicHold1
~ Stand, citizens, deliver the drow!~
DO~SetGlobal("SanVicArrst","GLOBAL",2)~
==Viconij~What, damned rivvil? Not again!~
==CVSafgua~ In the name of the Council, Viconia De'Vir, you are under arrest.~
==CVSandrJ~You must have VERY good reasons for this action, officer.~
==CVSafgua~ Do not try to intervene, lady, you might get in trouble yourself for accompanying an accused murderer.~
==CVSandrJ~What is the accusation against her?~
==CVSafgua~ Viconia De'Vir, you are accused of murdering Lorena Balthis...~
==Viconij~Acton Balthis' wife?~
==CVSafgua~So you know your victim well...~
==Viconij~Baah, I never met that woman and wouldn't know her on the street if I met her. The husband is all I had relations to.~
==CVSafgua~It is known you were his mistress - that is why you murdered her.~
==CVSandrJ~This is nonsense, officer, that relationship is long in the past. When did the murder occur?~
==CVSafgua~Two nights ago.~
END
++~Impossible, we were together in Trademeet at that time.~ + VicHold2
++~Never could she have done it, we spend that night together at d'Arnise Hold.~ + VicHold2
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~I am witness that she spend the night in my bed, officer.~  + VicHold2
++~She, eh,...she has an alibi for that night..eh, yes, she has.~ + VicHold2

CHAIN
IF~~ THEN CVSafgua VicHold2
~Be that true or not, court is not held by me out on the street but in Council at a given date. The investigation is persued with high priority given Acton Balthis status in Amn. ~
=~Now stand aside while I take the drow in custody. You will not oppose the Council and the Cowled Wizards openly, will you. This is the law, respect it.~
==CVSandrJ~Who is responsible for the investigation?~
==CVSafgua~Corgeig Axehand himself, as this case involves the nobility of Amn.~
END
++~Make sure to treat her right or our wraith will be upon you once we freed the innocent woman!~ + VicHold3
++~We will talk to Axehand immediately. She is framed by someone for sure.~+ VicHold3
++~You just need a scapegoat to present to the public. What can be better than a drow, bigot fool. We will get her out quickly.~+ VicHold3

CHAIN
IF~~ THEN CVSafgua VicHold3
~Come now, drow, resistance is useless.~
DO~ClearAllActions() SmallWait(6) StartCutSceneMode() StartCutScene("CVViCArr")~EXIT

CHAIN
IF WEIGHT #-9~OR(2)Global("SanVicArrst","GLOBAL",3) Global("SanVicArrst","GLOBAL",6)~THEN Viconi GetmeOut1
~It is obvious no one believes in the innocence of a drow.~
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ~There are some that do and they are working on a way to free you right now.~
==Viconi~I would laugh at anybody telling me such except for you, Sandrah. Do you have clues?~
==CVSandrJ~WE know you were with us even if the authorities believe we would give any of our companions an alibi regardless of the truth. It is important for us but not for them.~
==CVSandrJ ~We will continue our search, I swear it will not be long, Viconia.~
END
IF~~THEN REPLY~Do not despair, Viconia, we will free you soon.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY~Do not give up hope, my love, I do all I can to get you out of this.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY~This farce will soon end and the truth will triumph.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",4)~THEN Viconi GetmeOut2
~It is obvious no one believes in the innocence of a drow.~
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ~There are some that do and they are working on a way to free you right now.~
==Viconi~I would laugh at anybody telling me such except for you, Sandrah. Do you have clues?~
==CVSandrJ ~The weapon used was a katana...~
==Viconi ~ Impossible, Shar would not allow me to use that kind of weapon!!~
==CVSandrJ ~Exactly - the fact raised initial doubt on your guilt with Axehand but not yet enough to seek for the real culprit.~DO~SetGlobal("WeaponUse","GLOBAL",2) ~
END
IF~~THEN REPLY~Do not despair, Viconia, we will free you soon.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY~Do not give up hope, my love, I do all I can to get you out of this.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT
IF~~THEN REPLY~This farce will soon end and the truth will triumph.~DO~ApplySpellRES("BGSLEEP","Viconia") ~EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",5)~THEN Viconi GetmeOut1
~It is obvious no one believes in the innocence of a drow.~
DO~ChangeAIScript("",DEFAULT)~
==CVSandrJ~There are some that do and they are working on a way to free you right now.~
==Viconi~I would laugh at anybody telling me such except for you, Sandrah. Do you have clues?~
==CVSandrJ IF~Global("WeaponUse","GLOBAL",1)~THEN~The weapon used was a katana...~
==Viconi IF~Global("WeaponUse","GLOBAL",1)~THEN~ Impossible, Shar would not allow me to use that kind of weapon!!~
==CVSandrJ IF~Global("WeaponUse","GLOBAL",1)~THEN~Exactly - the fact raised initial doubt on your guilt with Axehand but not yet enough to seek for the real culprit.~DO~SetGlobal("WeaponUse","GLOBAL",2) ~
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN~We talked to a witness who saw the drow who killed Lorena Balthis.~
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN~He saw a drow? But did he see me?~
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN~A good question, Viconia, but as close as you were to Acton Balthis, his adjutant Pips should know you well.~
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN~This time you err, my clever friend. Acton and me never met on his premises or with any of his servants around - we used the rooms of the Delosar's Inn.~
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN~He saw a drow, just like you said, but he did not see you!! Now we must find that mysterious woman who has an interest to frame you in this way. Do you have any idea who she might be?~
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN~No...except...hm, possible...~
==CVSandrJ IF~Global("Drowseen","GLOBAL",1)~THEN~Yes?~
==Viconi IF~Global("Drowseen","GLOBAL",1)~THEN~Except for Lolth's servants there are only few who would hate me so much that they would persue me after all this time. I do not even know if any of them is still alive.~
=~My sisters.~ DO~SetGlobal("Drowseen","GLOBAL",2) ~
==CVSandrJ ~We will continue our search, I swear it will not be long, Viconia.~
END
++~We must find her - where would a drow go in this city?~+ VicSis

CHAIN
IF~~THEN Viconi  VicSis
~Given she is one of my surviving sisters, she has not my experience with the surface. She will seek shelter in the darkness, those tunnels or tombs that undermine this cursed town.~
DO~ SetGlobal("SanVicArrst","GLOBAL",6) ApplySpellRES("BGSLEEP","Viconia") ~ EXIT

CHAIN
IF WEIGHT #-9~Global("SanVicArrst","GLOBAL",8)~THEN Viconi GetOut1
~The jailer just opened the door a minute ago and now you are here. It is not to accompany me to my execution?~
DO~SetGlobal("SanVicArrst","GLOBAL",9) ~
==CVSandrJ~The murderer has already received her punishment. Binamor DeVir is dead.~
=~(Sandrah gives the details of your search and battle against her sister.)~
==Viconi~Will I ever leave the Underdark behind?~ DO~JoinParty()~
END
++~For the moment let us leave this gloomy place behind, my friend.~ EXIT
++~For the moment let us leave this gloomy place behind, my love.~ EXIT

CHAIN
IF WEIGHT #-4~ Global("SanVicArrst","GLOBAL",3) ~THEN  Corgeig VicHint1
~Ah, the party of <CHARNAME>. I was somehow expecting you. You are known to stir trouble and one of your company is really a cold blooded murderer.~
DO~SetGlobal("SanVicArrst","GLOBAL",4) SetGlobal("WeaponUse","GLOBAL",1) ~
==CVSandrJ~We are where trouble is present, so much is true, but we seldom stir it. Often we do what the guard was unable to perform.~
=~But we are not here to exchange pleasantries, Axehand. If you know us so well, you will also know we are loyal to our comrads.~
==Corgeig~A rare virtue in Amn, even among my peer nobles.~
END
++~Viconia is innocent, we were together in Trademeet at that time.~ + VicHint2
++~Never could she have done it, we spend that night together at d'Arnise Hold.~ + VicHint2
IF~Global("SanRomPath","GLOBAL",1)~THEN REPLY~I am witness that she spend the night in my bed, officer.~  + VicHint2
++~She, eh,...she has an alibi for that night..eh, she is misused as a scapegoat because she is drow.~ + VicHint2

CHAIN
IF ~~THEN  Corgeig VicHint2
~Yes, I have no doubt in your loyalty to her. You must understand that your words slightly impress me but we need more evidence in such a grave case. The wife of one of our highest nobles has been murdered.~
==CVSandrJ~Can you provide us with the facts that led you to accuse Viconia? Maybe our experience and knowledge of her background can shed a new light on the things.~
==Corgeig~Why not, mylady, at least you are persons of some reputation.~
=~Lorena Balthis was murdered in her estate in the Bridge District two nights ago.~
==CVSandrJ~As it does not help much to say that we - including Viconia - were far from the scene, what other details can you provide?~
==Corgeig~She was slain from behind with a drow katana...~
==CVSandrJ~Viconia is a priestess of Shar, she is unable to use such a weapon.~
==Corgeig~Well, I would agree to that in general, provided her relation to Shar is really as she claims. We have no means to confirm that but we keep it in mind.~
==CVSandrJ~A drow weapon is probably not the only trace that led you to suspect her of the deed.~
==Corgeig~A witness saw her leave the scene after the deed, a member of the Vice-Regent's staff.~
==CVSandrJ~This person knew Viconia or did he just see a drow?~
==Corgeig~She was his mistress once so I guess his secretary should know her well.~
==CVSandrJ~Thank you for now, Axehand, we will look a bit deeper into this evidence if you do not mind.~
==Corgeig~I have to admit you were able to raise some doubts with me, so I have no objection if you run your own investigation. I am interested in the true murder not just to present a culprit to the angry mob who may turn into a martyr later on.~
END
++~I think it would be worth talking to that witness at the Balthis estate.~EXIT
++~They have no real proof for guilt and we have no real proof for innocence, as she is drow that makes her guilty enough for our laws. Let us visit the scene of the crime.~EXIT

CHAIN
IF WEIGHT #-4~ OR(3) Global("SanVicArrst","GLOBAL",5) Global("SanVicArrst","GLOBAL",6) Global("SanVicArrst","GLOBAL",7) Global("Corgwait","LOCALS",0)~THEN  Corgeig VicDrw1
~Ah, <CHARNAME>. You have returned with news?~
DO~SetGlobal("Corgwait","LOCALS",1)~
==CVSandrJ~We have interviewed Pips a bit more closely. Fact is that he saw a drow female leave the scene after the crime - however he confirmed that he never before had met Viconia as she and Acton Balthis had their rendezvous in secret.~
==Corgeig~Another drow? Quite a strange coincidence, wouldn't you agree.~
==CVSandrJ~Not if the murderer wants us to think just that. It must have been someone who wants to have this murder put on Viconia's account.~
==Corgeig~Who would do such a thing?~
==CVSandrJ~Viconia left the Underdark under turbulent circumstances to say the least. She did not leave friends behind.~
END
IF~ Global("Drowseen","GLOBAL",2)~THEN REPLY~Her family had to suffer hard and fell in disgrace due to her acts against the hateful Lolth. We assume one of her surviving sisters was sent to the surface to execute the revenge.~GOTO VicDrw2
IF~GlobalLT("SanVicArrst","GLOBAL",7)~THEN REPLY~Let me guess - you wouldn't believe us until we delivered that drow right to your doorstep including the bleeding weapon, he?  ~GOTO VicDrw2

CHAIN
IF~~THEN Corgeig VicDrw2
~Bring me that murderer and the weapon and your assumptions may be confirmed. With what you have delivered so far I will at least be able to postpone the date for the trial by a tenday.~
END
++~Fine, we will return.~ EXIT
IF~PartyHasItem("CVVICSis")~THEN REPLY~Further delay is not necessary...~GOTO VicDrw3

CHAIN
IF WEIGHT #-4~Global("SanVicArrst","GLOBAL",7) Global("Corgwait","LOCALS",1)~THEN Corgeig VicDrw3
~You have further evidence, <CHARNAME>?~
DO~SetGlobal("SanVicArrst","GLOBAL",8)~
==CVSandrJ~We have found the dark lady in question and the weapon.~
==Corgeig~I do not regret my trust in you. Tell me more.~
==CVSandrJ~(Sandrah and you report the details about Binamor DeVir to Corgeig.)~
=~In case you need her body, send men quickly to the Graveyard catacombs, the spiders down there may have already started their feast on the murderer.~
==Corgeig~The wicked plan almost succeeded - without your intervention Viconia would surely have received a death sentence. So this is the weapon in question? I must keep it as evidence to close the case.~
DO~TakePartyItem("CVVicsis") AddexperienceParty(17500)~
==Corgeig~I will send notice to the jailer that your friend is free.~
END
++~Let us go and bring her the good news immediately.~EXIT
++~Let us go and pick her up again immediately.~ EXIT

CHAIN
IF WEIGHT #-3~ Global("SanVicArrst","GLOBAL",4) ~THEN  Hapip VicHint3
~Can you not see that this is a house of mourning. We do not receive any visitors right now.~
DO~ SetGlobal("SanVicArrst","GLOBAL",5) SetGlobal("Drowseen","GLOBAL",1) ~
==CVSandrJ~You are Acton Balthis assistant, right, the one who saw the deed?~
==Hapip~I saw the drow leaving the scene, that is true.~
==CVSandrJ~You saw Viconia, your master's former mistress?~
==Hapip~What do you mean?~
==CVSandrJ~You know Viconia well from her former affair with your master, you are sure it was her you saw on that night?~
==Hapip~Eh...you may be mistaken, the master was very discreet with his mistress, she was never brought to the house.~
==CVSandrJ~They met outside, I see. That means she was not familiar with the house.~
==Hapip~She never came here, the master always went out alone to meet her, I don't know where they met.~
==CVSandrJ~But hold on, if he went out alone this would mean you never met her?~
==Hapip~They may have tried to be unseen but all in the quarter know she was a drow.~
==CVSandrJ~I conclude that you never saw Viconia DeVir yourself.~
==Hapip~I saw her on the night of the murder.~
==CVSandrJ~How do you know? You saw a drow, that is all.~ 
END
++~I have the feeling we have to find that mysterious drow in order to prove Viconia's innocence.~ EXTERN CVSandrJ VicHint4
++~We must inform Corgein about that fact, they must search for that drow.~EXTERN CVSandrJ VicHint4

CHAIN
IF~~THEN CVSandrJ VicHint4
~If anyone can shed a light on this, it will be Viconia herself. It is obvious that someone wanted to get her in trouble and out of the way with this murder. Balthis himself tried it already one time but it might be as well that her history of the Underdark catches up with her now.~
END
++~Well, let us ask her about it in the prison.~EXIT
++~Well, let's see what Corgeig has to say to this new fact.~EXIT

CHAIN
IF~OR(2) Global("SanSeesDrow","ar0801",1) Global("SanSeesDrow","ar0808",1)~THEN CVSandrJ VicSisHelp1
~Did you see that, <CHARNAME>, the drow over there?~
DO~SetGlobal("SanSeesDrow","ar0801",2) SetGlobal("SanSeesDrow","ar0808",2)~
END
++~I didn't see her...may it be the one we search for?~+ VicSisHelp2

CHAIN
IF~~THEN CVSandrJ VicSisHelp2
~It was a female drow who vanished into that spider web structure over there. Be cautious, she may not be alone.~EXIT

CHAIN
IF~Global("CVVICSp","ar0804",1)~THEN CVVicsis Found
~I recognize you - you are the Bhaalspawn fool and wael friends that tried to protect my treacherous sister.~
DO~SetGlobal("CVVICSp","ar0804",2)~
==CVSandrJ~So Viconia was right to suspect a former family member to have laid the trap for her.~
==CVVicsis~Our house, House DeVir, has waited long to get a chance to eliminate the traitor who caused our downfall from Lolth's grace. In your company she was unreachable for us - but not for the force of your silly surfacer's laws.~
=~Now she will burn, executed by the ones she ran to for shelter. House DeVir will finally regain the favour of the Spider Queen.~
==CVSandrJ~She is not dead yet and she will not die for your murder of a complete innocent.~
==CVVicsis~With the help of our ally Pai'Na we will depart now to the Underdark without a trace for you to prove (spit) Viconia's (spit) innocence to YOUR law. She is dead without knowing it yet.~
==CVSandrJ~I see you carry the weapon used to perform the deed. This evidence together with your dead body will release her and clear her name.~
==CVVicsis~Dream on, priestess, haha...~
DO~Enemy() ActionOverride("Sppain",Enemy())~EXIT

CHAIN
IF WEIGHT #-13~Global("SanVicArrst","GLOBAL",10)~THEN BViconi Freatl
~Your silly surfacer's notion of friendship is something I have come to appreciate, Sandrah.~
DO~SetGlobal("SanVicArrst","GLOBAL",11) ReallyForceSpellRES("SanHamCL",Myself)~
==BSandr~Without it we would not be here talking to each other again. I would miss it.~
==BViconi~So would I.~EXIT