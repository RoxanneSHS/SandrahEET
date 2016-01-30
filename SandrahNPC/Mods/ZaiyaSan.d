CHAIN
IF WEIGHT #-2~Global("SanZaiya","GLOBAL",1)~THEN ZaiyaJ SanZaiya1
~Your goddess, Mystra, she is not a friend of the wild mages, I imagine?~
DO~SetGlobal("SanZaiya","GLOBAL",2)IncrementGlobal("ZDayOfCurse","LOCALS",-2)~
==CVSandrJ~Why? Mystra, or rather Mystril who was before her, surely was the very first wild mage herself. That was before she learned about the many side effects of such an approach and learned about methods to focus and control the energies.~
==ZaiyaJ~Focussing and controlling as well implies the reduction of the true impact.~
==CVSandrJ~Yes and no - fact is, a wild mage does not really understand what the *true impact* is at all times.~
=~It is the limited view of most people to think of the Weave only as a means to cast spells.~
=~The Weave is in everything and around everything, it is the many energies and forces that exist around the planes.~
=~Casting a spell is equivalent to telling the Weave to rearrange itself to create a specific effect. As a wild mage does not strictly specify the effect a randomness is created where the energy of the Weave arranges itself in some unexpected form - your curse is a sad example of it. ~
==ZaiyaJ~A wild mage is channeling pure energy through the own body and directing it to a target, rather than trying to contain or control it or the effects it will cause when it hits. It's a natural use of the natural elements...why the penalty?~
==CVSandrJ~It is no penalty, least of all one by Mystra, it is the natural consequence of the natural use you proclaim. You use more of a power than you can handle and the power plays its own tricks on you.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanHealZaiya","GLOBAL",2)~THEN ZaiyaJ SanZaiya2
~Aah, good, thank you, Sandrah.~
==KiaraJ~In our research to find a cure for Zaiya I once heard of the silver fire that disciples of your goddess are able to produce.~
DO~SetGlobal("SanZaiya","GLOBAL",4)SetGlobal("SanHealZaiya","GLOBAL",3)~
==CVSandrJ~The silver fire is used to instantly restore a wild magic area's distorted connection with the Goddess of All Magic again. It also can be activated within the body of a Chosen of Mystra to purge all external magical and psionic compulsions from a person.~
==ZaiyaJ~Can you create the silver fire?~
==CVSandrJ~I am not a Chosen of Mystra, I am just her priestess, even if I am Midnight's granddaughter.~
=~You must also know that silver fire is composed of pure Weave energy, thus the clashing of silver fire with any pure Shadow Weave energy will cause the multiverse to unravel itself, tearing the fabric of the world, causing huge dimensional rifts between the planes. A Chosen must be definitely sure not to hit such a streak in Zaiya which cannot be excluded by the little information you provide about the cause and origin of her state.~
==KiaraJ~You are not very useful, healer.~
==ZaiyaJ~Why must you insult her, she is trying to help.~
==KiaraJ~You must at least know and be able to contact such a Chosen of Mystra.~
==CVSandrJ~Let me tell you about an experience my father made once. It has happened in Shadowdale in the Year of Wild Magic when he was fending off several invading Shadow Princes, who were actually shadow-mattered creatures. His silver fire did vaporize one of them, but also created a rift between Toril and the Nine Hells. Elminster jumped into the Nine Hells and sealed the rift from there, but that act also burned all his magical energies and left him entirely helpless in the Hells. Only with the help of the Simbul did he finally escape. ~
==Pellig~Growl.~
==KiaraJ~You see, not even the mighty Elminster dares to fumble with certain issues nor would he probably take such a risk to aid a single unknown girl.~
==ZaiyaJ~(Mumbles) She did not say that...~DO~ActionOverride("CVSandr",AddSpecialAbility("CVSilFir"))~EXIT

CHAIN
IF WEIGHT #-2~Global("SanZaiya","GLOBAL",5)~THEN ZaiyaJ SanZaiya3
~You are the only female priest of Mystra I have ever met, Sandrah.~
==KiaraJ~I was the only female at our monastry. Are priests of Mystra restricting the females in the same way?~
DO~SetGlobal("SanZaiya","GLOBAL",6)~
==CVSandrJ~Your experience with disciples of my goddess must be just coincidence. There is no such rule at our temple. (Laughs) She was a priestess herself before her ascencion.~
==ZaiyaJ~A lot of things differ from where we come from.~
==KiaraJ~I think you may just be priviledged because of your heritage.~
==CVSandrJ~I have in deed once tried to step out of my father's mighty shadow and be recocgnized for my own deeds and achievements. Alongside <CHARNAME> I believe I have succeeded in this. I no longer feel my heritage is defining me alone, it has become just one of many aspects of my personality by now.~
==ZaiyaJ~The past has its ways to catch up with us regardless how far we move.~
==CVSandrJ~True - but it does not mean we let ourselves be haunted by its ghosts.~EXIT

ADD_TRANS_ACTION BKIARA BEGIN 99 END BEGIN 0 END ~ SetGlobal("SanKiZaBha","GLOBAL",1)~

CHAIN
IF WEIGHT #-2~Global("SanKiZaBha","GLOBAL",2)~ THEN ZaiyaJ SanZaiya4
~It is very strange that you accompany a Bhaalspawn, Sandrah. In my studies yestereve I came across the story of Midnight and the killing of the God of Murder.~
DO~SetGlobal("SanKiZaBha","GLOBAL",3)~
==CVSandrJ~My family history is even closer entwined with the dead three, Zaiya. Before his destruction Bhaal inseminated my own mother with one of his spawns and she died in childbirth.~
==ZaiyaJ~Oh...is it, was it <CHARNAME>?~
==CVSandrJ~For some time we both thought so, but now I have my doubts since we found how many of those spawns really exist. Still, my search for my mother's lost child has brought us together and I believe I will only solve my quest at <PRO_HISHER> side - apart from other things that keep us together meanwhile.~
==KiaraJ~You seek revenge against the killer of your mother?~
==CVSandrJ~The newborne surely was as innocent as any child can be - the murderer was Bhaal and he is dead already.~
==KiaraJ~Hm, a valid point - you do not condemn the Bhaalspawns for their heritage alone, is that right?~
==CVSandrJ~Absolutely. The blood may be a burden but it does not define the way a spawn will take all alone.~
==KiaraJ~One of them might one day be the new God of Murder.~
==CVSandrJ~This will not happen. My grandmother once prevented it and I will do the same with all my might.~
==KiaraJ~You, a little priestess of Mystra?~
==CVSandrJ~It is prophesised that only a Bhaalspawn can prevent Bhaal's return. I will make sure that he or she is not alone in the final battle.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanKiZaBha","GLOBAL",4)~ THEN ZaiyaJ SanZaiya5
~Sandrah, have you ever considered the Bhaalspawn to become the next God of Murder might be very close to you?~
DO~SetGlobal("SanKiZaBha","GLOBAL",5)~
==CVSandrJ~My heart tells me otherwise, my friend. Every day I hear <CHARNAME>'s words and observe the deeds we accomplish. I trust my feelings absolutely.~
==KiaraJ~Can not love make us blind stumbling fools?~
==CVSandrJ~I do not deny it can. But I do not see this being the case here. We have accomplished so much together, more than could be reached by deceit. And I share many thoughts with <CHARNAME> to know what the motifs and reasons for those deeds are.~
==KiaraJ~And if one day you netvertheless find you have erred?~
==ZaiyaJ~Ooh...~
==CVSandrJ~Bhaal will not return - never.~EXIT

CHAIN
IF WEIGHT #-2~Global("SanInterKiara","LOCALS",1)~THEN BKiara SanInterest1
~You spent a long time with <CHARNAME> already, counselling and hindering... still protecting and helping to survive.~
DO~SetGlobal("SanInterKiara","LOCALS",2)~
==BSandr~I would agree to most of what you said - maybe I misunderstood that issue about *hindering*.~
==BKiara~You know that <CHARNAME> by bloodright is destined to lead and to rule.~
==BSandr~<CHARNAME> leads this group through all our encounters and against foe that are not insignificant - including the foe within.~
==BKiara~You call the Bhaalpower a foe within?~
==BSandr~A potential foe - it is also the source of great power and leadership. It can work in many ways, not just in the way intended by the dead God of Murder. But there may be foe within this group who councel much different from the way I do.~
==BKiara~Are you accusing me of such intention?~
==BSandr~You are ambitous and you know you can rise high yourself together with <CHARNAME>. There is much potential that can be used in one way or another. I admit my love and my plans for our Bhaalspawn may be similar or contradicting to yours.~
==BKiara~Go on.~
==BSandr~<CHARNAME> and our common fate will shape the Realms significantly. The outcome and the direction are still open. You say I am a hinderance? Only on one of the paths - I am a faithful supporter on the other one.~
==BKiara~You have made your choice...(sigh)...I wish everything would be so clear for all involved...~
==BSandr~If you have a choice to make, do so wisely. You will meet strong opposition if you want to corrupt what is dear to me and try to open dark portals that lead to - destruction. (Yours and my beloved one's...)~  EXIT

CHAIN
IF WEIGHT #-2~Global("SanRepaKiara","LOCALS",1)~THEN BKiara SanInterest2
~You understand <CHARNAME> better than I think I did. Why could I not be granted my wish from the demon in the Underdark?~
DO~SetGlobal("SanRepaKiara","LOCALS",2)~
==BSandr~Do you think the price was acceptable? In our company you will have better opportunities to advance than by foul deals with demons.~
==BKiara~A true lover would not have been so righteous and selfish!~
==ZaiyaJ~Who is selfish, Kiara. Is it not you putting the own demand above all - <CHARNAME> acted on behalf of our success and made the right decision. This is an act of love and respect and I pity you if you cannot understand that. ~
==BSandr~Just in case you do not see it, <CHARNAME> prevented you from making the biggest mistake in your life.~
==BKiara~Maybe I made a bigger mistake than you all can imagine...~
==BSandr~To put revenge over love offered to you would be the worst you could do.~
==BKiara~If you only knew how right you are. (You swear Kiara's eyes fill with tears.)~
END
++~(Nod reassuringly towards Kiara.)~DO~SetGlobal("Kiararomanceactive","GLOBAL",2)~EXIT
++~(Smile at Kiara.)~DO~SetGlobal("Kiararomanceactive","GLOBAL",2)~EXIT
++~(Turn away from the women in disgust.)~EXIT