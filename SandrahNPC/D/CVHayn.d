BEGIN CVHayn

CHAIN
IF ~ NumTimesTalkedTo(0) !See([ENEMY])~ THEN CVHayn Orcpr
~ Oh, Lathander be thanks, human faces after all!~
END
++ ~ We are the party of <CHARNAME>. And who may you be, another prisoner of these orcs and their chief Knowlod? ~ +  Orcpr2

CHAIN
IF ~~ THEN CVHayn Orcpr2
~ Yes, they caught me from my business trip out of Beregost. Together with the shopkeeper from Nashkel. I am Haynalt, a merchant from Baldur's Gate. So you are not the expected group of Imoen the Magnificent.~
== Bimoen ~ Of course we are! And me, I am Imoen the Magnificent in person!~
== CVHayn ~ The dreaded Red Head, sure that must be you...~
== Bimoen ~ MAN, WHERE IS THE SHOPKEEPER OF NASHKEL, WHERE IS MY HENNING??~
== CVHayn ~ Yes, yes, please calm down, he is here and he is well. Minutes ago a watcher from the mines above rushed by giving the alert that Red Head was coming. They took Henning down to the next level, to Knowlod's inner quarter.~
== Bimoen ~ <CHARNAME>, quickest, let's get down there!~
== BSandr ~ Hold on for a second, Imoen. You just heard that Henning is alive and well - still.~
== Bimoen ~ Still, whatcha mean by that?~
== BSandr ~ Who knows what will happen if we blindly rush in and attack. They have your boy as hostage and may use him as a living shield against us.~
END
++ ~ Sandrah is right, Imoen, let us get as much information from Haynalt as possible before we plan the next step.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ Orcpr3
++ ~ Imoen is right, Sandrah, Henning is still well. We should rush in before these orcs can do anything to him. They are already alerted. ~ + Orcpr3

CHAIN
IF ~~ THEN CVHayn Orcpr3
~ Your healer lady is right, Imoen. Those orcs have strict order from Travenhurst to keep us both alive. Otherwise the bloodthirsty beasts would have killed us a thousand times already.~
== BSandr ~ Travenhurst? They are not working for Davaeorn then?~
== CVHayn ~ Davaeorn is the local leader of the operation here in the mines, yes. He must be at some other level, I have seen him only once since we are here.~
== BSandr ~ And Travenhurst, he is a council member in Beregost as far as I recall.~
== CVHayn ~ Lady, you are right, at least that is his facade. And the reason Henning and I have been kidnapped.~
END
++ ~ I guess we better listen to your background story, Haynalt. This complex intrigue seems to take another unexpected twist. Sandrah, you were right - once again - we should know what we are facing before we get down there to fight Davaeorn or Knowlod. Please continue.~ + Orcpr4

CHAIN
IF ~~ THEN CVHayn Orcpr4
~  Gerard Travenhurst, a well-respected nobleman from Beregost is as much involved in this affair as is the Iron Throne - a merchants league in Baldur's Gate. The whole iron crisis and the widespread rumours of a coming war with Amn are their work. The sabotage at the Nashkel mines was there to shorten the resources, and this mine here under control of the Iron Throne should provide iron again. Of course under the conditions of the Throne and its designated new leader Sarevok.~
== BSandr ~ (mumbles) Sarevok, the picture gets completed. One of them is really behind all of this.~
END
++ ~ (You look questioningly at Sandrah due to her mumbled remark. But before she can explain, Haynalt already continues.)~ + Orcpr5

CHAIN
IF ~~ THEN CVHayn Orcpr5
~ I was in Baldur's Gate a ten-day ago on business and I had to visit the Iron Throne's headquarter on that occasion. After a long business lunch I went to one of the private chambers they provide for a short nap. I dozed away in one of their huge armchairs, when a heated discussion on the other side of the room caught my attention.~
= ~ It was Travenhurst and Sarevok, the stepson of one of the Iron Throne's leaders. They had not seen me, as the large armchair's back hid me from their view. Their discussion was about the next steps of the operation and Travenhurst was obviously not satisfied with the role that was planned for him in the new structure of the Iron Throne that Sarevok had in mind, once he would be the leader of the League.~
== Bimoen ~ What is all this about? Why is you and why is Henning kidnapped? My head spins around and around from all this treachery.~
== CVHayn ~ I am sorry to say that I am partly responsible for Henning's fate - the other part is due to you, I am afraid. ~
== Bimoen ~ WHAT?~
== BSandr ~ Psst, Imoen, listen to him. So far he has provided us with a lot of insight already. We learn more about the whole situation than during all our last ten-days of scouting up and down the Sword Coast.~
== CVHayn ~ After the two had left the room, I stayed some time in my chair to make sure they were really gone. But when I left the room and the building I ran into Travenhurst on the corridor outside. I was not sure at that time whether he had any suspicion about where I came from. But I decided to deliver my information to my friend Henning as well, as a kind of assurance for my safety.~
== BSandr ~ A fatal mistake, as it looks now.~
== CVHayn ~ In hindsight, it looks like that, mylady. I must have been under observation ever since I left Baldur's Gate. Travenhurst arranged with Davaeorn to send his orcs to kidnap us. But it looks like the nobleman does not want our blood on his hands. We are just to be held until the operation has succeeded. It seems that afterwards they do not expect us to be of any danger anymore to them.~
END
++ ~ Thank you for all of this information. It gives us some insight which phantoms we have been chasing all the time. But you said that we are also partly responsible for this kidnapping - how? ~ + Orcpr6

CHAIN
IF ~~ THEN CVHayn Orcpr6
~ Well, Henning was taken mostly because of his connection to Imoen. You are the only one left that the conspirators are still afraid of. With Henning's and my information you could still deal them a significant blow. So they took us mainly to gain time.~
== BSandr ~ We still will deal that major blow to them, be assured of that. We will get Henning and you to safety and then deal with Davaeorn. After that these mines will be lost to the Iron Throne and Sarevok.~
== Bimoen ~ Yeah. All this babbling ends now. Henning we are coming! NOW!~
== CVHayn ~ What will happen to the mines?~
== BSandr ~ There is a way to flood them once again, once we have you and all the slaves safely out of here.~
== CVHayn ~ After all that, I will not wait to drown like a rat, sorry lady. I guess the way to the surface that you came is cleared of foes now?~
END
++ ~ You are free to leave, unless you want to wait for our return from Knowlod below.~ + Orcpr7

CHAIN
IF ~~ THEN CVHayn Orcpr7
~ I wish you all the best of success with your mission. I hope I will see you and Henning safely sometime. I will be off to my relatives in Ulgoth's Beard for a while until this part of the Sword Coast becomes a safer place once again.~ DO ~ MoveToPointNoInterrupt([839.1262]) EscapeArea()~EXIT





