BEGIN CVTRAVI

CHAIN 
IF ~GlobalLT("OrcPrison","GLOBAL",20)~ THEN CVTRAVI go21
~ This girl must be the Red Head that the orcs talk about.~
DO ~ SetGlobal("OrcPrison","GLOBAL",21)~ EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",21)~ THEN CVTRAVI sd1
~ (Travenhurst looks at all the slain bodies surrounding him and then desperately at you.)~
= ~ This is how it ends then?~
DO ~ SetGlobal("OrcPrison","GLOBAL",22)~
== Bimoen ~ Better look at me, you Traviman, it's Imoen you have to fear. It's MY BOY you took and dragged 'cross the Sword Coast without mercy. MY BOY was almost killed by your blasted orc bastards and only my besta friend's love and skill saved his life.~
==CVTRAVI ~ All of that was never intended, believe me. This whole thing is running completely out of hands...~
END
++ ~ That is usually the case with large scale conspiracies where one man is not trusting the other and one hand does not know what the other does.~ + sd2

CHAIN
IF ~~ THEN CVTRAVI sd2
~ You are an intelligent <PRO_MANWOMAN>. You have been underestimated by all. You and your friend Imoen's persistance.~
== Bimoen ~ Imoen the Magnificent gotcha in the end. We always do, <CHARNAME> and I.~
==CVTRAVI ~ Nobody wanted to hurt Henning. All I wanted was to have him out of the way until the end of the operation. He would have put you on our trail too early. In some ten-days it will not matter anymore, but now-~
== BSANDR~ What is it that will happen on the big day. Sarevok's taking of the Iron Throne leadership?~
==CVTRAVI ~ Oh, my. It was all useless. You know it anyhow already. All this blood on my hands - in vain - all the dead...~
== Bimoen ~ Hey, Traviman, don't gimme none of them lil' girl tears, hear me. Stand like a man for what you did do. You'd never shown mercy to anyone on your bloody trail.~
END
++ ~ Imoen, please, you are right in every way. (You take her aside a bit). Listen, my sister, he is singing us this story like a nice little bird, hey, just keep on threatening a little bit whenever needed, but let him talk and talk. Yes? He knows much we need to know to get behind all of this.~ +sd3

CHAIN
IF~~ THEN CVTRAVI sd3
~ This Sarevok has gone out of hands, his lust for more and more power goes beyond everything we had schemed to do.~
== BSANDR~ You mean the Iron Crisis, a farce to increase the demand for iron that the new found mine of Cloakwood would satisfy. And make you and all the others rich by the monopoly of the iron resources.~
==CVTRAVI ~ That was the initial idea, mylady, absolutely. A mercenary intrigue. Yes, sure I admit, we were scrupulous in that we accepted a few casualties, maybe a farmer hurt by a breaking plow or a soldier hurting himself with a corrupted weapon. Such is the price for the enormous gain we anticipated. But not these killings, these streams of blood caused by more and more bandits. And then those terrible orcs. None of this was on the original agenda.~
== BSANDR~ And that is Sarevok's doing. Or that of his Orloth advisor.~
==CVTRAVI ~ WHAT? You know about that dark mageling as well. But you are mistaken, mylady. He was fooled just like us. He thought he would control his disciple, the poor fool...~
END
++ ~(Whisper to Sandrah) Clever, my counselor, you get it out of him bit by bit. Keep on, I will let you run this inquisition.~ +sd4

CHAIN
IF~~ THEN CVTRAVI sd4
~ (Travenhurst has collapsed to a crying bundle among the broken furniture and glass the battle has left behind.)~
== BSANDR~ (Whispers back) The orloth was pure luck. A shot into the blue that hit the mark nonetheless.~
== CVTRAVI ~ Not many who support the operation have a notion yet of what is really going on. They think that Sarevok's stepfather Rieltar is still operating the activities and the Throne.~
=~Only some of us know, it is really Sarevok getting stronger every day.~
== BSANDR~ The more blood flows, the stronger he gets. ~
== CVTRAVI ~ That is a strange observation -- and yet it seems appropriate...the more I think of it... ~
== BSANDR~ ...the war with Amn...~
== CVTRAVI ~ Yes, that fits into the picture. Sarevok brought up these rumours. We objected at first, you see, the money that can be made at war is much, especially with iron supplied for weapons. But it is bloody money. And it is shortsighted. The war will end. Thousands of potential customers dead. Trade connections cut off. Money is made by smugglers, bandits and carpetbaggers at those times. Not by us.~
== BSANDR~ But Sarevok pushes this way more and more. Unwisely as you claim.~
== CVTRAVI ~ He was the one for the secret and illegal operations from the beginnings. He did the dirty work no one else wanted to deal with. He was trusted because of Rieltar's influence but not liked. And nobody had controlled him really well.~
== BSANDR~ And now it is probably too late. Who can stop him now?~
== Bimoen ~ We can, just you wait and see.~
== CVTRAVI ~ In a way I would hope you could. But I have my doubts. I saw him one night returning to the Iron Throne from a dark mission in that terrible black armour of his, looking nearly twice as big as human...~
END
++ ~ WHAT? That black armoured figure!!! Gorion's killer...~+sd5

CHAIN
IF~~ THEN CVTRAVI sd5
~ Gorion. The mage of Candlekeep? What has he to do with that?~
== BSANDR~ (Sandrah has taken your trembling hand.) Darling, yes. You are right. But this man knows nothing about that part of the plot. It looks like Sarevok has played his own game with them from the very beginning. And I think I see it now. Let us talk about it later when we finished with this guy.~
== CVTRAVI ~ What will you do with me now? There is not much more I can tell you that you do not know already. The rest lies with the Iron Throne and its leaders.~
== Bimoen ~ I am in a mercyful mood today, Traviman, you have this last wish free from me. Choose which way I shall kill you.~
== CVTRAVI ~ Red Head, it does not matter, any death will be merciful now, compared with what would await me now out there from my former allies.~
== Bimoen ~ Hey, that's the nicest of ideas, we just deliver you to that Throne and let them do the dirty work, hm. They are really skilled.~
== CVTRAVI ~ You, you are no murderers, although you may have a right to kill me. But I never wanted to harm your Henning and even paid those orcs a lot of gold for his life - not for his death.~
== Bimoen ~ Hmmm - that is true. That was the last words from that Knawlod orc, hmm.~
== CVTRAVI ~ If I get out of here I will be dead anyway. They will hunt me everywhere on the Sword Coast soon.~
== Bimoen ~ You could go south, to Amn where no one knows you, start anew as an honest man. How's that?~
== CVTRAVI ~ Kill me quick please but do not make jokes about a broken man.~
== Bimoen ~ I ain't jokin' none. Not today. You spared Henning. The most important thing in all this bloody stinking mess. I owe you that. Lemme think. You run south 'cross the border. I give you this excellent sword and this bag of jewels from my part of our booty to start a business far from here. You compensate to Henning giving him what you have to leave behind.~
== CVTRAVI ~ That would be this house and what's in it. And the ground it stands upon. The rest of my funds is invested in the Iron Throne business and I can consider it lost forever.~
== Bimoen ~ Get out of here quickly, Traviman, as long as I can hold the rest of this angry group back...~
== CVTRAVI ~ Wait a minute, you will need this. (He walks to his writing desk and starts to scribble a parchment. He pours some wax from a candle onto the bottom of the paper and imprints it with his ring. Next he hands the quill to Sandrah.) Mylady, you need to sign it here below my signature as my witness.~
== BSANDR~ (Sandrah reads and signs the sheet and hands the quill and the parchment to you.) It needs a second signature to make it valid, <CHARNAME>. One of the things I had to learn having to run my father's business affairs.~
== CVTRAVI ~ You may believe me or not, but I feel relieved. I really wish you will succeed. This enemy is more than you may imagine. ~ DO~
GiveItemCreate("CVTravde","Imoen2",0,0,0)
TakePartyGold(15000)
ActionOverride("CVTravi",EscapeAreaDestroy(90)) ~
EXIT

