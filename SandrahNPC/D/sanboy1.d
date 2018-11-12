BEGIN Sanboy1

CHAIN
IF ~NumTimesTalkedTO(0) ~THEN Sanboy1 messgiv
~Please, who of you is Miss Sandrah? ~
== BSANDR ~I am, little one. ~
== Sanboy1 ~Not little. Big enough to give you this from that old man with the strange hat. ~DO ~GiveItemCreate("Sanboy1","CVSandr",0,0,0) ~
== BSANDR ~Where is he now? ~
== Sanboy1 ~He disappeared when he gave me the paper. Said you will give me 200 gold pieces for it. (Gets red in the face).~DO ~EscapeArea()~
== BSANDR ~Here you are, little thief. ~DO ~TakePartyGold(5)~
EXIT

CHAIN
IF WEIGHT #-1~Global("SanXanA","GLOBAL",24)~THEN Sanboy1 xanmess
~Hello, I know you from before, Miss Sandrah.~
DO~SetGlobal("SanXanA","GLOBAL",25)~
== BSANDR ~The bringer of *expensive* messages. How much would you demand this time, my friend?~
== Sanboy1 ~Ha, I know how much YOU give but maybe the man Xan with the glowing sword knows what a good message is worth.~
== BXANNN ~A good message for me? Has doomsday been delayed for a tenday then?~
== Sanboy1 ~Even better when three real beautiful elven ladies send me all the way from the Friendly Arm to beg your presence.~
== BXANNN ~Are they well, those poor innocent maidens? Nothing should befall them at the Inn. Here, take this and give your message.~DO~TakePartyGold(15)~
== Sanboy1 ~Oh, they are happy and cheerful and have a passage on a ship to their homeland leaving from Baldur's Gate soon. But with the roads still too dangerous for them they ask for the, huh, what a word...moonblade thrower? to be their escort one more time.~
== BXANNN ~Me? Well, whom else do they know around here - and I'm their kin and a greycloak wearer. (Sighs) I can hardly deny this task...~
== Sanboy1 ~For that I run back to tell them quickly, they will surely throw in some  coins for that news...~DO~EscapeArea()~
== BXANNN ~Oh, there he goes - so what can I do but follow?~
== BSANDR ~My love, you do the right thing to help them after all they have been through. And it will do you good to see with your own eyes the good your heroic deeds can bring in the end.~
== BXANNN ~So it is settled - I must go to the Inn and then to Baldur's Gate with them.~
== BSANDR ~As it will be hard for you to locate us on the Sword Coast or in town I suggest that you go to the Elfsong after you brought them safely to their ship and relax until we meet you again.~
== BXANNN ~I will be there, my love, my mind filled with the thousand possible ways you may have found your fate meanwhile. (Sigh)~DO~SetGlobal("IWasKickedOut","LOCALS",1) SetDialog("xanp") LeaveParty() EscapeAreaMove("BG0705",702,736,0)~
EXIT

CHAIN
IF WEIGHT #-2~AreaCheck("cvsh14")Global("Entered","CVSH14",1)~THEN Sanboy1 messshau
~Miss Sandrah!~
DO~SetGlobal("Entered","CVSH14",2)~
== BSANDR ~Giran? What are you doing here in Clan Orc land in the middle of a civil war?~
== Sanboy1 ~This is a long story with a happy ending for sure. When I left Beregost with my uncle to settle in our new home in Amn we were ambushed and my uncle was killed by those slavers.~
== BSANDR ~Slavers! We destroyed many of them but obviously not enough. They sell children to the orcs, these bastards.~
== Sanboy1 ~They said that's where I belong as ill-mannered as I was and setting half their camp on fire one night - but don't worry - becoming orc is the best part of it.~
== BSANDR ~Really?~
== Sanboy1 ~Sure, now that the new princess rules. She's been a slave-girl herself and has freed all of us, trying to send us back home. Only I won't go.~
== BSANDR ~You have nobody to go to in the south?~
== Sanboy1 ~Nay - with uncle gone there is no one. But up here, Shauhana is as beautiful as you are, lady Sandrah (blushes deep red)...and Minsc, her hero, he will teach me to become a real orcish Berserker as soon as my fourteenth summer comes.~
== BSANDR ~We are on our way to meet those two...~
== Sanboy1 ~I'll dart ahead with the news of your arrival, sure! Just move always east to the village of Hai 'Ulthak.~DO~EscapeAreaMove("cvsh15",1520,1771,7)~EXIT

