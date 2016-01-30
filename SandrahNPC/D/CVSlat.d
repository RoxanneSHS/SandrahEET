BEGIN CVSlat
BEGIN CVSlat2

CHAIN
IF~Global("Surrender","LOCALS",2)~ THEN CVSlat GiveUp
~Have mercy, I beg of you!! I surrender.~
DO~ SetGlobal("Surrender","LOCALS",3)~
==CVSandrJ~Drop your weapons.~
==BKeldor IF~InParty("Keldorn")~THEN~ You will feel Torm's justice right here, slaver. There is only one punishment adequate for your crimes - death.~
==Banomen IF~InParty("Anomen")~THEN~ You will feel Helm's justice right here, slaver. There is only one punishment adequate for your crimes - death.~
==CVSlat~ Hear me out, I was never one of them, it's a mistake, please...~
==BKeldor IF~InParty("Keldorn")~THEN~ You would tell anything to save your miserable life, thieving weasel.~
==Banomen IF~InParty("Anomen")~THEN~ You would tell anything to save your miserable life, thieving weasel.~
==CVSlat~ I'm just a thief, nothing more, I never killed or mistreated anyone...I had no idea what my employers did until we came here. And then it was too late.~
==CVSandrJ~ I hate the slavers and the red wizards like nothing else on the face of Toril and I am more than ready to strike her down with my hammer right here, paladin, if she really is guilty. At the moment she is just an unarmed woman begging for our mercy.~
==CVSlat~Lady, please hold back your paladin...I am a thief and they hired me to open the houses they showed me at night for them - I had little idea what they did inside, I mean that they killed parents and stole their children, until yesterday.~
==CVSandrJ~ Go on.~
==CVSlat~Merdoth, the red wizard leading the operation decided to take me with them claiming that I knew too much and could give the authorities the clues they needed to persue them. They took me to the outskirts of town where I first saw the caravan of all those enslaved children. But I was now their prisoner myself, Merdoth would not let me go.~
==BKeldor IF~InParty("Keldorn")~THEN~ You put on quite some fight against us. Now that you are defeated you come up with that story  to save your dirty hide.~
==Banomen IF~InParty("Anomen")~THEN~ You put on quite some fight against us. Now that you are defeated you come up with that story  to save your dirty hide.~
==CVSlat~But what could I do when you found us and the fight broke out. There was no other chance than to fight for my live as long as Merdoth was alive.~
==CVSandrJ~ Would you testify all of that to the court in Athkatla, give them the names of everyone you know who is involved and accept the sentence they will give you?~
==CVSlat~Lady, I have seen what they did to their victims...one girl broke down and could walk on no more just some small distance from here. They whipped her to get up again and move but she could not. They just let her lie there and die like a broken piece of garbage. This is how they treat everyone they can no longer use.~
==CVSandrJ~ This is how they would have treated you sooner or later.~
END
++~What do you propose to do, Sandrah?~ EXTERN BSandr SanDeciH
IF~InParty("Keldorn")~THEN REPLY~You could have thought of that earlier, wench. You are guilty and you will die right here.~ DO~SetGlobal("SanKeldorn","GLOBAL",9) Attack("CVSlat") ActionOverride("Keldorn",Attack("CVSlat")) ActionOverride("CVSlat",DestroyItem("MINHP1")) ReputationInc(-3) ~EXIT
IF~InParty("Anomen")~THEN REPLY~You could have thought of that earlier, wench. You are guilty and you will die right here.~ DO~SetGlobal("SanHealanom","GLOBAL",11) Attack("CVSlat") ActionOverride("Anomen",Attack("CVSlat")) ActionOverride("CVSlat",DestroyItem("MINHP1")) ReputationInc(-3) ~EXIT
IF~ InParty("Keldorn")~THEN REPLY~What do you propose to do, Keldorn?~ EXTERN BKeldor SanDeciK
IF~ InParty("Anomen")~THEN REPLY~What do you propose to do, Anomen?~ EXTERN Banomen SanDeciA

CHAIN
IF~~THEN BSandr SanDeciH
~I will put her into confinement with a spell until we can hand her to Chief Inspector Brega. She will be questioned and sentenced in a fair trial. Even Torm and Helm should find that solution agreeable.~ DO~ SetGlobal("SanKeldorn","GLOBAL",9) SetGlobal("SanHealanom","GLOBAL",11) SetGlobal("SanQuedPris","GLOBAL",1) ActionOverride("CVSlat",DestroySelf()) ReallyForceSpellRES("Spin788","CVSlat")~ EXIT

CHAIN
IF~~THEN BKeldor SanDeciK
~I am not sure she really tells us the truth.~
==CVSandrJ~ But there is also the chance that it might be true. If we would take her to town where her story can be scrutinized by Brega and the truth can be found.~
==BKeldor~ Hm...justice will be applied that way, unless she finds a way to escape. Can you guarantee that she will get to court, Sandrah?~
END
++~ Can you, Sandrah?~ EXTERN BSandr SanDeciH

CHAIN
IF~~THEN Banomen SanDeciA
~I am not sure she really tells us the truth.~
==CVSandrJ~ But there is also the chance that it might be true. If we would take her to town where her story can be scrutinized by Brega the truth can be found.~
==Banomen~ Hm...justice will be applied that way, unless she finds a way to escape. Can you guarantee that she will get to court, Sandrah?~
END
++~ Can you, Sandrah?~ EXTERN BSandr SanDeciH

CHAIN
IF~Global("SanQuedPris","GLOBAL",3)~ THEN CVSlat2 NeverGiveUp
~Your highness, save me from my capturers, I am a lawful citizen of Athkatla, protect me!~
DO~SetGlobal("SanQuedPris","GLOBAL",4)~
==HABrega~What is this about? Where do you come from all of a sudden?~
==CVSlat2~(She points at Sandrah) This witch has confined me in a remote prison with her evil spell!! I have been kidnapped and robbed...(She bursts into tears on the High Commisioner's breast.)~
==BKeldor IF~InParty("Keldorn")~THEN~ There you have your justice, Sandrah. You trust a thief and that's what you get. We should have followed my advice.~
==Banomen IF~InParty("Anomen")~THEN~ There you have your justice, Sandrah. You trust a thief and that's what you get. We should have followed my advice.~
==CVSandrJ IF~InParty("Keldorn")~THEN~ Oh, this is just a last straw attempt of her to escape justice. I guess we can clear that misunderstanding in no time, Keldorn.~
==CVSandrJ IF~InParty("Anomen")~THEN~ Oh, this is just a last straw attempt of her to escape justice. I guess we can clear that misunderstanding in no time, Anomen.~
==HABrega IF~InParty("Keldorn")~THEN~ Sir Keldorn. I do believe you have a good reason to travel with this obscure party. Can you enlighten me on what is going on?~
==HABrega IF~InParty("Anomen")~THEN~ Sir Anomen. I do believe you have a good reason to travel with this obscure party. Can you enlighten me on what is going on?~
==BKeldor IF~InParty("Keldorn")~THEN~ We have traced and destroyed a caravan of slavers and freed the children they have captured. This thief was with them although she claimed she was forced to follow them by the red wizard in charge. My good-hearted companion, Lady Sandrah here, convinced us to take her to you rather than to apply Torm's justice right there in the wilderness.~
==BAnomen IF~InParty("Anomen")~THEN~ We have traced and destroyed a caravan of slavers and freed the children they have captured. This thief was with them although she claimed she was forced to follow them by the red wizard in charge. My good-hearted companion, Lady Sandrah here, convinced us to take her to you rather than to apply Helm's justice right there in the wilderness.~
==HABrega~ The children have arrived safely at Ilmather's temple I have heard. Your version resembles what we were told by them.~
==CVSlat2~ Lies and lies! They have threatened the poor little ones to tell such nasty stories.~
==HABrega~ Quedlima, do you think my memory is so bad? Have you not been here several times already accused of theft and burglary?~
=~ I think we will give you the silence and peace of one of our cell's to think about what you will tell us tomorrow. Soldier!~ DO~ ClearAllActions() StartCutSceneMode() StartCutScene("CVSlaPri")~EXIT

