BEGIN CVShauQ

CHAIN
IF~NumTimesTalkedTo(0)AreaCheck("CVSH15")~THEN CVShauQ Welcome
~Welcome to Hai 'Ulthak, my friends.~
DO~SetGlobal("SanHintFactory","GLOBAL",10)~
==CVSandrJ~ Hai 'Ulthak? The name of this Clan's village?~
==CVShauQ~ A good name taken from a good man, the father of Ghotal's mother, the orc who brought the Clans from the south to this land through troubled times.~
==CVSandrJ~Your heritage is rich of competent leaders of the Clans, Shauhana.~
==CVShauQ~I hope I can live up to those expectations - your grave face shows me you come not with good news.~
==CVSandrJ~(Sandrah reports of your findings in the Icebear clan village and the graveyard)~
==CVShauQ~Sharkta Fai has been impurified! Tell me who does such a thing and why?~
==CVSandrJ~A creature more vile than any in the Realms who has chosen an existence that requires a constant supply of soul essence from the strongest and bravest of men and orcs.~
END
++~A lich? But one exceeding all our former experiences with that kind?~+ Welc2

CHAIN
IF~~THEN CVShauQ Welc2
~The mysterious Watcher? - But he let me go when he could have destroyed us all easily!~
==CVSandrJ~The watcher is one of his figurines - by choice or unvoluntarily, I guess the second...No, the creature I expect to find down there is Szass Tam.~
==BEDWIN IF~InParty("Edwin")~THEN~WHAT!! (You can just catch the pale faced red wizzard from collapsing to the ground.)~
==CVShauQ~Who is that?~
==CVSandrJ~Szass Tam is the Zulkir of Necromancers from Thay, Shauhana, a land far to the east of the Realms. This man has studied the darkest of practices from far gone ages and finally has voluntarily chosen the existence as a half-lich in order to free himself from the fate of life and death that is part of us creatures of the primary plane.~
=~He is the mightiest of the eight rulers of Thay and neither alive nor dead - as long as he renews his dark energy with soul essence that is strong enough for his demands.~
==CVShauQ~That is a perversion to all the living and to the gods themselves, Sandrah! Why does not Mystra herself destroy him?~
==CVSandrJ~He does not get his magical powers from the goddess, I can assure you. It is very complex to explain and now is not the time but rather the time to act quickly before it is too late for the Clans.~
==CVShauQ~We will not end as *material* for a greedy undead!! We will fight regardless of who that Tam Tam is...~
==CVSandrJ~I plan to take him by surprise while you continue to prepare your people for the final battle against Vennegrat. You can only win it when the supply with undead is cut off first.~
END
++~How can we possibly do that, counselor?~+ Welc3

CHAIN
IF~~THEN CVShauQ Welc3
~I cannot ask such a sacrifice of you, <CHARNAME>.~
==CVSandrJ~This is not just a threat to your Clans, Shauhana, this creature will not stop when he has consumed the essence of your people - he will move further on...~
==CVShauQ~You are determined and you seem to see a way to stop him, yes?~
==CVSandrJ~Your grandfather, Ghotal, he has left the signs for you. When we freed his cursed remains in the Fields of the Dead he knew you would succeed him.~
==CVShauQ~The emblem he left at the pool - for me to find it? He never passed the gate.~
==CVSandrJ~The power of the God over the End of Everything is the key.~
==CVShauQ~You find it on my shelf in my rooms here in my headquarter.~
END
++~ We will go and stop them and you and Minsc will defeat them here. So be it.~EXIT

CHAIN
IF~Global("SanHintFactory","GLOBAL",27)~THEN CVShauQ FinalVenne1
~ It's accomplished, friends. The beginning of a peaceful time in the Stormhorns.~
DO~SetGlobal("SanHintFactory","GLOBAL",28)~
==Sanboy1~Sometimes it's time to kick butts and sometimes it's better to use the brain and win still.~
==CVMinsc~ A valid observation and a good lesson learned today, my son.~
==CVShauQ~Your son, Minsc?~
==CVMinsc~Our son, Shauhana, I mean, out here he has only us...~
==CVShauQ~He has the whole Clan, my love, and I still agree, you are right, we will be his family from now on, right Giran?~
==Sanboy1~Hey great!! Giran, the orc prince - mama - papa...~
==CVShauQ~Let us leave this depressing place now, we need a nicer surrounding to celebrate the new beginning.~
=~ <CHARNAME>, I once again I must thank you and your friends for all you have done for us. You will be the Clan's friends forever.~
=~ When you are ready to travel back to Amn, come and meet us at Nib's ship to say goodbye.~ DO~ ActionOverride("CVSandr",AddSpecialAbility("CVDra24")~
EXIT

CHAIN
IF~AreaCheck("CVSH22") GlobalLT("SeeLake","CVSH22",3)OR(2) IsGabber([PC]) Global("SeeLake","CVSH22",2) ~ THEN CVShauQ Laketrick
~Right here my grandfather fought his crucial battle that united the orcs for their defense against the southern invasion.~
DO~SetGlobal("SeeLake","CVSH22",3) RealSetGlobalTimer("WaveTwo","CVSH22",125) ~
==CVSandrJ~(Mumbles) Our invasion...~
==CVShauQ~The army of his opponent Murantku had gathered on the other side of the lake...~
==Sanboy1~...just like nasty Vennegrat right now.~
==CVShauQ~Right, my little one. Ghotal with his mighty sword started to attack the ice of the lake rather than his foe while Murantku's men foolishly attacked my grandfather and the handful of men he had brought along.~
==CVMinsc~Very similar to what we have here today.~
==CVSandrJ~I see - the ice would start to crack and under the weight of the many heavy opponents finally break and the lake would swallow them.~
==CVShauQ~No one can survive in the fathomless icy depth of the lake and the ice will very soon seal the grave again.~
==CVSandrJ~My hammer will be suiteable to perform the work that Ghotal's sword once did, my friends.~ DO~ StartCutSceneMode() Wait(1) MoveToPoint([3053.1123])MoveViewPoint([3053.1123],INSTANT) CreateVisualEffectObject("lightpi","CVSandr") Wait(1) EndCutSceneMode()~EXIT

CHAIN
IF~Global("ShauPalHis","CVSH13",1)~THEN CVShauQ ReBuild1
~It is time to part, my friends. I hope I will see you sometime when we have done a bit of work for the new orc society.~
DO~SetGlobal("ShauPalHis","CVSH13",2)~
==Sanboy1~Mama has big plans for our orcs - and for that big place here. (He points to the ruins of the palace nearby.)~
==CVShauQ ~ Sandrah, my learned friend, do you know what that building once may have been? It is surely older than the orc's settlements of this region. ~
==CVSandrJ~ It is surely much older, probably from an older race that was before men and orc.~
==CVShauQ ~ Some think that our races today all come from one older race when we all were one - true or not, this may well serve as a symbol for the Clans to remind of such a peaceful time.~
==CVSandrJ~ You plan to rebuild it, Shauhana?~
==CVShauQ ~Yes, as a united effort of the clans, to have a place in our middle that represents our community. After the destruction of Sharkta Fai and its legend my people need an orientation in the world we are in - not the world we may go to. And in addition we can develop our dormant skills. Orcs can do more than mere fighting.~
==CVMinsc~ Good berserkers are needed at all time to protect, mind that, my lovely queen.~
==CVShauQ ~Of course, Minsc, the best fighters will be in your lodge to protect the rest of us. ~
==Sanboy1~And Prince Giran will belong to them!~
==CVShauQ~<CHARNAME>, in a while Wallrick and I will go on a journey to Waterdeep, Baldur's Gate and Athkatla to meet their leaders. I will try to negotiate a peace treaty to guarantee the safety of Clan's land and agree on a stable boundary to the Southern Realms. May your journeys as well be peaceful and successful.~ EXIT