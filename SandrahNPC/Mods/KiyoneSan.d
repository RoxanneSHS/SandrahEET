CHAIN
IF WEIGHT #-10~Global("SanHealKiyo","GLOBAL",4) ~THEN ~z#kiyob~SanHeal1
~Aah, thank you. You have a keen eye in battle - both for the destruction of the enemies and for the needs of your companions.~
DO~SetGlobal("SanHealKiyo","GLOBAL",5)~
==CVSandrJ~I personally prefer the heeling rather than the hurting or killing. But anyway I do what must be done.~
==z#Kiyob~You do both with great skill and care as I have observed.~
==CVSandrJ~Just like you do your tasks, Kiyone.~EXIT

CHAIN
IF WEIGHT #-11~Global("SanKiyoTalks","GLOBAL",2)~THEN ~z#kiyob~Santalk1
~Sandrah, it is a sentinel's nature to collect all the facts and analyse them carefully before attempting to come to a conclusion.~
DO~SetGlobal("SanKiyoTalks","GLOBAL",3) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
==BSandr~I appreciate such a behaviour which prevents pre-mature judgement. Wherever I can I try to apply similar methods.~
=~You have probably not brought up the subject just for conversation - do you try an assessment on me?~
==z#Kiyob~I hope you are not offended, Sandrah, I just try to get acquainted with the party I support - and which supports me. You are very close to <CHARNAME> and your counsel has large impact.~
==BSandr~I see your motifs. (Smiles.) You are puzzled?~
==z#Kiyob~You are a complex person and it is not easy to put the bits and pieces together. If you allow me an example...I understand you are the mighty Elminster's daughter and you are very close to your father's heart.~
==BSandr~(Nods in agreement.)~
==z#Kiyob~We sentinels have a high respect for the Harpers, especially for your father naturally. You are close to him but you are no Harper yourself. Instead you have chosen a goddess like Mystra, where one would expect you to follow Helm or Lathander...~
==BSandr~The one-sided views of the paladins of good and bad would neither suit a Harper nor a Sentinel, would you not agree?~
==z#Kiyob~Hm, a valid point. But Mystra? She is not a symbol of goodness and virtue at all.~
==BSandr~Sentinel, maybe you should apply the same method for my goddess than you do elsewhere. Give her the credit to be innocent until proven guilty. Maybe you could take the actions of her priestess as an indication of the goddess' nature.~
==z#Kiyob~You are probably right. I have not evaluated Mystra in the way I would do it with other subjects. I am glad about how you acted, Sandrah, many may have been offended instead.~EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",4)~THEN ~z#kiyob~Santalk2
~Sandrah, I have observed your deeds now for some time and if they represent Mystra's nature then I admit I have erred with respect to her.~
DO~SetGlobal("SanKiyoTalks","GLOBAL",5) RealSetGlobalTimer("SanKiyoti","LOCALS",2400)~
==BSandr~(Laughes) I have felt your observant eye scanning my back at times. Never mind. Maybe I should tell you something you cannot reveal by sole observation.~
==z#Kiyob~You are a kind person, Sandrah. You must know that I trust you - it's just that not everything about you is evident at first sight.~
==BSandr~My goddess has the task to protect the Weave, a source of power and energy that is present in the whole multiverse. Access to the magic that stems from the Weave is granted by AO's verdict to all the gods in the pantheon and Mystra can do little about that.~
==z#Kiyob~Thus the magic used by followers of evil gods is given by her against her will?~
==BSandr~She has not a direct right to control the use of magic.~
==z#Kiyob~Not a *direct* right, hm. She cannot prevent it openly, you mean?~
==BSandr~Many of the Harpers are her Chosen - and then there are her priests that take their part in acting against the misuse of her gifts here on the primary plane. Mystra cannot act against the other gods and against AO, but she can encourage us to do some work on her behalf.~
==z#Kiyob~From what I have seen you are one of her front-line fighters, Sandrah.~EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",6)~THEN ~z#kiyob~Santalk3
~Sandrah, I have learned to trust your insights. May I ask you a very personal question?~
DO~SetGlobal("SanKiyoTalks","GLOBAL",7) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
==BSandr~You may ask without penalty, my friend. Whether you get an answer depends on how intimate your request is.~
==z#Kiyob~Your relationship to <CHARNAME> is obvious - you two make no secret of your love for each other...~
==BSandr~(Waits for Kiyone to continue.)~
==z#Kiyob~You strive for the good and just almost like a paladin. Your mother fell to the machinations of Bhaal...~
==BSandr~And I have sworn my love to a Bhaalspawn who may one day turn out to be the next God of Murder.~
==z#Kiyob~Exactly...I mean...you must be very sure that it will never be the case?~
==BSandr~It is my deepest hope and trust in deed.~
==z#Kiyob~(She looks silently in Kova's direction for some while.) What gives you the strength and assurance for your love?~
==BSandr~I see the motivations behind all of <CHARNAME>'s actions, especially how <PRO_HESHE> deals with that heritage. But most of all I follow my heart when it comes to love.~
==z#Kiyob~Thank you, my friend. (Mumbles.) Can one really trust one's own heart all the time?~EXIT

CHAIN
IF WEIGHT #-12~Global("Riftg03-29","GLOBAL",2)~THEN ~z#kiyob~SantalkAmau
~(Kiyone hesitates a moment unsure whether to address Sandrah.)~
DO~SetGlobal("Riftg03-29","GLOBAL",3)RealSetGlobalTimer("SanKiyoti","LOCALS",1400)~
==BSandr~The end of Amaunator has left a heavy impression on you even if you were no follower.~
==z#Kiyob~The light and hope this god resembled affects every righteous person, isn't that so - maybe even you.~
==BSandr~Hope and light do not die with any god, nor do truth or goodness. My friend, gods have vanished or died, new ones were established or old ones reborn throughout the ages. What remains of the gods is their portfolio which may be assimilated by one or more other deities if vacant.~
==z#Kiyob~Such things happened?~
==BSandr~There are a number of examples for it, some not so very old as they happened in the Times of Trouble. Gods were slain and new ones rose. My own goddess was among those.~
==z#Kiyob~Her priestess Midnight took her mantle, portfolio and name as I know. What about Bhaal?~
==BSandr~His portfolio has been taken by Cyric - even if the chance exists that Bhaal himself or one of his spawns will demand the Realm of the God of Murder back from the thief.~
==z#Kiyob~And Amaunator?~
==BSandr~The lightbringer Lathander represents the old belief in the sun while Helm and his associates carry on the endless fight for justice and against evil.~
==z#Kiyob~It is good to know that we do not loose on this plane what we really need to live on.~
==BSandr~Even if we have some price to pay for it, Kiyone - we have not lost what Bhaal or Myrkul represented either.~EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",8)~THEN ~z#kiyob~SantalkKov1
~(Kiyone and Kova have approached Sandrah.)~
DO~SetGlobal("SanKiyoTalks","GLOBAL",9) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
== Z#Kovab~Sandrah, your father is known to be one of the few independent and unbiased authorities in the Realms.~
==BSandr~He was my teacher, Kova, and to answer your yet unspoken question, yes, I have enough reasons to believe in your innocence - in those matters you are accused by the authorities.~
=~See, I had some opportunities to gain some insight into Athkatla's power structures with the thief guilds and the cowled wizzards and the intrigues and lies this city is build on. Your story and fate make complete sense in this context.~
== Z#Kovab~It relieves me much to hear that, I'm well aware of your significant influence on <CHARNAME>.~
==BSandr~I said I believe your story and I am willing to help you prove your innocence in this - I have not said I trust you completely and will not observe every move you make while in our company.~
== Z#Kovab~I'm not declaring myself an ambassador of goodness, Sandrah, I am a thief and spy as that was the sole opportunity offered to an orphan in our town.~
==BSandr~Some of my best friends have a similar past, Kova. I know the code and the kind of loyalty that is required among those that live beyond the law. The oath of an honest thief weights more than the lies of a corrupt priest.~
== Z#Kovab~You are your father's daughter as I'd hoped you'd be. I have gained some confidence today that the whole story might turn out good in the end. Thank you for that.~EXIT

CHAIN
IF WEIGHT #-12~Global("SanKiyoTalks","GLOBAL",12)~THEN ~z#kiyob~SantalkKo3
~(Kiyone approaches Sandrah for a talk but retreats at the last moment as Kova comes from the opposite direction with a similar intention.)~
DO~SetGlobal("SanKiyoTalks","GLOBAL",13) RealSetGlobalTimer("SanKiyoti","LOCALS",3400)~
== Z#Kovab~You and the sentinel seem to exchange your views quite regularly, Sandrah.~
==BSandr~(Laughs gently.) And you wish you could have your ear on the wall, my friend, considering the subject of our talks could be some suspected criminal...or maybe just an interesting man.~
== Z#Kovab~I have good faith that two intelligent women have come to the right conclusion about my suspected criminal deeds.~
==BSandr~And what about Kova, the man?~
== Z#Kovab~It is not easy to estimate Kiyone's feeling for that guy, if there are any at all.~
==BSandr~There are definitely some from that man for her...(She takes Kova's hand in a friendly gesture and moves him away a bit from the others.)~
=~I believe you are an honest and honourable man, Kova.~
== Z#Kovab~And what does she think?~
==BSandr~It is time for her to discover her feelings still. Life is more than just duty, as we both know well. Someone must help her find this aspect.~
== Z#Kovab~Who could do such a thing?~
==BSandr~An honest and honourable man, Kova.~EXIT

CHAIN
IF~Global("SanEdPaper","LOCALS",3) ~THEN BSandr MaeKovLetttr
~Oh, Mystra, what a blind forgetful fool I am!!~
DO~SetGlobal("SanEdPaper","LOCALS",4) ~
==z#Kiyob~You look like you have seen a ghost of kinds, my friend.~
==BSandr~Not a ghost but a document. A letter I have seen in this very place long time ago but had no idea what it meant. Now all of a sudden the veil is taken from my eyes.~
== Z#Kovab~What brings it out right now, any idea?~
==BSandr~Let me tell you the story and judge yourself.~
=~You know that we infiltrated the shadow thieves and worked for the destruction of Mae'Var who had ambushed our company when we came to Amn and had kidnapped <CHARNAME> and some friends in the service of Irenicus.~
=~During our operation against Mae'Var and his guild we ran a number of errand jobs including the retrieval of papers containing evidence for operations of the guild members.~
== Z#Kovab~Now it starts to get interesting...~
==z#Kiyob~Something to do with Kova's case maybe?~
==BSandr~At that time I used my skills to open some sealed paper stacks, hoping to find some information for our own quests. I remember now a document that mentioned a Seida...~
== Z#Kovab~WHAT!! My former guild master...~
==BSandr~It had no significance at that time for us and I restored all the seals on the package afterwards - but...~
==z#Kiyob~Too bad, this evidence is lost for us then.~
==BSandr~I can at least restore the contents of that correspondence from my memory.~
=~(She quickly scribbles a text on a piece of parchment and hands it to Kova.)~
DO~SetGlobal("LOAClue","GLOBAL",1)GiveItemCreate("MaeLOA","Kova",0,0,0)AddexperienceParty(9000)~
== Z#Kovab~Turns out the effort wasn't wasted. Looks like Mae'Var may have tried to force Seida's hand, an arrangement which he probably wasn't too happy about. It should come in useful as evidence in my case.~
==z#Kiyob~Thank you, my friend.~EXIT

EXTEND_BOTTOM Suelle2 26
IF~InParty("Kova")
InParty("Kiyone")
Global("Z#Proposal","GLOBAL",3)~THEN REPLY~I ask you for another privilege on behalf on some of my comrades.~GOTO 18
IF~InParty("Ninde")
Global("LK#NindeRomanceActive","GLOBAL",2)~THEN REPLY~I ask you for another privilege on behalf on some of my comrades.~GOTO 18
END

ADD_TRANS_TRIGGER z#kywed 23
~!InParty("CVSandr")~

EXTEND_BOTTOM z#kywed 23
IF~InParty("CVSandr")~THEN DO~SetGlobal("Z#Proposal","GLOBAL",10) 
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
ActionOverride(Player1,LeaveAreaLUA("AR2812","",[467.264],8))
ActionOverride(Player2,LeaveAreaLUA("AR2812","",[519.262],7))
ActionOverride(Player3,LeaveAreaLUA("AR2812","",[420.274],9))
ActionOverride(Player4,LeaveAreaLUA("AR2812","",[569.275],7))
ActionOverride(Player5,LeaveAreaLUA("AR2812","",[365.290],9))
ActionOverride(Player6,LeaveAreaLUA("AR2812","",[616.295],7))~EXIT
END

CHAIN
IF~Global("Z#Proposal","GLOBAL",10)~THEN BSandr KKLeaveSun
~Now what are the plans of the newly wed? Will you stay with your kin - I remember those lost children...~
DO~SetGlobal("Z#Proposal","GLOBAL",11)~
== Z#Kovab~Well, <CHARNAME>, it has been a great pleasure travelling with you and standing by your side, both against the Shadow Thieves and against the evil of Irenicus. ~
==z#Kiyob~Now that your soul is back with you and the city is restored, we have decided that this would be a time for us to go separate ways. especially since we will probably be settling down here and helping to rebuild this city.~
== Z#Kovab~It was the adventure of our lives, I think, for both me and Kiyone, an adventure where we found each other and which we never will ever forget.~
==z#Kiyob~In any case, we wish you well and take our leave respectfully. May your travels ahead be fruitful and keep you in the light. ~
END
++~Your choice is truely understandable although we will all miss you dearly. All our best wishes - and maybe we meet again one day.~DO~ActionOverride("Kiyone",LeaveParty())
ActionOverride("Kiyone",DestroyItem("KyRing1"))
ActionOverride("Kiyone",GivePartyAllEquipment())
ActionOverride("Kiyone",SetGlobal("KiyoJoined","LOCALS",0))
ActionOverride("Kiyone",EscapeArea())
ActionOverride("Kova",LeaveParty())
ActionOverride("Kova",DestroyItem("KvRing1")) // Kova's Wedding Ring
ActionOverride("Kova",GivePartyAllEquipment())
ActionOverride("Kova",SetGlobal("KovaJoined","LOCALS",0))
ActionOverride("Kova",EscapeArea())~EXIT
++~I think that still has to wait a bit, my friends. Your case may be settled but mine still needs attention.~EXIT
