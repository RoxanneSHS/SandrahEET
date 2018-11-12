BEGIN CVQidr

IF~Global("CVSummQi","GLOBAL",3)~THEN BEGIN CVQidrShowdown1
SAY~<CHARNAME>, my sister Sandrah - I received your call, the hour has come to finally end the Time of Troubles and the destruction that has been caused by Bhaal.~
IF~~THEN DO~SetGlobal("CVSummQi","GLOBAL",4)~EXIT
END

IF~Global("SanQuidPC","LOCALS",2)~THEN BEGIN CVQidrPC1
SAY~I am glad you have come to see me before you leave, <CHARNAME>. You and Sandrah, my sister.~
IF~~THEN REPLY~I am impressed by what you have created down her, Qilandrha. I wish someday when this bloody war is over I may find a similar place for me and my friends.~GOTO CVQidrPC2
IF~~THEN REPLY~You are a powerful and beautiful leader of your folk, Qilandrha. I could use your assistance against the Bhaalists well.~GOTO CVQidrPC2
IF~~THEN REPLY~Our common interest is against the Bhaalists. Come with me to fight them, join my party for the fight.~GOTO CVQidrPC2
END

IF~~THEN BEGIN CVQidrPC2
SAY~One day soon you will be a leader and ruler yourself, <CHARNAME>, and you will understand the responsibility for the people who trust in you by then. I would gladly join you in the remaining fight against our common foe - but you will understand that my place is here by with people. Furthermore it would be foolish of us to give our foe the opportunity to perhaps capture the two mightiest Bhaalspawns with one sweep.~
=~My place for the time is here. Also my existence must be further hidden from the Five and the traitor as it has been in the past. My sister at your side is the guarantee for your success.~
IF~~THEN REPLY~I understand your reasons well and you do not act out of cowardice for sure. Was our travel to Undermountain in vain?~DO~SetGlobal("SanQuidPC","LOCALS",3)~GOTO CVQidrPC3
END

IF~~THEN BEGIN CVQidrPC3
SAY~I hope you do not see the first meeting between two sister as just a waste of time, <CHARNAME>. Anyway, you will not leave here empty handed.~
=~Our foe is a mighty one and the final battle will be crucial for both of us as well as for the Realms. The ritual must not be performed. I will give you this little item by which you may call me to your side if you need me when you face our last foe. Use it only for that occasion if you must.~
IF~~THEN REPLY~You will be our secret weapon then, the one that might make the difference in the end. I thank you, Qilandrha.~GOTO CVQidrPC4
IF~~THEN REPLY~Ha, the mightiest of all Bhaalspawns is a scared little girl hiding below the earth and hoping that other do her fighting. Keep your cheap gifts to yourself, I have no need for them.~EXTERN CVSan25J SanPartSist
IF~~THEN REPLY~If you are not with me I have to assume you are against me. I will not allow the mighty Bhaalspawn to hide in Undermountain playing her intrigue. *A traitor in your midst*, ha - I know now who it is.~DO~ActionOverride(Player1,Attack("CVQidr")) SetGlobal("CVUMHostile","GLOBAL",1) ActionOverride("CVSandr",ChangeAIScript("CVSanUM",OVERRIDE)) SetGlobal("SandrahJoined","GLOBAL",26) ActionOverride("CVSandr",LeaveParty()) ~EXIT
END

IF~~THEN BEGIN CVQidrPC4
SAY~Remember, <CHARNAME>, the call will only work in the presence of our final foe, use it with wisdom. Ah, and my sister must be with you at that time as I can only locate you by means of our common blood.~
=~All my blessings are with you and with you, Sandrah. I know we will see again in better times. Farewell.~
IF~~THEN DO~GiveItemCreate("CVQCall",Player1,0,0,0) EscapeArea()~EXIT
END

APPEND CVSan25J
IF~~THEN BEGIN SanPartSist
SAY~Arrongant fool, you really have not deserved the loyalty that is offered to you. Do you really think you can fight that batlle alone? We will see. Come, my sister, we know what we must do - side by side.~
IF~~THEN DO~ActionOverride("CVSandr",LeaveParty()) ActionOverride("CVSandr",EscapeArea()) ActionOverride("CVQidr",EscapeArea()) SetGlobal("SandrahSummoned","GLOBAL",2) SetGlobal("SandrahJoined","GLOBAL",25) ClearAllActions()
FadeToColor([30.0],0)
CutSceneId(Player1)
RestorePartyLocations()
EndCutSceneMode()
FadeFromColor([30.0],0)~EXIT
END
END


CHAIN
IF~Global("SanQuidPC","LOCALS",0) AreaCheck("CVUmo5") InParty("CVSandr")~THEN CVQidr 1
~Greetings, my sister, I am Qilandrha.~
==BSandr25~My sister, it is really you...~
==CVQidr~You have any reason to be astonished, Sandrah. I know you for a very long time already while my existence comes as a real surprise for you.~
==BSandr25~Not an unpleasant one from the bits I have learned about you by now - a sister to be proud of and to love.~
==CVQidr~That is good to hear as such are the feelings I have developped towards you in the time I had to study you and followed your progress since the day you left our father's house.~
==BSandr25~Our father - an new expression for me. This is how you feel about him?~
==CVQidr~He has always treated me as his daughter without letting me feel my true origin or heritage. I have none of his blood and none of our mother's but Khalindra and Elminster are the only parents I know.~
==BSandr25~(Sandrah embraces Qilandrha.) As I call those two my parents as well then we are by any rights sisters.~
=~As you have studied me from afar, sister, you will know the famous Bhaalspawn <CHARNAME> I accompany.~
==CVQidr~(Faces you for some moments.) You are surely not the monster I have been hiding from for so long, still forgive me, <CHARNAME>, when I do not call you my <PRO_BROTHERSISTER>, even when we spawn from the same source whom neither of us calls *father* nonetheless.~
END
++~You have nothing to fear from me, Qilandrha, I do not follow the dead god in the same way you reject him.~+ 2
++~Your Bhaal essence would make you a worthwhile prey, equalled only by my own. It was right to hide from me as long as you had any doubt about my true intent.~+ 2

CHAIN
IF~~THEN CVQidr 2
~The decision has been made in your favour by me and my father - both of us trusting Sandrah as you would not be alive at her side and loved by my sister had she any more doubt in you.~
== CVQidr IF~InParty("Viconia")~THEN ~My sister has never judged anyone by her race, Viconia D'Vir, even if you do not worship Eilistraee like those gathering around me.~
== CVQidr IF~InParty("Yasraena")~THEN ~It is good to see you in my sister's company, Yasraena Arkhenneld. While she has just found family she was unaware of, you have just gained your freedom from such. Your will and example is guidance for many of our community here in Undermountain. You and your love for Divalir are a symbol of the hope we share.~
== CVQidr IF~InParty("Sola")~THEN ~Solaufein of Ust Natha, news has spread fast of your escape from the Underdark. My temple will always be a refuge for you in the name of the goddess we both follow.~
== CVQidr IF~InParty("Iylos")~THEN ~Iylos of Amkethran, wanderer and searcher, we have more in common than you might admit today. Know that you will not be turned away should you decide to join my little community.~
== CVQidr IF~InParty("Driz2")~THEN ~Drizzt Do'Urden, it is a special day on which I not only face my sister for the first time but also the hero who is inspiration for all of us with a dark skin but a righteous heart.~
== CVQidr~Now, <CHARNAME>, I invite you to explore my small dominion and rest yourself if you please while I get acquainted with my dear sister. ~
=~Before you leave again with her, I would ask you to meet me in the conference room in the north, next to where the shortcut exit to Waterdeep is located. I think we may want to talk a bit about our common heritage and how we may help each other in the coming challenge.~
END
++~I can help myself, drow, in the best possible way you have opened to me - by taking your powerful essence! DIE!!~DO~SetGlobal("CVUMHostile","GLOBAL",1) ActionOverride("CVSandr",ChangeAIScript("CVSanUM",OVERRIDE)) SetGlobal("SandrahJoined","GLOBAL",26) ActionOverride("CVSandr",LeaveParty()) ~EXIT
++~Your beauty and your pleasant attitude almost made me forget that you suffer from the same blood as I do. I will see you soon.~DO~SetGlobal("SanQuidPC","LOCALS",1)~EXIT
++~I expect us to form some kind of alliance ourself to face the one trying to destroy us. I will come soon to see you.~DO~SetGlobal("SanQuidPC","LOCALS",1)~EXIT

