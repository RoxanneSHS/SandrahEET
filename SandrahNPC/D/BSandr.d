BEGIN BSANDR

// Mystra Saves PC 1 Time

IF ~ Global("SanPCGoodMys","GLOBAL",1)~ THEN BEGIN SanPCGoodMys1

SAY ~ (Tonight Sandrah has left your resting place without a word to be alone.)~
IF~~THEN DO ~ SetGlobal("SanPCGoodMys","GLOBAL",2) ~ EXIT
END

/*Imoen Still not in Party Reminder*/

IF ~ Global("Imoreminder","GLOBAL",1)~ THEN BEGIN ReturnToImo
SAY ~ <CHARNAME>, please, we need to rejoin with Imoen. Do not leave her out there like this. I know you care too much for her to lose her. - And she for you. ~
= ~ Your ways are together, believe me. ~
IF ~~ THEN DO ~SetGlobal("Imoreminder","GLOBAL",2)~EXIT
END

//Stolen Book for Candlekeep
IF ~ Global("SanCldKBo","LOCALS",2)~THEN BEGIN SanCldKBoMin1
SAY~ Books about Drow history and an infestation by spiders...<CHARNAME>, we had better prepare ourselves adequately before going down into those mines once again.~ 
IF~~THEN REPLY~ What do you expect we will find, my counselor?~ GOTO SanCldKBoMin2
IF~~THEN REPLY~Drow?~ GOTO SanCldKBoMin2
END

IF ~~THEN BEGIN SanCldKBoMin2
SAY ~ The drow will probably have an interest in the *History of the Nether Scrolls*. The spiders and the mine itself - which might be accessible from below for them - hint to them.~
IF~~THEN REPLY~ Sounds reasonable, Sandrah. Anything else?~ GOTO SanCldKBoMin3
END

IF ~~THEN BEGIN SanCldKBoMin3
SAY ~ I expect traps, and there must be some of those dreaded drow spider trainers who have brought their pets up here and control them. And somebody to lead this whole operation, somebody really to be extremely cautious with.~
IF ~~THEN REPLY~ I have not such a deep knowledge about the drow to guess whom you are thinking of.~ GOTO SanCldKBoMin4
END

IF ~~THEN BEGIN SanCldKBoMin4
SAY ~ Maybe a Handmaiden of Lolth or other Drow High Priestess, at least somebody with extremely deadly magical skills. Let us move carefully but move we must - before they can secure the book to the Underdark.~
IF~~THEN DO ~ SetGlobal("SanCldKBo","LOCALS",3)~ EXIT
END

//Golem Manual
IF~Global("SanGolman","LOCALS",2)~THEN BEGIN SanGolem1
SAY~ This is an interesting and useful tome for adventurers, <CHARNAME>. A copy of the famous *Golem Construction Manual*.~
IF~~THEN REPLY ~Are you planning to build such creatures for our use, Sandrah?~ GOTO SanGolem2
IF~~THEN REPLY ~Useful? We have neither the skills nor the material or time to build such beasts.~ GOTO SanGolem2
IF~~THEN REPLY ~Why the enthusiasm? Do you know the author by any chance?~ GOTO SanGolem2
END

IF~~THEN BEGIN SanGolem2
SAY~ Golems can be deadly and impressive constructs, <CHARNAME>. I remember well the fearful hours I spend in hiding while my father endlessly was fighting an Adamantit Golem. Knowledge about those things can come handy for us should we once face one.~
IF~~THEN REPLY ~Haha, we can throw the heavy tome at it, or what? ~GOTO SanGolem3
IF~~THEN REPLY ~How can we make use of that book?~GOTO SanGolem3
END

IF~~THEN BEGIN SanGolem3
SAY~ Let me read it one of these days. We surely cannot build one - but to know how they are constructed can save our lives in case we meet one. To know how it is constructed will help us to attack the weak and crucial points in a battle against them.~
IF~~THEN REPLY ~I see. To know how to construct them helps to deconstruct them.~DO~ SetGlobal("SanGolman","LOCALS",3)~EXIT
END

//Took Eldoth
IF~ Global("SanEldoDisl","LOCALS",2)~ THEN BEGIN EldothDisl1
SAY~ (Takes you out of Eldoth's earshot.) Actually I like good music very much, <CHARNAME>, but I doubt that we would get to hear much of such from this shady guy. Are we so desperate as to pick up everyone along our way?~
IF~~THEN REPLY ~ Up to now your counselling has been quite useful, Sandrah. But it is me who leads this party, do not forget that!~  DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO EldothDisl2
IF~~THEN REPLY ~ I am not sure about him yet, let's just give it some time. I note your reservation against him but be sure, I keep my eyes open. ~  GOTO EldothDisl3
END

IF~~THEN BEGIN EldothDisl2
SAY ~ Sure, <CHARNAME>, and I respect that. It does not mean that everybody needs to keep her mouth shut on everything. Mind that we are all in this together and helping each other along.~
IF~~THEN REPLY~ Fine. We will see how Eldoth will fit into that. Up to now he has not done anything wrong in my view. Give him a chance.~ DO~ SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
IF~~THEN REPLY~ Sure, sure...but as long as you have no evidence against Eldoth, keep your suggestions to yourself. I want peace among my companions.~ DO~ SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
END

IF~~THEN BEGIN EldothDisl3
SAY ~ I have no real evidence against him, <CHARNAME>, I am sorry. It was not my intention to disturb the peace among your ranks. Mind that we are all in this together and helping each other along.~
IF~~THEN REPLY~ Fine. We will see how Eldoth will fit into that. Up to now he has not done anything wrong in my view. Give him a chance.~ DO~ SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
IF~~THEN REPLY~ Sure, sure...but as long as you have no proof, keep your suggestions to yourself. I want peace among my companions.~ DO~ SetGlobal("SanEldoDisl","LOCALS",3)~EXIT
END

IF~ Global("SanEldoDisl","LOCALS",4)~ THEN BEGIN EldotFABent1
SAY ~ Hmm.~
IF~~THEN REPLY ~ Yes, you were right to be cautious with Eldoth. But what? He is a bit chaotic but he is no criminal. He is a bard, an artist, they just are like that.~ GOTO EldotFABent2
IF~~THEN REPLY ~ So now we know what it is about Eldoth, he spoils our reputation quite a bit. He didn't kill anyone, but maybe he is not the company we need in our current situation.~ GOTO EldotFABent2
IF~~THEN REPLY ~ These *fine* people just don't understand what it's like to live on the road like we do. Eldoth is no murderer, a little ruckus is no crime. ~ GOTO EldotFABent2
END

IF~~THEN BEGIN  EldotFABent2
SAY ~ (Laughs) You say it! And all the people always call me the optimist...~
IF~~ THEN DO~ SetGlobal("SanEldoDisl","LOCALS",5)~EXIT
END

// Coran's Flowers

IF~ Global("SanCorFlow","LOCALS",1)~ THEN BEGIN SanCoraFl1
SAY~ My, what a great bouquet of mystical flowers. They are surely unique on the face of Toril.~
IF~~THEN REPLY ~ I received them from Coran this morning. He got them directly out of a fantastic dream.~ GOTO SanCoraFl2
IF~~THEN REPLY ~ Say, Waterdeep beauty, has any admirer ever presented you with a comparable gift?~ DO~ SetGlobal("SanCorFlow","LOCALS",2)~GOTO SanCoraFl2
END

IF~~ THEN BEGIN SanCoraFl2
SAY ~ As you may imagine, I had quite a number of admirers back at the City of Splendor. But none possessed the gifts or even the fantasy to come up with something like those beautiful flowers. I would be unable to make up my mind which one I like the best.~ 
IF~~THEN REPLY ~ An imaginative elf as an admirer is quite something. If only his feelings would be true, but I am afraid they are like the dream that produced this gift.~ EXIT
IF~~THEN REPLY ~ As the saying goes *the trip is worth the fare.* Even if his feelings are nothing more than these dream flowers, it is still enjoyable to be admired in such a way.~ EXIT
END

// Waterdeep Temple Visits

IF~ Global("SanWDTemplWi","GLOBAL",1)~ THEN BEGIN SanWDTempl1
SAY ~ Mystra's Temple, <CHARNAME>!~
IF~~THEN REPLY ~ Your temple, priestess? I assume you want to pay it a visit.~ GOTO SanWDTempl2
IF~~THEN REPLY ~ Is it open for such common folks as us or are only Mystra's followers admitted?~ GOTO SanWDTempl2
END

IF ~~ THEN BEGIN SanWDTempl2
SAY ~ As we are already standing in front of it there is no reason not to go inside, darling. Do not expect too much, the immense reputation it has throughout the Realms is not because of the building but because of the deeds and knowledge that is emissed from here.~
= ~ What you will see is just a place of study and a place for healing, nothing different from Candlekeep. Mystra, as you know, is not one to display her power or wealth. ~
IF~~THEN REPLY ~ Fine, you have no business then to settle here, just pay a visit to old collegues?~ GOTO SanWDTempl3
END

IF ~~ THEN BEGIN SanWDTempl3
SAY ~ Right, nothing more. And by the way, we can also check out the spells and wares that are offered. But I am happy to share this part of my life with you today. (She embraces you dearly and kisses you long and tenderly.)~
IF~~THEN DO~ SetGlobal("SanWDTemplWi","GLOBAL",2)~EXIT
END

// In Baldur's Gate

IF ~ Global("SanSpiWeb1","LOCALS",1) ~ THEN BEGIN SanSpidWeb1
SAY ~ (Sandrah has stopped at a garden fence and seems to admire some flowers there.)~
IF~~THEN REPLY~ (As you stand beside her, you see that she actually admires the web of a spider between the branches of a bush in the garden. The fine web seems to sparkle with drops of dew in the sunlight - a work of art and beauty.)~ DO ~ SetGlobal("SanSpiWeb1","LOCALS",2) ~GOTO SanSpidWeb2
END

IF ~~ THEN BEGIN SanSpidWeb2
SAY ~ Wonderful and deadly - if you are a bug or a butterfly.~
IF~~THEN REPLY~ Understandable that the drow admire the spider queen. In a way it is fascinating even if it's a trap and not a sculpture.~ GOTO SanSpidWeb3
IF~~THEN REPLY~ Hm. Do you want me to destroy it before some poor victim gets trapped in it?~ GOTO SanSpidWeb4
END

IF ~~ THEN BEGIN SanSpidWeb3
SAY~ And here you stand like a God for this small insect universe with the power to interfer and turn it one way or another.~
IF~~THEN REPLY~ (You smile at her and take her hand.) Or the wisdom to use the power where it is really needed. Let us act on the clumsy traps that are set for us.~ EXIT
IF~~THEN REPLY~ (You reach out and destroy the fine webs. While you struggle to remove the sticky remains from your fingers, Sandrah has turned away and moved on.)~ EXIT
END

IF ~~ THEN BEGIN SanSpidWeb4
SAY ~ To play God in that small insect universe? Do you think you must interfer just because you have the power to do so.~
IF~~THEN REPLY~ (You smile at her and take her hand.) Or the wisdom to use the power where it is really needed. Let us act on the clumsy traps that are set for us.~ EXIT
IF~~THEN REPLY~ (You reach out and destroy the fine webs. While you struggle to remove the sticky remains from your fingers, Sandrah has turned away and moved on.)~ EXIT
END

// Bookhunters

IF ~Global("SanSuBH","GLOBAL",9)~ THEN BEGIN BookH30
SAY ~ (Sandrah has bent down over the body of one of the assassins for a closer inspection.)~
IF~~THEN REPLY ~ Any hint who those people were? It is now the second wave and they seem pretty determined to get this strange book. And not for philosophical reasons, that is sure. ~ GOTO BookH31
END

IF~~THEN BEGIN BookH31
SAY ~ This is curious. Earrings and tattoos, but not of the Thayan or Calimshan type. Is this a mermaid?~
IF~~THEN REPLY ~So it was a sailor? At least at sometime in his life. A sailor or a pirate. ~ GOTO BookH32
END

IF~~THEN BEGIN BookH32
SAY ~ (She looks at you silently for a moment as if struck by some weird thought.)~
IF~~THEN REPLY ~Remember when I told you about something written in magic ink. The story where I read it was a pirate adventure.~ GOTO BookH33
END

IF~~THEN BEGIN BookH33
SAY ~ You are either just babbling about what just comes to your mind or you are a genius, my love. Wait.~
=~ *She dashes to the pack holding the book and starts to rush through its pages.* ~
IF~~ THEN DO~ SetGlobal("SanSuBH","GLOBAL",10) AddexperienceParty(900) RealSetGlobalTimer("BloomwT","GLOBAL",1000)~EXIT
END

IF ~Global("SanSuBH","GLOBAL",11)~ THEN BEGIN BookH40
SAY~(Sandrah sits again studying the book that already has cost so many lives.)~
IF~~THEN REPLY ~Some idea about our book riddle? I just have these cliches about pirates. They always involve hidden treasure to be found. In the story the thing in magic ink actually was a map a far as I remember. And enough people would kill for a huge pirate treasure for sure. ~ GOTO BookH42
END

IF~~THEN BEGIN BookH42
SAY ~ (Sandrah jumps up as if bitten by a snake.) That's it! I declare you genius, <CHARNAME>. A map, why was I so blind. All these meaningless meandering sentences. It must be these illustrations that illustrate nothing...Wait. ~
=~(The next thing you see is Sandrah tearing some pages out of the book. You see her put four pages on the ground in front of her, throwing the remaining book carelessly away. She shifts the torn pages around, turns them this way and that, until she has arranged them in a way that seems to satisfy her.) Look!~
IF~~THEN REPLY ~ (You step to her side and look at the puzzle. The four pages laid out in the pattern Sandrah has just found now really look like one large illustration.) Mmh. It may really be a map. Look, the uneven line that goes all around over the four pages - the coastline of an island. This here and here - mountains. And that one - a river coming down from the mountains to go to the sea. This area here, this is the way woods are shown on maps usually.~  GOTO BookH43
END

IF~~THEN BEGIN BookH43
SAY ~ I agree, <CHARNAME>. It is really convincing. Take this arrow in the corner to indicate north. A swamp here in the southeast. What is missing is the scale. We have no idea about the island's size.~
IF~~THEN REPLY ~ And no indication of the position of the treasure or whatever there is to be indicated by this map. ~ GOTO BookH44
END

IF~~THEN BEGIN BookH44
SAY ~ <CHARNAME>, let me try something. (The seeks around for the book she had thrown away and then leafes through its pages). Blablabla...*to reveal in the end that no man is and island - see illustration number one.* This made no sense in the text at all when I read it. But now we can see the hint.~
IF~~THEN REPLY ~ What is the next passage? ~ GOTO BookH45
END

IF~~THEN BEGIN BookH45
SAY ~ ...*not where the stream ends at the sea but really at the source of the water, the birthplace - see illustration number two.* <CHARNAME>, here we have your river, and the hint to the source. ~
IF~~THEN REPLY ~That gets interesting, so what is next? ~GOTO BookH46
END

IF~~THEN BEGIN BookH46
SAY ~ ...dadada...*the morning sun reveals the path to the searcher's goal - see illustration number three.* ~
IF~~THEN REPLY ~ I see nothing that this may relate to, sorry.~ GOTO BookH47
END

IF~~THEN BEGIN BookH47
SAY ~ Probably we cannot know what it means unless we found the place. We need to be at the source of that river on that island when the sun rises. Then we will see the path to whatever. ~
IF~~THEN REPLY ~And illustration four? Is there more for the moment? ~GOTO BookH48
END

IF~~THEN BEGIN BookH48
SAY ~ I am afraid it is in the same vein. You will only know what it means when you found and followed the path. *A bee is the only one who knows how to make honey - see illustration four.* ~
IF~~THEN REPLY ~A beehive guarding a pirate's treasure at the end of a hidden path that can only be found when the morning sun reveals it at the source of an unnamed river on an unknown island. ~ GOTO BookH49
END

IF~~THEN BEGIN BookH49
SAY ~ (Sandrah laughs) An excellent summary. We have solved worse riddles, <CHARNAME>. ~
IF~~THEN REPLY ~ What do we do now? I mean it is weird and we have other problems. But then those pirates probably will keep hunting us. And now with what you have found, they will think that we have solved the riddle. They will not let us go, even if we gave them the book. ~ GOTO BookH50
END

IF~~THEN BEGIN BookH50
SAY ~ I propose to investigate a bit when we are in Baldur's Gate or Waterdeep next time. For example the authorities in the Charter House or the Harbor Master may have an idea which island it is. ~
IF~~THEN DO~ SetGlobal("SanSuBH","GLOBAL",12)AddexperienceParty(1400) RealSetGlobalTimer("BloomwT","GLOBAL",300)~ EXIT
END


IF ~ Global("SanSuBH","GLOBAL",13)!InParty("Sufinch") ~ THEN BEGIN FiBookQ60
SAY~ Here in my book I have found something about that crazy writer Monteelah. Maybe it is helpful, <CHARNAME>. ~
IF ~~ THEN REPLY ~ Please, just tell it to us, then we may see.~ DO ~ SetGlobal("SanSuBH","GLOBAL",14) RealSetGlobalTimer("BloomwT","GLOBAL",1200)~ GOTO FiBookQ61
END

IF~~THEN BEGIN FiBookQ61
SAY~ It is reported that Monteelah was found one day on the beach near Ulgoth's Beard washed by waves to the shore. He could not remember his name or past or anything. It was later he started to write his books to make a living as he seemed not to have learned any handicraft in his former life. ~
IF ~~ THEN REPLY ~ The hints and descriptions in his book are his own writing. So he remembers about the island and what is there to be found. It does not fit together. And what sense would you make out of that? ~ GOTO FiBookQ62
END

IF~~THEN BEGIN FiBookQ62
SAY ~ That is true. His amnesia might have been a trick to conceal his real past life. The life of a pirate and maybe sole survivor of a pirate ship that has hidden a treasure on some island. But somebody from his past has recognised him and knows what is really behind his unreadable book that has not gone into public publishing.~
=~ His other books are at least more readable. He could make a living out of them. But we cannot ask him anymore. He died in the Beard two winters ago.~
IF ~~ THEN EXIT
END

IF ~ Global("SanSuBH","GLOBAL",15)~THEN BEGIN BookH60
SAY~ I just had an idea about that pirate map issue, <CHARNAME>.~
IF~~THEN REPLY ~ It is funny how one sometimes comes to ideas on a thing when one is *NOT* thinking about just that thing.~ GOTO BookH61
END

IF~~THEN BEGIN BookH61
SAY ~ (Laughs) Exactly like that. Do you remember that funny guy at the Wyrm's Crossing Bridge? The seller of information?~
IF~~THEN REPLY ~ Yes, didn't he mention pirates and old lore and such? Furlon. He was quite fond of you. But then, who isn't. Good idea, it doesn't hurt to ask him next time we come to that bridge.~ DO ~ SetGlobal("SanSuBH","GLOBAL",16)~ EXIT
END


IF ~ Global("SanSuBH","GLOBAL",18) ~ THEN BEGIN BookH70
SAY ~ Finally this weird book hunt seems to gain some shape.~
IF~~THEN REPLY ~ Let me see, my little detective, if I get the pieces right. Our philosopher was in reality a pirate captain. He sails to some island to hide his treasure. He kills his whole crew so he alone knows where it is. Right so far?~ GOTO BookH71
END

IF~~THEN BEGIN BookH71
SAY ~ I have come to the same conclusions, <CHARNAME>, please continue.~
IF~~THEN REPLY ~ He sails back alone to the Sword Coast, but cannot manage the ship single-handed and gets wrecked. He takes the opportunity and pretends to have lost his memory. He hides out in Ulgoth's Beard and writes strange philosophical treaties. One of those he uses to conceal his treasure map. So far so good.~ GOTO BookH72
END

IF~~THEN BEGIN BookH72
SAY ~ Right. Now it gets to the part that is not yet clear. It seems he died in a fire when his house burned down, but no corpse was found in the ruins. However, his book appears in Waterdeep and by coincidence lands in our hands. And somebody is after it now.~
= ~ Possibility one: The death was forged by Monteelah himself to disappear once and for all. How he lost the treasure map in the manouevre is unclear, but somehow he has found out that we have it now. It's the pirate himself who is after us now.~
= ~ Possibility two: Someone was on Monteelah's trail all the time. Maybe someone of the crew had survived after all. He finds and kills the pirate and burns down the house to hide the crime. Now he is after us for the book.~
IF~~THEN REPLY ~ Hm, I guess version two has a weak point. The assassin would not know about the map in the book, unless he made the pirate reveal this secret before his death.~ GOTO BookH73
IF~~THEN REPLY ~ I tend to think version one is right as only Monteelah himself would know the map was in the book. But still there would be someone else involved, the one from whom the pirate tried to hide.~ GOTO BookH73
END

IF~~THEN BEGIN BookH73
SAY ~ Anyway, we are now involved if we like it or not, because we know the secret. We cannot just give back the book and go our way in peace.~
IF~~THEN REPLY ~ So it is wait for them to find us or be active and find them instead.~ GOTO BookH74
END

IF~~THEN BEGIN BookH74
SAY ~ Or be active and find the secret of that island.~
IF~~THEN REPLY ~ I think we will inquire both in Ulgoth's Beard and in the Charter House. Depending on what we find, we will plan our further actions.~ DO ~ SetGlobal("SanSuBH","GLOBAL",19)~ EXIT
END

// Bookhunt Pirates

IF ~ Global("SanLHpir","GLOBAL",1)~ THEN BEGIN  SanLHpir1
SAY ~ A strange paper, <CHARNAME>, these men down there are no tax officials or such to supervise the ship traffic on the sea outside.~
IF~~THEN REPLY ~ Spies? But for whom? The armed versus unarmed column makes no sense if they were only merchants or such.~ GOTO SanLHpir2
END

IF~~THEN BEGIN  SanLHpir2
SAY ~ This issue would only be interesting for one who plans to attack a ship or its crew.~
IF~~THEN REPLY ~ Like pirates!~ DO ~ AddexperienceParty(650) SetGlobal("SanLHpir","GLOBAL",2) ~ EXIT
END


IF ~ Global("CVPirFight","LOCALS",2)~ THEN BEGIN MontCofPir1
SAY ~ If there was any doubt still, now we know it. Monteelah, the king of all pirates.~
IF~~THEN REPLY ~ And those were just a bunch of lost pirates with their own plan. Or do you think they are in any way involved in that hunt after us?~ GOTO MontCofPir2
END

IF~~ THEN BEGIN MontCofPir2
SAY ~ No, otherwise they would have noticed who we are right from the beginning. But at least we know now that our assumptions on the hidden treasure have some validity. It must be something very special we have discovered here, given all the people who had to die for it already.~
IF~~THEN REPLY ~ And just think of how fiercly they continue on our trail. Somehow we have to find out more about that island soon.~ DO ~ SetGlobal("J#PirateFight","GLOBAL",4) SetGlobal("CVPirFight","LOCALS",3)~ EXIT
END

IF ~ Global("SanSuBH","GLOBAL",26)~ THEN BEGIN ZombieDusk
SAY~ <CHARNAME>, it starts to get dark. Normally the worst time to be in a zombie infested area. But if we want to make it to the river source until dawn, we need to travel during the dark. hours.~
IF~~THEN REPLY ~ You say it. There seems to be no way to avoid fighting those creatures. Let us go, comrades.~ DO ~ SetGlobal("SanSuBH","GLOBAL",27)~EXIT
END

IF ~ Global("SanSuBH","GLOBAL",28)~ THEN BEGIN ZombieDawn
SAY ~ It is dawning, just like our treasure book required and we are at the river's source.~
= ~ Ha! Look there, you see those bees?~
IF~~THEN REPLY ~ Do you see that, Sandrah, they seem to come out of that crack in the rocks over there. Yes, sure, it must be here, there is a small entrance, just big enough for a man to enter. Then onward, let us see the final chapter, the *EPILOGUE* of this *BOOK*.~ DO ~ SetGlobal("SanSuBH","GLOBAL",29)~EXIT
END

IF~ Global("SanSuBH","GLOBAL",34)~ THEN BEGIN ZombRet1
SAY ~ (Sandrah has studied the nautical books you have gathered for some time, changing from one to the other and back again, now and then mumbling to herself.)~
IF~~ THEN REPLY~ Well, councelor? Any ideas or insights?~ DO ~ SetGlobal("SanSuBH","GLOBAL",35) ~ GOTO ZombRet2
END

IF~~ THEN BEGIN ZombRet2
SAY~ Please do not laugh at me, but come see. Place the books side by side on this bridge table. Now see here, it says *hoist the starboard mizzen lines* in this one, which means little to me.~
= ~ But now I look into this construction book and it tells me how I make a mizzen sail. And it has an illustration of that sail, see here. Now look around the ship and see! (She points to one of the dozend sails on the ship.) This is the one - and here are the lines to operate it.~
IF~~ THEN REPLY~ Well, yes, we put the two books on the table side by side and then decipher the nautical words as we need them. Cumbersome but it may work. In the absence of any alternative we might as well try it.~ GOTO ZombRet3
IF~~ THEN REPLY ~ We need a weather prophet still. If you really think we can manage it this way we need a calm sea for at least three days, but still a bit of wind. You don't propose to do such a thing in a storm.~ GOTO ZombRet3
END

IF~~ THEN BEGIN ZombRet3
SAY~ Then put the books here on the table and let us start. The sky looks like a fair day and my Waterdeep weather nose tells me we will have the same at least tomorrow.~
IF~~ THEN REPLY ~ All hands on deck! (You have heard poor Captain Holghorn use these words on your trip to the island.)~ EXIT
END

IF ~ Global("SanSuBH","GLOBAL",36)~ ZombRetSt
SAY ~ Let us begin, *throw landlines*, well, that is obvious. Good.~
=~ Next. *Hoist the starboard mainmast sail*.~
IF~~ THEN REPLY ~ Pull up the lines at the right side of the main mast.~ GOTO zomb1c
IF~~ THEN REPLY ~ Pull up the lines at the left side of the main mast.~ GOTO zomb1f
END

IF ~~THEN BEGIN zomb1c
SAY~ *Strike the spanker*, <CHARNAME>, that's the one aft!~
IF~~ THEN REPLY ~ Let down the sail at the foremost mast of the ship.~ GOTO zomb2f
IF~~ THEN REPLY ~ Let down the sail at the hindmost mast of the ship.~ GOTO zomb2c
END

IF ~~THEN BEGIN zomb1f
SAY~ *Strike the spanker*, <CHARNAME>, that's the one aft!~
IF~~ THEN REPLY ~ Let down the sail at the foremost mast of the ship.~ GOTO zomb2f
IF~~ THEN REPLY ~ Let down the sail at the hindmost mast of the ship.~ GOTO zomb2f
END

IF~~THEN BEGIN zomb2f
SAY ~ *Steer windward!*~
IF ~~ THEN REPLY ~ Turn the steering wheel into the wind. ~ DO ~ SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY ~ Turn the steering wheel away from the wind.~ DO ~ SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~ EXIT
END


IF~~THEN BEGIN zomb2c
SAY ~ Steer windward!~
IF ~~ THEN REPLY ~ Turn the steering wheel into the wind. ~ DO ~ SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY ~ Turn the steering wheel away from the wind.~ DO ~ SetGlobal("SanSuBH","GLOBAL",37) SetGlobal("Homesail","GLOBAL",1)~ EXIT
END

IF~ Global("Homesail","GLOBAL",2)~ THEN BEGIN ZombRetrep
SAY~ Nobody got hurt. We will learn it. Let us just try again. Hoist the starboard mainmast sail.~
IF~~ THEN REPLY ~ Pull up the lines at the right side of the main mast.~ GOTO zomb1c
IF~~ THEN REPLY ~ Pull up the lines at the left side of the main mast.~ GOTO zomb1f
END

IF ~ Global("Homesail","GLOBAL",6)~ THEN BEGIN ZomHom11
SAY ~ Quite some experience, <CHARNAME>, but it looks like we made it, all of us alive and well. I know not who may grieve for our poor captain who has found his rest at sea.~
IF~~ THEN REPLY ~ A ghastly place out there. So we have the treasure now, but what of it?~ GOTO ZomHom12
IF~~ THEN REPLY ~ Right, we have lost the good captain and have gained quite a treasure, even if the money is bloody. But what do we make out of the true treasure, those mysterious papers?~ GOTO ZomHom12
IF~~ THEN REPLY ~ Yeah, we have found what we went out to find, but I am not the wiser for it. Have we got rid of Monteelah now?~ GOTO ZomHom12
END

IF~~ THEN BEGIN ZomHom12
SAY ~ The Sharkta Fai papers - I have looked at them during the quiet parts of our cruise. If we feel safe, we may sit down and I will tell all of you what they mean. We may come to a conclusion then, what to do with them. Remember, Monteelah himself is still out here somewhere and I do not know whether he has any means to know what had happened on that island. He may find out sooner or later about our visit there.~
IF ~~ THEN REPLY ~ We should not sit here in the wilderness and discuss this. We will make it to a safe place soon and we will gather there to listen to your tale.~ DO ~ SetGlobal("Homesail","GLOBAL",7)~ EXIT
IF ~~THEN REPLY ~ Well, friends, let's make ourselves comfortable and learn from Sandrah what is so special about a pile of old parchments, that so many people had to die for them already.~ EXTERN CVSANDRJ ZomHom13
END

IF ~ Global("Homesail","GLOBAL",11)~ THEN BEGIN ZomHom20
SAY ~ This hopefully was the end of this small booklet that turned out to be an almost epic tome in the end. Unless we find the missing part of the papers one day.~
IF ~~ THEN REPLY ~ Provided that they really ever existed. Maybe the original collector had just what we saw and the final clue is not even written down.~ GOTO ZomHom21
END

IF~~ THEN BEGIN ZomHom21
SAY ~ A very valid remark, <CHARNAME>. It may well be that just some adepts ever knew how to enter Sharkta Fai and the secret is given from one to the next without any trace for an outsider at all.~
IF ~~ THEN REPLY ~ Even if one exists and we would find them, the papers are gone and we would not be able to finish the puzzle anyway.~ GOTO ZomHom22
END

IF~~ THEN BEGIN ZomHom22
SAY ~ We still have everything, <CHARNAME>. Monteelah may have the documents, but remember that I made the translation during the cruise. And that I still have here in my magic parcel, should we ever have a need to consult the topic again.~
IF ~~ THEN REPLY ~ Oh, my clever counselor, how could I forget that. You not even tricked the pirate to believe we have no idea what the papers where all about. You even have them translated for easy use. Even after all that time you can still surprise me, my love.~ DO ~ SetGlobal("Homesail","GLOBAL",12)~ EXIT
END

// DSOTSC Vampire Castle
IF ~ Global("SanWoodSt","LOCALS",1)~ THEN BEGIN SanMkStake1
SAY ~ Vampires! That is what we are up to here. They have taken the child to make it one of their own kind.~
IF ~~ THEN REPLY~ Don't we need garlic and special weapons and such to defend them, my counselor?~ GOTO SanMkStake2
END

IF ~~ THEN BEGIN SanMkStake2
SAY~ Sweetheart, what kind of novels did you read there in Candlekeep? Hm, some wooden stakes would be handy, just in case we find their coffins. If we drive them through their hearts, that will destroy the vampire permanently, otherwise they will return the following night.~
IF ~~ THEN REPLY ~ Wooden stakes, too bad we did not bring any...~ GOTO SanMkStake3
END

IF ~~ THEN BEGIN SanMkStake3
SAY~ No problem. Do you want me to make some?~
IF~~ THEN REPLY ~ Not now. I will ask you for it if I see a need. ~ DO~ SetGlobal("SanWoodSt","LOCALS",2)~EXIT
IF~~ THEN REPLY ~ You can? How, with your magic?~ GOTO SanMkStake4
END

IF ~~ THEN BEGIN SanMkStake4
SAY~ No magic is needed, my sweet little simpleton, just handycraft.~
IF~~THEN DO~ 
StartCutSceneMode()
MoveToPoint([719.317])
Face(9)
MoveViewPoint([719.317],STANDARD)
DisplayStringWait("CVSandr",@379)
SmallWait(8)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
GiveItemCreate("misc6w",Player1,2,0,0)
EndCutSceneMode()
SetGlobal("SanWoodSt","LOCALS",2)~ EXIT
END

IF ~ Global("SanWoodSt","LOCALS",5)~ THEN BEGIN SanMkStake11
SAY ~ Vampires! That is what we are up to here. They have taken the child to make it one of their own kind.~
IF ~~ THEN REPLY~ Don't we need garlic and special weapons and such to defend them, my counselor?~ GOTO SanMkStake12
END

IF ~~ THEN BEGIN SanMkStake12
SAY~ Sweetheart, what kind of novels did you read there in Candlekeep? Hm, some wooden stakes would be handy, just in case we find their coffins. If we drive them through their hearts, that will destroy the vampire permanently, otherwise they will return the following night.~
IF ~~ THEN REPLY ~ Wooden stakes, too bad we did not bring any...~ GOTO SanMkStake13
END

IF ~~ THEN BEGIN SanMkStake13
SAY~ No problem. Do you want me to make some?~
IF~~ THEN REPLY ~ Not now. I will ask you for it if I see a need. ~ DO~ SetGlobal("SanWoodSt","LOCALS",2)~EXIT
IF~~ THEN REPLY ~ You can? How, with your magic?~ GOTO SanMkStake14
END

IF ~~ THEN BEGIN SanMkStake14
SAY~ No magic is needed, my sweet little simpleton, just handycraft.~
IF~~THEN DO~ 
StartCutSceneMode()
MoveToPoint([3639.1398])
Face(9)
MoveViewPoint([3639.1398],STANDARD)
DisplayStringWait("CVSandr",@379)
SmallWait(8)
ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER)
GiveItemCreate("misc6w",Player1,2,0,0)
EndCutSceneMode()
SetGlobal("SanWoodSt","LOCALS",2)~ EXIT
END

IF ~ Global("SanKiLordVa","LOCALS",1) ~ THEN BEGIN Lordvamp1
SAY ~ Now that those two vampires are *dead* we should look for their resting place and make use of our wooden stakes least we want to see them again.~
IF ~~ THEN REPLY~ Their coffins must be down here somewhere, they cannot leave this place in the daylight.~ DO~ SetGlobal("SanKiLordVa","LOCALS",2) ~EXIT
END

// Balduran's Island
IF ~ Global("SanPackW","LOCALS",1)~ THEN BEGIN SanPackW10
SAY ~ Have you noticed the strange way of talking among the villagers, <CHARNAME>?~
IF ~~ THEN REPLY ~ Sure. They have been isolated on this island for quite some time. Their language is antique. That is not really so astonishing.~ GOTO SanPackW11
IF ~~ THEN REPLY ~ Yeah, interesting, isn't it. Like a time travel right into the time of Balduran himself. People were like that at the time.~ GOTO SanPackW11
END

IF~~ THEN BEGIN SanPackW11
SAY~ You are right, but this is not what I was referring to. We are facing Lycanthropes on this island, werewolves that can appear as human. There was something in their words like *smelling outsiders* and using *pack* for their clan, little things...~
IF ~~ THEN REPLY ~ ...like a wolf would use if he had the language, maybe?~ GOTO SanPackW12
IF ~~ THEN REPLY ~ Oh, sweet advisor, hold on. Please do not get hysterical, the villager fear and fight the werewolves just like us. The wolves are here outside and the humans inside.~ GOTO SanPackW12
IF~~ THEN REPLY ~ Mmh. But that would make no sense. The villagers fight the wolves and they try to escape the island, as would any normal person including us would attempt to do.~ GOTO SanPackW12
END

IF~~ THEN BEGIN SanPackW12
SAY ~ I admit my reasoning is still a bit vague, nothing but a light suspicion. Anyway, we have no other way as to cooperate with the villagers at the moment. They have this new ship which will be our only means to escape this island. Just let us be extremely careful, please.~
IF ~~ THEN REPLY ~ Yes, let us keep our eyes open, counselor. I do not think the villager can be much of a danger to us.~  GOTO SanPackW13
IF ~~ THEN REPLY ~ Do not worry your pretty head to much, my sweetheart. It looks like we can easily overpower them from the little weaponry I have seen.~ GOTO SanPackW13
END

IF~~ THEN BEGIN SanPackW13
SAY ~ If the villagers are really some kind of Lycanthropes themselves they will be much stronger and dangerous in their wolf form, <CHARNAME>. But what worries me really, is that we can get infected by them like from a vampire's bite. And I would not be able to cure this, nobody can according to my knowledge.~
IF ~~ THEN REPLY ~ Oh. Let us make haste to get out of here as fast as possible. First step first, let's find the werewolf lair and terminate them.~
DO~ SetGlobal("SanPackW","LOCALS",2)~ EXIT
END

IF ~ Global("SanPackW","LOCALS",3)~ THEN BEGIN SanPackW20
SAY ~ Did you get the same impression that I have now, <CHARNAME>? We are used, or better to say misused, in this whole story by everyone we have met so far on this island.~
IF ~~ THEN REPLY ~ I mistrust this strange mage who claims to have sailed with Balduran as much as I mistrust this lady Kaishas by now.~ GOTO SanPackW21
IF ~~ THEN REPLY ~ The words of Karoug sounded strange. Two different packs fighting against each other, but both victims nonetheless of the disease that caused Balduran's mission to fail.~ GOTO SanPackW21
END

IF~~ THEN BEGIN SanPackW21
SAY ~ I share your view, <CHARNAME>, however, unless this Draedel and his book provide us with a way to leave this island, our option is still Kaishas' ship. Before we have found a way to make use of it, we should avoid to confront her openly.~
IF ~~ THEN REPLY ~ With the saved baby and the coat and such, we can try to make some friends among the villagers. It cannot hurt.~ DO ~ SetGlobal("SanPackW","LOCALS",4)~ EXIT
END

IF ~ Global("SanPackW","LOCALS",5)~ THEN BEGIN SanPackW30
SAY ~ I am glad, <CHARNAME>, you have ended this in peace after all. (Kisses you.) ~
IF~~THEN REPLY ~ I am glad, *WE* have ended this in peace after all, my steadfast counselor. Thank you.~  DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO SanPackW31
IF~~THEN REPLY ~ I have learned a bit during this quest. Bloodshed is not always the only solution. I learned a bit - not little of that I learned from you, my counselor.~ GOTO SanPackW31
END

IF~~ THEN BEGIN SanPackW31
SAY~ This is not over yet, <CHARNAME>, and some bloodshed may not be avoidable after all. Kaishas mentioned their chieftain who was send out to arrange their escape from the island. She said that maybe he will not so peacefully remove the *gift* from us. Selaad, who misused us from the very beginning in the most cunning way under his Mendas disquise.~ 
IF~~ THEN DO ~SetGlobal("SanPackW","LOCALS",6) AddexperienceParty(3800)~ EXIT
END

//Red Wizards in East Wood

IF ~ Global("sanredatt","GLOBAL",1)~ THEN BEGIN redatt1
SAY ~ Do you see now why I despise this red scum so much, <CHARNAME>.~
IF~~THEN REPLY ~ Is it not you that always said we need to look into each case individually and not be prejudiced against someone just because of race or profession or such?~  GOTO redatt2
IF~~THEN REPLY ~ I agree, you seem to be proven right once again. Still, such hatred against some race or profession is strange for you.~ GOTO redatt2
END

IF~~ THEN BEGIN redatt2
SAY ~ I am still waiting for the one exception to prove me wrong. It has not happened today.~
IF~!InParty("CVJenlig")~THEN REPLY ~ Well...no, it hasn't...~ DO ~ SetGlobal("sanredatt","GLOBAL",2)~ EXIT
IF~!InParty("CVJenlig")~THEN REPLY ~ Still - even if you were right again, it is not the Sandrah I think I know and love at other times...~ DO ~ SetGlobal("sanredatt","GLOBAL",2)~ EXIT
IF~InParty("CVJenlig")~THEN REPLY ~ Well...no, it hasn't...~ DO ~ SetGlobal("sanredatt","GLOBAL",2)~ EXTERN CVJenliJ Redatt3
IF~InParty("CVJenlig")~THEN REPLY ~ Still - even if you were right again, it is not the Sandrah I think I know and love at other times...~ DO ~ SetGlobal("sanredatt","GLOBAL",2)~ EXTERN CVJenliJ Redatt3
END

// Abbathor Quest
IF ~ Global("SanAbbat","LOCALS",1)~ THEN BEGIN SanFindWost1
SAY ~ Abbathor? We have heard that dwarfen god's name before, do you remember, <CHARNAME>?~
IF ~~ THEN REPLY ~ Can you refresh my memory, Sandrah? I cannot recall the details.~ GOTO SanFindWost2
IF ~~ THEN REPLY ~ Those mysterious dwarfes that were somehow involved with the Nashkel mines, right? The snakes of Abbathor. Can you give me some further insight, counselor?~ GOTO SanFindWost2
END

IF ~~ THEN BEGIN SanFindWost2
SAY ~ The snakes of Abbathor, the name sounds like some sect or secret organisation. We found their trace with Mulahey in the mines and later in Beregost. We found the journal of Bashrik who seemed to have investigated their case and got murdered. Now they are here trying to contact other dwarves for their purpose.~
= ~ Abbathor himself is the only evil god in the dwarves pantheon, the Morndinsamman. The god of avarice and grudge.~
IF ~~ THEN REPLY ~ Then this murdered Bashrik must have worked for the good side, as such an organisation can only be as evil as the god they follow, whatever else this pamphlet seems to promise. What do we do?~ GOTO SanFindWost3
END

IF ~~ THEN BEGIN SanFindWost3
SAY ~ If we want to get involved, we may try to contact the clerics Bashrik was working with, this Wostok, who must be here in Baldur's Gate somewhere.~
IF ~~ THEN REPLY ~ There was something in this journal, I recall. We should ask for Wostok in a temple.~ DO~ SetGlobal("SanAbbat","LOCALS",2)~ EXIT
END

IF~ Global("SanDrgln","LOCALS",2)~ THEN BEGIN DrglWoDw
SAY~ There is this dwarf Draglon, the messenger of those Abbathor followers. We should have a dwarf in our party in order to infiltrate this snake organisation he represents. I doubt we "tall people" will gain any insight into their machinations.~
IF ~~ THEN DO ~SetGlobal("SanDrgln","LOCALS",3)~EXIT
END

IF~ Global("SanDrgln","LOCALS",4)~ THEN BEGIN DrglWiDw
SAY~ There is this dwarf Draglon, the contact of those Abbathor followers. Our dwarf companion should play the role of our secret agent in order to infiltrate this snake organisation he represents. I doubt we "tall people" will gain any insight into their machinations.~
IF ~ InParty("ACBre")~ THEN REPLY~ Breagar, we should do that. This organisation disgraces all of your kin. With us in the background the risk for you is not too high. I let you run the conversation with that guy.~ DO~ SetGlobal("SanDrgln","LOCALS",5)~ EXIT
IF~ InParty("Kagain")~ THEN REPLY~ Kagain, we should do that. This organisation disgraces all of your kin. With us in the background the risk for you is not too high. I let you run the conversation with that guy.~
DO~ SetGlobal("SanDrgln","LOCALS",5)~ EXIT
IF~ InParty("Yeslick")~ THEN REPLY~ Yeslick, we should do that. This organisation disgraces all of your kin. With us in the background the risk for you is not too high. I let you run the conversation with that guy.~
DO~ SetGlobal("SanDrgln","LOCALS",5)~ EXIT
IF~~THEN REPLY ~ I would not risk the life or health of our small companions, Sandrah. I would accept your offer any time, but this operations seems to be beyond your *size*. ~ DO~ SetGlobal("SanDrgln","LOCALS",5)~ EXIT
END

// Candlekeep Return
IF~Global("SanDGHere","BG2627",1)~THEN BEGIN SanCKDpl1
SAY~Doppelgangers - whereever we find a trace of Sarevok we find them as well. It is sad, <CHARNAME>, but you must be very careful whom to trust in these walls. Good old familiar faces may not belong to those you have once known.~
IF~~THEN REPLY~ It is high time to end the spook. If one has to mistrust the oldest friends...he has gone too far by all means.~DO~SetGlobal("SanDGHere","BG2627",2)~EXIT
IF~~THEN REPLY~ I will keep my eyes on my companions all the time now - I must trust all of you now more than ever.~DO~SetGlobal("SanDGHere","BG2627",2)~EXIT
END

IF ~ Global("SanLibCommt1","LOCALS",1)~ THEN BEGIN Libscrl3d
SAY ~ See what Aloundo says here : * These offspring will be aligned good and evil, but chaos will flow through them all.* I am so glad for the one I have found, and the chaos I sensed is not your own but forced from external onto you. I Love you.~
IF~~THEN REPLY ~ (The moment she takes your hand and kisses you dearly you feel a large wave of confidence and strength well up inside of you. You know with her by your side you will master this situation as well as the struggle inside of you.)~ DO
~ SetGlobal("SanLibCommt1","LOCALS",2)~ EXIT
END

IF ~Global("SanLibCommt2","LOCALS",1)~ THEN BEGIN MetKoveras
SAY ~ This is how our foe looks like then. (Grins) Actually a good looking young man - from the outside.~
IF~~THEN REPLY ~ Did you see his eyes? It were those eyes starring out of the black armour when he killed Gorion. I will never forget them.~ GOTO MetKoveras2
IF~~THEN REPLY ~ Why did you prevent me from killing him right here and now and ending it all before any more harm could be done?~ GOTO MetKoveras3
END

IF~~THEN BEGIN MetKoveras2
SAY ~ It is good that you did not let him provoke you here and now. This is what he expects you to do, to loose your head and act out in anger. It is now clear, he wants you to remove the Iron Throne leaders for his benefit and take the blame as their murderer onto you. He will return to Baldur's Gate with all his foe eliminated in one event.~
IF~~THEN REPLY ~ Let us continue and see what else we can find out to our advantage.~ DO~ SetGlobal("SanLibCommt2","LOCALS",2)~ EXIT
END

IF~~THEN BEGIN MetKoveras3
SAY ~ You are the child of the God of Murder but you are no Murderer. As such you would have been considered if you had attempted to strike him right now. We need to let him react now that his plan to have you remove the Iron Throne leaders for his benefit and take the blame as their murderer onto you will fail. He must end up visible as the villain he truely is - not you.~
IF~~THEN REPLY ~ Thank you, counselor. Let us continue and see what else we can find out to our advantage.~ DO~ SetGlobal("SanLibCommt2","LOCALS",2)~ EXIT
END

IF ~ Global("SanLibCommt3","LOCALS",1)~ THEN BEGIN SanPrat1
SAY ~ (Sandrah laughs loudly.)~
IF~~THEN REPLY ~ Hm, I never saw you laughing over the dead body of a foe. This whole episode seems to get to your nerves as well, Sandrah.~ GOTO SanPrat2
IF~~THEN REPLY ~ This diletante ambush was indeed laughable. Sarevok no longer seems to consider us.~ GOTO SanPrat2
END

IF~~THEN BEGIN  SanPrat2
SAY ~ I would indeed never laugh about any dead, it is Sarevok's arrogance that amuses me. He really seems to be be very sure he has got rid of us. Good.~
IF~~THEN REPLY ~ You have surely already ideas how we can take this to our advantage, sweetest of all counselors?~ GOTO SanPrat3
END

IF~~THEN BEGIN  SanPrat3
SAY ~ Nothing really new, as the current situation allows us to go back to our former secret - and successful - method of operations. The villain assumes us to be safely in custody and he may continue to think so for quite a time, as news of our escape will not quickly reach him. So we are as invisible for him again as we were before. He cannot act against us, and even better, he is not even aware that we are still his major opponents at the moment.~
IF~~THEN REPLY ~ But how exactly do we make advantage out of this situation. Any idea?~ GOTO SanPrat4
END

IF~~THEN BEGIN  SanPrat4
SAY ~ Sarevok has lost all remaining interest in the Iron Crisis and its effects. His next goal as we now know is to ascend to become one of the Dukes of Baldur's Gate. This will keep him in that city and busy for quite some ten-days still. Political work like that moves slow.~
IF ~~ THEN REPLY ~ My initial impuls was to follow him the Baldur's Gate and strike before he can gain any more power, but maybe that should be reconsidered.~ GOTO SanPrat5
IF ~~ THEN REPLY ~ It would be really cumbersome to stay in the underground for a prolonged time in Baldur's Gate and wait for the right moment to strike at him.~GOTO SanPrat5
END

IF~~THEN BEGIN  SanPrat5
SAY ~ My idea would be to avoid Baldur's Gate for the moment as we have no direct mission to fulfill. Let us keep hidden and gather strength and information on the Sword Coast. Our moment will come when he really makes his move towards the Dukehood. Then we must be there with the evidence of his full treachery and let him stand naked in the view of all.~
IF~~ THEN REPLY~ Fine. But first let us get out of this dump and for a good meal and a warm bath. And a fine linnen bed to enjoy...(The rest of your sentence is swallowed by a love-hungry mouth that sucks all breath out of you...)~ DO ~ SetGlobal("SanLibCommt3","LOCALS",2)~EXIT
END

// Undercity
IF ~ Global("SanTamoko","LOCALS",5)~ THEN BEGIN SanHadKil1
SAY ~ Can such blindness still be love or is it subjection?~
IF ~~ THEN REPLY ~ Could you imagine yourself in her place begging for me this way?~ DO ~ SetGlobal("SanTamoko","LOCALS",6)~ GOTO SanHadKil2
END

IF~~ THEN BEGIN SanHadKil2
SAY ~ No.~
IF ~~ THEN REPLY ~ I cannot really imagine that.~ GOTO SanHadKil3
IF ~~ THEN REPLY ~ Is your love for me not strong enough for such a deed?~ GOTO SanHadKil3
END

IF~~ THEN BEGIN SanHadKil3
SAY ~ <CHARNAME>, that man in there is willing to sacrifice whole nations in a senseless war to ascend to godhood on mountains of corpses and streams of blood. Do you think, if I had discovered that the dark side in you would have come to that point, I would have stood aside and let it happen?~
IF ~~ THEN REPLY ~ It would probably never have come to that point ever.~ GOTO SanHadKil4
END

IF~~ THEN BEGIN SanHadKil4
SAY ~ Right.~
IF ~~ THEN REPLY ~ You set out to prevent such a thing from the very beginning...You were to find the spawn of Khalindra. You wanted to help her child if it were the one to stop the return of Bhaal...Or you would stop...
It would never have come to that point... 
You would have killed me yourself before you would allow such a bloodshed to occur.~ GOTO SanHadKil5
END

IF~~ THEN BEGIN SanHadKil5
SAY ~ Yes.~
IF ~~ THEN EXIT
END

// Durlag's Riddles
IF~ Global("SanDurlAnsw","LOCALS",1)~ THEN BEGIN DurlAnsw
SAY ~ Looks like they want to test our knowledge in lore here.~
IF~~THEN REPLY ~ Counselor, this is your domaine, please.~ GOTO DurlAnsw2
IF~~THEN REPLY ~ Oh, no, not riddles? Can you help me out with those?~ GOTO DurlAnsw2
END

IF~~THEN BEGIN DurlAnsw2
SAY ~ Sure, my love. No need to worry. ~
IF~~ THEN DO ~ SetGlobal("SanDurlAnsw","LOCALS",2)~ EXIT
END

// Drizzt in BG1
IF ~ Global("SanDrizzt","GLOBAL",1)~ THEN BEGIN SanAwaitsDr1
SAY ~ <CHARNAME>, I cannot await to meet Drizzt in the Beard.~
IF~~THEN REPLY ~ Hey, I've never seen you like this, you are nervous like a little girl on the eve before her birthday.~ GOTO SanAwaitsDr2
IF~~THEN REPLY ~ You told me he was your teacher and tutor for melee fighting. He seems to mean much to you.~ GOTO SanAwaitsDr2
END

IF~~ THEN BEGIN  SanAwaitsDr2
SAY ~ Oh, I adore him - mmh, maybe not quite the right expression... But he was my teacher and my idol in my days back at Waterdeep.~
IF~~THEN REPLY ~Hahaha, and he gave little Sandrah some sleepless nights,mmh?~GOTO SanAwaitsDr3
IF~~THEN REPLY ~ But I cannot imagine Drizzt Do'Urden to misuse the trust of a young girl even when he needs to get very close to her to show her the right moves.~ GOTO SanAwaitsDr3
END

IF~~ THEN BEGIN  SanAwaitsDr3
SAY ~ I have to confess that when he came near to me and held my hand to show me how to use my hammer in combat, it was hard for me to concentrate on the lesson. My, I was so young then and he the greatest hero I ever met, and a really handsome and intelligent man.~
IF ~~ THEN REPLY ~ And what happened? ~ GOTO SanAwaitsDr4
END

IF~~ THEN BEGIN  SanAwaitsDr4
SAY ~ Nothing happened, of course. I had nice dreams and some sleepless nights. I guess totally normal for a young girl at that age given the presence of Drizzt. I am sure, he never even realised what his presence did to me.~ 
IF ~~ THEN REPLY ~ And what will happen this time? ~GOTO SanAwaitsDr5
END

IF~~ THEN BEGIN  SanAwaitsDr5
SAY ~ Oh, <CHARNAME>, nothing will happen. I was just sharing some memories of my youth with you. And the image of a man who somehow formed my expectation for the kind of man I would look for.~
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~I should have known that before I lost my heart to you. Now it is too late and I will never be able to meet your expectations.~ GOTO SanAwaitsDr6
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~But you never met one like him, it seems.~ GOTO SanAwaitsDr7
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ But you never met one like him, it seems.~ GOTO SanAwaitsDr6
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~And as such a man does not exist you decided on another opportunity. Do I have to thank Drizzt Do'Urden for my wonderful lover?~ GOTO SanAwaitsDr9
END

IF~~ THEN BEGIN  SanAwaitsDr6
SAY ~ (Laughs) Like in the old saying about a sparrow in your hand and a dove on the roof. I am not totally unhappy with what I have got. (Laughs again) You have a lot of potential and are growing daily, who knows...maybe one day <CHARNAME> of Candlekeep will be one recognised alongside such a hero as Drizzt Do'Urden. And this hero will be mine.~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.)~ DO ~ SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~ THEN BEGIN  SanAwaitsDr7
SAY ~ Drizzt was just a nice dream of a young girl. I never applied that standard to reality but was really open to whatever my heart would find. Like the wonderful <CHARNAME> of Candlekeep. ~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.)~ DO ~ SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~~ THEN BEGIN  SanAwaitsDr9
SAY ~ You have to thank only the wonderful <CHARNAME> of Candlekeep for this. You are my first choice, darling, and Drizzt is just a nice dream of a young girl.~
IF~~THEN REPLY ~ (Your lips melt together in a kiss that seems endless.)~ DO ~ SetGlobal("SanDrizzt","GLOBAL",2) SetGlobal("SanDrizzt2","GLOBAL",2) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~ EXIT
END

IF~ Global("SanIreHint","LOCALS",1)~ THEN BEGIN IreHint1
SAY ~ That was to be expected, <CHARNAME>. Our fight against Sarevok has made your heritage known to certain circles now, those that already Gorion and my father were trying to hide you from.~
IF~~THEN REPLY ~ As bad as that sounds, Sandrah, I cannot but agree with you. This "I." and his sister seem to be quite well informed about me. ~ DO ~ SetGlobal("SanIreHint","LOCALS",2)~ GOTO IreHint2
END

IF~~ THEN BEGIN  IreHint2
SAY ~ Their interest is aimed at the Bhaal power in you rather than the fight for the throne of your dead originator. For whatever reason they might need this power. Their vampiric army and their messenger reveal that they already possess significant resources.~
IF~~THEN REPLY ~ I have heard your warning and your promise, my darling. The warning that Sarevok's end will not mean peace for me - and the promise that I will not be alone against whatever will come next. (You kiss your counselor.)~
EXIT
END

//The legendary shield of Gwalhaudh the Pure

IF ~ Global("KNSHLDF","GLOBAL",1) ~ THEN BEGIN Gwalh1
SAY ~ This is quite a find, <CHARNAME>, this legendary shield is mentioned in many old scripts and was deemed by some to be lost forever.~
IF~~THEN REPLY ~ So you know what it is?~ GOTO Gwalh2
END

IF~~THEN BEGIN Gwalh2
SAY ~ From the ornament it must be the ancient shield of Gwalhaudh the Pure, a brave knight from ages past. The shield can keep evil creatures at bay, for they were loath to touch it or even come near it.~
IF~~THEN REPLY ~ Do you think it is safe to keep it and use it?~ GOTO Gwalh3
END

IF~~THEN BEGIN Gwalh3
SAY ~ According to the history that is known about it, there is no evidence that we could not use it. Maybe we find someone during our travels who has a higher need for it than we do, but until then it is now ours.~
IF~~THEN REPLY ~ Thank you, Sandrah, your knowledge proves to be ever useful for the group.~ DO ~ SetGlobal("KNSHLDF","GLOBAL",2) AddexperienceParty(400)~EXIT
END 

// Dream of Castle Owner

IF~ Global("SanCasOwn","GLOBAL",1)~ THEN BEGIN CasOwn1
SAY~ Oh, <CHARNAME>, look at this view and the land lying all around us. Do you sometimes dream to be the owner of such a castle yourself?~
IF~~THEN REPLY ~ You mean to be rich and powerful and to rule the land from a mighty castle?~ GOTO CasOwn2
IF~~THEN REPLY ~ You mean that one needs a castle and be a lord just to enjoy the view?~ GOTO CasOwn3
IF~~THEN REPLY ~ I would be glad if I even had a simple hut to call my own, I'm not even dreaming of a big house or a castle.~ GOTO CasOwn3
END

IF~~THEN BEGIN CasOwn2
SAY ~ That is not exactly what I meant, I was thinking just of a nice place to call your own, with a view to enjoy. And a bit of independence as well. ~
IF~~THEN REPLY ~ Yes, that sounds better. In the end to rule and to own so much land that you need a castle for protection, also means that you loose some of your freedom. It is not that I am afraid to take responsibility, but in some way I still enjoy the freedom we have together at the moment. Ask me again in a couple of years, maybe I have come to another view then.~  GOTO CasOwn3
END

IF~~THEN BEGIN CasOwn3
SAY ~ I am not sure why I asked the question myself. I love this adventuring life with you by my side - all we see and all we learn. And we are still so young. But maybe after some time there will be this yearning for a place of our own, be it a castle or a hut by the seaside, I do not know.~
= ~ See, darling, I still have a home I can return to any time. And of course you will be welcome there anytime and always.~
IF~~THEN REPLY ~ But I think I feel what you try to express, it will always be different than our own place - our own home. So much can happen with time, yeah, let's just take it as it comes as long as we take it together. (Embrace her and hug her dearly.)~ DO ~ SetGlobal("SanCasOwn","GLOBAL",2)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~ EXIT
END

IF~ Global("SanCasOwn","GLOBAL",3)~ THEN BEGIN CasOwn4
SAY~ Do you remember that other occassion when we were standing high on a castle overviewing the vast land one former ruler called his own?~
IF~~ THEN REPLY ~ I do. And once again we see how such a dream of power and wealth has crumbled. The concept does not seem to work in the long run.~ GOTO CasOwn5
IF~~ THEN REPLY ~ And again I see that such a shortsighted fortification of power, oppression, and exploitation comes to a certain end. It is not what I aim for. All I want is a little calm and cosy place for us, beloved.~ GOTO CasOwn5
IF ~~ THEN REPLY ~ If ever I were given the power to rule such a place, things would turn out different. The ones in the places we have seen so far have all failed.~ GOTO CasOwn6
END

IF~~ THEN BEGIN CasOwn5
SAY ~ I love you for your attitude on this. Even if I think that a worthy ruler may have a way to use power and resources in such a way that many under his rule may be able to live a protected and happy life.~
IF~~ THEN REPLY ~ We have not yet come upon many examples of that kind on our travels. But we have found many kind and caring people among what they call the *common folk*. (You kiss, Sandrah.) ~ DO ~ SetGlobal("SanCasOwn","GLOBAL",4)RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~ EXIT
END

IF~~ THEN BEGIN CasOwn6
SAY ~ And what would you do different, my love? Surely not higher walls and greater forces. Those do not hold up the corruption that comes from within.~
IF~~THEN REPLY ~ You are right. You have to build on the loyalty and love of those around you. Give your people an adequate share, use power and resources in such a way that many under your rule may be able to live a protected and happy life. No one can persist on his own strength alone for a long time. (You kiss, Sandrah.) ~ DO ~ SetGlobal("SanCasOwn","GLOBAL",4) RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~ EXIT
IF~~THEN REPLY ~ You are right. An iron hand that leaves no doubt and a counselor that detects any trace of betrayal before my power could be questioned. An elite force rather than a waste mass of mediocrity. Maybe just you and me - maybe just me. ~ DO ~ SetGlobal("SanCasOwn","GLOBAL",4) RealSetGlobalTimer("SanCasOwnT","LOCALS",ONE_DAY) ~ EXIT
END

IF~ Global("SanCasOwn","GLOBAL",5)~ THEN BEGIN CasOwn7
SAY ~ Another sad castle with another sad story. Any time we stand high up on one of them where one has this magnificent view of the enourmous lands all around us, I get this strange feeling.~
IF~~THEN REPLY ~ I see what you mean. We have not found one of them yet that tells the tale with a happy ending.~ GOTO CasOwn8
IF~GlobalGT("SanVisitedWD","GLOBAL",0)~THEN REPLY ~ I remember one occassion when we stood together on a high tower overlooking everything and it was one of the happiest days of my life. ~ GOTO CasOwn9
END

IF~~ THEN BEGIN CasOwn8
SAY ~ None of them has had a ruler like the one you once described to me, the one who anchors his power in love and respect for his people.~
IF~~THEN REPLY ~ Sometimes I wish I could be one, just to show that such a concept is possible. But then - I am surely not destined to rule.~ DO ~ SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
END

IF~~ THEN BEGIN CasOwn9
SAY ~ Only one of the happiest days? You must be a very lucky <PRO_MANWOMAN> to say that. (She pretends to sulk.)~
IF~~THEN REPLY ~ You can say that. That day was the beginning of a series of wonderful happy days. I don't need to tell you why that is, my love. (You kiss her until her eyes shine with happiness.)~ DO ~ SetGlobal("SanCasOwn","GLOBAL",6)~EXIT
END


// Sword Valiant

IF ~ Global("ValiantKN","GLOBAL",1)~ THEN BEGIN ValiantKN1
SAY ~ So this is the famous Valiant, the sword of the crusader on a quest to rid the Sword Coast of a vicious ogre horde. And the ogres have possessed it for the many generations that have passed since they defeated the ancient heroes. But look, the blade seems to have maintained its purity throughout the decades in the ogre's possession.~
IF~~ THEN REPLY ~ Another ancient relict, but still useable I think. Or is this another sword that has a curse or something like that on it?~  GOTO ValiantKN2
IF~~ THEN REPLY ~ Interesting. I assume you could tell us more of the sword's story, Sandrah, but I do not think we have the time now for a history lesson.~ GOTO ValiantKN2
END

IF~~THEN BEGIN ValiantKN2
SAY ~ The old legends say that a hero will rise and reclaim the holy weapon and this will mark a series of changes on the face of the Sword Coast unlike anything that Faerun has ever witnessed. ~
IF~~ THEN REPLY ~ And this hero is standing right in front of you now.~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO ValiantKN3
IF~~ THEN REPLY ~ Wow, another holy weapon for the hero-to-come. Just like your sword of Mystra. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~  GOTO ValiantKN4
END

IF~~THEN BEGIN ValiantKN3 
SAY ~ (She gives you one of her enigmatic thoughtful looks but then turns back to the sword again.)~
= ~ For the ogres this sword has become a symbol as well of the glorious human defeat and they have carried it around ever since as a reminder of the frightening power of ogres. ~
IF~~ THEN REPLY ~ You think they will come to claim it back when they find out that we now have it again?~ GOTO ValiantKN5
END

IF~~THEN BEGIN ValiantKN4
SAY~ I can guarantee for the purity and the services of Mystra's Gift. I can not confirm the same for this sword. Not that it is cursed, but...~
= ~ For the ogres this sword has become a symbol as well of the glorious human defeat and they have carried it around ever since as a reminder of the frightening power of ogres. ~
IF~~ THEN REPLY ~ You think they will come to claim it back when they find out that we now have it again?~ GOTO ValiantKN5
END

IF ~~ THEN BEGIN ValiantKN5
SAY ~ Probably. We will find it out, next time we meet one of their kind.~ 
IF ~~THEN DO ~ SetGlobal("ValiantKN","GLOBAL",2) AddexperienceParty(400) RealSetGlobalTimer("ValiantTime","GLOBAL",850)~EXIT
END

IF ~Global("ValiantKN","GLOBAL",7)~ THEN BEGIN ValiantKN7
SAY ~ Now we know the answer about the ogre question. It looks like we have another pack of bounty hunters on our trail.~
IF~~ THEN REPLY ~ A brother was mentioned, another mighty ogre. I doubt that we can reason with that one any better than with the prevoius ones.~ GOTO ValiantKN8
END

IF ~~ THEN BEGIN ValiantKN8
SAY ~ I would prefer if we could find this Kharaz and settle the issue once and for all. You heard this Wrarkh. They hunt us just to please and be rewarded by this Kharaz.~
IF~~ THEN REPLY ~ And you have no idea, counselor, what we could do? No ogre castle or headquarter we could storm? ~ GOTO ValiantKN9
END

IF ~~ THEN BEGIN ValiantKN9
SAY ~ You have identified the problem perfectly, <CHARNAME>. These ogre mages have no settlement and no visible organisation. They appear out of nowhere with their powerful magic and attack without visible reasons. As we cannot find this Kharaz, the only hope I have to end this ogre spook soon, is that this ogre gets so angry about us, that he tries to find us. ~
IF ~~THEN DO ~ SetGlobal("ValiantKN","GLOBAL",8) RealSetGlobalTimer("ValiantTime","GLOBAL",1200)~EXIT
END

IF ~ Global("ValiantKN","GLOBAL",15) ~ THEN BEGIN KhaDead
SAY ~ Now that this Kharaz is defeated, we will hopefully have overcome those ogres hunting us constantly.~
IF~~ THEN REPLY ~ I hope the news will get to them soon. That was really a pest.~ GOTO KhaDead2
END

IF ~~ THEN BEGIN KhaDead2
SAY ~ We should anyway search this area for eventual remainders of Kharaz's army. We do not want our halfling friends to be hurt, right?~
= ~ Given the lack or organisation among the ogres, we may still encounter their *normal* attacks from time to time. Like you mentioned some time ago, they have always been a plague, Valiant or no Valiant.~
IF~~ THEN REPLY ~ They never were much of a threat to us, but these Kharaz Tribe ones seem to be more dangerous. You are right, let us clean the area before we move on.~ DO ~ SetGlobal("ValiantKN","GLOBAL",16) AddexperienceParty(2200) ~EXIT
END

// Donate Pirate Treasure

IF ~ Global("PirTresDon","GLOBAL",1)~ THEN BEGIN GivePirtresOrp
SAY ~ <CHARNAME>, we wanted to use Monteelah's treasure for some purpose of helping his possible victims, you remember?~
IF~~THEN REPLY ~ Thank you for reminding me. Imoen's Orphanage is the best purpose I can think of. We will go to the temple and hand in those bags.~ DO ~ SetGlobal("PirTresDon","GLOBAL",2) IncrementGlobal("Sanpoints","GLOBAL",2)~EXIT
IF~~THEN REPLY ~ As we are standing here I can see two groups of victims, Imoen's orphans and ourselves. We will go to the temple to give them some and use another bit to upgrade our own equipment.~ DO ~ SetGlobal("PirTresDon","GLOBAL",2)  IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
IF~~THEN REPLY ~ We have suffered probably worst of all from that pirate. I can think of no better purpose than to sell the stuff and make use of the profit for ourselves.~DO ~ SetGlobal("PirTresDon","GLOBAL",2)IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT
END

// Ajantis Leaves Male Led Party

IF ~ Global("SanHelmDogmas","GLOBAL",20)~ THEN BEGIN SanAjaLeft1
SAY ~ (Sandrah looks silently around the table with the remaining comrades, noticing Ajantis absence.)~
IF~~ THEN REPLY~ (You sit down at the empty chair next to her and silently place Ajantis' sealed letter on the table in front of her.)~ GOTO SanAjaLeft2
IF~~ THEN REPLY~ He has left yestereve when you were upstairs already. He asked me to give you this letter.~ GOTO SanAjaLeft2
END

IF~~THEN BEGIN  SanAjaLeft2
SAY~ I am sorry for what I have done to our group, <CHARNAME>. We have lost a good friend and a valuable comrad due to me. Me and my selfishness.~
IF~~ THEN REPLY~ You have probably lost the most of us all, my love. Your dream of what is possible in love has shattered.~ DO ~ SetGlobal("SanHelmDogmas","GLOBAL",21)~ GOTO SanAjaLeft3
END

IF~~THEN BEGIN  SanAjaLeft3
SAY~ (Laughs shyly) I have so many dreams, my ever understanding hero, enough of them will come true. With you at my side, so much will be possible. Today I love you more than ever before, <CHARNAME>.~
IF~~ THEN REPLY~ (You do not know if those are tears of joy or tears of loss that make her eyes sparkle like two diamonds as you lean to her for an endless soothing kiss.)~ EXIT
END

//   Ajantis plans to propose to PC
IF ~ Global("SanAjanProp1","GLOBAL",3)~ THEN BEGIN AjProp1
SAY ~ Darling, have you come to some conclusion about your feelings towards Ajantis?~
IF~~THEN REPLY ~ Mmh, I could ask you the same, right?~ GOTO AjProp11
END

IF~~THEN BEGIN AjProp11
SAY ~ I am very fond of my lovely paladin. I never would have imagined such a thing possible, but it is true. Which does not mean, I love you just the tiniest bit less than before.~
IF~~THEN REPLY ~ Confusing, isn't it. But you just exactly expressed my own feelings. I love you more than ever, Sandrah, but I also have this strong feeling for him.~ GOTO AjProp12
END

IF~~THEN BEGIN AjProp12
SAY ~ Wonderful, love is one of the rare things that grows when you share it. Remember that I have warned you about Ajantis, sweetheart, and what it means to be loved by him.~
IF~~THEN REPLY ~ I remember it, yes, but it seems to have become obsolete by now. He has really changed.~  GOTO AjProp13
IF~~THEN REPLY ~ The danger you warned me about is the same for you as it is for me.~ GOTO AjProp13
END

IF~~THEN BEGIN AjProp13
SAY ~ I am afraid, the *danger* has not disappeared, at least not for you. For some reason our wonderful lovely paladin has accepted me for what I am and he is nevertheless capable of loving me. ~
= ~ But for you...I am afraid, my leader and hero, things look different.~
IF~~THEN REPLY ~ Are you trying to tell me, you can just have all your fun with him while I need to wait for his - how do you call that - *formal proposal*? ~ GOTO AjProp14
END

IF~~THEN BEGIN AjProp14
SAY ~ He loves you, too. He wants you. And you are his commander on our quest. While I am just the lovely Sandrah that has turned out to be more loveable and acceptable than he ever thought I could be, it is different with you. You are the love of his life.~
IF~~THEN REPLY ~ Take me in your arms and tell me that this is possible. Me, you, him...~ GOTO AjProp15
IF~~THEN REPLY ~ And I have to give myself fully to him? Without you? Or is it us three together...~ GOTO AjProp15
END

IF~~THEN BEGIN AjProp15
SAY ~ Ajantis knows about us, he has not said any word to me about letting you go. Anyway...it is too late to stop now...~
IF~~THEN DO ~ SetGlobal("SanAjanProp1","GLOBAL",4)~ EXIT
END

// PC has Ajantis' Ring

IF~ Global("SanAjanProp2","GLOBAL",2)~THEN BEGIN AjanProp20
SAY ~ You look wonderful, love, and so very happy. Let me see the ring, darling.~
IF ~~THEN REPLY ~ The ring? Did he tell you about it?~  GOTO AjanProp21
IF ~~THEN REPLY ~ Oh, you have known it, didn't you. Here, see, it is plain but still very special.~ GOTO AjanProp22
END

IF~~ THEN BEGIN AjanProp21
SAY~ No need. I saw the messenger with the parcel and I see the happy you as a result. You know I am your clever little detective. Congratulations, <CHARNAME>, I am so happy for you. (Embraces and kisses you dearly.)~
IF ~~THEN REPLY ~ Lady Ilvastarr, wow, I - I feel so different, so mature.~ GOTO AjanProp23
END

IF~~ THEN BEGIN AjanProp22
SAY~ Just like the man who gave it. Congratulations, <CHARNAME>, I am so happy for you. (Embraces and kisses you dearly.)~
IF ~~THEN REPLY ~ Lady Ilvastarr, I need to acquaint to that name. Wow, I - I feel so different, so mature.~ GOTO AjanProp23
END

IF~~ THEN BEGIN AjanProp23
SAY~ (Laughs.) Just think of this, sweetheart, there once were people in Waterdeep who thought that Lady Ilvastarr would be me one day.~
IF~~THEN REPLY ~ Except for one who had decided not to meet those expectations. Too late now! (Laugh and kiss her.) ~ DO ~ SetGlobal("SanAjanProp2","GLOBAL",3)~ EXIT
IF~~THEN REPLY ~ You will not become jealous after all? Remember you had your chance, but I am so glad you did not take it. (Laugh and kiss her.) ~ DO ~ SetGlobal("SanAjanProp2","GLOBAL",3)~ EXIT
END



// Make Space in group for Dynaheir

IF ~ Global("SanDyResc","GLOBAL",1) ~ THEN BEGIN  SanDyResc1
SAY ~ <CHARNAME>, we have come to this place to rescue the imprisoned Dynaheir we were told about. But we have no space in the party to take her along and back to safety. Have you considered this already?~
IF~~THEN REPLY ~ We will free her and heal her and send her back to Nashkel then, where she will be safe. That is all I intend to do for her, which I think is quite a lot.~ DO ~ SetGlobal("SanDyResc","GLOBAL",2) ~ GOTO SanDyrescS
IF~~THEN REPLY ~ Hm, you are right. If we find her alive, which I dearly hope, we are obliged to take her back to safety even if we do not choose her as a new companion. What do you suggest counselor?~ DO ~ SetGlobal("SanDyResc","GLOBAL",2) ~ GOTO SanDyrescK
IF~~THEN REPLY ~ Hm, you are right. If we find her alive, which I dearly hope, we are obliged to take her back to safety. I will find a solution in time, Sandrah, thank you for reminding me.~ DO ~ SetGlobal("SanDyResc","GLOBAL",2) ~  EXIT
END

IF~~ THEN BEGIN  SanDyrescS
SAY ~ <CHARNAME>, you do not honestly intend to leave an unarmed captured woman in a hole like this! The minimum I expect from you is to take her safely to Nashkel.~
IF ~~THEN REPLY ~ Our party is already full, I fear, you cannot take her with us. She knew the risk when venturing out to here.~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanDyrescK
IF~~THEN REPLY ~ Hm, you are right. I will find a solution in time, Sandrah, thank you for reminding me.~ EXIT
END

IF~~ THEN BEGIN  SanDyrescK
SAY ~ I am well armed and unhurt. I can make it back to Nashkel on my own. Give the witch my space in the group, <CHARNAME>. We will meet afterwards at Nalin's temple.~
IF ~~ THEN DO ~ SetGlobal("SandrahJoined","GLOBAL",44)LeaveParty() EscapeAreaMove("BG4802",350,497,3)~ EXIT
END

/*First Four Morningtalks */

IF ~ Global("SandrahMorningTalk","GLOBAL",1)~ THEN BEGIN MorningOne
SAY ~ Good morning, <CHARNAME>, It is good to wake up together to face the new day.~
IF ~~THEN DO~ SetGlobal("SandrahMorningTalk","GLOBAL",2) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",1800)~EXIT
END

IF ~ Global("SandrahMorningTalk","GLOBAL",3) AreaType(OUTDOOR) ~ THEN BEGIN MorningTwoO
SAY ~ Good morning, <CHARNAME>, Listen to those birds sing. Never forget how wonderful life is after all!!. ~
= ~(There is a pair of loving doves in a tree overhead.)~
IF ~~ THEN REPLY ~ How can you be so cheerful considering all that happens around us? ~  GOTO MorningTwoE
IF ~~ THEN REPLY ~ It is good to have someone who cares and cheers me up after all that happens around us! ~ GOTO MorningTwoE
END

IF~~ MorningTwoE
SAY ~ Every morning, <CHARNAME>, our hope is reborn. ~
IF ~~THEN DO~ SetGlobal("SandrahMorningTalk","GLOBAL",4) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",1800)~EXIT
END

IF ~ Global("SandrahMorningTalk","GLOBAL",3) !AreaType(OUTDOOR) ~ THEN BEGIN MorningTwoI
SAY ~ Good morning, <CHARNAME>, Listen to those birds sing. Never forget how wonderful life is after all!!. ~
= ~(There is a pair of loving doves in a tree outside the open window.)~
IF ~~ THEN REPLY ~ How can you be so cheerful considering all that happens around us? ~  GOTO MorningTwoE
IF ~~ THEN REPLY ~ It is good to have someone who cares and cheers me up after all that happens around us! ~ GOTO MorningTwoE
END

IF ~ Global("SandrahMorningTalk","GLOBAL",5)~ THEN BEGIN Morning3
SAY ~ How wonderful to wake up again by your side, <CHARNAME>. (Gives you a short kiss on your cheek and turns away blushing red) ~
= ~(You rise partly out of the blankets displaying a half-naked muscular body)~
IF ~~ THEN REPLY ~ Yes....wonderful. ~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO M3R2
IF ~~ THEN REPLY~ Oh, I wish we would wake up each morning like this...maybe more... (She shyly looks back to you turning even more red) ~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO M3R2
IF ~~ THEN REPLY~ Iiih, what was THAT?? (You rub the spot on your cheek she has touched with her lips - You see a tear well from her eye before the turns away and searches a place at the far end of the camp) ~GOTO M3R2
END

IF ~~ THEN BEGIN M3R2
SAY ~ (Sandrah casts her eyes down)..I hope I am not too fast..~
IF ~~THEN DO~ SetGlobal("SandrahMorningTalk","GLOBAL",7)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~ EXIT
END

IF ~ Global("SandrahMorningTalk","GLOBAL",6)~ THEN BEGIN Morning3G
SAY ~ How wonderful to wake up again by your side, <CHARNAME>. (Gives you a short kiss on your cheek and turns away blushing red) ~
= ~(You rise partly out of the blankets displaying your left breast)~
IF ~~ THEN REPLY~ Yes....wonderful. ~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO M3R2
IF ~~ THEN REPLY~ Oh, I wish we would wake up each morning like this...maybe more... (She shyly looks at your exposed breast turning even more red) ~DO~IncrementGlobal("Sanpoints","GLOBAL",2) ~GOTO M3R2
IF ~~ THEN REPLY~ Iiih, what was THAT?? (You rub the spot on your cheek she has touched with her lips - You see a tear well from her eye before the turns away and searches a place at the far end of the camp) ~GOTO M3R2
END


IF ~ Global("SandrahMorningTalk","GLOBAL",8)~ THEN BEGIN MorningFour
SAY ~ <CHARNAME>, are you awake?  ~
= ~(She kneels by your bedroll and bends over you, her long locks covering you like a waterfall)~
IF ~~ THEN REPLY~ No, I'm having a wonderful dream (Slowly pull her closer to you and kiss her) ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO NextKiss
IF ~~ THEN REPLY~ No, how could I with everyone disturbing me all the time (Turn around and pull your blanket over your head) ~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO Disappointed
END

IF ~~THEN BEGIN NextKiss
SAY ~ <CHARNAME>, Reality sometimes can be as wonderful as dreams. (Falls into your embrace and kisses you over and over....) ~
= ~ (Her mouth opens to welcome you and her tongue caresses your lip softly)~
IF ~~ THEN DO ~ SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",10) StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode()~EXIT
END

IF ~~THEN BEGIN Disappointed
SAY ~ <CHARNAME>, Reality sometimes can be as cruel as dreams can be wonderful.
(Suddenly you feel something like a dark hopelessness around you.) ~ 
IF ~~ THEN DO ~ SetGlobal("SandrahMorningTalk","GLOBAL",11) SetGlobal("SandrahJoined","GLOBAL",3) EscapeAreaMove("BG3402",270,497,0)~ EXIT
END

IF ~ Global("SandrahMorningTalk","GLOBAL",9)~ THEN BEGIN MorningFourG
SAY ~ <CHARNAME>, are you awake?  ~
= ~(She kneels by your bedroll and bends over you, her long locks covering you like a waterfall)~
IF ~~ THEN REPLY~ No, I'm having a wonderful dream (Slowly pull her closer to you and kiss her) ~GOTO Girlkiss
IF ~~ THEN REPLY~ Sandrah you kiss me again and... I don't know...I have never...It feels so good and right, but...I mean...We both are girls? ~GOTO Irritated
END

IF ~~ THEN BEGIN Irritated
SAY ~ Yes, I know. Do not think I have ever done something like this before. ~
IF ~~ THEN REPLY ~ Have you done this with a boy before? ~ GOTO Experience1
END

IF ~~ THEN BEGIN Experience1
SAY ~ I have kissed a boy before, yes. Honestly more than one, I think I am not such an ugly girl after all. ~
IF ~~ THEN REPLY ~ Oh, you are a remarkable beauty, I think not many boys could resist you if you decided you wanted them.. ~GOTO Experience2
END

IF ~~ THEN BEGIN Experience2
SAY ~ You tell me - with your looks you must have the same impact - Well, maybe not with Candlekeep scholars... ~
=  ~ My chances were better at home in Waterdeep. I made some experiences, mostly out of curiosity, some holding hands, a few kisses, a boy writing terrible poems for me... ~
IF ~~ THEN REPLY ~ ...just like lovesick Adam rhyming for me, poor boy. He was a cute stableboy at Candlekeep and a childhood friend, but when he got to that age to discover his undying love for me...Candlekeep is not big enough if you want to avoid a romantic rhyming boy you feel nothing for... (You both burst into tears of laughter just to find yourself in each others arms again.)~ GOTO Girlkiss
END

IF ~~ THEN BEGIN Girlkiss
SAY ~ Although I kissed some boys before - it is different with you. ~
= ~ It is strange, but it feels so wonderful and I do not feel the need to hide it or to fight it.~
IF ~~ THEN REPLY ~ Try to fight and you will find how strong I am. (Embrace her and kiss her on the mouth. You do not feel the least resistance from her side.) ~ GOTO Girlkiss2
END

IF ~~ THEN BEGIN Girlkiss2
SAY ~ (Her mouth opens to welcome you and her tongue caresses your lip softly.) ~
IF ~~ THEN DO ~ SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",10) StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode()~EXIT
END

// Morning Talk alternate path if first chance missed

IF ~ Global("SandrahMorningTalk","GLOBAL",13)~ THEN BEGIN MorningFretr
SAY ~My wonderful hero, <CHARNAME>, it feels so good to be by your side once again. I know I have overwhelmed you with my sudden feelings for you - but - so was I myself. I did not know what was happening to me and how to act with my new feelings.~
IF ~~ THEN REPLY~ I have missed you, too, Sandrah. Now that you are here again, my feelings have become much clearer to me. (Slowly pull her closer to you and kiss her.) ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO NextKiss
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY~ Sandrah, I feel it... you are about to kiss me again and...I have made a mistake once, I will not miss my chance of a lifetime again, my love. ~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO IrritatedB
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY~ Sandrah, I feel it... you are about to kiss me again and... I don't know...I have never...It feels so good and right, but...I mean...We both are girls? ~GOTO Irritated
END

IF ~~ THEN BEGIN IrritatedB
SAY ~ Don't think I have ever done something like this before. I mean...urged a boy so much to want me...I am not like that normally...~
IF ~~ THEN REPLY ~ Have you ever done this with a boy before? ~ GOTO Experience1b
END

IF ~~ THEN BEGIN Experience1b
SAY ~ I have kissed a boy before, yes. Honestly more than one, I think I am not such an ugly girl after all. ~
IF ~~ THEN REPLY ~ Oh, you are a remarkable beauty, I think not many boys could resist you if you decided you wanted them.. ~GOTO Experience2b
END

IF ~~ THEN BEGIN Experience2b
SAY ~ All of that is meaningless, now that you are here... ~
=  ~ (Her mouth opens to welcome you and her tongue is ready to caress your lip softly.) ~
IF ~~ THEN REPLY ~ (You close your eyes and let yourself fall into her arms instinctively finding her willing mouth with yours.)
~ DO ~ SetGlobal("SandrahLT","GLOBAL",1) SetGlobal("SandrahMorningTalk","GLOBAL",14)StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~EXIT
END

// Haiass Play
IF ~~ THEN BEGIN Haiass2
SAY ~ (You hear Sandrah and the wolf now playing in a small distance.)~
IF~~ THEN REPLY ~(You smile to yourself, thinking that both, the wolf and the girl sometimes are still children at heart.) Hey you, do not wander off too far, there may be danger near. We are moving on!~ EXIT
IF~~ THEN REPLY ~ (You see a good chance to meet your companion in a playful mood and away from the rest of the party, so you follow them.)~  DO ~ IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO Haiass3
END

IF~~ THEN BEGIN Haiass3
SAY ~ Look, Haiass, here comes <CHARNAME> to have some fun with us.~
IF~~ THEN REPLY ~ Enough fun, you two, you attract all the Hobgoblins and Kobolds within miles with that noise you make. Come on, we need to move.~ GOTO Haiass4
IF~~THEN REPLY ~ Hey, you two, let me join you. Uh, here it flies again, Haiass, get it!~ GOTO Haiass5
END

IF~~ THEN BEGIN Haiass4
SAY ~ Huh, have you heard, our big master calls us. Poor wolf, poor Sandrah, back on the leash. Oh, <CHARNAME>, how could we only hope to survive without your permanent care.~
=~ (She returns to the group, laughing and playing with the happy wolf. Her smile to you seems to be full of irony.)~
IF~~THEN REPLY ~ *Sigh*, young girls and young puppies! How did I deserve this.~ EXIT
END

IF~~ THEN BEGIN Haiass5
SAY ~ (After some more play, Sandrah pretends to collaps exhausted by the side of a small creek, Haiass laying at her side with his snout on her lap.)~
IF ~~ THEN REPLY ~ Oh, please, nice as this was, our foe will not be playing right now. We better continue now. ~ GOTO Haiass4
IF ~~ THEN REPLY ~ (You fall into the grass on the free side of Sandrah, and start to caress Haiass' ears. Now and then you find your hand touching Sandrah as well in the maneouvre.)~ GOTO Haiass6
END

IF~~ THEN BEGIN Haiass6 
SAY ~ (Sandrah lies on her back, looking dreamily to the sky.) ~
= ~ You really care for your loyal wolf, <CHARNAME>, I see this as a good insight into your character. The way you treat him with care and love shows your attitude towards your fellowbeings.~
IF~~ THEN REPLY ~ Maybe Haiass and me are not that different. Two orphaned beings in a world where everybody seems to first take them as their enemy, even without knowing our real attitude.~ GOTO Haiass7
END

IF~~ THEN BEGIN Haiass7
SAY ~ Not everybody. There are people who know you two better.~
= ~ (Rising up she gives both of you a quick kiss on the forehead.)~
IF~~ THEN REPLY ~ (You feel happy and carefree as you follow those two lovely creatures back to the rest of your companions.) ~ EXIT
END

// Two Pussycats

IF~ Global("SanPussMis","GLOBAL",1)~ THEN BEGIN SanPussMis1
SAY~ *In the twilight silhouetted against the half moon you see Sandrah sitting side by side with another person. It seems she has laid her arm around that somebody's shoulder while whispering in his ear. You heart hurts at this sight but you are drawn nevertheless closer to the scene.*~
IF~~THEN REPLY ~ *You decide to move silently a bit closer to the entwined couple. You MUST know who that person is.*~  GOTO SanPussMis2
IF~~THEN REPLY ~*You pretend to stroll leasurly softly whistling a joyful tune while your path just by chance brings you nearer to the entwined couple.*~ GOTO SanPussMis2
END

IF ~~THEN BEGIN SanPussMis2
SAY ~ * A strange - almost growling sound - comes from that second person, who has now started to move towards you- on all fours. You realise that it was Pelligram haunched on her hindlegs beside Sandrah, that looked almost like a human in the dimly lit clearing.~
IF~~THEN REPLY ~ Oh, here you are, my two lovely pussycats.~ GOTO SanPussMis3
IF~~THEN REPLY ~ *You blush red on your mistake and are thankful that this cannot be seen in the dark. You attempt to retreat unseen before Sandrah will notice you. Too late.*~ GOTO SanPussMis3
END

IF ~~THEN BEGIN SanPussMis3
SAY ~ *Sandrah starts to move towards you, she as well on all fours. She imitates her large cat's pouring while coming nearer alongside Pelligram.*~
= ~ *Pelligram has reached you and starts to rub her soft snout on your left leg.*~
= ~ *A moment later you feel another warm mouth on your right leg as Sandrah kneels beside you and starts to caress you in the same catlike way.*~
IF ~~ THEN REPLY ~ Oh, how lucky I am to be loved by such two wonderful pussycats at once.~ DO ~ SetGlobal("SanPussMis","GLOBAL",2) ~GOTO SanPussMis4
END

IF ~~THEN BEGIN SanPussMis4
SAY ~ *Pelligram loses her interest soon and trails off into the darkness.*~
= ~ *The other pussycat has drawn even closer on you and her caresses on your bare leg get more intense. Her lips and tongue are engaged on the soft skin of your inner thights starting to arouse you more and more.*~
IF~~THEN REPLY~ *You start to fondle her head and caress her earlobes, knowing from past experiences how much that is stimulating her. She answers you with a satisfied purring, while her head moves upwards between your thights demanding more.*~ DO ~
StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
END


// Feldepost Bath

IF ~Global("SanFeldeTalk","GLOBAL",1)~ THEN BEGIN FT1
SAY ~So, here we are at the famous Feldepost. The adventurer's life is one thing but a little bit of comfort now and then suits us well, <CHARNAME>.~
IF~~ THEN REPLY ~That's the adequate environment for a lady like you.~ + FT1-1
IF~~ THEN REPLY ~Pretty much. What do you propose?~ + FT1-2
IF ~  InParty("Imoen2") ~ THEN REPLY ~ How about taking a room and ordering a warm scented bathtub?~ + FT1-4
IF ~ !InParty("Imoen2") ~ THEN REPLY ~ How about taking a room and ordering a warm scented bathtub~ + FT1-5
END

IF ~~ FT1-1
SAY ~I hope you like to have your cleric and fighter companion display her ladylike side to you now and then, do you? ~
IF ~ InParty("Imoen2") ~ THEN REPLY ~ So how about getting the whole party into some bathtubs and than regather over there at the cozy fireplace? ~ + FT1-4
IF ~ !InParty("Imoen2") ~ THEN REPLY ~ So how about getting the whole party into some bathtubs and than regather over there at the cozy fireplace? ~ + FT1-5
END

IF ~~ FT1-2
SAY~I'm quite the traveller, but I had no adventures so far. I hope you like to have your cleric and fighter companion display a more ladylike side to you now and then? ~
IF ~ InParty("Imoen2") ~ THEN REPLY ~ So how about getting the whole party into some bathtubs and than regather over there at the cozy fireplace? ~ + FT1-4
IF ~ !InParty("Imoen2") ~ THEN REPLY ~ So how about getting the whole party into some bathtubs and than regather over there at the cozy fireplace? ~ + FT1-5
END

IF ~~ FT1-4
SAY ~You are a competent leader. (Giggles) <CHARNAME>, that is your best decision for a while. ~
= ~ Imoen, let us get out your best pink evening gown and I will see what my backpack holds. Now we will show to <CHARNAME> how ladies of style from the City of Splendor dress for a nice evening at the fireplace. ~
= ~I hope you like to see a different side of your sweetheart now. I can be more than just your cleric and fighter companion (Her smile is an invitation that lets you forget the crowded barroom around you for a moment).~
IF~~ THEN REPLY ~ I can hardly await it. Do not take too long. I have heard rumours of how long those ladylike ladies can take to get dressed just for a simple dinner of roasted chicken and a mug of beer by the fireside, haha. ~ DO ~SetGlobal("SanFeldeTalk","GLOBAL",4) ~ GOTO BathCheck
END

IF ~~ FT1-5
SAY~ You are a competent leader. <CHARNAME> (giggles), that is your best decision for a while. ~
= ~ I will show to you how a Waterdeep lady of style dresses for a nice evening at the fireplace (Gives you a quick kiss on the cheek). Thank you, <CHARNAME>. ~
= ~I hope you like to see a different side of your sweetheart now. I can be more than just your cleric and fighter companion (Her smile is an invitation that lets you forget the crowded barroom around you for a moment).~
IF~~ THEN REPLY ~ I can hardly await it. Do not take too long. I have heard rumours of how long those ladylike ladies can take to get dressed just for a simple dinner of roasted chicken and a mug of beer by the fireside, haha. ~ DO ~SetGlobal("SanFeldeTalk","GLOBAL",4) ~ GOTO BathCheck
END

IF ~~ BathCheck
SAY ~ See you in little awhile. (Blows you a kiss.) ~
IF ~ GlobalGT("SandrahMorningTalk","GLOBAL",5)~ THEN REPLY ~ (Catch the blown kiss.) ~  DO ~ 
SetGlobal("SanFeldeTalk","GLOBAL",7)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
                IF ~ !GlobalGT("SandrahMorningTalk","GLOBAL",5)!InParty("Imoen2")~ THEN REPLY ~ (Catch the blown kiss.) ~ DO ~
SetGlobal("SanFeldeTalk","GLOBAL",5)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode()~ EXIT
IF ~ !GlobalGT("SandrahMorningTalk","GLOBAL",5) InParty("Imoen2")~ THEN REPLY ~ (Catch the blown kiss.) ~ DO ~
SetGlobal("SanFeldeTalk","GLOBAL",6)
StartCutSceneMode()
                SmallWait(4)
                MoveToPoint([521.550])
		FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",5)~ THEN BEGIN DownSa
SAY ~( When Sandrah comes down from the bathroom her appearance nearly knocks you out.)~
IF~~ THEN REPLY ~ Wow, Sandrah, you look like the most beautiful girl in the world tonight. How my fearless frontline fighter cleric can change into the beauty queen of Faerun in just a few moments will remain beyond my understanding. This can only be Mystra's work. (You bow to your lady and kiss her hand before leading her to a comfortable seat for two by the fireplace.) ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",8)~ EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",6)~ THEN BEGIN DownSaImo
SAY ~( When the girls come down from the bathroom their appearance nearly knocks you out.)~
IF~~ THEN REPLY ~ Wow, Sandrah, you look like the most beautiful girl on Toril tonight. How my fearless frontline fighter cleric can change into the beauty queen of Faerun in just a few moments will remain beyond my understanding.
Imoen! Wow, little duckling, you are a magnificent swan tonight. This can only be Mystra's work. (You bow to your ladies and kiss their hands before leading the company to comfortable seats by the fireplace.) ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",8)~ EXIT
END

// Feldetalk 2 Bath Extension

IF ~Global("SanFeldeTalk","GLOBAL",7)~ THEN BEGIN FT1Bath
SAY ~ Sandrah disappears upstairs to the bathroom. ~
= ~ (You follow Sandrah upstairs a little while later to your own assigned bathroom. As you pass the corridor, you notice that the old worn-out lock of the bathroom next to yours has slipped and the door is partly open. You get a glimpse of Sandrah who has started to unbutton her dress.) ~
IF~~ THEN REPLY ~ (You see that it is easy to repair the lock in a few moments. You do the necessary tasks as silently as possible and close the door. It seems that Sandrah has not even noticed you.) ~ + FT1BathN
IF~~ THEN REPLY ~ (You stand still like a statue, only making sure that no other guest of the inn will come through the corridor, and wait breathlessly for Sandrah to continue.) ~ + FT1BathW
IF~~ THEN REPLY  ~ (You slip through the open door and see that it is easy to repair the lock in a few moments. You do the necessary tasks and close the door from inside. You step behind Sandrah and remove her hands from the buttons of her dress) Mylady, let your servant do this task for you. ~ +FT1BathI
END


IF ~~ FT1BathW
SAY ~(Sandrah undresses bit by bit while you get more and more excited by what you see. Her body is a flawless artwork of nature as she stands naked beside the bathtub. You are a bit frustrated as she vanishes into the foam bubbles of the tub.)~
IF~~ THEN REPLY ~ (All of this beauty and perfection can be yours if you only do the right thing). Sandrah, this tub seems to be enourmous, it surely has room for two. (You are out of your clothes within seconds and jump into the other end of the bathtub)  ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~  EXIT
IF~~ THEN REPLY ~ (All of this beauty and perfection can be yours if you only do the right thing. You see that it is easy to repair the lock in a few moments. You do the necessary tasks as silently as possible and close the door. It seems that Sandrah has not even noticed you.) ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~  EXIT
END


IF ~~ FT1BathI
SAY~(Sandrah lets her hand fall to her side and closes her eyes while you slowly undress her piece by piece until she is completely naked)~
IF~~ THEN REPLY  ~ (You caress her back and kiss her neck before letting her slip into the hot water. A moment later you have slipped into the tub behind her and continue to explore her perfect body with a soft sponge...) ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",9)
                 StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~  EXIT
END

IF ~Global("SanFeldeTalk","GLOBAL",9)~ THEN BEGIN FT1BathN
SAY ~( When Sandrah comes down from the bathroom her appearance nearly knocks you out)~
IF~~ THEN REPLY ~ Wow, Sandrah, you look like the most beautiful girl on Toril tonight. How my fearless frontline fighter cleric can change into the beauty queen of Faerun in just a few moments will remain beyond my understanding. This can only be Mystra's work. (You bow to your lady and kiss her hand before leading her to a comfortable seat for two by the fireplace.) ~ DO ~ SetGlobal("FT1Bath","GLOBAL",1) SetGlobal("SanFeldeTalk","GLOBAL",10) ~EXIT
END

// Bathtub if not done before

IF ~ AreaCheck("BG3351") !Global("FT1Bath","GLOBAL",1) GlobalGT("SandrahMorningTalk","GLOBAL",5)~ THEN BEGIN FTFeld
SAY ~ How about taking a room and ordering a warm scented bathtub.~
IF ~~ THEN REPLY ~ A splendid idea, I will take a glass of wine by the fireplace, while you get the bathtub ready. Don't be too long, darling. ~ DO ~ SetGlobal("SanFeldeTalk","GLOBAL",7)~ EXIT
END

/* Lovetalks*/

IF ~ Global("SandrahLT","GLOBAL",2)~ THEN BEGIN  SLT1
SAY ~ What a wonderful new experience! Oh I love life - I love you - do you feel it too?~
IF ~~ THEN REPLY ~ Oh, yes! (Take her in your arms and kiss her lips). Let us face the day together. ~ DO ~ SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~ EXIT
IF ~~ THEN REPLY ~ Yes, I enjoyed it...but, Sandrah give a little time to think about it all. So many things are happening so fast at the moment. (Give her a kiss on the cheek) ~ DO ~ SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~ EXIT
IF ~~ THEN REPLY ~ Yes, I enjoyed it...but, Sandrah give a little time to think about it all. I am so confused and you just add more disturbance to my chaotic situation. Please stay with the party, but... ~ GOTO Hesitate1
END

IF ~~ THEN BEGIN Hesitate1
SAY ~ (Sandrah touches your face gently) I see, my love. I am not as helpful as I considered myself to be. I don't make things easier with my feelings for you. ~
= ~ I had not considered this at all when making my plans. You must know I am confused a little myself - laughs - not very good for one who set out to be your counselor. Let's face the day together in good spirit. (She gives you a smile that makes your heart sing.) ~
IF ~~ THEN REPLY ~ You are a good counselor after all. Let us face *IT* together, whatever *IT* may be today. ~ DO ~ SetGlobal("SanPidPack","GLOBAL",6) SetGlobal("SandrahLT","GLOBAL",3)RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER) ~ EXIT
END


IF ~Global("SANDRAHLT","GLOBAL",4)~ THEN BEGIN SanPeFu1
SAY ~ Peaceful, this hour of the day.~
IF~~THEN REPLY ~ It was until now.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO SanPeFu2
IF~~THEN REPLY ~ You are often awake already at this time, Sandrah. I wished you would wake me now and then to share these rare moments with me.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanPeFu3
END

IF ~~THEN BEGIN SanPeFu2
SAY ~ I am sorry I have disturbed this rare moment of solitude. I am selfish for wishing to share it with you.~
IF~~THEN REPLY ~ (Silently reach out for her and pull her down to you for a kiss.) I was selfish for keeping it to myself. But you are right, these moments become rare. I often greeted the day back there in Candlekeep, but now I am happy for any moment of sleep I can get. ~ GOTO  SanPeFu4
IF ~~ THEN REPLY~ Sorry, my love, I was so deep in thoughts. Come sit here with me and let us enjoy the moment together.~  DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO  SanPeFu4
END

IF ~~THEN BEGIN SanPeFu3
SAY ~ I have often fought off the desire to do it, knowing you would need the bit of rest you can get these days. It is rare enough that you can get enough sleep to stand the perils of each new day.~
IF ~~ THEN REPLY~ True, my healer and counselor. But do not forget that you yourself are a constant source of strength for me.~  GOTO  SanPeFu4
IF ~~THEN REPLY ~ As your captain I command you to wake me more often in the future for such a moment. These rare moments alone with you give me more strength than any week of sleep can.~ GOTO  SanPeFu4
END

IF ~~THEN BEGIN SanPeFu4
SAY ~ (She sits down beside you, facing the rising sun and resting her cheek on your shoulder.)~ 
= ~ This is the weight of the responsibility you have as a leader, <CHARNAME>. It is heavy and disturbing, and you were not prepared for it. Given that, you master it really well.~
IF~~THEN REPLY ~ I have a competent lieutenant and counselor by my side making it much easier to bear.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ GOTO  SanPeFu5
IF~~THEN REPLY ~ I have a loving companion who carries that weight with me. Thank you for all.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO  SanPeFu5
IF~~THEN REPLY ~ Yes, I do, if I were only not distracted all the time.~  DO ~ SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~ EXIT
END

IF ~~THEN BEGIN SanPeFu5
SAY ~ I love you, <CHARNAME>.~
IF~~THEN DO ~ SetGlobal("SANDRAHLT","GLOBAL",5) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~ EXIT
END


IF ~ Global("SANDRAHLT","GLOBAL",6)~ THEN BEGIN SanLtKillToo1
SAY ~ (Sandrah silently looks at a bloodstain on her hammer without wiping it off like she usually does in her constant care for her equipment.)~
IF~~ THEN REPLY ~ All this killing goes to my nerves as well. So much waste for the ambitions and the greed of a few.~ GOTO SanLtKillToo2
IF ~~THEN REPLY ~ (You know what is going on inside her - you have felt it yourself at times. You give her a short reassuring smile and tend to your equipment.)~ GOTO SanLtKillToo2
END

IF~~ THEN BEGIN SanLtKillToo2
SAY ~ I anticipated it to be a long and sometimes bloody journey when I took off at what seems to be ages past. But the reality is still something completely different from the imagination.~
IF ~~THEN REPLY ~ You had a choice, I had not, but I guess that does not make much difference in our feeling about it.~  GOTO SanLtKillToo3
END

IF~~ THEN BEGIN SanLtKillToo3
SAY ~ I do not think so. You would have made the choice if you were confronted with the task under the circumstances we now know. You would not have stayed at home behind the walls of Candlekeep knowing that you would be needed out on the Sword Coast to fight for its survival.~
IF ~~THEN REPLY ~ Would you change a thing if you could? Do you think you made a wrong decision then?~GOTO SanLtKillToo4
END

IF~~ THEN BEGIN SanLtKillToo4
SAY ~ (She laughs.) You know how stubborn I am, <CHARNAME>. I regret nothing. I would never have found the one I love for my life if I had stayed in Waterdeep. That alone is worth it all.~
IF~~THEN REPLY ~ One gets this sadness now and then in the constant battles we do. But I feel the same. Together and in love we will prevail. (Her kiss is hungry and long. When she finally lets you go you see she has regained her usual confidence.)~ GOTO SanLtKillToo5
IF~~THEN REPLY ~ (You take her in your arms almost violently to kiss her. Her reply is hungry and expressing her need for your reassurance. When she finally lets you go you see she has regained her usual confidence.)~ GOTO SanLtKillToo5
END

IF~~ THEN BEGIN SanLtKillToo5
SAY ~ Oh, how good that has felt, my love.~
IF~~THEN DO ~ SetGlobal("SANDRAHLT","GLOBAL",7) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",SANROM_TIMER)~ EXIT
END

// Friendship Talks
//FT1
IF ~ Global("SanFT","GLOBAL",1) ~ THEN BEGIN FT2-1
SAY ~ <CHARNAME>, tell me, have you been at Candlekeep all your lifetime until your unplanned departure with Gorion?~
IF~~ THEN REPLY~ Hey, now is not the time for smalltalk, danger may lie just around the next corner! ~
DO ~ SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~ GOTO FT2-7
IF~~ THEN REPLY~ Yes, I think so - more or less. I really cannot remember much of my early days, but where memory sets in, it is all connected with Candlekeep - and Gorion.~ DO ~ SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~ GOTO FT2-2
IF~~ THEN REPLY~ Candlekeep was my home and all the life I have known until now. Having to leave it and not even being allowed to ever return - it is so unfair...~ DO ~ SetGlobal("SanFT","GLOBAL",2) RealSetGlobalTimer("SanFTWait","GLOBAL",3000) ~ GOTO FT2-2
END

IF~~ THEN BEGIN FT2-2
SAY ~ (Takes your hand for a moment and smiles at you.) It was not my intention to stir up fresh wounds. Maybe it helps you in your mourning about Gorion to recall the good times with him.~
IF~~ THEN REPLY~ You are right, Sandrah, it helps. The hurt of his loss is there anyway, whether I talk about it or not. So it is maybe better to talk.~ GOTO FT2-3
END

IF~~ THEN BEGIN FT2-3
SAY ~ Candlekeep may look a bit isolated and a world of its own from the outside, but it is really connected to all parts of the Realms by the constant exchange of visitors and knowledge.~
IF~~ THEN REPLY~ That is a strange way of looking at it, really. I felt just the isolation and the lack of youngsters - except for Imoen and Adam. The coming and going of the outsiders made it even more obvious, that Candlekeep was so remote of the *real world*.~ GOTO FT2-4
IF~~ THEN REPLY~ You are right. I stayed in the walls of this enclave, but with the help of the lore and the tales and news from the visitors, I was travelling the whole Sword Coast up and down without the danger of being robbed by bandits.~ GOTO FT2-4
END

IF~~ THEN BEGIN FT2-4
SAY ~ You surely have a more than average knowledge of the Sword Coast and its history.~
IF~~ THEN REPLY ~ Maybe. But then it is all theory, and now we have the real things at our hands. It is quite different to hear and read about a hailstorm than to be hit by one. Guess you understand my metaphor. ~ GOTO FT2-5
END

IF~~ THEN BEGIN FT2-5
SAY ~ Absolutely. You already know that I am a city girl who never had to care about the small troubles of the everyday struggle. But I feel it is great to be part of the *real world* as you call it. I can try out the worth of my education now. ~
IF~~ THEN REPLY ~ You have the slight advantage that you seem to be a bit better prepared for it than I am. Whoever taught you, provided you with quite some skills with your weapon and your spells. ~ GOTO FT2-6
END

IF~~ THEN BEGIN FT2-6
SAY~ Thank you for this compliment. You are not too bad yourself, given that you were just thrown into this adventuring life without a warning. Let us pick up this talk later, <CHARNAME>, before this real world hits us with a suprise while we are unaware.~
IF~~ THEN REPLY ~ Right - It feels good to talk to you, Sandrah, Thank you.~ EXIT
IF~~ THEN REPLY ~ Enough babbling for one day, move your pretty arse, girl.~GOTO FT2-7
END

IF~~ THEN BEGIN FT2-7
SAY ~ What will you do about it, (Laughs), look at the condition you are in!~
IF~~ THEN REPLY~ Oops ~ DO ~ ActionOverride(Player1,DropInventory())~ EXIT
END

// Sympathy Rewards
IF~ Global("Sancharm","LOCALS",1) ~ THEN BEGIN Sancharm1
SAY ~ I love to be by your side, <CHARNAME>, to be able to enjoy your presence, to enjoy our talks and to be rewarded by your constant care and interest in me.~
IF~~ THEN REPLY~ It is  very easy to show one's best sides when in the company of such a wonderful person like you.~ GOTO Sancharm2
IF~~THEN REPLY ~ You make me blush. I never felt that I acted in anyway superficial just because of you.~ GOTO Sancharm2
END

IF ~~ THEN BEGIN Sancharm2
SAY ~ It is your true nature that is so dear to me, my *grim leader*. I want to present you with a little gift to show you my sympathy.~
IF ~~ THEN DO ~ GiveItemCreate("Misc1I",Player1,0,0,0) ~GOTO Sancharm3
END

IF ~~ THEN BEGIN Sancharm3
SAY ~ Mystra has granted me to give you a bit of the Weave's energy that will be more permanent than the existence of the small physical gift.~
IF ~~ THEN DO~ SetGlobal("Sancharm","LOCALS",2) CreateVisualEffectObject("SPFLESHS",Player1) ActionOverride(Player1,AddSpecialAbility("cvcharm"))~ EXIT
END

IF~ Global("Sancharm","LOCALS",3) ~ THEN BEGIN Sancharm4
SAY ~ My beloved, we are now together for a significant while and I do not regret one single instant of it.~
IF~~THEN REPLY ~ I love you too, Sandrah.~ DO ~ SetGlobal("Sancharm","LOCALS",4) ~GOTO Sancharm5
END

IF ~~ THEN BEGIN Sancharm5
SAY ~ Come into my arms, <CHARNAME>. This eve I want to show you a bit of Mystra's Weave. I feel that you are destined to partake in what I gain from my goddess every day.~
IF~~THEN REPLY~ (The infinite depth of her eyes seem to pull on you overcoming any resistance. The reality around you blurs away as you seem to leave your own self. You are not alerted as Sandrah's hand holds yours and her soothing voice is very near to you.)~
DO ~ ClearAllActions()
SmallWait(2)
SetInterrupt(FALSE)
TextScreen("SanGift")~ EXIT
END

IF~ Global("Sancharm","LOCALS",6) ~ THEN BEGIN Sancharm6
SAY ~ Are you feeling well, my love. I was not sure how someone not gifted by Mystra in the way I am would react to this invocation of the Weave. But I wanted to share it with my beloved for just one time to know and understand each other even better.~
IF~~THEN REPLY~ I feel unharmed and I never had a single moment of fear knowing you by my side. So that was the Weave then, did you let me see it? ~DO ~SetGlobal("Sancharm","LOCALS",7) ~GOTO Sancharm7
END

IF ~~ THEN BEGIN Sancharm7
SAY ~ I took you as far as it was safe for you. It was just a small local invocation of the energy of the Weave. To really touch it and glimpse it without Mystra herself guiding us would be unsafe even if I had the power to reach that far.~
IF~~THEN REPLY~ Would you yourself possess such power, Sandrah?~GOTO Sancharm8
END

IF ~~ THEN BEGIN Sancharm8
SAY ~ (Sandrah smiles her enigmatic smile.) No, I do not possess the required power. Not yet. And who knows if I ever will. Even among the experienced and more gifted priests of the goddess there are very few that are blessed with such insights and powers. Maybe my father and Khelben Blackstaff are really the only ones.~ 
IF~~THEN EXIT
END



//FT2

// Ajantis + Sandrah past
//Male Path
IF ~ Global("KnoAjMale","GLOBAL",1) ~ THEN BEGIN KnoAjMale
SAY ~ (Sandrah has fallen back a little from the group to study the map part of her famous book)~
IF ~~ THEN REPLY ~ Sandrah, if I may - how come you know Ajantis. You seem to be close - or at least you were.~ GOTO KnowAjCl
IF~~ THEN REPLY ~ Sandrah, I do not want you to kiss other men, even if they may have been your friends in the past ~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ GOTO KnowAjKi
IF~~ THEN REPLY ~ Sandrah, if I ever see you and Ajantis together I will kill both of you! ~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO KnowAjJea
IF~~THEN REPLY ~ You are plotting our way over the Sword Coast on your map? ~ GOTO KnowAjMap
END

IF~~ KnowAjJea
SAY ~ <CHARNAME>, calm down, there is nothing to justify your outbusrt, believe me.~
IF ~~ THEN REPLY ~ Really?~ GOTO KnowAjCl
END

IF~~ KnowAjMap
SAY ~ We are right here, see. ~
= ~ (As you come closer to glance at the map, she quickly embraces you neck and kisses you lightly). ~
= ~ <CHARNAME>, you really came to ask me about Ajantis - or not? ~
IF ~~ THEN REPLY ~ Is it really so easy to read my mind? ~ GOTO KnowAjKi
END

IF~~ KnowAjCl
SAY~ We both are from Waterdeep, both from the wealthier part of the City of Splendor, so we know each other. The Ilvastarr family is quite prominent in town.~
IF ~~ THEN REPLY ~ I see. Just that? ~ GOTO KnowAjKi
END

IF~~ KnowAjKi
SAY ~ <CHARNAME>, you mean that little kiss I gave to Ajantis? (Laughs gently). Jealous? ~
= ~  Well, to say the truth, there was some interest from my side at one time. Look at him, he is handsome, he is upright and well mannered, not too dumb, a rare occasion even in a big town like Waterdeep. And we are from the same circles in society so we frequently crossed each others way. ~
= ~ But nothing came out of it, our ways and views of life in the end are too different. I think I am much too liberate and free thinking for a man of strict rules and categories like Ajantis.~
IF ~~ THEN REPLY ~ Thank you for being so open, Sandrah. Yes, it is hard to imagine you and Ajantis as a pair if one knows both your different characters. ~ DO ~ SetGlobal("KnoAjMale","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY ~ Is that really all? But you kissed him at the meeting? ~ GOTO KnowAjKi2
END

IF ~~ KnowAjKi2
SAY ~ I just had to do it to find out how it would feel. We never kissed or even held hands back there in Waterdeep. He was and is a man for one woman only and that woman is NOT Sandrah of Waterdeep. ~
IF ~~ THEN REPLY ~ Thank you for being so open, Sandrah. Yes, it is hard to imagine you and Ajantis as a pair if one knows both your different characters. ~ DO ~ SetGlobal("KnoAjMale","GLOBAL",3)~ EXIT
END

//FT3
IF~ Global("SanFT","GLOBAL",3)~ THEN BEGIN FT3-1
SAY ~ <CHARNAME>, I already know that you are an orphan who grew up with Gorion. Do you know anyone else whom you would call family? ~
IF~~ THEN REPLY ~ No, and now with Gorion gone, I am all alone. You know I called Imoen my sister before, and she calls me her <PRO_BROTHERSISTER>, but that is only because we have no other word for our special type of relationship. We are not related by blood or else.~ DO ~ SetGlobal("SanFT","GLOBAL",4)RealSetGlobalTimer("SanFTWait","GLOBAL",3000)~ GOTO FT3-2
END

IF~~ THEN BEGIN FT3-2
SAY ~ I see and I can imagine that growing up with Imoen in such a secluded environment leads to this special view. She is very likeable indeed. You do well to keep her with you, I think she will always be your loyal companion. (As I will, if you let me.) ~
IF~~ THEN REPLY ~ So with my family history told in one sentence, what about you? ~ GOTO FT3-3
IF~~ THEN REPLY ~ Getting to know each other is a good thing, Sandrah, even if I do not really have anything to tell.~ GOTO FT3-3
END

IF~~ THEN BEGIN FT3-3
SAY ~ I am my parent's only child and I grew up with my father, as you might already have heard. My mother died in childbirth a year after I was born. I have no own memories of her at all - but still it is as if I had known her so well from all the talks and shared stories I received from others about her.~ 
IF~~ THEN REPLY ~ You are more fortunate than I am, as I never even heard my mother's name once. Gorion died before he could tell me anything about my heritage. ~  GOTO FT3-4
IF~~ THEN REPLY ~ But then you must have a brother or sister, unless the newborn died with your mother...Oh, Sandrah, sorry, I should not have brought that up...~ GOTO FT3-4
END

IF~~ THEN BEGIN FT3-4
SAY ~ Who is that? ~
IF ~~THEN DO ~ CreateCreatureObject("Sanboy1",Player1,0,0,0)~EXIT
END


// FT Horses
IF ~ Global("Sanhors","GLOBAL",1)~ THEN BEGIN Sanhors1
SAY ~ What a wonderful creature, a beautiful young stallion! It must be a great pleasure to ride this one.~
IF ~~ THEN REPLY ~ I have to admit, my experience with these creatures is almost non- existent.~ GOTO Sanhors3
IF ~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ Do you want me to catch it for you, mylady, to see my proud queen mount this impressive horse?~ GOTO Sanhors2
IF ~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I think you know more about riding than I do. But if you catch and hold it for me, I will put my trust in you and mount his back. But only if you lead him for me.~ GOTO Sanhors3
END

IF~~ THEN BEGIN Sanhors2
SAY ~ Let us imagine how that would be for a moment, I am afraid we should not really do it with this horse. It has the famous brand of the Craumerdaun family, so it is not free.~
IF ~~ THEN REPLY ~ Sometimes the idea of something and a little daydreaming about it does not hurt. (Gently touch Sandrah's face with your forefinger, following the the lines of her enigmatic smile.)~ GOTO Sanhors4
IF ~~ THEN REPLY ~ One day we will be able to buy you one of those - one day when all of this is over and we return to a more peaceful life...~ GOTO Sanhors4
END

IF~~ THEN BEGIN Sanhors3
SAY ~ You had no horses over there at Candlekeep?~
IF ~~ THEN REPLY ~ Well, sometimes old Winthrop allowed me and Imoen to sit on old Gioia's  broad back. She was his enourmous coach horse that he used to get new wares and beer barrels once in a while from Beregost or Baldur's Gate. A strong creature, but it took her nearly one hour to walk once around the library. Still, with Imoen everything was a big fun.~ GOTO Sanhors4
END

IF~~ THEN BEGIN Sanhors4
SAY ~ Do you know the story of the young princess who tried to weaken a bloody tyrant's heart to have mercy for the starving poor. She rode up to his castle on a snow white stallion wearing nothing but her long hair to protect her.~
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ I wish I could make you ride up to my castle this way. Your hair is beautiful but it will not cover very much on such an occasion. You could ask me for everything and I would give it without hesitation.~ DO ~ SetGlobal("Sanhors","GLOBAL",2)~ EXIT
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ Are you dreaming to be that princess? You riding up to any castle that way and any tyrant would give whatever you ask for without hesitation. Your hair is beautiful but it will not cover very much on such an occasion. ~ DO ~ SetGlobal("Sanhors","GLOBAL",2)~ EXIT
END

//FT4
IF~ Global("SanFT","GLOBAL",5)~ THEN BEGIN FT4-1
SAY ~ <CHARNAME>, we have talked about your past a bit - or, to be precise, that you do not know much about it at all.~
IF~~ THEN REPLY ~ Yes, and I remember that we did not talk about yours as well, as we were interrupted at that time.~ DO ~ SetGlobal("SanFT","GLOBAL",6) RealSetGlobalTimer("SanFTWait","GLOBAL",3000)~ GOTO FT4-2
END

IF~~ THEN BEGIN FT4-2
SAY ~ What do you know about your lifetime friend Imoen then?~
IF~~ THEN REPLY ~ Almost as little as about my own history. She has just been there all my life as I recall, being with Winthrop as I did with Gorion. Some say she came to Candlekeep almost ten years after me, which is somehow strange.~ GOTO FT4-3
END

IF~~ THEN BEGIN FT4-3
SAY ~ Strange in which way, strange that you remember it otherwise or strange that she had a similar fate as yours?~ 
IF~~ THEN REPLY ~ Strange that we both are orphans without any knowledge at all as to our possible heritage. ~ GOTO FT4-4
IF~~ THEN REPLY ~ Strange that we both remember being with each other all our life. Imoen knows nothing about her time before Candlekeep and I do not remember Candlekeep without her.~ GOTO FT4-4
IF~~ THEN REPLY ~ Actually both. None of us can remember anything of our lives before we met each other - only other people told us there was such a time, but it does not fit with our own memories. And then also the strange coincidence of us both not knowing our heritage.~ GOTO FT4-4
END

IF~~ THEN BEGIN FT4-4
SAY ~ You being both at Candlekeep as the orphans you were may not be so strange, as the places for poor motherless children like you two are rare on the rough Sword Coast. The monks may not appear to be very fond of children on the outside, but I guess they have good hearts and really like to have a bit of childish activities around their lone studies.~
IF~~ THEN REPLY ~ You are right, Sandrah, with a rascal like Imoen they sure got their full share - and more.~ GOTO FT4-5
END

IF~~ THEN BEGIN FT4-5
SAY ~ The other issue is probably more puzzling. Why should Gorion, Winthrop and other monks try to raise the impression you came to Candlekeep at different times and maybe from different places. Of course, a child's memory of the early days is not very reliable - I myself have no single idea about my mother even as I encountered her physically. But can both of you be so wrong in remembering things that were not real?~
IF~~ THEN REPLY ~ I think you are right, Sandrah, if I really was like ten years old when Imoen arrived at Candlekeep and she the same, we should have some notion of that encounter. It must have been a great event in our otherwise eventless lives. We cannot have forgotten it both. This is something to think about.~ EXIT
END



//Female Path
IF ~ Global("KnoAjFem","GLOBAL",1) ~ THEN BEGIN KnoAjFem
SAY ~ (Sandrah has fallen back a little from the group to study the map part of her famous book)~
IF ~~ THEN REPLY ~ Sandrah, if I may - how come you know Ajantis. You seem to be close - or at least you were.~ GOTO KnowAjClF
IF~~THEN REPLY ~ You are plotting our way over the Sword Coast on your map? ~ GOTO KnowAjMapF
END

IF~~ KnowAjMapF
SAY ~ We are right here, see. ~
= ~(As you come closer to glance at the map, she quickly embraces you neck and kisses you lightly.) ~
= ~ <CHARNAME>, you really came to ask me about Ajantis - or not? ~
IF ~~ THEN REPLY ~ Is it really so easy to read my mind? ~ GOTO KnowAjKiF
END

IF~~ KnowAjClF
SAY~ We both are from Waterdeep, both from the wealthier part of the City of Splendor, so we know each other. The Ilvastarr family is quite prominent in town.~
IF ~~ THEN REPLY ~ I see. Just that? ~ GOTO KnowAjKiF
END

IF~~ KnowAjKiF
SAY ~ <CHARNAME>, you mean that little kiss I gave him. (Laughs gently). ~
= ~  Well, to say the truth, there was some interest from my side at one time. Look at him, he is handsome, he is upright and well mannered, not too dumb, a rare occasion even in a big town like Waterdeep. And we are from the same circles in society so we frequently crossed each others way. ~
= ~ But it was nothing serious, our ways and views of life in the end are too different. I think I am much too liberate and free thinking for a man of strict rules and categories like Ajantis.~
IF ~~ THEN REPLY ~ Thank you for being so open, Sandrah. Yes, it is hard to imagine you and Ajantis as a pair if one knows both your different characters. ~ DO ~ SetGlobal("KnoAjFem","GLOBAL",3)~ GOTO KnowAjGF1
IF ~~ THEN REPLY ~ Is that really all? But you kissed him at the meeting? ~ GOTO KnowAjKi2F
END

IF ~~ KnowAjKi2F
SAY ~  I just had to do it to find out how it would feel. We never kissed or even held hands back there in Waterdeep. He was and is a man for one woman only and that woman is NOT Sandrah of Waterdeep.  ~
IF ~~ THEN REPLY ~ Thank you for being so open, Sandrah. Yes, it is hard to imagine you and Ajantis as a pair if one knows both your different characters. ~ DO ~ SetGlobal("KnoAjFem","GLOBAL",3)~ GOTO KnowAjGF1
END

IF ~~ KnowAjGF1
SAY ~ I have to warn you, <CHARNAME>, as nice as Ajantis is, he is also very set in his ways. If I had ever dared to hold hands with him back there in Waterdeep, or even dared to kiss him, I would not be here roaming the Sword Coast with you today.~
IF ~~ THEN REPLY ~ What do you mean by that? ~ GOTO KnowAjGF2
END

IF ~~ KnowAjGF2
SAY ~ If he really had responded to my advances, I would be back in Waterdeep being Lady Ilvastarr now, prancing the floor like a caged animal, waiting for my paladin hero to return from one of the Order's mission now and then.~
IF ~~ THEN REPLY ~ But you are a great fighter and cleric yourself, would he not take you with him to fight the evil.~ GOTO KnowAjComp
IF ~~ THEN REPLY ~ That does not sound so unpleasant to me. A caring loving husband who fights evil while you guard and decorate your home for the returning hero.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~GOTO KnowAjHousewife
IF ~~ THEN REPLY ~ I am happy you were able to resist such a great opportunity. At least that is what most people I know would think it is to be Lady Ilvastarr. Most except maybe Imoen, the little free bird, - and you - and me. It is much better to have you here with me.~ GOTO KnowAJFree
END

IF~~KnowAjComp
SAY~ I am sure that this will not fit well into the paladin's vision of his wife. Her role is the decorative housewife, keeper of the home, and mother of his children. No place for the hot blooded woman who fights by his side by day and enjoys the pleasures of his bed at night.~
IF~~THEN REPLY ~ Thank you for the warning, Sandrah. (Smile and give her a kiss.)~ EXIT
IF~~THEN REPLY ~ Maybe his mindframe can be changed when he actually sees girls like us acting. I can easily imagine you to fit in both roles with ease. Or me. Or Imoen. (Smile and give her a kiss.)~ EXIT
END

IF ~~ KnowAjHousewife
SAY ~ It that really you talking, <CHARNAME>, is it your dream of life to be the decorative housewife, keeper of the home, and mother of children.  No more place for the hot blooded woman who fights by her loved one's side by day and enjoys the pleasures of the common bed at night.~
IF~~THEN REPLY ~ You know that I was forced to this current life as adventurer by the circumstances. It is rich on events, both nice and bad. It is good to find friends to share your path with. But can it go on like that forever. Maybe one day we will wish for a little place of peace that we will call home.~ EXIT
IF~~THEN REPLY ~ Yes, I wish for a little place of peace to call my home again. But this is silly talk as I have no choice in it at the moment.~ EXIT
IF~~THEN REPLY ~ If this quest is all over one day, why not. A little place of peace for all of us to call home. We can still go out for missions if we feel the calling. But we always have a haven to return to when the duty is done. But I cannot imagine such a place without you. (Embrace her dearly). ~ EXIT
END

IF ~~ KnowAJFree
SAY ~ After all you were forced to this current life as adventurer by the circumstances. It is rich on events, both nice and bad. It is good to find friends to share your path with. But can it go on like that forever. Maybe one day you will wish for a little place of peace to call home. ~
IF~~THEN REPLY ~ Yes, I wish for a little place of peace to call my home again. But this is silly talk as I have no choice in it at the moment.~ EXIT
IF~~THEN REPLY ~ If this quest is all over one day, why not. A little place of peace for all of us to call home. We can still go out for missions if we feel the calling. But we always have a haven to return to when the duty is done. But I cannot imagine such a place without you. (Embrace her dearly). ~ EXIT
IF~~THEN REPLY ~ Maybe his mindframe can be changed when he actually sees girls like us acting. I can easily imagine you to fit in both roles with ease. Or me. Or Imoen. (Smile and give her a kiss.)~ EXIT
END

// DreamTalk 1
IF ~ Global("SanDreamTalk","GLOBAL",1) ~ THEN BEGIN DreamT1
SAY ~ How about taking a rest, <CHARNAME>, this has been a long and eventful day.~ IF ~~ THEN REPLY ~ You are right, how about that grove over there, let us set up a camp.~ GOTO SanCamp1
END

IF ~~ THEN BEGIN SanCamp1
SAY ~ Good to warm the bones beside the campfire. We are not yet used to this life of adventurers out in the wild.~
IF ~~ THEN REPLY ~ So this whole lifestyle is new to you as well? ~ GOTO Lifestyle
IF ~~ THEN REPLY ~ What has your life been like until now, Sandrah? ~ GOTO Lifestyle
IF ~~ THEN REPLY ~ Yes, I'm so tired from this day, good night, Sandrah. ~DO ~ IncrementGlobal("Sanpoints","GLOBAL",-1) SetGlobal("SanDreamTalk","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Lifestyle
SAY ~ I am used to townlife, I live comfortably in Waterdeep, usually. ~
IF ~~ THEN REPLY ~ Oh, Waterdeep, the famous city, I hope we will see it sometime on our journey. ~ GOTO SeeWaterdeep
IF ~~ THEN REPLY ~ Oh, a city girl, and a rich one's daughter, I guess, from your fine cloth and good equipment. Have you ever been out in the wilderness overnight? ~ GOTO Citygirl
IF ~~ THEN REPLY ~ Then you must be as tired as I am, good night, Sandrah. ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ THEN BEGIN SeeWaterdeep
SAY ~ This may be far in the future still, <CHARNAME>, a long road is ahead of us until then. It is better to be rested for the journey. Good night. (For a moment it seemed to you that she was blowing you a goodnight kiss before turning to her pillow - or was it just a trick of the light from the campfire?)~
IF~~ THEN REPLY ~ Good night, Sandrah. ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",2)  RestParty()~ EXIT
END

IF ~~ THEN BEGIN Citygirl
SAY ~ I have been hiking with my father now and then. We have rested at all kind of places in the wilderness, caves, campfires, an oasis. But those are tales for other quiet evenings when the need for a good night's sleep is not so urgent. ~
=  ~ Good night. (For a moment it seemed to you that she was blowing you a goodnight kiss before turning to her pillow - or was it just a trick of the light from the campfire?)~
IF~~ THEN REPLY  ~ Good night, Sandrah. ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",2)  RestParty()~ EXIT
END

// DreamTalk 2

IF ~ Global("SanDreamTalk","GLOBAL",3) Global("SanStarTalk","LOCALS",0) ~ THEN BEGIN DreamT2
SAY ~ (Sandrah lies on her back on her bedroll near to you, gazing at the stars above.)~
IF ~~ THEN REPLY ~ (Whisper, not to disturb the others in the group:) Sandrah, can you not sleep yet?~ GOTO Startalk1
IF ~~ THEN REPLY ~ (Silently admire your beautiful companion, who looks more enigmatic than ever in the dim light of the stars and the dying campfire.)~ GOTO Startalk1
END

IF ~~ THEN BEGIN Startalk1
SAY ~ (Sandrah silently moves a bit closer to you. She puts her head on your shoulder and together you look upwards into the star filled nightsky.) ~
IF~~ THEN REPLY ~ Moments like this could last an eternity (sigh), if they only would.~ GOTO Startalk2
IF ~~ THEN REPLY ~ What are you thinking of, Sandrah? ~ GOTO Startalk2
IF ~~ THEN REPLY ~ (Say nothing, do nothing, just put your arm around her and gently pull her a little bit closer to you.) ~ GOTO Startalk2
END

IF ~~ THEN BEGIN Startalk2
SAY ~ (She remains silent for some time, you start to think she has fallen asleep.)~
= ~ <CHARNAME>, when I see all those stars up there, I sometimes imagine one of them was my mother looking down at me. (Laughs nervously) It is a strange thought, I know, for someone who normally has a more rational view on things...~
IF~~ THEN REPLY ~ Hm, all your talks are always about your father. You have never mentioned your mother before. So from your words I assume that she is no more? ~  GOTO Startalk3
END

IF ~~ THEN BEGIN Startalk3
SAY ~ Like yourself I never really knew my mother. She died when I was just one year old, so I have no conscious recollection of her. Just the things my father told me about her. For him she, she never really left. ~
IF~~ THEN REPLY ~ From all I heard, you must resemble her a lot?~  GOTO Startalk4
END

IF ~~ THEN BEGIN Startalk4
SAY ~ Yes, everybody who knew her tells me that. Father has a painting of her in our home in Waterdeep and it is true. Now that I am grown, looking at the painting is like looking into a mirror. I know how my father loves me but I am also the constant reminder of whom he lost. ~
IF~~ THEN REPLY ~ A poor man and a happy man he is at the same time. But while your mother seems to be almost alive still, it is like mine never has existed.~ GOTO Startalk5
END

IF ~~ THEN BEGIN Startalk5
SAY ~ And Gorion never told you about her? ~
IF~~ THEN REPLY ~ I guess he would have wanted to now. But it never came to that due to his murder. I have no idea how I can find out something about her now. Maybe it is not such a bad idea after all to imagine her as a star looking down upon me now... ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",4)SetGlobal("SanStarTalk","LOCALS",1)   ~GOTO Startalk6
END

IF ~~ THEN BEGIN Startalk6
SAY ~ (She has moved another bit closer to you, her head resting in your armpit and her free arm slung around your chest.) ~
IF~~ THEN REPLY ~ (You continue to look into the stars with her presence soothing you while your thoughts trail off into nothingness...) ~ DO~ RestParty()~EXIT
END

// DreamTalk 3

IF ~ Global("SanDreamTalk","GLOBAL",5) Global("Mothdream1","GLOBAL",0) ~ THEN BEGIN MotherDream
SAY ~ (Today at the inn Sandrah has sat down at a table to study her tome of Elminster's knowledge once again. She has neglected her studies a bit - due to you.) ~
= ~ (As much as you yearn to have her in your arms and occupied otherwise, you decide that sometimes everybody needs some time for their own.)~
IF ~~ THEN REPLY ~ While you watch her from your comfortable armchair and admire her beauty and the grace of her every move, your mind begins to drift....
...you find yourself in a state between waking and dreaming, where everything is possible.....
~ DO ~ SetGlobal("Mothdream1","GLOBAL",1) ~ EXIT
END


IF ~ Global("Mothdream1","GLOBAL",6)~ THEN BEGIN AfterMoDr
SAY ~ <CHARNAME>, are you allright? Have you seen a ghost or was it just a bad dream?~
IF~~ THEN REPLY ~ Oh, what happened? I must have fallen asleep. I am fine and hungry. Let us order something to eat. ~ DO ~ IncrementGlobal("Sanpoints","GLOBAL",-1)SetGlobal("SanDreamTalk","GLOBAL",6)RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) SetGlobal("Mothdream1","GLOBAL",7)~EXIT
IF~~ THEN REPLY ~ Oh, what happened? I must have fallen asleep. I had a very strange dream, or was it a vision? ~ GOTO AfterMoDr2
IF~~ THEN REPLY ~ I must have fallen asleep. Or maybe not. The strange dream or vision I had was too real. ~ GOTO AfterMoDr2
END

IF ~~ THEN BEGIN AfterMoDr2
SAY ~ You look in deed troubled, my dear. Do you want to tell me about it?~
IF~~ THEN REPLY ~ I am not sure, it may trouble you as well. You were involved - and your father too. And Khalindra. ~ GOTO AfterMoDr3
IF~~ THEN REPLY ~ Was your mother's name by any chance *Khalindra*? ~GOTO AfterMoDr3
END

IF ~~ THEN BEGIN AfterMoDr3
SAY ~ This must be more than a mere dream then.~
= ~ I am sure I never mentioned my mother's name to you. Strange?~
IF~~ THEN REPLY ~ And you never told me that she died giving birth to another child not of Elminster.~ GOTO AfterMoDr4
END

IF ~~ THEN BEGIN AfterMoDr4
SAY ~ That was revealed to you? A vision indeed. <CHARNAME>, please give me a bit of time - I need to contemplate what you just saw. It is hard to believe but it must be true, nobody could have told you what I do not fully know myself yet.~
IF~~ THEN DO ~SetGlobal("SanDreamTalk","GLOBAL",6)SetGlobal("Mothdream1","GLOBAL",7) AddJournalEntry(@90,QUEST) GiveItemCreate("Sanport",Player1,0,0,0)RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) ~ EXIT
END

// Learned from Viconia
IF ~ Global("SanDreamTalk","GLOBAL",9) ~ THEN BEGIN VicSedLrn1m
SAY ~ (Sandrah has vanished to another room a while ago having taken her backpack with her.)~
= ~ (As she now appears in the door of your room, your jaw drops down and your eyes seem to pop out. The tiny see-through nothing she is wearing shows her perfect body in the light of the fireplace behind her. Her lips and aureols are enhanced by some glossy red makeup and her hair reveals its beauty so often hidden beneath a helmet.) ~
IF~~THEN REPLY ~ (You rise immediately to take possession of all that beauty offered to you in this way.) Mystra be praised, she does not require her priestesses to be chaste!~ GOTO VicSedLrn2
IF ~~THEN REPLY ~ (You remain expectantly seated while the clicking of her high-heels on the floor tiles comes slowly nearer, making each second of waiting an additional second of pleasure.) ~ GOTO VicSedLrn2
END

IF ~ Global("SanDreamTalk","GLOBAL",10) ~ THEN BEGIN VicSedLrn1f
SAY ~ (Sandrah has vanished to another room a while ago having taken her backpack with her.)~
= ~ (As she now appears in the door of your room, your breath stops for a moment on the sight you see. The tiny see-through nothing she is wearing shows her perfect body in the light of the fireplace behind her. Her lips and aureols are enhanced by some glossy red makeup and her hair reveals its beauty so often hidden beneath a helmet.) ~
IF ~~THEN REPLY ~ (You remain expectantly seated while the clicking of her high-heels on the floor tiles comes slowly nearer, making each second of waiting an additional second of pleasure.) ~ GOTO VicSedLrn2
IF ~~THEN REPLY ~ (You stand up and let the long thick robe that has covered you up to now glide to the floor. Her eyes widen with love and lust as she recognises that you are prepared for this evening as well.)~ GOTO VicSedLrn3
END

IF ~~THEN BEGIN VicSedLrn2
SAY ~ Wonderful, my love, we do not wish to spoil our pleasure by unneccesary haste. We have a lot of time tonight.~
=~ (She takes your head in both of her hands and, after a long intensive kiss, she leads your lips down to a place just above her breasts.)~
IF~~ THEN REPLY ~ (Your lips and hands need no further assistance from Sandrah to find their way to ever new points of pleasure on her magnificent body...) ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",11) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) RestParty()~ EXIT
END

IF ~~THEN BEGIN VicSedLrn3
SAY ~ (Smiles) Our drow friend can be really secretive indeed. It seems I am not the only one to take her lessons.~
=~ (She takes your head in both of her hands and, after a long intensive kiss, she leads your lips down to a place just above her breasts.)~
IF~~ THEN REPLY ~ (Your lips and hands need no further assistance from Sandrah to find their way to ever new points of pleasure on her magnificent body as she returns the same services to you.) ~ DO ~ SetGlobal("SanDreamTalk","GLOBAL",11) RealSetGlobalTimer("SanDreamTalkTime","GLOBAL",SANROM_TIMER) RestParty()~ EXIT
END



// In Elminster's Garden

IF ~ Global("Mothdream2","GLOBAL",7) ~ THEN BEGIN MoDreScene1
SAY ~ (Sandrah catches you as you are almost tumbling to the ground.) What is it, my love, you are pale as if you have seen a ghost.~
IF~~THEN REPLY ~ You are almost right, Sandrah - I have been here in that garden before...~ DO ~ SetGlobal("Mothdream2","GLOBAL",8) ~ GOTO MoDreScene2
END
 
IF~~ THEN BEGIN MoDreScene2
SAY ~ You mean...~
IF~~THEN REPLY ~ There is a small pavillion at the upper end of the garden, overlooking the sea. The painting of your mother of which that small copy appeared after my first dream is there.~ GOTO MoDreScene3
END
 
IF~~ THEN BEGIN MoDreScene3
SAY ~ Yes, it is exactly as you describe it. You mean, in those dreams about my mother and the other child, you also saw this garden.~
IF~~THEN REPLY ~ Your father and you were standing over by that little pond there when you talked in my dream. It was here!~GOTO MoDreScene4
END
 
IF~~ THEN BEGIN MoDreScene4
SAY ~ Then it was really much more than a dream. It was a vision of a past event that had actually taken place. I remember my father and me standing over there when we had the talk you had in your dream shortly before I left home to go to Candlekeep and Gorion.~
= ~ And that other talk you told me of, it happened at the other end of the garden, by the pavillion with her picture. It was about half a year earlier. It is all true.~
IF~~THEN REPLY ~ Then why did I see these visions of the past? How are they related with me? I mean other than they involve you, of course.~ GOTO MoDreScene5
IF~~THEN REPLY ~ Who or what makes me see these things and why? How are they related with me other than they involve you?~ GOTO MoDreScene5
END

IF~~ THEN BEGIN MoDreScene5
SAY ~ Without any plausible reason I would say it is Mystra who makes you see these things. Nobody but my father's and my goddess would know about these events and could make you see them. But why? I have no idea, my <CHARNAME>. I am afraid only time can reveal what Mystra's intentions are.~
IF~~THEN REPLY ~ If it is really Mystra that is behind that? It might be as well that other dark force that gives me those dreams of murder and blood.~ EXIT
IF~~THEN REPLY ~ But is it Mystra that gives me also those other dreams, those gloomy ones of blood and murder? ~ EXIT
IF~~THEN REPLY ~ Maybe it is not Mystra but someone warning me of some deeper motives someone has. (You glance at her suspiciously but she has already turned away to study some detail in her garden.)~EXIT
END

 
// On Elminster's Tower

IF ~ Global("Santlove","GLOBAL",1) ~ THEN BEGIN SantLove1
SAY ~ Here we are, at my little place.~
IF ~~ THEN REPLY ~ My, how high up are we here? We just went one flight of stairs, but...~ DO ~ SetGlobal("Santlove","GLOBAL",2) PlaySound("mernig")~ GOTO SantLove2
END

IF~~ THEN BEGIN SantLove2
SAY ~ Oh, darling, we are in Elminster's house, remember. Something magic is here in everything.~
IF ~~ THEN REPLY ~ Then I assume, those eagles are not dangerous to us as well? ~ GOTO SantLove3
END

IF~~ THEN BEGIN SantLove3
SAY ~ They are my friends and yours. They are the watchers of this tower, day and night. They all have names and they keep all negative influences away from this shelter.~
IF ~~ THEN REPLY ~ If we could only stay here forever. Of course, darling I know we cannot. But we can dream of it for a while - together. ~ GOTO SantLove4
END

IF~~ THEN BEGIN SantLove4
SAY~ Come close to me, <CHARNAME>, hold me in your arms.~
IF ~~ THEN REPLY ~ Nothing that I would like to do more, Sandrah, this is a special place and a special moment for us. ~  GOTO SantLove5
END

IF~~ THEN BEGIN SantLove5
SAY~ Can you imagine me standing up here, looking to the south and dreaming of my future lover? ~
IF ~~ THEN REPLY ~  I can - what is that one lonely light down south there at the coastline? It is very far away. ~ GOTO SantLove6
END

IF~~ THEN BEGIN SantLove6
SAY~ (Laughs sweetly) That is Candlekeep. Think of it! Me standing here dreaming of the love to come and looking directly at the place where it was already waiting for me. ~
IF~ Global("SanRomPath","GLOBAL",1)~THEN DO ~ TextScreen("SanTowM") Wait(2) Interact("CVSandr")~ EXIT
IF~ Global("SanRomPath","GLOBAL",2)~THEN DO ~ TextScreen("SanTowF") Wait(2) Interact("CVSandr")~ EXIT
END

// A Veil Dance
IF ~ Global("SanVeilDance","GLOBAL",1) OR(4) AreaCheck("CVWOHA") AreaCheck("BG4201")AreaCheck("ar31pb")AreaCheck("BG2215")~ THEN BEGIN SanVeil1
SAY ~ Make yourself comfortable over here, you deserve some special care from me today. (Sandrah has arranged something like a comfortable divan from some hay found in the hut and covered it by one her robes. She gently motions you to arrange yourself while she removes your boots and armour.)~
= ~ *She comes back to you and serves you a small plate of dried fruits accompanied by some sweet wine and some even sweeter kisses. She wiggles herself free from your embrace and vanishes once again to the darker part of the hut.*~
= ~ *Some moments later you hear her humming some intriguing melody and a veiled figure appears out of the dark. The figure begins to dance lightly on her high-heeled sandals to the continuing melody.*~
=~ *All your senses are now aroused from the vision and from the sweet wine, as the figure in an elegant motion drops the first of several transparent veils that cover her completely. In the firelight you can just imagine the wonderful figure that is still hidden from you.*~
= ~*As the dancer spins around in a full circle this time, another veil is dropped and you can anticipate Sandrah's wasp-waist figure a bit more clearly. Instinctively you start to remove any restrictive clothing still left on your body.*~
= ~*With the falling of the next veil, her shapely legs become completely visible, moving to the melody that still fills the room. You can hardly restrain yourself from jumping up and embracing the lovely figure.*~
= ~*The next falling piece of cloth makes her torso visible, the wonderful breasts moving to the music and your hands are twitching to touch their softness you know now so well. Everything but the face has become visible as she turns around to give you a full view of her legs and buttocks from behind, with inviting motions following her hummed tune.* ~
= ~ *With a last elegant move she now has taken the veil off her head and - coming down to you - wraps it gently around your head, thus blindfolding you. But you do not need your eyes any longer as the perfect vision is already imprinted on your mind and your mouth and hands find all the parts they want to touch with ease.* ~
IF ~~THEN DO ~ SetGlobal("SanVeilDance","GLOBAL",2) StartMovie("restinn")~ EXIT
END

// Bjornin Ogre Kill
IF ~ Global("SanHadBjor","GLOBAL",4) ~ THEN BEGIN BjorOgDe
SAY ~ Those must have been the Half-Ogres that hurt poor Bjornin back at Beregost. He will be happy to hear about their fate.~
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ And his dutyful healer will be happy to report her success back to him, I guess. ~ GOTO BjorOgDe1
IF~Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ You do not expect me to run back into town to report that to him. He will get the news if our way should lead us there by any chance. Or do you need *HIS* heeling so badly?~ GOTO BjorOgDe1
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ And his dutyful healer will be happy to report her success back to him, I guess. ~ GOTO BjorOgDe3
IF~Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ You do not expect me to run back into town to report that to him. He will get the news if our way should lead us there by any chance. Or do you need *HIS* heeling so badly?~ GOTO BjorOgDe4
END

IF ~~ THEN BEGIN BjorOgDe1
SAY ~ A bit of *healing* now and then does not *hurt*, what do you think, <CHARNAME>.~
IF~~THEN REPLY ~ Bring in more ogres, please, I think I need to get hurt a bit more to get my healer's attention. ~ DO ~ SetGlobal("SanHadBjor","GLOBAL",5)~ EXIT
IF~~THEN REPLY ~ Ouuh, look at this, Sandrah, I am bleeding. (show her your ring finger that has cought a small splinter during the last fight.) ~ GOTO BjorOgDe5
END

IF ~~ THEN BEGIN BjorOgDe3
SAY ~ Yes, she does. Even in his current state he his quite a stately paladin.~
IF ~~ THEN REPLY ~ I agree to that. But, Sandrah, don't forget this here is not your success alone. (Wink) He may have to thank more than just one of us for this deed.~ DO ~ SetGlobal("SanHadBjor","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN BjorOgDe4
SAY ~ A bit of *healing* now and then does not *hurt*, what do you think, <CHARNAME>.~
IF~~THEN REPLY ~ Mm, I think I should try your *prescription* shortly, when we return into town (Wink).~DO ~ SetGlobal("SanHadBjor","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN BjorOgDe5
SAY ~ (Sandrah gently takes your hand and examines the wound. She raises your hand to her mouth and slowly starts to suck on your bruised finger.) ~
IF~~THEN REPLY ~ Oooh, too bad I did not hurt some other parts as well...~ DO ~ SetGlobal("SanHadBjor","GLOBAL",5)~ EXIT
END

// Drizzt Saga - Lich
IF ~Global("San50Ways","GLOBAL",1)~ THEN BEGIN San50Ways1
SAY ~ Puuh, <CHARNAME>, a lich's tomb, if you ask me. I assume you have never experienced such a creature before. Neither have I. Do you want to hear what my father's book has to say about them?~
IF~ ~THEN REPLY ~ Not necessary, Sandrah. As the aspiring adventurer I was back in Candlekeep - at least in my fantasy - I have studied my copy of * Fifty Ways To Kill Your Kangaxx * many times. Now we will see if the author was really talking from experience.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO San50Ways4
IF~ ~THEN REPLY ~ Sandrah, I will not be so foolish as to risk our lives by restoring this undead creature. He may rot here forever. Whoever defeated him in the past surely had a good reason to remove his skull.~ GOTO San50Ways2
IF~ ~THEN REPLY ~ Any information to defeat such a vile undead would be welcome. Elminster is sure a source of information to be trusted.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO San50Ways3
END

IF ~~ THEN BEGIN San50Ways2
SAY ~ A wise decision, althought such a creature, if defeated, always has some items on it that he gathered in his timeless existence, powerful magic artefacts not be found easily anywhere else.~
IF~~ THEN REPLY ~ A valid point. Let us hear what your father has to say about them, we can then decide if we should attempt such a fight.~ GOTO San50Ways3
IF~~ THEN REPLY ~ No armour or weapon on the face of Toril is worth to risk our comrads life for it. Nothing urges us to tamper with this creature. Let us leave.~ DO ~ SetGlobal("San50Ways","GLOBAL",2)~EXIT
END

IF ~~ THEN BEGIN San50Ways3
SAY ~ (Sandrah opens her book of lore and soon has found the matching passage.)~
= ~ (Recites) *In the first phase, stay away from the creature best as thy canst but summon creatures to draw the lich's spells. Protect from magic as good as thy canst. ~
=~ 'tis nay cowerdice to retreat from the area whilst he casts his spells, 'tis indeed a wise move.~
=~Once thou hath survived the initial onslaught, hasten thyself and use weapons that can kill a lich.* ~
= ~ The next passage is about those liches that can transform to Demi-Lich state, but they are rare and the ones known are listed here. This one is not among them, so we can skip that part.~
IF~~THEN REPLY ~ Anything else we should know?~ GOTO San50Ways4
END

IF ~~ THEN BEGIN San50Ways4
SAY ~ Now the book contains a list of weapons that can kill them. Let us look if we have any of them.~
IF~~THEN REPLY~ Your hammer of Mystra should do.~ DO ~ SetGlobal("San50Ways","GLOBAL",2)~EXIT
IF~PartyHasItem("GiftofM")~ THEN REPLY~ The sword from your goddess you gave me should be powerful enough.~ DO ~ SetGlobal("San50Ways","GLOBAL",2)~EXIT
IF~ HaveSpellRES("CVDrag2")~ THEN REPLY~ May any of your new spells be useable, they may not appear in Elminster's book yet?~ DO ~ SetGlobal("San50Ways","GLOBAL",2)~GOTO San50Ways5
END

IF ~~ THEN BEGIN San50Ways5
SAY ~ Mystra's Army may indeed be helpful.~
IF~~ THEN EXIT
END



//_______________________________________________________________
//All CHAINS Go Below

// Haiass Joins Sandrah

CHAIN
IF~~ THEN BSANDR HaiassJoinSan
~ What a wonderful creature. Oh, look it is a tame wolf. You do not want to be alone out here, my friend, come try this.~
DO~ SetGlobal("HaiassJoinSan","GLOBAL",2)~
==HAIASS ~ (The wolf eagerly chews the piece of dried meat Sandrah has offered him. He seems to be very hungry and thankful for Sandrah's attention.)~
==BSANDR~ He is used to humans, it seems. Another lost orphan out here in the wilderness.~
== Bimoen IF ~ InParty("Imoen2")~ THEN ~ Heya, I'd be damned if that ain't Haiass, <CHARNAME>'s ol' pal, that fleabag <PRO_HESHE> loves so much.~
END
++ ~ That is Haiass, my wolf. He is really an orphan. I found him beside his slain mother four years ago. He grew up with me and is my friend. I left him at Candlekeep but it looks like he found a way to me anyway. So be it. Come here, Haiass, my old wolf, All is good now. ~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ HaiassJoinSan2
++~ Oh, no, it is really Haiass, my old mongrel wolf. Seems like I cannot get rid of him. He is really an orphan. I found him beside his slain mother four years ago. He grew up with me and follows me whereever I go.~ + HaiassJoinSan2

CHAIN
IF~~ THEN BSANDR HaiassJoinSan2
~All your friends seem to be more loyal to you than you expect them to be. Do not repel them, <CHARNAME>, it is hard to find such companions.~
==HAIASS~ (Your wolf seems to have sensed Sandrah's sympathy instinctively and clings to her leg, now and then giving you a suspicious glance from what he anticipates as his shelter.)~
== BSANDR~ I left my companion at home as well, not knowing what would await me out here on the Sword Coast. Oh, how I miss her. I hope she can join us soon. <CHARNAME>, do you like animals?~
END
++~ Except for some cows and one old horse there was not much of a chance for that at Candlekeep. Haiass is the only animal I ever had to built up some kind of relationship.~ + HaiassJoinSan3
++ ~ The domestic cattle at the Keep cannot really be counted. And Haiass is a wild animal after all, do not be deceived. He is no tame pet dog. I have to confess I am ambigious towards the wild creatures. Especially out here now - they are all hostile, so the question will not arise.~ + HaiassJoinSan3

CHAIN
IF~~ THEN BSANDR HaiassJoinSan3
~ I love animals, I have a lot of friends among them and I am sure Haiass and me will get along real well.~
== HAIASS ~ (It appears as if the wolf has understood each word from Sandrah, as he starts to lick her hand and wags his tail in sheer joy.)~
== BSANDR ~ Here is some more for you, my friend. I am sure we will find some rabbit for your hunger very soon. Come on.~
EXIT

//Bookhunters

CHAIN
IF~~THEN BSANDR  SanFuWDBook
~ Finch, you will not believe it, but we have met your cousin Clarissa Bloomwhiffler in Waterdeep.~
DO~ SetGlobal("LeftSan","GLOBAL",3)~
==IF_FILE_EXISTS BSUFINCH ~ The little old bookworm Clarissa. Just to think I could be like her if I had not met you all. All theories, no practical experience at all.~
== BSANDR ~ Yes, Finch, you have emerged quite a bit. But back to Clarissa, she gave us a book to deliver to you.~ DO ~ TakePartyItem("SuSaBo")  ~
==IF_FILE_EXISTS BSUFINCH ~ Great Deneir, it is really Monteelah's famous essay on the Virtue of Wisdom. Excuse me, I have to get back into my shell as a bookworm - (laughs)- at last for a little while. This book is not too thick. It takes mere minutes for me to copy it. Keep the original for your studies, will you.~
== BSANDR ~ (Laughs)~
DO ~ EraseJournalEntry(@111) GiveItemCreate("SuSaBo","Sufinch",0,0,0) SetGlobal("Bloomw","GLOBAL",6) AddexperienceParty(3600) RealSetGlobalTimer("BloomwT","GLOBAL",4800)~
END
++ ~ Let us discuss further plans.~ EXTERN SUFINCHP 3

CHAIN
IF ~ Global("SanSuBH","GLOBAL",4) ~ THEN BSANDR BookHW1
~ Very strange book enthusiasts. What may lie behind their interest in this little booklet?~
DO ~ SetGlobal("SanSuBH","GLOBAL",5)~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ It is clear that they were no conaisseurs of literature.~
==BSANDR~ It was obviously not the contents of that book, as they said that a copy would be of no value to them.~
END
++ ~ So then it is clearly the book itself or a part of it that holds a deeper meaning.~ + BookHW2

CHAIN
IF~~ THEN BSANDR BookHW2
~ There are a number of possibilities. A secret meaning of the words themselves.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ But those could also be deciphered from a copy of the book.~
==BSANDR IF~ !InParty("Sufinch") ~ THEN ~ But those could also be deciphered from a copy of the book.~
==BSANDR~ Something hidden between the pages?~
END
++ ~ We can look again, but I doubt it. We would have found such a thing. Let me inspect the cover again. Mh nothing.~ +  BookHW3
++ ~ I checked that already as well as the cover. I once read an adventure novel in Candlekeep where something was written with a magic ink that only became visible when the paper was burned or something like that.~ +  BookHW3

CHAIN
IF~~ THEN BSANDR BookHW3
~ Before we start to burn it or lay it into some acid substance to discover maybe something written with magic ink, I suggest I will just read it again this evening. If I do not find something out by my studies we can still try some other method.~
END
++ ~ Fine. Maybe those were just another bunch of lunatics like they seem to crowd the Sword Coast these days. What can be in a book for four people to give their lives to gain it?~
EXIT




// Inter NPC Banters

// Imoen First

// Imoen on Elminster1

CHAIN
IF ~ Global("SanImoElm1","GLOBAL",1) ~ THEN BSANDR SanImoElm1
~ Yes, Imoen?~
DO ~SetGlobal("SanImoElm1","GLOBAL",2)~
== Bimoen  ~Mmmh, this old mage had a strange way with ya. And don't try to fool me none, but ya were not jumping for joy to see him, he!~
== BSANDR   ~The ever watchful Imoen. I am not that eager at the moment to meet followers of Mystra, you know. But keep that as our little secret, will you.~
== Bimoen   ~Hoy, a secret, just between you and me. I'm Imoen the Silent, just in case ya doubt it. So, you are on the run from the mighty goddess Mystra herself. What a thrill, I love this adventures life already.~
== BSANDR   ~No no, I am no runaway priest - I am a follower of Mystra with heart and soul. It is just...all those mages probably know my father too well.~
== Bimoen   ~I see, hey girl, we have so much in common. Me ran away from old Winthrop and you ran away from this strange everpresent father of yours. Great!~
EXIT

// Imoen on PC to Sandrah Relationship

CHAIN
IF ~ Global("SanImoPCInterest","GLOBAL",1)~ THEN BSANDR SanImoPCInterest
  ~ Ouch, Imoen, why do you throw these nuts at me?~
DO ~SetGlobal("SanImoPCInterest","GLOBAL",2)~
== Bimoen  ~Mmmh, come aside with me, will you.~
=   ~Say, you have some interest in <CHARNAME>, dontcha?.~
== BSANDR   ~I am a bit obvious with that. I do not interfere with anything there, or do I? I mean you and <CHARNAME> knowing each other for so long.~
== Bimoen   ~NAY, you fool, you. I just kinda need to look a bit after <CHARNAME> in a way, you know with Gorion gone and me as <PRO_HISHER> kinda older sister and so.~
== BSANDR   ~(laughs) Then older sister Imoen, I confess everything. (Lowers her voice to a secretive whisper:) I think I am really in love with <CHARNAME>.~
== Bimoen  ~WOW, YOU ARE A LOVESICK CITY BABE FALLEN FOR MY LITTLE <CHARNAME>!!! WOW.~
== BSANDR   ~I might as well have given the news to the Beregost town crier, could I?~
=   ~(Sigh) If I ever need some older sister's advice in matters of the heart I will confide with you.~
== Bimoen  ~HEY ISN'T THAT GRAND. I'm Imoen, the Counselor Of Love, for my little ward's big city sweetie. Hey, we're besta friends now, Sandrah, are we.~
== BSANDR   ~(sigh)~
== Bimoen   ~ Now, here's just one thing, darling Sandrah. You cannot borrow any of my PINK underware to tease  <CHARNAME>. (Starts to roll in the grass laughing like mad.)~
== BSANDR  ~ (Picks up some nuts in revenge and starts throwing them at Imoen.)~
== Bimoen   ~ Ouch, hahaha, ouch, he....~
EXIT

CHAIN
IF ~ Global("ImoHousew","GLOBAL",1) ~THEN BSANDR ImoHousew1
~  * Dusk settles over the landscape.*~
DO ~SetGlobal("ImoHousew","GLOBAL",2)~
== Bimoen ~ Heja. Sandrah, hope <CHARNAME> will call us to camp pretty soon. All this roaming the land and adventuring makes me sooo tired. 'n' hungry. ~
= ~ Hey, guess it's your turn tonight to do the housework thing.~
== BSANDR ~ If you say so. At least we do not have to scratch the bottoms of burned pots for the rest of the night because someone had to do about everything except watching the meal.~
== Bimoen ~ I have NO idea whatcha talking 'bout. Anyways, are you good at cookin' and so, Miss Wisecrack?~
== BSANDR ~ I will tell you a secret, my *besta friend*. I use simply my magic to do it.~
== Bimoen ~ Ay, foolish me, why didn't I guess. Of course, you do it same way like you do your cleaning clothes, just little mumbojumbo, PUFF, and the fine lady is all dressed up like for a ball.~
== BSANDR ~ Sure. This was about the only reason I started following Mystra. A little spell, and my father's household was up and running.~
== Bimoen IF~!Global("Imoenclasschoice","GLOBAL",1)~THEN~ Gosh, wish I had that when running ol' man Winthrop's scores all day long. Of course you needa show me the trick now that I'm your fellow mage-adventurer-friend, he.~
== Bimoen IF~Global("Imoenclasschoice","GLOBAL",1)~THEN~ Gosh, wish I had that when running ol' man Winthrop's scores all day long. But they didn't let me study the scrolls I stole back at Candlekeep, he.~
EXIT

CHAIN
IF ~ Global("SanImoGrMa","GLOBAL",1)~ THEN BSANDR Greenpink1
~ ..what do you mean by unfair, my best friend Imo?~
DO~ SetGlobal("SanImoGrMa","GLOBAL",2)~
== Bimoen ~ Ha, best friend, you..you. You want them all for yourself, the nice injured paladin and the handsome young smith, and...~
== BSANDR ~ Hey, stop it, Imoen, you start to get unfair yourself now..~
== Bimoen ~ I did see that lovely bard first, mind that, but it didn't stop ya.~
== BSANDR ~ There are enough left for you, if you could only once make up your mind. Here is a deal, my best friend, the next one we meet is all yours. My word of honor on that.~
== Bimoen ~ Really, no bad trick in that? I trust ya, Sandrah...else...just wait I will find some revenge, if ya try 'n trick me, believe it!~
== BSANDR ~ All for you, I swear.~
EXIT

CHAIN
IF ~ Global("ImoTravGlimps","GLOBAL",2)~ THEN BSANDR TravGlimp
~ A stately estate.~
DO ~ SetGlobal("ImoTravGlimps","GLOBAL",3) ~
== Bimoen ~ Whatcha think, Sandrah, will we maybe one day own a place like that after our adventuring days are done. Can ya imagine that - oh bloody me, where's ma brain, YOU have already such a thing, right?~
== BSANDR ~ My father's place at Waterdeep is truely a large and rich mansion. But, Imoen, there is a difference for me. That house was and is my home. I love it for the warmth and the memories rather than for its splendor. And such can be found in a less stately place as well.~
== Bimoen ~ Guess ya right and you must know. I was always sooo happy at Puffguts, yeah, well most of the time at least. And now looka that grumbler here in his big empty hall all alone. He ain't happy with all his wealth, he even has to stand these two golem-types all day to feel safe. You got it right, we're much and much better off.~
== BSANDR ~ Are you dreaming sometimes of a nice home of your own - with a loving husband by your side...~
== Bimoen ~ ...and lotsa and more happy squirming children 'round us. Little girls in pink and little boys in blue and singing and laughing and listening to the great tales of Imoen the Magnificent.~
== BSANDR ~ So we have a new mission at hand. Find this magnificent husband for all of that.~
== Bimoen ~NOO PROBLEM.~
EXIT

CHAIN
IF ~ Global("PallonTalk","GLOBAL",1) ~ THEN BSANDR Pallon
~ You do not really believe in prophesies and fortune tellers and such, besta friend?~
DO ~ SetGlobal("PallonTalk","GLOBAL",2) ~
== Bimoen ~ (Takes Sandrah's hand and turns the palm upwards.) OOOH, UUUH, there! You will meet a stranger when you come into a big town.~
== BSANDR ~ Sure, probably even more than one.~
== Bimoen ~ When you hear a cock crow in the morning the weather will either change or stay the same.~
== BSANDR ~ Or maybe not?~
== Bimoen ~ Hey, know what. Walk through Candlekeep at any time of day and you hear them great prophesies chanted like they meant something to somebody. This God of Murder will get us all or maybe not, or a hero will stop him or the hero will become the god or whatever. I tried to listen time after time and it could mean something important or just mad babbling. Make out of it what you want.~
== BSANDR ~ So what do you think yourself?~
== Bimoen ~ About that Bhaal guy, you mean? If he was a god who cares and if he is dead who cares even less. Problem is people who believe such stuff and think it tells them to act really weird, see? You know best with your Mystra goddess, Sandrah. It is what you do in her name, no matter if she really exists or not.~
== BSANDR ~ You are right, Imoen, you are a clever philosopher. It is good you are not in Candlekeep anymore, they would have kicked you out sooner or later for your free thinking.~
== Bimoen ~ Guess your Mystra coulda taken me then, she doesn't seem to care for such as long as your heart is in the right place.~
== BSANDR ~ (Smiles) Your heart surely is, besta friend.~
EXIT


CHAIN
IF~~THEN  BSANDR ImoHealedProf
~ It is my profession, if I could call anything I do by that name. ~
DO~ SetGlobal("SanHealImo","GLOBAL",6)~
==Bimoen ~ So what *profession* do I have then? Or <CHARNAME>? ~
==BSANDR ~ Yours could be chambermaid, if you had not outgrown that by now. Or do you prefer *ambassador*? ~
==Bimoen ~ Ambassador sounds great. Listen, Imoen of Candlekeep, Ambassador of...~
==BSANDR ~ How about Ambassador of Pink.~
==Bimoen ~ Great. (Grins) Back at Candlekeep I's dreaming to become a legendary thief - but I always got myself caught on my attempts...ooh, I had to be SOOO inventive everytime to shift the blame to <CHARNAME>.~
=~So what about <CHARNAME>'s profession? ~
==BSANDR IF ~ Class(Player1,PALADIN_ALL)~ THEN~ Paladin is a well respected profession, I guess. A living example of the virtues of <PRO_HISHER> god. Thus your view may depend in a way on how you estimate the God <PRO_HESHE> represents. ~
==BSANDR IF ~ Class(Player1,RANGER_ALL)~ THEN~ A ranger, a protector of nature, mh, it is a calling and a duty, but do you call it a profession? But then the hunter that brings meat for the clan to eat and survive is among the oldest professions on Toril. ~
==BSANDR IF ~ Class(Player1,DRUID_ALL)~ THEN~ A druid is a well respected person, providing both knowledge and healing skills. As a teacher of natural balance <PRO_HESHE> really goes back to archaic roots, when things like a profession were not yet known. ~
==BSANDR IF ~ Class(Player1,BARD_ALL)~ THEN~ One of the old questions - are artists in general professions or is that limited to artisans. And many people put a bard in the same category as a thief. I would call them thiefs of hearts with their lovesongs.~
==BSANDR IF ~ Class(Player1,CLERIC_ALL)~ THEN~ A cleric, it is a calling and a duty, but do you call it a profession? I guess when healing is required or the aid with the loss of a beloved person, you go for a professional. ~
==BSANDR IF ~ Class(Player1,THIEF_ALL)~ THEN~ A thief of any kind would admit to any other that <PRO_HESHE> follows a profession. You would hardly find someone outside of the thieve's circles to agree to that. Except maybe the hangman.~
==BSANDR IF ~ Class(Player1,FIGHTER_ALL)~ THEN~ A fighter, hm, sad but true, it is probably one of the oldest professions on Toril.~
==BSANDR IF ~ Class(Player1,MAGE_ALL)~ THEN~ Mage is a profession to be learned in long studies and careful balancing of the different schools.~
==BSANDR IF ~ Class(Player1,MONK)~ THEN~ The monk's gaining of fighting skills through contemplation really goes back to archaic roots, when things like a profession were not yet known. ~
==BSANDR IF ~ Class(Player1,SORCERER)~ THEN~ As the ability of a sorcerer is nothing you can learn or chose for yourself it surely does not fall under the classification of a profession. ~ 
EXIT

CHAIN
IF~ Global("SanImoEd","LOCALS",1)~ THEN BSANDR SanImoEd1
~ A little secret to share between besta friends?~
DO ~ SetGlobal("SanImoEd","LOCALS",2)~
== Bimoen ~ Guess it's about time ya shared your little secret with Imoen, the secret agent of love and romance, he?~
== BSANDR ~ Is it time? And whom of my loverboy collection are you referring to exactly?~
== Bimoen ~ Ya think mages like me cant see when other mages are miscasting their spells in a lovesick manner, hey I's never dumb, sweetheart.~
== BSANDR ~ (Laughs) No, Imoen, you cannot mean that in earnest. That red robed bastard and me? Let me get out my *bestest* cure for you immediately.~
== Bimoen ~ Haha yourself, that's exactly the reaction one shows when caught with her fingers in the pudding. So no more fooling Imoen, the secret agent number one. You can only save your hide by confessing the hole truth now. ~
== BSANDR ~ Fine. Here is the truth and nothing but the truth. If all the demons from hell escape and slaughter mankind, and Edwin and me are the last two remaining humans on Toril who could make our race survive, I would not consider for a second to let him come near me.~
== Bimoen ~ Huuh. This sounds like sooo much *no* that it's almost *yes* again.~
== BSANDR ~ Imoen, that is the weirdest interpretation I have ever heard.~
== Bimoen ~ Besta friend, just wait and see. Seems like I know you better than yourself. You cant in no way imagine it, so it's almost sure gonna happen - that's what life has taught me all the time.~
== BSANDR ~ And I tell you, never in a million years!~
== Bimoen ~ Bet we don't have ta wait that long, hahaha...~
EXIT

// Lord Foreshadow

CHAIN
IF ~ Global("X#IMForeshadow","GLOBAL",3) ~ THEN BSANDR Foreshad
~ Better get yourself a warm pink fur coat for that, Imoen.~
DO~ SetGlobal("X#IMForeshadow","GLOBAL",4)~
== Bimoen ~ Guess ya been up there, my wordly besta friend, yep?~
== BSANDR ~ Despite its name it can be *real winter* in that town. You would not like it anyway, nothing really going on there, except you are out for a goblin boyfriend.~
== Bimoen ~ Glad ya warned me, let's go to Last Haven then. If they give town names by that method, then it must be THE place, hahaha.~
EXIT

//Beregost Arrival

CHAIN
IF ~ Global("X#ImoenBereg","GLOBAL",3) ~ THEN BSANDR PinkTunic
~ Oh, Imoen, what a great idea. Do you mind if I would give you a bit of advice when we go shopping? ~
DO~ SetGlobal("X#ImoenBereg","GLOBAL",4)~
== Bimoen ~ Wow, great, I wont mind at all, just to look as great as ya, Waterdeep Belle...of course just in pink - Mind it, no pink for anyone but me, hands off from pink!!~
EXIT

CHAIN
IF ~Global("ImoHousew","GLOBAL",3)~THEN Bimoen PCEvil1
~You really look so thinquishly thinkin', Sandrah, dontcha fear you'll get all wrinklish that way?~
DO~SetGlobal("ImoHousew","GLOBAL",4)~
==BSANDR~(Sigh) Oh, I wish I could stop my thoughts - if only to not become some wrinkled old hag.~
==Bimoen~But you cant and the more you try not to, the more it creeps into ya brain...~
=~I know that...only way is to talk with some besta friend about it, that's what I'd do...by the way, I'm all ears.~
==BSANDR~Imoen, the counselor?~
==Bimoen~You bet.~
==BSANDR~I was thinking about something as trivial as good and evil...~
==Bimoen~That's not trivial...and it means ya thinking 'bout <CHARNAME>, and that they all think <PRO_HESHE>'s evil and such, right?~
==BSANDR~But you know better, you know better than anyone?~
==Bimoen~And you do as well or you wouldn't be here. Listen and listen what counselor Imoen tells you.~
=~<CHARNAME>'s as evil as any <PRO_GIRLBOY> can be, teasing <PRO_HISHER> nice little red haired sister all day...and killing for money, of course.~
==BSANDR~You are joking! Killing for money?~
==Bimoen~I swear and swear it! See, <PRO_HESHE> took 5gp from Reevor to kill the rats in the warehouse, that's how evil <PRO_HESHE> is.~
==BSANDR~(Laughs) I bet the evil part of that is that <PRO_HESHE> did not give you half of it afterwards.~
==Bimoen~You got it. I only told you what your heart was knowin' already, so why torture that brain of yours and get wrinkles like Auntie Jaheira.~
==BSANDR~Counselor Imoen, that was a really good advice.~
==Bimoen~No wonder, I had the chance to learn it from the bestest counselor on the Sword Coast.~EXIT

CHAIN
IF ~ Global("SanImoNashInt","GLOBAL",1) ~ THEN BSANDR SanImoNashInt1
~ A handsome and well mannered man, this Henning of Nashkel.~
DO~ SetGlobal("SanImoNashInt","GLOBAL",2) RealSetGlobalTimer("SanImoNashIntT","GLOBAL",1000) ~
== Bimoen ~  Sure, Sandrah, wow he's so cute and...you, I WARN YA ONLY ONCE, Henning is completely off limits for you - understood?~
== BSANDR ~ You can bet on that, my best friend, I would never dare to interfere with Imoen the Magnificent. Also he seems to have only eyes for you.~
== Bimoen ~ Hey, don't joke at my cost - I mean, eh, do you really think...~
== BSANDR ~ Imoen, trust a woman of the world. From the moment you came into his shop, he had eyes only for you. He took me aside and asked me to introduce you.~
== Bimoen ~ Oh my. I am so nervous. I hope <CHARNAME> will feel the need to refresh our supplies shortly. Ah, when will we go back there? I can hardly wait.~
EXIT

CHAIN
IF ~ Global("SanImoNashInt","GLOBAL",3) ~ THEN BSANDR SanImoNashInt3
~ What do I need to tell <CHARNAME>? Can you not talk a bit louder, Imoen.~
DO~ SetGlobal("SanImoNashInt","GLOBAL",4) ~
== Bimoen ~ Don't play dumb, Sandrah. Tell <PRO_HIMHER> we have run out of salt and arrows and you need some whatever...Need I tell you everything...My, use your imagination.~
== BSANDR ~ Sure.~
= ~<CHARNAME>, I just went through our inventory of supplies. There are quite a few things amiss at the moment. We should use our stay here in Nashkel to fill up our packs.~
END
++ ~ Oh you are right, Sandrah, what about sending Imoen ahead to the shop with our list and let the shopkeep prepare...- Imoen?..- Wow, she must have read my mind. Watch her run. I hope she has not forgotten the list, hahaha.~ DO ~ ActionOverride("Imoen2",MoveToPointNoInterrupt([1641.916]))~
EXIT

CHAIN
IF ~ Global("ImopeltHunt","GLOBAL",1) ~ THEN BSANDR Pelthu1
~  Are you trying to read those animal tracks, Imoen?~
DO ~ SetGlobal("ImopeltHunt","GLOBAL",2) ~
== Bimoen ~ Yeah, kinda try to. Say, ya think these are a wolf's ones. No, too small, I guess, only a war dog.~
== BSANDR ~ You want to hunt wolves? But we do that all the time - or rather they hunt us and we fight them off.~
== Bimoen ~ MY, SANDRAH. D' ya ever use that pretty head of yours for others than your pretty hairdo? Haven't you listened at all in Nashkel? 'course we need to find and find a winterwolf and its pelt.~
== BSANDR ~ You want a fur coat?~
== Bimoen ~ Silly cutie! Gotcha, you play the fool. You darn know that Henning asked for one. Once we hunt one we needa dash to the shop and get our reward.~
== BSANDR ~ Now I see what you mean. And what kind of reward do you plan to ask him for the pelt?~
== Bimoen ~ C'mon, slowpoke. Do I really need to tell *YOU*?~ DO~AddJournalEntry(@931,QUEST)~
EXIT

CHAIN
IF ~ Global("SanImoNashInt","GLOBAL",9)~ THEN BSANDR SanImoNashInt9
~ Imoen, it is so wonderful, may I touch it?~
DO ~ SetGlobal("SanImoNashInt","GLOBAL",10)~
== Bimoen ~ Now you look, heh? But just 'cause your my besta friend, you may touch it for a second.~
== BSANDR ~ It is so smooth, fantastic. This is a girl's dream come true. Congratulation, Imoen, my friend. Look, it is warm when it is cold outside and it is refreshing when the outside is hot. And it has loads of protective enchantments. Your lover really cares much for you.~
== Bimoen ~ Yeah, he is wonderful - in any respect. I will never envy my big city friend ever again - now you can envy me. Only wonder how a shopkeep can afford such a gift for his gal?~
== BSANDR ~ Mh, it must be worth a real fortune. But then, he is not just a shopkeep, but the owner of the shop, and he has a good business with the road between Anm and Baldur's Gate.~
== Bimoen ~ You are right. Old Puffguts made loads of coin with his business at Candlekeep, and that is not even as frequented as Nashkel. But...Sandrah, one thing comes to my mind...you as my besta friend...~
== BSANDR ~ What is it, Imoen, you seem disturbed?~
== Bimoen ~ Hm, I mean I love Henning much and much and all, but...I wanted a shining knight, a highriding paladin...not a shopkeeper.~
== BSANDR ~ Hey, you must be joking. He is the best looking shopkeeper on the Sword Coast and I bet he will wield a gruelsome sword when it comes to protecting his damsel.~
== Bimoen ~ Yeees but...See, I was with a shopkeeper all my life already, now I am Imoen the Magnificent. I sweared I will never wear an apron in a shop ever in my life, get it?~
== BSANDR ~ I see your point. But did Henning actually ask you to stop your adventurer's life and become a part of his shop?~
== Bimoen ~ Actually no. No he did not. Fact is, he said he loved my being so independent and heroic and such stuff, cant recall all his words.~
== BSANDR ~ You see, it looks like he accepts you for what you are and does not want to change you into a shopgirl. Look at it this way, with your hero reputation and the exotic goods you gather during our adventures, you add quite a bit to the Nashkel shop's possibilities already.~
== Bimoen ~ Haha, that's good. See the advertisements on the Sword Coast roads everywhere: *Come to Nashkel - Buy where the heroes buy!* - and we could say *All weapons certified by Imoen the Magnificent and her followers!" Huh, I'm dying to see Henning again and tell him my business ideas...~DO~EraseJournalEntry(@931)~
EXIT

CHAIN
IF ~ Global("SanImoLoveLet","GLOBAL",1) ~THEN BSANDR ImoLoveLet
~ Imoen, you have read this piece of paper now for the fifth time since we woke up. And your face gets so dreamingly each time. Confess, my best friend, it must be a love letter.~
DO ~ SetGlobal("SanImoLoveLet","GLOBAL",2)~
== Bimoen ~ Clever as always. Yeah 'tis. Can you imagine, my first love letter in all my life, wow, it's just wonderful.~
== BSANDR ~ Henning really cares a lot for you. This wonderful coat, finding you with letters. I wish my lover would be so inventive (Blows you a secret kiss behind Imoen's back.)~
== Bimoen ~ I'm so happiest when I just think of him. Oh, if we can only make it to Nashkel more often.~
END
IF ~ !PartyHasItem("Sanwi2") ~ THEN REPLY ~ I have heard that, my friend. There is still the rescue in the Gnoll Citadel awaiting our solution. That will bring our way through Nashkel.~ +ImoLoveLet2
++ ~ The temple in Nashkel has this special ring I wanted to purchase for the group. We need to get to the town pretty soon for that.~ +ImoLoveLet2
++ ~ Imoen, you have become totally unusable for the party in this lovesick state. As I swear we cannot go on without you, the only solution is to get to Nashkel soon.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ImoLoveLet2
++ ~ (Pretend not to have heard Imoen's lovesick plea and study the wares in front of a nearby shop.) ~+  ImoLoveLet3

CHAIN
IF~~ THEN BSANDR ImoLoveLet2
~ What do you think, Imoen, should we look out for a nice gift here in town to bring along for Henning?~
== Bimoen ~ Great idea, besta counselor. I've seen this reaaaaly rare expensive dark Calimsham chocolate in that shop a minute ago. He loves such sweet things, I know.~
== BSANDR ~ (Laughs) I do not think he will have the slightest chance to taste it as long as you are around. His mouth will be totally occupied with kissing you.~
== Bimoen ~ You bet. Come let's get it quickest. Nashkel, here we come!~ EXIT

CHAIN
IF~~ THEN BSANDR ImoLoveLet3
~ I guess <CHARNAME> has heard your words quite well. Just look at <PRO_HIMHER>. Have you ever sensed an interest in farm tools in <PRO_HIMHER> before?~
== Bimoen ~ Oh, <CHARNAME>, you are a beast! Just 'cos you have your loved one always handy by your side, you think you can ignore other people's needs. Bah, bah and bah!~
END
++ ~ Hey okay, you two, you have won. I'd rather face armies of hobgoblins than to face my two best friends in anger. We will go to Nashkel as soon as our quests give us the slightest excuse.~ +ImoLoveLet2


CHAIN
IF~ Global("SanImoNashInt","GLOBAL",14) ~ THEN BSANDR HenGone1
~ <CHARNAME>! Quick, lead Imoen away, let her not see this.~
DO ~ SetGlobal("SanImoNashInt","GLOBAL",16)~
== Bimoen ~ (Imoen wriggles herself free like an eel and escapes your attempt to hold her back.) Blood all over! Where is Henning..? HENNING?~
== BSANDR ~ Psst, Imoen, calm down, this is not Henning's blood.~
== Bimoen ~ What, not his? Sure, Sandrah?~
== BSANDR ~ Pretty sure. Unless he lied to you about his heritage and he is an orc or half-orc, this is clearly not his blood. But there was a fight nonetheless.~
END
++ ~ I searched upstairs, Henning is missing.~ + HenGone2

CHAIN
IF ~~  THEN BSANDR HenGone2
~ Imoen, Henning is surely alive. He is probably even unhurt, as there is none of his blood around. From the evidence around, he must have fought bravely...~
== Bimoen ~ Oh, my poor heroic boy. Just y'all wait and see. The magnificent Imoen and her troupe rides to the rescue.~
== BSANDR ~ That is the true spirit of the heroine, Imoen. I guess we cannot learn anymore in here. I suggest somebody must have heard or seen what has happened. This must have been quite a fight. I propose to ask the major Berrun Ghastkill for information.~
EXIT

//The Orphanage of Beregost

CHAIN
IF~ Global("OrcPrison","GLOBAL",17)~ THEN BSANDR BeregOrph1
~ That large mansion in the north of the town is Travenhurst's.~
== Bimoen ~ UUUHH, that nasty *NOBLEMAN*! I suggest Imoen the Magnificent will pay that guy a visit today to deliver greeting from Henning. Greetings he won't forget ever and ever...~
== BSANDR ~ Right, Imoen. That fiend cannot get away scot free for what he has done. And also he may have some valuable information about the Iron Throne and such.~
== Bimoen ~ Yipee! I will squeeze everything outa him, maybe with some nice little tattoo work with this knife, or lemme think, how about roasting his feet in his own mighty splendid fireplace, or...~
== BSANDR ~ Oh, Imoen, you sound almost like an orc when you have these fantasies.~
== Bimoen ~ Hey, ya know me besta friend, I could tear him apart in midair for what he did to Henning but me ain't no bloody orc.~
== BSANDR ~ Oh, I am not really objecting you, Imoen. Your little scenarios might work on this *noble* to squeeze him for information. I mean, you do not need to execute them really, but just your lively telling of them will scare him just enough.~
== Bimoen ~ Ha ha ha, he will wet his trousers when he sees me, and he will soil them worse when I tell him what I'll do to him.~
== BSANDR ~ I suggest we should pay him a visit, but we should make a bit of a plan before that. To the citizens of this town he is still a well-respected man. They would not easily like a band of adventurers to enter a council members house in full armour with violent intentions.~
END
++ ~ We should consult the major Keldath Ormlyr at the temple first. We have Travenhurst's purse with the bloodmoney and we have Haynalt's statements on the involvement in the Iron Crisis.~ + BeregOrph2
++ ~ The evidence we have currently - the purse with the bloodmoney and Haynalt's story - may be enough for us, but probably not sufficent for the authorities to act against such a *honorable* citizen. ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ + BeregOrph3

CHAIN
IF ~~ THEN BSANDR BeregOrph2
~ That is one possibility, although I doubt that the evidence we can provide to one not involved like we are, will be enough for the authorities to act against a noble.~
DO ~ SetGlobal("OrcPrison","GLOBAL",18)~
== Bimoen ~ My idea to produce a statement from the Travi-man himself can solve that. When we make him spit out his story, they oughta believe us, right?~
== BSANDR ~ I agree with Imoen. Going to Keldath first may result in Travenhurst to receive a warning. It will give him time to destroy any evidence or eventually escape.~
END
++ ~ You two are right. Yes, Keldath will not act on our words alone and our bird may have flewn if we hesitate any longer. Let us pay the mansion our visit.~ DO ~SetGlobal("OrcPrison","GLOBAL",20) ~ EXIT
++ ~ You have your points, I agree. But I would not dare in our current situation to act without consent from the local authorities. We will go to the temple first.~ EXIT


CHAIN
IF ~~ THEN BSANDR BeregOrph3
~ I agree with you, we are on shaky ground here. Going to Keldath first may result in Travenhurst to receive a warning. It will give him time to destroy any evidence or eventually escape.~
DO ~ SetGlobal("OrcPrison","GLOBAL",20)~
== Bimoen ~ My ideas to produce a statement from the Travi-man himself can solve that. When we make him spit out his story, they oughta believe us, right?~
END
++ ~ Let us see how his facade will break down when he sees his unexpected visitors.~ EXIT

CHAIN
IF ~ Global("SanClkWo","GLOBAL",1) ~ THEN BSANDR Clkwospi
~ Do not become hopeless just now, my poor besta friend. We are coming nearer to Henning with every step.~
DO ~ SetGlobal("SanClkWo","GLOBAL",2) ~ 
== Bimoen ~Yeah, guess you're right in a way. But this terrible wood seems to be endless. See this poor boy, an it's bad I know, but I'm somehow glad it's him and not Henning. See how the grief can twist you to abnormal.~
== BSANDR ~ Yes, this is not my good hearted cheerful friend speaking. But I cannot blame you really, you already live with this fear for so long - such a thing can eat you up.~
== Bimoen ~ I hate myself for being so, but you understand, that's good. My, I see all these dangers around here and then him bound and helpless and unable even to defend himself. It's so cruel and unjust. And I can't even blow these damned orcs up with my fireballs.~
== BSANDR ~ Imoen, close your eyes for a moment. Hold your breath. Psst. Listen to your heart, listen. It tells you he is alive, do you hear it? He is awaiting you, do you hear it?~
== Bimoen ~ Psst. Yes, I hear it. I hear it.~
= ~ Please let me open my eyes again, Sandrah, we must move on, Henning is waiting.~
== BSANDR ~ Right, open your eyes, let us move on.~
END
++ ~ (You whisper so Imoen cannot hear.) What did you do, darling? Have you hypnotized her? I did not know you possess this power.~ +  Clkwospi2
++ ~ Always the little manipulator, eh, Sandrah?~ +  Clkwospi2

CHAIN
IF~~ THEN BSANDR Clkwospi2
~ I am not sure I did hypnotize her. It is not a skill I know to possess. I just told her to ask her heart. It is what I do when I look for an answer that my intellect does not provide. It works for me and it seemed to have worked for her.~
END
++ ~ I noticed this many times already. With all your knowledge and your analytic mind, you often put them aside and just follow your emotions. Fascinating.~ EXIT
++ ~ Such hocus pocus works well on the simple minded, my clever deceiver.~DO~IncrementGlobal("Sanpoints","Global",-1)~EXIT

CHAIN
IF ~ Global("KeldPriTrav","LOCALS",1)~ THEN BSANDR BeregOrph20
~ We come on a grave case with one of your citizens, major Ormlyr.~
DO ~ SetGlobal("OrcPrison","GLOBAL",20) SetGlobal("KeldPriTrav","LOCALS",2)~
== KELDDA ~ Welcome once again, heroes of Beregost. You have been of valuable help to our town on a number of occasions already. Whatever it is, I am willing to hear you out and assist you in any way that can be justified.~
== Bimoen ~ Heya, you better do that. We fight lotsa times for you, major man, now this Traviman needs to be punished badly for all he done to my darling and to everybody on the coast...~
== KELDDA ~ Please, mylady, you seem to be very excited...~
== Bimoen ~ Excited? I AM EXPLODING!~
== BSANDR ~ Please, Imoen. Psst. Let me explain it to the major piece by piece. I am sure he will understand why you are so angry.~
== KELDDA ~ So there is trouble between you and Lord Travenhurst, I sense. That may indeed not be an easy case. The man is a loyal council member and a benefactor of Beregost. But then, you have proven your righteousness as well in the past. Mylady?~
== BSANDR ~ Travenhurst has a splendid facade, as you rightly claim, Keldath. However his business transactions and secrets speak a different language. You surely have heard about our action on the Nashkel mines recently.~
== KELDDA ~ Of course. The thanks of the whole Sword Coast go to you for that. Things are recently improving for all of us since the mines operate again. But back to Travenhurst, if you don't mind.~
== BSANDR ~ The iron crisis and the rumours of war with Amn are all part of a plot designed by the Iron Throne of Baldur's Gate.~
== KELDDA ~ By Lathander. So these rumours I have received from various sources are indeed true. You confirm my worst fears, that some powerful organisation pulls the strings here.~
== BSANDR ~ We have two witnesses for that and we have their statement, that Travenhurst cooperates with the Iron Throne in that matter. To conceal his involvement he had those witnesses kidnapped by an orc gang in the service of the Iron Throne. One of them was the shopkeeper Henning of Nashkel, my little excited friend's fiance.~
== KELDDA ~ Now I see why the little lady was so outraged. Yes, I have heard of Henning's kidnapping from Berrun already. But Travenhurst? Can you back up your accusations with some evidence?~
== BSANDR ~ We have the purse he gave to pay the orc kidnappers right here. With his seal and emblems, look.~
== KELDDA ~ I see, yes, this is Travenhurst's seal and all. Hmhmhm.~
=~ (remains in deep thought for a time.)~
=~ Yes, mylady, I believe you. You have no reason to accuse a well-respected citizen of this town, if it were not true. But--~
== Bimoen ~ BUT? What but can there be other than the butt of Travi that I'm now gonna kick...~
== BSANDR ~ Psst.~
== KELDDA ~ I really hate to say it, mylady, but my hands are bound in this matter by the law. Unless you are able to produce some more evidence that would stand a court's scrutiny. Believe me, my sympathy is with you in this but my hands as the local authority are bound at the moment.~
END
++ ~ So we are on our own in this matter?~ + BeregOrph21

CHAIN
IF ~ ~ THEN BSANDR BeregOrph21
~ You will understand, major, that we will investigate on Travenhurst further, with or without your approval.~
== KELDDA ~ I am sure you will. And let me tell you this, I will not object to it. I will give advice to all those who follow the dawnbringer under my command not to hinder you in any way. I cannot openly support you at the moment but I personally dispise any nobleman who misuses his wealth and power in such a way as Travenhurst. I wish you good luck and Lathander's blessing be with you.~
END
++ ~ Be sure we will return with the evidence. Your trust in us will be justified.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ ~ Yes, yes, spare your words and keep out of our way when justice is done by those who do not hide behind titles and law clauses.~ EXIT

CHAIN
IF~ Global("OrcPrison","GLOBAL",24)~ THEN BSANDR BeregOrph30
~ I am very proud to call Imoen the Magnificent my besta friend. Deeds like that make the true hero, not the number of dead bodies left behind.~
DO ~ SetGlobal("OrcPrison","GLOBAL",25)~
== Bimoen ~ Feels kinda good I guess. I am exploding to tell Henning all the news and my plans - (makes a vague gesture at the immense mansion which is now hers) - with that.~
END
++ ~ Are you planning to settle down here with Henning? Tell me, I think your <PRO_BROTHERSISTER> has a right to know it first.~ + BeregOrph31
++ ~ You will not forget your <PRO_BROTHERSISTER>, who is as homeless as you are.~ + BeregOrph31

CHAIN
IF ~ ~ THEN BSANDR  BeregOrph31
~ (Imoen looks very calm and pensive and makes several attempts to speak.)~
== Bimoen ~ Oh, slowpoke, ya really thought I wanted all of this for me? For me 'n' Henning? No, this house has only dirty memories for me, myself and I. But I'll make it a place of joy for others...~
== BSANDR ~ You never wanted it for yourself, Imoen. We should have known it all the times. So what is your plan then? *Tell us quickest*.~
== Bimoen ~ You know, me and <CHARNAME> are orphans, even if we were lucky ones. But look around you as we move over the Sword Coast. So many have been killed, so many mothers and fathers. Whereever we go we see those lost children. There's not a Puffguts or a Gorion for each of them, see it? They have nowhere to go, no one to care. Breaks your heart if you have one.~
= ~ So - this will be their home. This house can hold much many of them and the sack of gold for bloody Knawlod buys them food and clothes.~
== BSANDR ~ That is wonderful, Imoen. I was proud to call you my friend a minute ago, now I am glowing in the dark like a lighhouse for the whole Sword Coast.~
== Bimoen ~ Really. You not call me mad?~
== BSANDR ~ Not at all. You are so clever and so wonderful, just... just magnificent. Listen, how about telling Keldath about it. We need to see him anyway to have your ownership registered with the town. Now, he and Lathander's brothers and sisters will surely be the right people to run and organise your orphanage.~
== Bimoen ~ Hey say that slowly again? Orphn ass?~
== BSANDR ~ Orphanage.~
== Bimoen ~ *Imoen's Orphanage* ? How's that sounds?~
== BSANDR ~ And Henning?~
== Bimoen ~Oh, bloody foolish me..'f course he needa be in that name, too. Mmh. Can't think it now, I will find a name with him TOGETHER. Oh, how wonderful - together. And then think of it, the little girls will all get pink dresses - and.. blue for the boys?~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Beware! The whole Sword Coast crowded with silly babbling pink brats. Let the road and the gutter educate them for life. Oh, gosh, no - hate to say it, but it's the first decent idea you ever had, Imoen. Anything is better than how I grew up. I make a deal with you. You get part of my booty for the project if you forget about the pink dresses, how about? ~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ None of those would survive a day in the Underdark. How I have mellowed already, by Shar, but I really have sympathy for that plan. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Two hundred and fourty years to learn how a true hero looks like. I am glad elves are granted that long time to learn.~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Imoen, did you see all the books in the house. I will soon start to make an orderly list of them, you know, which ones are suitable for the different age. Your children will leave your home with an education that opens the doors of the world for them. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Helm smiles upon you, Imoen. Such is the real greatness to be sung through the Realms. ~
== IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Hey, that is just so wonderful. Something must be wrong with us bards, as I could have made a song out of the heroic battle but I fail to do it with this even greater deed. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Oh, mylady Imoen, you make me blush. I have so underestimated your goodness. Your thoughts go so much deeper than your giggles let you think at first.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ By Clangeddin's Axe, don't you foolish humans and half-elves see what is wrong with your ways. No dwarf would ever be orphaned - as long as one member of his clan exists, he has a home and a family!~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ I will pray to Tempus for you, brave hero, may he spare your life in many battles to come. Yours is needed to remind us what is important once the foe is defeated.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Yes, give the poor ones the illusion of safety and care. They will have to face the cruelty of this existence early enough. ~
==IF_FILE_EXISTS JETLAJ IF ~ InParty("Jetlaya")~ THEN~ The sunshine of Lathander himself blesses you every day anew, Imoen the Magnificent. (Giggles) May he give you a pink sunset each evening.~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ We have to double our efforts to steal from those rich perverted merchants to keep Imoen's house up and running. Somehow I can identify myself very well with this challenge. ~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~'tis days like this that I thank Sune for allowing me to travel in such company, oh Imoen.~
==IF_FILE_EXISTS J#IndiB IF~ InParty("J#Indi") ~ THEN ~ I may not have been all over the world, but...to know Imoen the Magnificent makes me feel fine.  Just fine. ~
==Bjenli IF~InParty("CVJenlig")~THEN~(Hiss) Hatchery for pink babbling manling girls - good training ground for drow raid. Teach warfare early to survive.~
==BYESLI IF~InParty("yeslick")~THEN~ No dwarfen kid would e'vr be orphaned long as one of its clan be alive. Shame for humans but 'tis best you can do to help, I like ya deed, Imoen.~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ 'tis a deed seldom found in the scrolls and history book but still more important than many a battle that hath been fought.~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ The balance will be restored between the lives and hopes destroyed by this crisis and the new one brought through this mansion. ~
END
++ ~ There goes my dream of a room in a stately mansion. At least for now. But there will be a little boy who has almost lost hope who will find it again in that house. A soothing thought.~ EXIT
++ ~ Just to think what a great woman has walked beside me all this time. I love you, Imoen. (Kiss her dearly.) Hm, don't tell Henning I did this, haha.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",26)~ THEN BSANDR  BeregOrph40
~ (As soon as she sees the Beregost major, Imoen starts to run to him, waving her document.)~
DO~ SetGlobal("OrcPrison","GLOBAL",27)~
== KELDDA ~ Attention, lady, it's wet and slippery just cleaned a minute...oooh~
==Bimoen ~ Uuuuh, nooo....(Imoen slides directly into the major's strong arms which prevent her from a hurting fall.) Ooops, thank you kindly, sir.~
== KELDDA ~ By Lathander, no harm done. By your enthusiasm I anticipate you are in a far better mood than last time, mylady?~
==Bimoen ~ (Imoen still in the major's arms) Oh, yes and yes. (Gives the perplexed man a smashing kiss.) I could embrace all the world.~
== KELDDA ~ Well, yes, so here you are with both feet on the ground again. Yes, eh, nice to see that all is well.~
END
++ ~ We came to give you a report on Travenhurst - but also on some official business for Imoen.~ + BeregOrph41

CHAIN
IF~~ THEN BSANDR BeregOrph41
~ (The major still looks puzzled.)~
== KELDDA ~ Imoen, do I know her?~
==Bimoen ~ You are not old enough to be senile, sir. You just held me in your arms a heartbeat ago!~
== KELDDA ~ Oh, I see, eh, I take this as a kind of introduction then. So, well, Travenhurst?~
END
++ ~ He has left town, even the Sword Coast. We have found evidence of his deeds but we prefer to keep it for the moment as it also includes details about the intrigue that is still ongoing. It goes far beyond local affairs and we will report in details to the Dukes at Baldur's Gate.~ +  BeregOrph42
++ ~ His part of the plot by the Iron Throne is finished. He was responsible for Henning's kidnapping but has compensated for his deed. He has also delivered detailed evidence about the whole intrigue. But it is not over yet. We need to continue our fight against those that were behind him.~ +BeregOrph43

CHAIN
IF~~ THEN BSANDR BeregOrph42
~ From the view of Beregost there will be no further actions required - except to elect probably a new council member, as Travenhurst is not to be expected back. ~  
== KELDDA ~ So he was indeed involved as you had indicated already. I hope we will receive some more details about what has been going on on our very doorstep when this is all over. I can understand that you will not make this information public by now. There is a good chance that you will get all the conspirators if you keep your operations hidden.~
==Bimoen ~ So now that we are more or less properly introduced, lemme tell you 'bout something more nicer. But look at this first. (Hands him the parchment.)~ 
== KELDDA ~ It is no forgery, I can attest that. May I ask nevertheless why he gave that all up - and why to you. You did not eventually use some force to get this? ~
END
++ ~ Not at all. He could not take it with him to his new life outside the Sword Coast. And it is meant as a kind of compensation for what he did to Imoen and Henning.~ + BeregOrph44

CHAIN
IF~~ THEN BSANDR BeregOrph43
~ It is for the compensation part, we have come to you today. Or rather Imoen an behalf of herself and Henning.~
== KELDDA ~ I see. So where is Henning?~
==Bimoen ~ He is taken care off in Waterdeep, just guess, by the famous Elminster himself. He will be good as new, I tell you.~
== KELDDA ~ Well, I see where your good mood comes from, lady Imoen.~
==Bimoen ~ So now that we are more or less properly introduced, lemme tell you 'bout something more nicer. But look at this first. (Hands him the parchment.)~
== KELDDA ~ It is no forgery, I can attest that. So we lost one well-respected citizen, although he did not deserve our respect as it now lies, and gained two new ones.~
END
++~ The new ones you expect have another plan. But let Imoen explain it herself.~ + BeregOrph44

CHAIN
IF~~ THEN BSANDR BeregOrph44
~ They do not plan to use it for themselves but rather give it to the town and the temple for a specific reason...~
DO ~ReputationInc(1) RealSetGlobalTimer("BeregOrphOpen","GLOBAL",3600)~
==Bimoen ~ It will become the home for many that need one. An orph-an-age, you see.~
== KELDDA ~ Mylady! Lathander may bless your every day. That is a blazing light in this time of darkness. I could think of no better use for the enourmous estate. But...Have you thought about that really carefully?~
==Bimoen ~ Sure. You said it yourself just now, it's too big for just two. Don't expect me to keep that clean, I worked at an inn all my life, I know what I'm talking about. And mind you, I'm losing nothing that I ain't had before anyway - or so. Just think of all the happy children.~
== KELDDA ~ I do - and I tell you, their laughter will be worth more than any gold can buy. The temple will gladly assist you in that. Our sisters were already mourning more than once that we ourselves could not care about the orphans this crisis produces adequately with the means we had until now. ~
==Bimoen ~ That changes now. And there is also this bag of lotsa gold. The orc that had it for stealing my boy away does not need a coin of it anymore. It's enough for a lotta clothes and food for a lotsa boys 'n' girls for a long and long time.~ 
== KELDDA ~ All of that is in good hands with us, lady Imoen. I see that you and your friends cannot stay yourself to see us go to work right away. You have already done much and I can see that you are determined to put this intrigue to a final end. The next time you pass Beregost you will be able to see the first results of the project, I assure you.~
END
++ ~ And I assure you, that we will have good news about the destruction of the ones behind all of this trouble when we see each other next time. Farewell. ~ DO ~ AddexperienceParty(5200)~
EXIT

CHAIN
IF ~ Global("SanImoRetWD","GLOBAL",2)~ THEN BSANDR SeeHenNoOrph
~ Before we go to Waterdeep to look for Henning, we should probably decide what to do about this man Travenhurst in Beregost who caused all of that trouble.~
DO~ SetGlobal("SanImoRetWD","GLOBAL",4)~
==Bimoen ~ And we could maybe do something good with the blood money we found. he? ~
END
++ ~ Hm, yes, guess we owe that to Imoen. I try to arrange that with our mission as quickly as possible.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ ~ Well, we rescued your loverboy and he is safe where he is. The rest of the business will have to wait until our mission allows us to go to Beregost eventually. No discussion, move on.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~ EXIT

CHAIN
IF ~ Global("SanImoRetWD","GLOBAL",3) ~ THEN BSANDR SeeHenOrph
~ Now with the Travenhurst business settled and the good end Imoen has set for the whole affair, the time has come to visit Henning at Waterdeep. He should be well by now.~
DO~ SetGlobal("SanImoRetWD","GLOBAL",4)~
==Bimoen ~ OH YEAH! <CHARNAME>! PLEASE bestest, bestest hero or the Sword Coast, let's go there quickest.~
END
++ ~ Hm, yes, guess we owe that to Imoen. I try to arrange that with our mission as quickly as possible.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT
++ ~ Well, we rescued you loverboy and he is safe where he is. The rest of the business will have to wait until our mission allows us to go to Waterdeep eventually. No discussion, move on.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXIT

CHAIN
IF ~ Global("OrcPrison","GLOBAL",29)~ THEN BSANDR BeregOrph50
~ The orphanage should be set up at the mansion by now.~
DO ~ SetGlobal("OrcPrison","GLOBAL",30)~
==Bimoen ~ Heya, let's run there quickest! Let's enjoy those happy children. Say yes and yes, <CHARNAME>.~
END
++ ~ Sure, Imoen, we will go there right away. I cannot wait to see it myself. We are all so proud of you.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT
++ ~ Are you dreaming again, Imoen. We have a task at hand. The orphanage must wait until we find the time. Now move.~ DO ~ ReputationInc(-1)~EXIT

CHAIN
IF ~ Global("SanImoRetWD","GLOBAL",6)~ THEN BSANDR ImoHenWD1
~ Hello, Henning.~
DO ~ SetGlobal("SanImoRetWD","GLOBAL",7) ~
==Bimoen ~ HENNING! MY LOVE!~
== Henning2 ~ MY RED HEAD, Sweetest Imoen, mmmpf...~
==Bimoen ~ Oh, let me kiss you and kiss you, and then start again and kiss you...mmmpf...~
== Henning2 ~ It is so good to hold you, my magnificent heroine. How bravely you have fought for me - you and your friends.~
==Bimoen ~ How are you, my sweetest man? Has all healed and so, quickest tell me all.~
== Narqmes ~ The master and the goddess Mystra have done everything for the brave man to completely restore him for you.~
== Henning2 ~ And of course you, Landrel, with your kind nightwatches and never ceasing care for me.~
= ~ Imoen, allow me to embrace your friend Sandrah and thank her. After all it was her and her quick first aid and transport to here that have saved my life.~
== BSANDR ~ Nevermind, Henning. Imoen or you would have done the same for me, if you had possesed those abilities.~
==Bimoen IF ~ GlobalGT("OrcPrison","GLOBAL",26)~ THEN ~ *Imoen starts to report everything that had happened, including her opening the orphanage in Beregost.*~
==Bimoen IF ~ GlobalLT("OrcPrison","GLOBAL",27)~ THEN ~* Imoen starts to report everything that had happened in rescuing Henning and afterwards.*~
== Henning2  IF ~ GlobalGT("OrcPrison","GLOBAL",26)~ THEN ~ You deserve to be loved like no other woman, my wonderful Red Head with the golden heart.~
==Bimoen IF ~ GlobalGT("OrcPrison","GLOBAL",26)~ THEN ~ So you are not angry with me for giving that mansion and the money away for the poor children.~
== Henning2  IF ~ GlobalGT("OrcPrison","GLOBAL",26)~ THEN ~ Of course not. If my love for you and my pride in you could grow still, they would. I already dream of visiting the house by your side and take a look at those happy children's faces myself.~
== Henning2  IF ~ GlobalLT("OrcPrison","GLOBAL",27)~ THEN ~You deserve to be loved like no other woman, my wonderful Red Head.~
== BSANDR ~ Henning, did you have time to make some plans for the near future already. With Sarevok still being a threat to your life, I would not recommend for you to return to the Sword Coast yet.~
== Henning2 ~ Through your father's channels I already have been in contact with Cedric in Nashkel, so she will run the business down there for the time. And I have met with Clarissa, the local bookmerchant. Her business is flourishing, but her abilities in organisation and bookkeeping are a bit chaotic, to say the least. So we already have agreed that I will start to organise that part of her business for a while.~
== Narqmes ~ Your father has given a suite of unused rooms in the west wing to the young couple for their free use, Miss Sandrah.~
== Henning2 ~ If your friends do not mind, I would like to show this nest to my sweetest girl...~
==Bimoen ~ Sweetheart, whatcha waiting for, quick and quickest, I have to inspect your body fully completely all over to see that nothing is amiss...~ DO ~ AddExperienceParty(4000) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("Formedcloth","GLOBAL",15)~ THEN BSANDR SanImoBhCh1
~ Imoen, you have been a bit silent to me since we learned about Gorion and Winthrop and the two babies.~ 
DO ~ SetGlobal("Formedcloth","GLOBAL",16)~ 
==Bimoen ~ Huh, it's quite puzzling to think of the *new* Puffguts, Sandrah. Guess how he fooled everyone with his disguise, fooled me when I was always so close all the time.~
== BSANDR ~ I guess he had to in order to protect you, just as Gorion had protected <CHARNAME>.~
==Bimoen ~ Protected me? My, I can figure all being hunting for <CHARNAME> with <PRO_HISHER> blood in <PRO_HIMHER>, but who should care for me? Yeah, well, maybe I would get hurt in the instant while being always so close to <PRO_HIMHER>. Jus' like I'm here now fighting together.~
END
IF ~ GlobalGT("OrcPrison","GLOBAL",8)~ THEN REPLY~ Poor one, even been turned into this slayer beast by being too close to me.~ + SanImoBhCh2
IF ~ GlobalLT("OrcPrison","GLOBAL",8)~ THEN REPLY~ And being in such danger for it.~ + SanImoBhCh3

CHAIN
IF ~~ THEN BSANDR SanImoBhCh2
~ (Mumbles) A strange interpretation. ~
==Bimoen ~ Means it wasn't my miscasting spells. Am I reliefed now or worried, dunno?~
END
IF~!AreaCheck("BG2626")~THEN REPLY~You seem to think otherwise, Sandrah. I have some thoughts about that myself now. Winthrop called the child *Immi*. Let us continue and talk about it another day.~ EXIT
IF~AreaCheck("BG2626")~THEN REPLY~You seem to think otherwise, Sandrah. I have some thoughts about that myself now. Winthrop called the child *Immi*...~+ SanImoBhCh4

CHAIN
IF ~~ THEN BSANDR SanImoBhCh3
~ (Mumbles) Winthrop's girl, surely not the one taken by the Orloth as that one was a boy.~
==Bimoen ~ That's nice isn't it the good men have the good childs and that naughty wizard needed to find him another one.~
END
IF~!AreaCheck("BG2626")~THEN REPLY~You seem to think otherwise, Sandrah. I have some thoughts about that myself now. Winthrop called the child *Immi*. Let us continue and talk about it another day.~ EXIT
IF~AreaCheck("BG2626")~THEN REPLY~You seem to think otherwise, Sandrah. I have some thoughts about that myself now. Winthrop called the child *Immi*...~+ SanImoBhCh4

CHAIN
IF ~~ THEN BSANDR SanImoBhCh4
~ <CHARNAME>, we have missed an important detail. I urge you to ask my father about it again. It may be crucial to know the whole story before we enter your former home again.~
==Bimoen ~ Yes and yes, bestest of the bestest leaders!! I must know and you must know before we can face old Puff...dad...I don't know anymore...but please let's ask Elminster.~
== BSANDR ~ I know it must be hard to turn from the gate of Candlekeep at this moment - but Sarevok will not start his show without us. Let him just boil there a bit more while we gain more insight and are prepared better than he might expect us to be.~
==Bimoen ~ Our old walls may wait...let's go to Waterdeep quickest - I mean, of course, after we have rested our poor tired bones a bit~ DO~RestParty()~EXIT

CHAIN
IF ~Global("SanImoRetCK","LOCALS",1)~ THEN BSANDR SanImoRetCK1
~ So here you two are back at your old home, even if not under the circumstances that make it a happy return.~
DO ~ SetGlobal("SanImoRetCK","LOCALS",2)~ 
==Bimoen ~ PLEASE, <CHARNAME>, let's go run see DADDY quickest! There is oh so much to tell my good good man.~
== BSANDR ~ Please, <CHARNAME>, let us go see Winthrop, he may even have some useful information on our quest or maybe even from Gorion.~
END
++~ Oh, yes, Imoen, at least for one of us it is a happy return. Let's go see old Puffg...I mean, eh your dad..I mean, eh Master Winthrop right away.~ DO ~ AddexperienceParty(1000) ~ EXIT
++ ~ Empty and sad walls these are for me now. And a nasty quest is waiting here somewhere. Let us not be too hasty, we are warned that a trap is waiting for us here. But you are right, Imoen, there is also a glimpse of light and joy even on the darkest days. Let's go to the inn first.~ DO ~ AddexperienceParty(500) ~ EXIT
++ ~ Oh, Imoen, can't you stop babbling. There are surely more urgent things on the agenda than your foolish old man.~ DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~+ SanImoRetCK2

CHAIN
IF~~ THEN BSANDR SanImoRetCK2
~ You are really nasty. Do you not see that even in a dark hour there is always a bit of light as long as we have hope and love. Imoen, let us go and see your daddy before we deal with the nasty task ahead. We will gain the necessary confidence and strength through that.~
END
++ ~ Fine, let us see Winthrop then. Please take my apology for having been so rude, my own nerves are a bit battered by this unhappy return. (At the moment you take Sandrah's hand, you feel her confidence and love pulse through your whole body thus restoring your own strength.) ~  DO~IncrementGlobal("Sanpoints","GLOBAL",1)AddexperienceParty(500) ~ EXIT
++ ~ Mpf, girls...(You stamp away angrily - as you realise a second later your feet have already taken the direction to the Candlekeep Inn.) ~ DO ~ ApplySpellRES("CVChaRed",Player1)~ EXIT



// Minsc and Boo

CHAIN
IF ~ Global("SanBooPel","GLOBAL",1) ~ THEN BSANDR SanBoo7
~ Look at this.~
DO ~ SetGlobal("SanBooPel","GLOBAL",2)~
== Pellig ~ (Pelligram sits on her hindlegs beside Minsc and stares at Boo who is sitting on the big warrior's shoulder.)~
== BMinsc_ ~ Boo likes the big cat very much, you know, Sandrah.~
== BSANDR ~ Maybe. It seems to be rather interest than hunger I sense in her.~
== BMinsc_ ~ Big cat would never eat Boo. Do you not see, they are both of the same warrior spirit. They understand each other without need for words.~
== BSANDR ~ (Sandrah has moved next to Pelligram and strokes the pantheress' head gently.)~
== Pellig ~ Purr.~
== BMinsc_ ~ Boo likes Sandrah also very much. Boo says, Sandrah has a great warrior spirit herself, just like her big cat. We are all friends.~
== BSANDR ~ Yes, we are. (Sandrah gently touches Boo without Minsc objecting to it.)~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",1) ~ THEN BSANDR SanBoo1
~ Minsc, are you on dajemma as well?~
DO ~ SetGlobal("SanBooTlk","GLOBAL",2)~
== BMinsc_ ~ We are, Minsc and Boo. I must prove my manhood to be accepted to my berserker's lodge at home. Boo must prove nothing, he is a great warrior already.~
== BSANDR ~ You are as well, Minsc. Word will get to Rashemen soon about that.~
== BMinsc_ ~ Sandrah, tell us, how did you accomplish your own dajemma?~
== BSANDR ~ I have not yet. Maybe being here today at <CHARNAME>'s side could be seen as my dajemma, in a way.~
== BMinsc_ ~ Boo is puzzled by your words. Such a mighty fighter and great healer must have gained her approval long ago.~
== BSANDR ~ In my country we do not have this habit, Minsc. It is only my own self that is on a journey to find - myself.~
== BMinsc_ ~ Boo says he understands well. Boo hopes that Minsc will find the same one day - find myself.~
== BSANDR ~ (Sandrah has taken Minsc's hand in hers. Boo jumps from Minsc's shoulder to Sandrah's lap and back again, summersaulting with joy.) You will find yourself surely, Minsc, yourself and your way. It will not be easy, but it is never for any of us.~
== BMinsc_ ~ It is not for one like you, Sandrah? Boo has heard something like that from Dynaheir as well. All pretty damsels need protection.~
== BSANDR ~ I will gladly accept yours, my paladin, whenever your duty for your witch allows it.~
== BMinsc_ ~ Boo says we have four eyes for two witches. That fits.~
== BSANDR ~ (Laughs and places a small kiss on Boo's nose.)~
== BMinsc_ ~ Boo likes that.~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",3) ~ THEN BSANDR SanBoo5
~ Minsc, my courageous warrior, hold still for a moment and let me see to your wound.~
DO ~ SetGlobal("SanBooTlk","GLOBAL",4) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ ~ Sandrah, you are always looking to help your comrades, that is nice. But it is not right to care so much for Minsc.~
== BSANDR ~ You are hurt and I heal you, what is wrong with that?~
== BMinsc_ ~ Minsc and Boo must defend the brave hearted Sandrah, not Sandrah must protect Minsc.~
== BSANDR ~ We are comrades and friends, Minsc, each of us will look and care for the other one. Each of us will provide to the other what he can best, according to his or her talents.~
== BMinsc_ ~ Boo says these are wise words. Minsc and Boo will provide shield and sword for Sandrah.~
== BSANDR ~ Minsc, you already have a witch to protect. I know I can rely on you, but I do not need a guardian.~
== BMinsc_ IF~!InParty("CVShau")~THEN~ Boo says you are right, I am Dynaheir's guardian by oath. But I am your protecting friend by heart's command.~
== BMinsc_ IF~InParty("CVShau")~THEN~Boo says you are right, I am Shauhana's guardian now by heart as once I was Dynaheir's guardian by oath. ~
== BSANDR ~ So be it. (Sandrah places a small kiss on Boo's nose. She stand on her tiptoes and just reaches the tip of Minsc's chin for a kiss there.)~  DO ~ ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",5) ~ THEN BSANDR SanBoo4
~ Minsc, how wonderful. I will put one here in my hair.~
DO ~ SetGlobal("SanBooTlk","GLOBAL",6) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ ~ Boo says you like to wear flowers and be happy. You look even more wonderful when adorned by a nice flower.~
== BSANDR ~ It is always nice for a girl to receive flowers from someone who cares for her.~
== BMinsc_ ~ These are the same words that Boo has said. Boo is not only a mighty warrior but also quite a lady's man among the female space hamsters.~
== BSANDR ~ That is obvious, but does he have a chance to meet many of them?~
== BMinsc_ ~ Uuh, Sandrah, he would not tell me of course. Gentlemen like us do not boast about the pretty damsels they rescue nor about the galant adventures we have.~
== BSANDR ~ Surely not, how could I have been so dumb, my stately gentleman.~
== BMinsc_ ~ I am very proud that my lady wears my flower but it is between her and me and not for display to envious people.~
== BSANDR ~ A wonderful private secret for us to enjoy. And Boo can be trusted by us, I know.~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",7) ~ THEN BSANDR SanBoo2
~ Is something wrong, Minsc?~
DO ~ SetGlobal("SanBooTlk","GLOBAL",8) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ ~ Sandrah, I need a healer even if I am not bleeding visibly.~
== BSANDR ~ What is it? Tell me the symptoms and I am sure we can do something about it.~
== BMinsc_ ~ It is ants.~
== BSANDR ~ Ants? A kind of phobia, maybe - I heard of people fearing spiders or such. Ants.~
== BMinsc_ ~ Oh, no Sandrah, they are in me, in my stomach and in my head, I feel their cribbling around within me. It is very strange.~
== BSANDR ~ Are they there always, Minsc, or just at special moments?~
== BMinsc_ ~ They are very busy now, Sandrah, and also when I try to sleep and try to dream.~
== BSANDR ~ I see, hm. Do they awake when you come near to a special person or think of that person or even when you do not see that person but miss her.~
== BMinsc_ ~ Boo was right, you can help, you know the disease well - so you know the cure.~
== BSANDR ~ I know the *disease*, Minsc, and I have to tell you there is no cure for it and there is no healing required, you lucky man.~
== BMinsc_ ~ Then the ants will not eat me from inside?~
== BSANDR ~ No, they will not. Enjoy the feeling, Minsc, like all people should. And ask your *lady's man* advisor Boo about it.~
== BMinsc_ ~ (Blushes) I have. He told me the same just with other words. And he insisted that only you could help.~
== BSANDR ~ Clever hamster. (She slings her arm around Minsc's neck and pulls him down to her height before kissing him.) Try this medicine, it either helps or makes things worse...~
EXIT

CHAIN
IF ~ Global("SanBooTlk","GLOBAL",9) ~ THEN BSANDR SanBoo3
~ Do we want to tell Minsc a goodnight story this time, what do you think, Boo?~
DO ~ SetGlobal("SanBooTlk","GLOBAL",10) RealSetGlobalTimer("SanMinskInt","GLOBAL",1200) ~
== BMinsc_ ~ Boo likes to listen to your voice, Sandrah, regardless of what you tell him.~
== BSANDR ~ Is the same true for Minsc?~
== BMinsc_ ~ Very much, just to be near you and to listen to you. It is not important that I often do not understand you whole.~
== BSANDR ~ But then you can consult Boo and maybe he knows to explain.~
== BMinsc_ ~ 'tis true but it makes conversations very slow with Minsc.~
== BSANDR ~ My friend, we have a lot of time, as this venture will take long. We need not to hurry. You will find me a very patient listener.~
== BMinsc_ ~ Boo says that we have noticed that already. We will make up a nice talk for our lady Sandrah to enjoy tomorrow.~
== BSANDR ~ That sounds very nice. Goodnight, Minsc, goodnight, Boo.~
== BDYNAH IF~ InParty("Dynaheir")~ THEN ~ Hath thou started to talk to Boo now as well, Sandrah?~
== BSANDR IF~ InParty("Dynaheir")~ THEN ~ Dynaheir, are you aware that talking to Boo means talking to Minsc nevertheless?~
== BDYNAH IF~ InParty("Dynaheir")~ THEN ~ I am sure that poor Minsc is really talking to himself when he speaks to his rodent. Thou shouldst not encourage his condition or mock it.~
== BSANDR IF~ InParty("Dynaheir")~ THEN ~ It is surely not what I do. I will talk to you now as a healer and a friend, Dynaheir, and as one who cares for Minsc and his pure and gentle soul.~
== BDYNAH IF~ InParty("Dynaheir")~ THEN ~ I trust thee as much as Minsc does by his instinct already.~
== BSANDR IF~ InParty("Dynaheir")~ THEN ~ Boo is a door through which we can touch Minsc's own self. Boo is his alter ego, the part of himself that seems to be asleep within him, at least most of the time. Minsc is not dumb, but he has forgotten to use his intellect in the bustle of daily life. At calm moments it becomes visible through Boo's imaginary voice.~
== BDYNAH IF~ InParty("Dynaheir")~ THEN ~ Even as you speak in professional analysis, your voice and words reveal your warm-hearted feelings for your patient. I am glad Minsc has found a friend in thee. What can we do?~
== BSANDR IF~ InParty("Dynaheir")~ THEN ~ We must have patience - and not mock Minsc too heavy for his *rodent*. Minsc and Boo must be reunited to the one persona that they really are. It will not be too easy under the conditions of the life this quest forces upon us.~
== BDYNAH IF~ InParty("Dynaheir")~ THEN ~(Sigh) Our mission is here, we shouldst try our best under circumstances we cannot alter. I trust thee, Sandrah.~ DO~ RestParty()~
EXIT

CHAIN
IF~ Global("SanBooTlk","GLOBAL",11)~  THEN BSANDR SanBoo6
~ You seem to be more relaxed out here in nature again, my friend Minsc, even though you put on quite a good fight with the city ways.~
DO ~ SetGlobal("SanBooTlk","GLOBAL",12) RealSetGlobalTimer("SanMinskInt","GLOBAL",900)~
== BMinsc_  ~ It must have been your soothing presence that made me stand it, Sandrah. A big city normally puts me more to unease.~
== BSANDR ~ Still there is a significant difference, something to be considered for the future.~
== BMinsc_  ~ You do not need to set your trips to the city aside because of me, Sandrah. As you have seen, with you and Boo by my side I can manage everything.~
== BSANDR ~ That is good to know. I care about how you feel as well, Minsc.~
== BMinsc_  ~ Sandrah, you are so fearless regardless of where we are. And you like it in all places. ~
== BSANDR ~ I have wonderful friends who make me feel at home and loved whereever I am. And their strong shields and swords guarantee for my safety along with my own skills. ~
== BMinsc_ ~ Are Boo and Minsc also meant by this, your friends and your guardians?~
== BSANDR ~ Of course you are, at the very top of the list. (She strokes Boo gently, then her fingers move on to caress Minsc's brawny naked arm.)~
== BMinsc_ ~ Hmmm. (The hamster and the fighter purr in unisono.)~
EXIT

CHAIN
IF ~ Global("SanMinsDung","LOCALS",1) ~ THEN BSANDR SanBooDung
~ Hello, Boo?~
DO ~ SetGlobal("SanMinsDung","LOCALS",2) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc_ ~ Boo says that you are the greatest fighter we have ever seen. Fearless and beautiful. Minsc almost forgot to fight himself from all the watching.~
== BSANDR ~ Thank you for the compliment. I means much from the greatest space hamster warrior I know.~
== BMinsc_ ~ (Laughs) Boo likes to know how many other space hamster warriors you have ever met.~
== BSANDR ~ Enough to know who is the best of them. Minsc, we make a good team together, but please do not look at me too much during the fight or I must heal all your nasty wounds afterwards.~
== BMinsc_ ~ Not too bad for me, I love your healing. But you are right, I can spend all the time after the fight to admire your beauty and grace. Minsc has learned to concentrate on fighting alone when it is need to fight. Our enemies always take advantage if me and Boo do not concentrate enough.~
== BSANDR ~ Fine. You do not need to bleed from your wounds if you want my company after a fight. You are always welcome, Minsc.~
== BMinsc_ ~ Boo says he thinks we have just made a rendezvous with a very fine special lady.~
EXIT

CHAIN
IF ~ Global("SanMinsHur2","LOCALS",1) ~ THEN BSANDR SanBooHur2
~ Hold still, my fearless berserker, you were much too careless once again.~
DO ~ SetGlobal("SanMinsHur2","LOCALS",2) ~
== BMinsc_ ~ It hurts just a bit, but I know it will soon be good when my Sandrah starts her healing on me.~
== BSANDR ~ That is no reason to fight in such a careless way, Minsc. Do you want Boo to become an orphan?~
== BMinsc_ ~ I have thought about that already. Please, Sandrah, you are my best friend and - you are my lady, aren't you. You must promise to care for Boo if really something bad ever happens to to me.~
== BSANDR ~ You have my word for it - but I wish dearly it will not be ever necessary. So many need you Minsc, Dynaheir, Boo, <CHARNAME>...~
== BMinsc_ ~ ...and you?~
== BSANDR ~ And me! (Sandrah kisses Minsc before she busies herself with the large fighters wounds.)~ DO ~ ForceSpell("Minsc",CLERIC_HEAL)~
EXIT

CHAIN
IF ~ Global("SanMinsParty","LOCALS",1)~ THEN BSANDR SanBooparty
~ You are so jolly, Minsc, please tell me why?~
DO ~  SetGlobal("SanMinsParty","LOCALS",2)~
== BMinsc_ ~ There is a big battle ahead, Sandrah, good.~
== BSANDR ~ Do you enjoy fighting so much, my berserker?~
== BMinsc_ ~ A big battle means a big victory. And a big victory means a big celebration. And that is what Minsc and Boo look forward to tonight.~
== BSANDR ~ But first the battle needs to be won. (In a soft voice) Try not to get hurt too much, my friend, I would like to join your happy celebration.~
EXIT

CHAIN
IF ~ Global("SanMinsParty","LOCALS",3)~ THEN BSANDR SanBooparty
~ Yes, Minsc?~
DO ~  SetGlobal("SanMinsParty","LOCALS",4)~
== BMinsc_ ~ It is not easy to say, Sandrah, but - mmh - we are so far from Rashemen and the Lodge. It would be normal to celebrate such a victory with the boys.~
== BSANDR ~ Are you feeling homesick, Minsc?~
== BMinsc_ ~ Not very much, I just miss the celebrations a bit. A real fighter must have some fun now and then.~
== BSANDR ~ That is true. What do you propose?~
== BMinsc_ ~ I am not sure. In the Lodge it is only the boys who drink and sing and tell about their deeds. But here...Sandrah you are the strongest fighter I know, but...~
== BSANDR ~ ...but I am a girl. That is a problem.~
== BMinsc_ ~ Not a problem, no, it is wonderful. But for berserker celebration I don't know, even if the boys are far away, I don't know if it is right.~
== BSANDR ~ (Sandrah retrieves a keg of beer from her magic parcel.) Minsc, we will solve this problem by inventing our own personal celebration ritual right now.~
== BMinsc_ ~ I knew you would find a solution, you are so clever - and so brave...and so lovely.~
== BSANDR ~ (Lifts the keg.) To all our victories, past and future!~
== BMinsc_ ~ To all our victories! (Empties the keg with one swallowing.) Do we have more, for Boo.~
== BSANDR ~ Here it is. (Another keg appears.) To our brave comrades!~
== BMinsc_ ~ To Boo and the heroic Sandrah! (Empties the keg with one swallowing.) The lovelelelely Sandrah...~  DO ~CreateItem("Misc97",2,0,0) DropItem("Misc97",[-1.-1]) DropItem("Misc97",[1.1]) StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("X#MinscBoo","GLOBAL",2)~ THEN BSANDR SanBooMysHel
~ Yes, Boo, I did not tell our secret to Minsc even if he is my friend. A promise is a promise.~
DO ~ SetGlobal("X#MinscBoo","GLOBAL",3) RealSetGlobalTimer("SanMinskInt","GLOBAL",500) ~
== BMinsc_ ~ Sandrah, you have always known about Boo and that he is not just any hamster? And you never told me?~
== BSANDR ~ But, Minsc, you have always known that yourself, did you not.~
== BMinsc_ ~ Hm. yes...but you know more about him, don't you?~
== BSANDR ~ Minsc, his presence with you means that Mystra, my goddess, has great plans for you. She wants to keep you safe and sane and has sent you one of her companions to assure that.~
== BMinsc_ ~ Maybe great plans with me for one of her priestesses? She wants Minsc to be with Sandrah.~
== BSANDR ~ That may be true, at least for the time being. But maybe there is more waiting for you in the future, as I already have my own companion of Mystra with me?~
== BMinsc_ ~ Pelligram? That is why Boo and the cat like each other so much, right?~
== BSANDR ~ Right, Minsc, they are both companions of Mystra given to us - we care for them and they care for us on behalf of the goddess.~
== BMinsc_ ~ (Minsc strokes Boo's fur softly.) Sweet little deceiver.~
= ~ (He turns to Sandrah and gently touches her cheek.) Sweet little deceiver. (He leans down and kisses Sandrah's mouth.) ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT



// Xan

CHAIN
IF ~ Global("SanXanA","GLOBAL",2)~ THEN BSANDR Xanknows
~ Yes, I am his only child, Xan.~
DO~ SetGlobal("SanXanA","GLOBAL",3) RealSetGlobalTimer("SanXanT","GLOBAL",1500)~
== BXANNN ~ The burden of that must be overwhelming for a young fragile girl.~
== BSANDR ~ Thank you for the consideration, but the fact that I am young and may look fragile in your eyes does not mean that I am weak and helpless.~
== BXANNN ~ You are a strong fighter, Sandrah, no doubt, though I have observed it is really more technique and skill than physical strength.~
== BSANDR ~ You are a good observer, my elf. I was trained to compensate my fragility with speed and precision. And avoidance - not running away but avoiding to be hit.~
== BXANNN ~ You do that with the grace of an elegant dancer. And it makes me double afraid for you.~
== BSANDR ~ Tell me why, my friend.~
== BXANNN ~ I am fascinated to watch you move and fight, but I am trembling for that one hit that may find its way and shatter the whole fragile artwork.~
== BSANDR ~ Oh, you are so wonderful in your care for me. But you have forgotten one important thing about me - my healing skills.~
== BXANNN ~ In my long years I have seen just too many that have been maimed beyond the art of any healer. Please, do not get too careless. I could not stand it to see another wonderful flower been crushed before its full bloom.~
== BSANDR ~ Xan, really, you should have become a bard. Your gentle words and compliments deserve to be sung. And then I would dance to them - only for you.~
== BXANNN ~ (You could swear that Xan has actually smiled for an instant.) ~
EXIT

CHAIN
IF ~ Global("SanXanA","GLOBAL",4)~ THEN BSANDR Xanknows2
~ You tried to talk with me about the burden it is to be my father's daughter, dear elf.~
DO~ SetGlobal("SanXanA","GLOBAL",5)RealSetGlobalTimer("SanXanT","GLOBAL",1200)~
== BXANNN ~ Sandrah, you appear to take everything so lightly, even if your actions betray you constantly.~
== BSANDR ~ In which way do they betray me? Do you think I am only putting on a nice face while being desperate inside? I think you are misled there.~
== BXANNN ~ I hope I am, really. What I meant to say is, that you are caring very much about your fellowbeings and you take on a lot of responsibility for one so young. And then you make it all look so easy and appear so carefree, yes and free.~
== BSANDR ~ You should best understand that, Xan. With the moonblade you carry, you know what responsibility means. But we do not carry the weight of Toril on our shoulders, my friend, we are only expected to do as best as we can.~
== BXANNN ~ Oh, if that only were enough. Imagine to have failed because it was just that tiny little bit of effort missing, that short moment you were too late, that one hit that has missed.~
== BSANDR ~ The possibility of a failure like that is one thing that we need to learn to accept. The do-nothing option is one thing that does not exist for me. And it should not be considered by one who was blessed with the moonblade.~
== BXANNN ~ Blessed? Or is it cursed? Are you blessed by being Elminster's daughter or is it a burden and a curse.~
== BSANDR ~ It is surely no curse, Xan. I admit it is not always easy. I have always tried to be recognized and accepted for being MYSELF not for being the DAUGHTER OF...You know. But I never blamed my father for it, and I always felt the advantages of having such a wise and caring and loving father let me forget everything else.~
== BXANNN ~ (Smiles sadly) If I could only have a fragment of your positive view on everything.~
== BSANDR ~ (Sandrah has turned to face Xan and takes both his hands in hers.) I am here for you, my gentle friend, whenever you need someone. (She rises to her tiptoes and gives him a kiss on the forehead.)~
EXIT

CHAIN
IF ~ Global("SanXanA","GLOBAL",6)~ THEN BSANDR Xanknows2
~ Come on, Xan, all elves love music and dance, why should I believe you do not.~
DO~ SetGlobal("SanXanA","GLOBAL",7)RealSetGlobalTimer("SanXanT","GLOBAL",300)~
== BXANNN ~ A macabre dance on the edge of one's own grave.~
== BSANDR ~ The wine you had so far did not cheer you up, so only a dance can. Or are you shy, sweet elf?~
== BXANNN ~ Oh beautiful and foolish little Sandrah, do not tempt me so. You do not know how much it hurts to see such a promising flower be doomed to fade so soon.~
== BSANDR ~ I feel very much alive tonight, Xan. None of your moods can change that. Remember how much you admired my fighting style. It was you that compared it to a dance, sweetling. And now you are offered the chance to join in that dance. Do not tell me you can resist such an offer. (She has gently pulled Xan to his feet and embraces him for the dance.)~
== BXANNN ~ (Xan's movements are uneven at first, maybe because of the wine he had, but then he seems to get his motions more and more coordinated. Guided by Sandrah's gentle but firm arms, the couple attracts more and more views of appreciation from the other guests. Finally their pace speeds up and their movements to and from each other are beautiful and accomplished. As the dance ends, there is applause and cheers from the crowd.)~
== BSANDR ~ That was wonderful, Xan, I thank you so very much.~
== BXANNN ~ (Xan seems to return from a kind of trance or dream.) I am so alive tonight, Sandrah. I feel more drunken than from all the wine.~
== BSANDR ~ (Sandrah leads him to a bench and sits down close beside him, still holding his hand.) Then it means, you need no more wine on your lips tonight, my elf?~
== BXANNN ~ I-I did not say that...~
== BSANDR ~ Try this new drug instead. (Her lips are on his for a long, long kiss.)~
== BXANNN ~ (Xan's eyes close and his arm slowly embraces Sandrah.) Sigh. Why not...It will be of no consequence...the dream will be over so soon...(This time it is Xan who searches Sandrah's lips for a refill.)~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanXanPink","LOCALS",1)~ THEN BSANDR XanPink1
~ No, honestly, I did not inspire Imoen to it, Xan. Even if sometimes I wish I had the practical mind of my *besta* friend to solve little problems.~
DO ~ SetGlobal("SanXanPink","LOCALS",2)~ 
== BXANNN ~ It's so laughable, isn't it. Can you admire a moonblade wielder running around in the colours of a circus geek?~
== BSANDR ~ Oh, you are largely exaggerating now. Even if Imoen's choices are not exactly my taste, the man I see is far from being a freaky curiosity. The change has done you good, my friend - and Imoen's best intention has to be acknowledged.~
== BXANNN ~ You are not laughing at me?~
== BSANDR ~ My best elf, I am smiling at you, my quite attractive moonblade carrier. The only problem I see with your outfit...have you noticed all those girls and women attracted by your appearance recently.~
== BXANNN ~ Sure a curiosity like me attracts the stares of the crowd.~
== BSANDR ~ I would not be so unsettled if that were the reason for their glances. I feel I have to be very watchful to protect...~
== BXANNN ~ ...your interests?~
== BSANDR ~ Is that not obvious? (Sandrah blushes like a teenage girl, once again you recognize that your counselor actually is not that far from those years yet.)~
== BXANNN ~ I may just be able to endure these garments for a little while more, if a lady of such distinction like you, Sandrah, is able to respect the man behind the outfit.~
== BSANDR ~ Oh, yes, I do. (She starts to fondle one of Xan's new earrings and blows a soft kiss in his earlobe.)~
EXIT

CHAIN
IF ~ Global("SanXanPink","LOCALS",3)~ THEN BSANDR XanPinkR
~ So does it feel better now to be back to normal, Xan?.~
DO ~ SetGlobal("SanXanPink","LOCALS",4)~
== BXANNN ~ Sandrah, Sandrah, you know there is no return to *normal* as long as I am in your company.~
== BSANDR ~ I hope that was meant in a positive way, my elvish lover?~
== BXANNN ~ In principle yes, but you know that being in the state you put me in is a deadly dangerous trap at the same time. I makes me joyful and - foolish. My defenses are down where I should be standing with the Moonblade to defend us both.~
== BSANDR ~ The Moonblade and my hammer are feared throughout the Realms already, Xan. We are not fearful little rabbits waiting for the strike to end us.~
== BXANNN ~ Don't you see the danger mounting daily, sweetling. Our reputation attracts more and more mighty foe - until one day a little mistake and - boom.~
== BSANDR ~ And until then every day is a feast on which I drink the sweet wine from your loving lips...(She does just that by stepping up to Xan and sucking his mouth dry with her kisses.)~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanXanA","GLOBAL",8)~ THEN BSANDR Xanknows3
~ It is a '69 Plains of Akanal. A brilliant choice, at least according to lore. I never had the priviledge yet to taste even a lesser vintage from that region. ~
DO~ SetGlobal("SanXanA","GLOBAL",9) RealSetGlobalTimer("SanXanT","GLOBAL",1200)~
== BXANNN ~ How it has found its way to this forlorn inn will probably remain one of the mysteries of our life. ~
== BSANDR ~ Such will remain the famous taste it is supposed to have, Xan, until you start to move and open it. ~
== BXANNN ~ (Xan's eyes move to the stately tavern girl that serves them some glasses and a bit of cheese to accompany the wine. His gaze follows her as she wiggles self-consciously away from their table.)~
== BSANDR ~ You may however choose to leave this precious bottle unopened and get yourself some cheap substitute, if it is just to get drunk.~
== BXANNN ~ With the very precious things it is difficult, my friend. One can indeed be afraid to cherrish them because of the fear of loss by comsumption. Imagine we drink and enjoy that bottle now. It will be lost forever while we gain only this little bit of joy that will be gone by the morning. There is no way to keep it for longer. ~
== BSANDR ~ And so we have the continuing dream of what it could have been. An imagination that may grow to undeserved expectations but will never be fulfilled. ~
== BXANNN ~ (His eyes find the tavern wench again who is already flirting with a fat drunken guest at another table.) *Sigh*, is '69 maybe your year of birth? ~
== BSANDR ~ No it is not. For the conaisseur, there was an even better year during that decade. ~
== BXANNN ~ Have you ever considered that the lifespan of a human woman can be considered from the view point of an elf similar to the shortlived pleasure, even the best of wines can provide? ~
== BSANDR ~ And have you, my elf, ever considered that even an elf's long life may in the end be too short if spent on cheap wines and silly tavern wenches? ~
= ~(With a quick move she has pulled the cork from the bottle and the thick red wine pours into their glasses.) Raise your glass with me, Xan, drink to the joys life holds for us, even if they cannot last forever. Carpe diem.~
EXIT

CHAIN
IF~ Global("SanXanA","GLOBAL",10)~ THEN BSANDR Xanrelax
~ Can you not sleep, my melancholic elf?~
DO~ SetGlobal("SanXanA","GLOBAL",11) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN ~ Sandrah, you very well know about the elves' reverie, I am sure. But I have good news for you, the reason I am awake is a nice one, due to you.~
== BSANDR ~ I keep you sleepless and dreamless and you enjoy it?~
== BXANNN ~ If the reason to enjoy life with open eyes is better than any dream that sleep or reverie can provide, then it is better to stay awake, is it not?~
== BSANDR ~ My wonderful elf poet, you almost embarass me with your high vision of my presence. (Sandrah kneels down beside Xan who lies on his back and looks dreamily upwards into nothingness.)~
== BXANNN ~ Take my hand, my beauty, and let me listen to your soothing voice. Let me loose myself in your loving words and hopeful errors.~
== BSANDR ~ Can there be any error if the feeling that is provided makes my lover feel alive and joyful. Once again it is you, Xan, that is about to make the mistake. But I am here to prevent the worst. (She leans forward and covers his face and breast with the waterfall of her locks.)~
== BXANNN ~ (Xan has embraced Sandrah and pulls her closer to his body. It seems that in between kisses you hear the elf sobbing, out of joy or out of pain, who can tell?)~ DO ~ RestParty()~
EXIT

CHAIN
IF ~ Global("SanXanA","GLOBAL",12) ~ THEN BSANDR Xandietog
~ (Sandrah sits beside the brooding elf Xan and has opened her book to read. Now and then she looks up to give him a sweet smile.)~
DO~ SetGlobal("SanXanA","GLOBAL",13) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN ~ You keep on learning, my love, even though it is clear that you can never make use of it at all.~
== BSANDR ~ You can never know, Xan. Maybe I will need just this piece of lore tomorrow or maybe some day in the far future or maybe never at all.~
== BXANNN ~ You know already more than any human I have ever known before. It is clear that your road will be much too short to ever make use of most of those things. It is all dead weight in your pretty head.~
== BSANDR ~ I am sure you do not want this pretty head to be empty. What would we do on those long evenings when you prefer not to be my lover but entangle me in clever discussions instead. Without my lore I would be defenceless against your brooding moods.~
== BXANNN ~ Do you not know enough already for those few rare evenings that are still granted to us, Sandrah.~
== BSANDR ~ (Sandrah puts her book into her backpack and embraces the elf.) This discussion clearly goes to you, my love. You have really convinced me that tonight is not one for talk but for deeds (Kisses him passionately). Come, Xan, I know a wonderful place nearby where one can forget all the knowledge of Toril and find the most ancient truth there is between man and woman.~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("San2Elves","GLOBAL",1)~ THEN BSANDR SanXanJet
~ Xan, my best elf, did you knew our new companion Jet'Laya before?~
DO ~ SetGlobal("San2Elves","GLOBAL",2)~
== BXANNN ~ That is a bit of a strange question, Sandrah, am I supposed to know every other elf on Toril. Would you know even every human in Waterdeep?~
== BSANDR ~ I admit it was a silly way to open a conversation. But to answer your question, yes I would know everybody in Waterdeep if you gave me some four hundred summers time for it.~
== BXANNN ~ (Smiles.) So what is the real topic you wanted to address, my lovely joker.~
== BSANDR ~ She is a priestess of Lathander. It is quite unusual for your kin to pray to the new sun god, isn't it?~
== BXANNN ~ I would agree to that, even if I have to remind you, that our kin is as widespread and diverted in their beliefs as your own. Probably you would find one or another elf following each god that is known on Toril. But, my friend, since I know for sure that you know that already, I assume your actual topic is my own belief.~
== BSANDR ~ I would lend you my ear if you started to talk about it, my dear friend, as I would listen to anything else you chose to tell me.~
== BXANNN ~ As a moonblade wielder my choices and hopes for any god in the pantheon are completely useless. My fate is in the blade without any hope for redemption.~
== BSANDR ~ Come here, my forlorn warrior, sit beside me this eve. I will take your hand and pass the time in talk of lovelier things until Lathander sends us his morning light once again.~
== BXANNN ~ While we do that I will tell you of the many times Selune lighted my nightly wakes and worries, and if any befalls me tonight you will need to bear them with me.~
== BSANDR ~ I will gladly do. (She kisses Xan and they continue to talk in a low voice while you slowly glide into a dreamless sleep.)~ DO ~ RestParty()~
EXIT


CHAIN
IF ~ Global("CentXan","GLOBAL",1)~ THEN BSANDR XanJon
~ Secretive elf, do you trust me as much as to share a bit of lore with me?~
DO ~ SetGlobal("CentXan","GLOBAL",2) SetGlobal("SanSpokeCent","LOCALS",1)~
== BXANNN  ~ How can I not trust the one that gives me so much every moment since I met her?~
== BSANDR ~ This mage's name, Jon Irenicus, I heard it before. He has done more with his magical powers than to punish this crazy loveblind murderess. Something much more evil and destructive.~
== BXANNN  ~ Her speaking of him sounded like he is a man you should not get into trouble with. But how am I to help you in that matter, Sandrah?~
== BSANDR ~ The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
== BXANNN  ~ Sandrah, I swear that I am hiding nothing from you, beloved. I have never heard the name before. What I can assure you, that he is not from Evereska. That makes the man even more suspicious.~
== BSANDR ~ In which way, Xan?~
== BXANNN  ~ If he is such a powerful mage and he has really misused his powers like you assume, then whatever he has done must be a crime so enourmous, that it is kept secret even among the elves themselves. I can only honestly proclaim to you that I do not even have a glimpse of information what or where he has done it.~
== BSANDR ~ Never mind, Xan. It was just curiosity that made me ask, because I had heard the name before and I was astonished to hear it in a place like this. Probably it does not concern us at all. Hopefully he will never cross our path.~
== BXANNN  ~ I pray for that. We have plenty of opponents that threaten poor <CHARNAME>'s life every day - and yours, and yours. I hate to see your downfall waiting for you in these traps and dungeons.~
== BSANDR ~ I am sorry I have brought the topic up. You are right, we have enough to consider already. <CHARNAME>, please let us move out of here before this place depresses us all completely.~
EXIT

CHAIN
IF ~ Global("SanXanA","GLOBAL",14) ~ THEN BSANDR Xandietog2
~ (Sandrah observes Xan who glances full of hatred at the moonblade in front of him.)~
DO~ SetGlobal("SanXanA","GLOBAL",15) RealSetGlobalTimer("SanXanT","GLOBAL",1800)~
== BXANNN ~ We will surely die together, and it will not be long, my sweetest love. What troubles me most is that we cannot even enter Arvandor hand in hand. ~
== BSANDR ~ I see an obligation in the fact that there is no afterlife for us. We must make the best out of the one and only life we have together. I am struggling hard to make that happen for us every day.~
== BXANNN ~ Yes, you do (He kisses her and a teardrop appears in her eye.). I cannot say it makes the coming parting easier. I curse the day this moonblade found me.~
== BSANDR ~ The moonblade is not to blame. Without it we would never have met, it is the blade that brought you on this mission to the Sword Coast where we have met.~
== BXANNN ~ And with all your knowledge you surely know that the blade will keep me from entering Arvandor to see you there once more. Because I am sure that you will be among the few humans that are granted the access to the realms of the elves in afterlife.~
== BSANDR ~ (Sandrah remains silent for a moment obviously unsure of her next words.) I know about your beliefs in becoming one with the moonblade in death as well as your legends of Arvandor.~
= ~ Xan, I respect you and your folk but I would prefer to talk about our future in the here and now.~
== BXANNN ~ Legends? Is it that to you? Is that the key to your cheerful attitude to life that has already started to infect me? Tell me truely, Sandrah, you do not believe in any afterlife or Arvandor?~
== BSANDR ~ Xan, you are granted such a long lifespan in THIS life already. Make something out of it. What is the purpose of talking all day about the NEXT life, if you do not even start to enjoy the one you have right here at hand. Am I not reason enough for you to love every moment of each day we have together.~
== BXANNN ~ You - you are right, my love. I am so sorry I have hurt you with my selfishness. You must feel unimportant compared to all my pondering about the moonblade and our doom. You have deserved better, my sunlight, my moonlight. (He takes her hand.) Let us enjoy this day. And the next. And whatever comes then. (He kisses her.)~
== BSANDR ~ (Sandrah has closed her eyes and responds to Xan's kisses. All the usual tension seems to vanish from the moonblade wielder as he leads her slowly out of your sight.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanXanPCL","GLOBAL",1)~ THEN BSANDR XanPCLuv1
~ Xan, my sweet elf, are you willing to talk to me about <CHARNAME>?~
DO ~ SetGlobal("SanXanPCL","GLOBAL",2)~
== BXANNN ~ I am willing to talk to you about everything as you are willing to give me everything. What is on your mind?~
== BSANDR ~ It is not so easy to start this conversation in the right way. Please be patient with your loving healer this time, will you Xan?~
== BXANNN ~ Maybe it is easier if I start it then. You have heard me calling her name in my dreams, didn't you?~
== BSANDR ~ I was watching by your side, yes, I was in sorrow about you, but I did not dare to wake you up. My healer's skills told me it would be better to let you finish your dream mission even if it was a cruel one. The catharsis is painful but also healing for the soul.~
== BXANNN ~ You did the right thing, sweet healer, you always do the right thing. Starting this talk now, even if maybe painful as well, also feels like the right thing again.~
== BSANDR ~ Will it help you - us - if you told me your dream?~
== BXANNN ~ I cannot really remember it, just the feelings that it left me. A feeling of deadly danger looming over <CHARNAME> and my duty to rescue her. And my fear of failing in that.~
== BSANDR ~ This is not so much a dream but a description of our current situation. With one little but important difference - you are not alone with your task. (She takes his hand to reassure him he is not alone.) And you are not the only one who loves <CHARNAME> and cares for her.~
== BXANNN ~ How can you understand what I cannot? How can you be so kind and caring and loving when you hear me calling her name in my sleep?~
== BSANDR ~ She is part of your mission which is part of your destiny. You cannot escape it. And you have not lost any of your love for me because of this. Your heart knows much more than your confused mind can take at the moment.~
== BXANNN ~ You are so patient - I have the feeling like you have already lived twice as long as me...~
== BSANDR ~ So be patient as well. Be confident in yourself and in what we have between us. Our common love for <CHARNAME> will make our own bond stronger, you will see. We talked about the right thing to do, I will tell you one now. Take me in your arms and kiss me.~
== BXANNN ~ Oh, my Sandrah...(His embrace is full of confidence and his kisses are both gentle and assured.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanXanPCL","GLOBAL",3)~ THEN BSANDR Xanphilfear
~ Xan, a question, my sweet elf?~
DO ~ SetGlobal("SanXanPCL","GLOBAL",4)~
== BXANNN ~ I am still amazed how you can be so without any fear with all the encounters we have to endure every day and the dangers threatening us constantly.~
== BSANDR ~ Xan, do not be foolish, I have my fears like any normal being. It is a feeling essential for survival.~
== BXANNN ~ Essential for survival?~
== BSANDR ~ Sure. It prevents us from foolishly running into any danger. It makes us stop and reconsider. Running away from a foe you cannot beat is sometimes the better strategy.~
== BXANNN ~ I am even more puzzled than before. You - you say such words, you who never seems to tremble regardless which foe we face in our hopeless endless fights.~
== BSANDR ~ Xan, fear is a warning signal from our experiences and we should carefully listen to it. But we should not let it rule ourself. If fear paralizes our actions, it becomes more dangerous than our enemies. But if it warns us to tread carefully and with caution, it makes us survive.~
== BXANNN ~ You are again wise past beyond your actual years. I am afraid I have seen too much of this slaughterhouse we wade through, my fears seem to overwhelm all rational thinking.~
== BSANDR ~ I have rarely encountered someone who's words betray his actions so constantly, my moonblade wielder. You talk about your fears and our doom constantly, that is right. But when the moment comes to move into action, I have never seen any look of panic in your eyes. You plunge into battle like a disciple of Tempus. I must know, because I have to take care of your wounds afterwards.~
== BXANNN ~ And you do so with much love and care, my heroine.~
== BSANDR ~ In the end your fears balance your courage - and that may be how you have survived more perils than the rest of our group combined. My hero.~
== BXANNN ~ I envy your talent to turn the darkest broodings into clear sunlight, my little dream catcher. Nothing seems to be able to darken your positive attitude ever.~
== BSANDR ~ Never say never, Xan. But let our love shine its light into the darkest corners of our mind and let us see that the fearsome monster there is but a little mouse if we face it together.~EXIT

CHAIN
IF~ Global("SanXanPCL","GLOBAL",6)~ THEN BSANDR Sanxanprot
~ Xan, I love to see you smile like this. My heart sings from it, if you only knew that and did it more often, my elf.~
DO ~ SetGlobal("SanXanPCL","GLOBAL",7)~
== BXANNN ~ I think today I have a bit of a reason. We all, and foremost <CHARNAME>, may have a chance to survive longer than I thought it possible.~
== BSANDR ~ Interesting, and what made you assume this viewpoint?~
== BXANNN ~ Not what, Sandrah, who. It was you and your sharpest weapon.~
== BSANDR ~ Poetic freedom, Xan, but a hammer is not exactly a sharp weapon.~
== BXANNN ~ Oh, sweetling, of course I am not talking of your hammer, I refer to your wit.~
== BSANDR ~ Thank you for the compliment, Xan. Anything in particular that gave you so much positive feelings?~
== BXANNN ~ You revealed so much insight into our faceless enemy today, I am amazed. Especially since I think that the enemy with all his many supporters has not an equivalent knowledge about <CHARNAME>'s group. I have the positive feeling that you and your knowledge and your ability to analyse the situation give us the advantage we so badly need against his power.~
== BSANDR ~ You are right. Our knowledge of who he is and where he is are trump cards in our hand. Also the fact that with flooding the mines we have dealt him a heavy and unexpected blow. We both must now caution our beloved <CHARNAME> to continue as carefully and coldblooded as we did until now.~
== BXANNN ~ If you are right and I am afraid you are, you always are, we are against a Bhaalspawn. The thought alone makes my blood freeze. But then you have shown me again that our knowledge and our caution make us almost invisible for him. We strike little blows that weaken him unexpectedly and irritate him. His blunt efforts have cost him without any gain.~
== BSANDR ~ You sound almost cheerful, Xan. I love to see you this way.~
== BXANNN ~ And I love you for making me feel this way, sweetheart.~
EXIT

CHAIN
IF ~ Global("XanDecide","GLOBAL",2) ~ THEN BSANDR Xantakepc
~ Xan, my elf, I have never seen you so very happy before, but you have avoided me all morning, just as if you do not want to share this happiness with me.~
DO ~ SetGlobal("XanDecide","GLOBAL",3) ~
== BXANNN ~ Oh, sweetest of counselors, if I could only...I want so to share it with you of all people on Toril, but then...You have made it possible for me and then at the same time it is you that will be the saddest woman in the Realms by this eve.~
== BSANDR ~ Xan, listen carefully. I will not be the saddest woman at all, just the opposite, my happy elf. To see you in this mood makes this day a happy day for me as well...~
== BXANNN ~ But if you had an idea of the reason...~
== BSANDR ~ Psst, I told you to listen. Only one thing can make a creature feel like you do - Love. You have finally come to terms with your struggling feelings and are now sure. You love <CHARNAME>.~
== BXANNN ~ But Sandrah, it is you with your never tiring care and love for me that has made that possible. And this is now how I thank you for it. How can you stand there, forgiving and smiling and pretend you are happy with me?~
== BSANDR ~ Xan, now you hurt me, assuming that I am a pretender. I am really happy with you because I love you and I love her. How could I not rejoyce when the two people I care for most found their love for each other.~
== BXANNN ~ And your own feelings shattered by an ungrateful...~
== BSANDR ~ Stop that immediately, Xan. If you are really grateful to me, then follow my advice and make <CHARNAME> happy and make her feel your love. I will be here for you and for her at all times.~
== BXANNN ~ You really mean...you are my friend after all...you...~
== BSANDR ~ I love you and I love her, Xan. And if it is that you two are together in your hearts and souls, how could I make selfish demands for myself. Love is not ownership, Xan. Promise me to be forever true to <CHARNAME> and I will be content. Now go to her, Xan. (She kisses the elf and then lightly gives him a shove to move in your direction.)~
EXIT

CHAIN
IF ~ Global("SanXanNashRet","LOCALS",1) ~ THEN BSANDR XanRetMin
~ (Sandrah has gently taken Xan's hand) Are bad memories coming back to you in this place, my elf?.~
DO ~ SetGlobal("SanXanNashRet","LOCALS",2) ~
== BXANNN ~ (Laughs) Bad memories, oh, no! Joyful ones, my dear.~
== BSANDR ~ Really?~
== BXANNN ~ In this hopeless place, having already given up and accepted my fate, I was rescued and found by you. A sequence of ever brighter days - and nights - started from that day onwards. This place reminds me again of how wonderful life is.~
== BSANDR ~ Life is wonderful, Xan?~
== BXANNN ~ By Rilifane, now I have a task at hand! I need to open this lovely girl's eyes to the beauties of Faerun and of life itself...~
== BSANDR ~ (Laughs heartily before she kisses Xan.) I will listen carefully, my teacher.~
EXIT


CHAIN
IF ~ Global("XanDecide","GLOBAL",5) ~ THEN BSANDR Xanpcmbl
~ Xan, my elf, you have changed quite a bit thanks to <CHARNAME>.~
DO ~ SetGlobal("XanDecide","GLOBAL",6) ~
== BXANNN ~ Sandrah, you know as well I as I do, that it is not only thanks to her. Actually both of us must thank you again and again for making it possible to happen.~
== BSANDR ~ It is wonderful to hear you say that, even if it is untrue. Love always find its way - I just did not stand in the way.~
== BXANNN ~ I know how useless it is to argue with you, my sweetling. The truth will nonetheless remain in my heart. ~
= ~ But today I must ask you for another favour. I know no other I can trust as much as you and no one who loves <CHARNAME> enough to do for her what I ask you to do - when I am gone in just a while.~
== BSANDR ~ You will leave us? Do you have a new task for Evereska?~
== BXANNN ~ Of course I talk about the sure doom that will befall me in just a little while, just now that I found this love - psst - do not try to convince me otherwise, you over-blind optimist. Listen, please, my wonderful friend.~
== BSANDR ~ Fine, I will listen. I promise to do for her whatever you ask me for, knowing for sure there will be no need for it.~
== BXANNN ~ You must prevent <CHARNAME> from stepping forward for the moonblade as my successor, I beg you, Sandrah.~
== BSANDR ~ She is not your kin, why should she do such a thing?~
== BXANNN ~ You know that I will become part of that blade after my death. She will try to be near me by wielding the blade that is partly me. And the pity is that the blade will surely accept her, as she has the purity of heart, the courage and the sense of duty that is required.~
== BSANDR ~ You have my word for it, my love. Do you think it is the best way to prevent it, if I took the blade myself then?~
== BXANNN ~ MY!! What have I done! To prevent one desaster I have created the next one...~
== BSANDR ~ (Smiles.) There is only one way to solve this dilemma, my sweet loving elf. We need to take even more care to keep you alive.~
== BXANNN ~ (Xan begins to smile back at Sandrah - some moments later he starts to laugh heartily.) Oh, Sandrah, my sweet moonlight and my sunlight, once again you chased those dark clouds away. Whatever your are words, I know I can trust you to take care. (Xan bends down to Sandrah and kisses her.) I love you, Sandrah, and I do not betray <CHARNAME> if I say that.~
== BSANDR ~ Nor do I if I tell you the same, Xan, I love you.~
EXIT

CHAIN
IF ~ Global("XanDecide","GLOBAL",7) ~ THEN BSANDR Xanpcmbl
~ Xan, my happy elf, thank you for sharing a bit of your time with me.~
DO ~ SetGlobal("XanDecide","GLOBAL",8) ~
== BXANNN ~ Sandrah, you know well that you are the initiator of all the happiness I now share with <CHARNAME>. I want to ask you today for a very special favour which is also something you hopefully enjoy to do for me.~
== BSANDR ~ Yes I will - whatever it is, the answer is already yes.~
== BXANNN ~ I have asked <CHARNAME> to speak the vow with me once our quest allows us to get to Evereska.~
== BSANDR ~ Oh, how wonderful, congratulation, Xan, and a content long life to you both.~
== BXANNN ~ Any other woman's reaction would be quite different from yours, but I know you truely speak from your heart. You do not envy her, your friend and lover.~
== BSANDR ~ Xan, she told me about your common reverie and what it means to her and to you. I could give you much, but not that final fulfillment for an elf's love. And only you can give the same to her. I will be forever grateful for what was mine to enjoy with you.~
== BXANNN ~ I felt that you would react like that, my loving friend. This is why I ask you to be by my side at that ceremony.~
== BSANDR ~ You mean to be something like your *best man* in that?~
== BXANNN ~ (Smiles.) Yes, similar. We elves elect a witness for the vow and that may be any dear friend, male or female. As I anticipate that <CHARNAME> would select Imoen at her side, I dearly beg you to be my witness.~
== BSANDR ~ I know what a great priviledge that means, Xan, with all your family and the community at the ceremony to ask me as an outsider to be your witness. (She embraces Xan and hugs him long.)~
== BXANNN ~ (Xan recovers with tears in his eyes.) I will forever love you, Sandrah, as much as an elf can ever love a human woman.~ DO ~ RestParty()~
EXIT

CHAIN
IF~Global("SanXanSurv","LOCALS",1) ~ THEN BSANDR XanSurvBG1
~ Xan, my sweet elf, we have come far through this quest, do you not think so?~
DO ~ SetGlobal("SanXanSurv","LOCALS",2)~
== BXANNN ~ We did and who would have ever thought we would really survive for so long. I have to admit that your part in it is not the smallest one.~
== BSANDR ~ Love is a very powerful motivation and largely underestimated in general. People think of wealth and greed and influence when they think about winners, only seldom of the pure heart in love.~
== BXANNN ~ It is a fragile plant that needs constant care - more than most people are willing to invest maybe. And still, for me it has opened again the vision of seeing Evereska again.~
== BSANDR ~ You came to the Sword Coast to investigate the iron crisis - long ago it seems, my love.~
== BXANNN ~ So long ago and with so much that has happened in between that I nearly forgot it.~
== BSANDR ~ In a way one could call your mission to be accomplished by now...~
== BXANNN ~ In a way - yes...report to my home...be send out for another hopeless mission...~
== BSANDR ~ ...this one was not so hopeless after all.~
== BXANNN ~ But will the next one be accompanied by a loving fearless counselor who wields the deadly hammer beside the useless Moonblade once more?~
== BSANDR ~ Has the Moonblade already required a new task of you, my love?~
== BXANNN ~ It hasn't...but it surely will call me to my doom in just a while.~
== BSANDR ~ Who knows. Maybe your mission is not finished yet. For my part, I have learned that my path will be with <CHARNAME> still further. The journey has just begun. As you have not received a new mission yourself, one can assume - and hope - you will stay with us still.~
== BXANNN ~ Oh, Sandrah, my sunlight, just to think of a day in another lighless dungeon away from you...no, better not think of it...~
== BSANDR ~ There is no reason to fear such, beloved elf, as we have just deducted. Come. (In her usual straightforward manner she has already taken the initiative to motion Xan into the direction of the chambers...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty()~
EXIT

CHAIN
IF~Global("SanXanFielD","LOCALS",1)~ THEN BSANDR XanFieldD
~ Why this look of horror, my Xan? Do you not enjoy to walk with me over these fields hand in hand? ~
DO~ SetGlobal("SanXanFielD","LOCALS",2)~
== BXANNN ~ Do you want me make believe these are the dales and meadows of Evereska, my sweet fool? Which lover would take his maiden out to a stroll on these Fields of Death? These are the perverted tricks that fate plays with us - let us be near a lovely one while we tread on the skulls of those who are lucky to have escaped this charade called life.~
== BSANDR ~ One can easily come to such dark associations given the bloody history of this area and the thousands who faced doom here.~
== BXANNN ~Ha, even you have to admit that, my inspiring optimist. Some things make even you shiver, Sandrah.~
== BSANDR ~That is not so, Xan, it was just the historian within me reminding us that large battles and many deaths have happened where we now stand. And my own eyes see these fields and hills where nature has restored its beauty and new life springs everywhere - and new hope.~
== BXANNN ~To be destroyed and burned with the next turning of the mighty wheel of fate - it does not last, it's so sad to know it's doomed already.~
== BSANDR ~Such may happen or maybe not. What is real is that you and me are standing here today in fields full of flowers with hope and love in our hearts. The death below my feet may have found peace or maybe not - at least they will not rob me of mine.~
== BXANNN ~You are such a blind fool even as you see everything much clearer than I do. So blind and so wonderful. (He grabs her almost violently and presses her fragile body against his.)~
== BSANDR ~ (She embraces him with the same vigour, squeezing him tightly and attacking him with her kisses.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

// Xan if No PC Love
CHAIN
IF~ Global("SanXanA","GLOBAL",16)~ THEN BSANDR XanPCLuvM
~ Xan, are you willing to talk to me about your dreams?~
DO ~ SetGlobal("SanXanA","GLOBAL",17) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN ~ I am willing to talk to you about everything as you are willing to give me everything. What is on your mind?~
== BSANDR ~ It is not so easy to start this conversation in the right way. Please be patient with your loving healer this time, will you Xan?~
== BXANNN ~ Maybe it is easier if I start it then. You have heard me calling your name in my sleep, didn't you?~
== BSANDR ~ I was watching by your side, yes, I was in sorrow about you, but I did not dare to wake you up. My healer's skills told me it would be better to let you finish your dream mission even if it was a cruel one. The catharsis is painful but also healing for the soul.~
== BXANNN ~ You did the right thing, my healer, you always do the right thing. Starting this talk now, even if maybe painful as well, also feels like the right thing again.~
== BSANDR ~ Will it help you - us - if you told me your dream?~
== BXANNN ~ I cannot really remember it, just the feelings that it left me. A feeling of deadly danger looming over <CHARNAME> and you and my duty to rescue you. And my fear of failing in that.~
== BSANDR ~ This is not so much a dream but a description of our current situation. With one little but important difference - you are not alone with your task. (She takes his hand to reassure him he is not alone.) And you on the other hand need and have one who loves and cares for you.~
== BXANNN ~ How can you understand what I cannot? How can you be so kind and caring and loving when you also are with <PRO_HIMHER>?~
== BSANDR ~ <PRO_HESHE> is part of our mission which is part of our destiny. We cannot escape it. And you have not lost any of your love for me because of this. Your heart knows much more than your confused mind can take at the moment.~
== BXANNN ~ You are so patient - I have the feeling like you have already lived twice as long as me...~
== BSANDR ~ So be patient as well. Be confident in yourself and in what we have between us. Our common bond with <CHARNAME> will make our own bond stronger, you will see. We talked about the right thing to do, I will tell you one now. Take me in your arms and kiss me.~
== BXANNN ~ Oh, my Sandrah...(His embrace is full of confidence and his kisses are both gentle and assured.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanXanA","GLOBAL",18)~ THEN BSANDR XanphilfearM
~ Xan, a question, my moody elf?~
DO ~ SetGlobal("SanXanA","GLOBAL",19) RealsetGlobalTimer("SanXanT","GLOBAL",1000)~
== BXANNN ~ I am still amazed how you can be so without any fear with all the encounters we have to endure every day and the dangers threatening us constantly.~
== BSANDR ~ Xan, do not be foolish, I have my fears like any normal being. It is a feeling essential for survival.~
== BXANNN ~ Essential for survival?~
== BSANDR ~ Sure. It prevents us from foolishly running into any danger. It makes us stop and reconsider. Running away from a foe you cannot beat is sometimes the better strategy.~
== BXANNN ~ I am even more puzzled than before. You - you say such words, you who never seems to tremble regardless which foe we face in our hopeless endless fights.~
== BSANDR ~ Xan, fear is a warning signal from our experiences and we should carefully listen to it. But we should not let it rule ourself. If fear paralizes our actions, it becomes more dangerous than our enemies. But if it warns us to tread carefully and with caution, it makes us survive.~
== BXANNN ~ You are again wise past beyond your actual years. I am afraid I have seen too much of this slaughterhouse we wade through, my fears seem to overwhelm all rational thinking.~
== BSANDR ~ I have rarely encountered someone who's words betray his actions so constantly, my moonblade wielder. You talk about your fears and our doom constantly, that is right. But when the moment comes to move into action, I have never seen any look of panic in your eyes. You plunge into battle like a disciple of Tempus. I must know, because I have to take care of your wounds afterwards.~
== BXANNN ~ And you do so with much love and sweet care, my heroine.~
== BSANDR ~ In the end your fears balance your courage - and that may be how you have survived more perils than the rest of our group combined. My hero.~
== BXANNN ~ I envy your talent to turn the darkest broodings into clear sunlight, my little dream catcher. Nothing seems to be able to darken your positive attitude ever.~
== BSANDR ~ Never say never, Xan. But let our love shine its light into the darkest corners of our mind and let us see that the fearsome monster there is but a little mouse if we face it together.~EXIT

CHAIN
IF~ Global("SanXanSurvWit","LOCALS",1)~THEN BSANDR SanxanprotM
~ Xan, I love to see you smile like this. My heart sings from it, if you only knew that and did it more often, my elf.~
DO ~ SetGlobal("SanXanSurvWit","LOCALS",2) RealsetGlobalTimer("SanXanT","GLOBAL",500)~
== BXANNN ~ I think today I have a bit of a reason. We all, and foremost <CHARNAME>, may have a chance to survive longer than I thought it possible.~
== BSANDR ~ Interesting, and what made you assume this viewpoint?~
== BXANNN ~ Not what, Sandrah, who. It was you and your sharpest weapon.~
== BSANDR ~ Poetic freedom, Xan, but a hammer is not exactly a sharp weapon.~
== BXANNN ~ Oh, sweetling, of course I am not talking of your hammer, I refer to your wit.~
== BSANDR ~ Thank you for the compliment, Xan. Anything in particular that gave you so much positive feelings?~
== BXANNN ~ You revealed so much insight into our faceless enemy today, I am amazed. Especially since I think that the enemy with all his many supporters has not an equivalent knowledge about <CHARNAME>'s group. I have the positive feeling that you and your knowledge and your ability to analyse the situation give us the advantage we so badly need against his power.~
== BSANDR ~ You are right. Our knowledge of who he is and where he is are trump cards in our hand. Also the fact that with flooding the mines we have dealt him a heavy and unexpected blow. We both must now caution <CHARNAME> to continue as carefully and coldblooded as we did until now.~
== BXANNN ~ If you are right and I am afraid you are, you always are, we are against a Bhaalspawn. The thought alone makes my blood freeze. But then you have shown me again that our knowledge and our caution make us almost invisible for him. We strike little blows that weaken him unexpectedly and irritate him. His blunt efforts have cost him without any gain.~
== BSANDR ~ You sound almost cheerful, Xan. I love to see you this way.~
== BXANNN ~ And I love you for making me feel this way, sweetheart.~
EXIT

CHAIN
IF~ Global("SanXanA","GLOBAL",20)~ THEN BSANDR XangodsM
~ Xan, a question, my moody elf?~
DO ~ SetGlobal("SanXanA","GLOBAL",21) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN ~ Your knowledge about the history of Faerun is deeper than that of any human I have encountered ever. Including the history or rather the tales about the races that were before us, and the development of the Gods themselves.~
== BSANDR ~ A topic of interest to you as well, Xan.~
== BXANNN ~ It is not astonishing for me, as I follow a spawn of a dead evil god to his doom, accompanied by the most lovely of...relatives to...~
== BSANDR ~ Xan, Xan, with all your knowledge, you must know to keep me out of those considerations. I am human and I am the descendent of humans - and nothing else.~
== BXANNN ~ Your knowledge of the Realms and your knowledge of the Gods and the Weave goes deeper than what anyone could get out of studying dusty parchments. You natural ability to assimililate magical powers go beyond the skills of a priestess, even a high priestess of Mystra.~
== BSANDR ~ There is nothing like a ...~
== BXANNN ~ I was sure you would deny all of this, Sandrah, and maybe you stubbornly refuse to see or admit the obvious.~
== BSANDR ~ But you see it, Xan?~
== BXANNN ~ I see you are not doomed like the rest of us, you evolve to a destiny that you have inherited from ancestors as old as the races on Faerun.~
== BSANDR ~ With every sentence you become more and more mysterious, Xan. What are you referring to? My grandparents, my father?~
== BXANNN ~ Those and the long line that have been before them in your bloodline...Enough! I will not dwell on the topic any longer...it is...we must wait and see.~
== BSANDR ~ Whatever, my lover, as I am not doomed then just hold my hand to be safe as well.~
EXIT

CHAIN
IF~ Global("SanXanA","GLOBAL",22)~ THEN BSANDR XanMBM
~ Xan, your concern today seems to be a different one? Do you want to talk about it?~
DO ~ SetGlobal("SanXanA","GLOBAL",23) RealsetGlobalTimer("SanXanT","GLOBAL",2000)~
== BXANNN ~ Today I must ask you for another favour concerning <CHARNAME>. I know no other I can trust as much as you and no one who loves <CHARNAME> enough to do for <PRO_HIMHER> what I ask you to do - when I am gone in just a while.~
== BSANDR ~ You will leave us? Do you have a new task for Evereska?~
== BXANNN ~ Of course I talk about the sure doom that will befall me in just a little while, just now that I found this love - psst - do not try to convince me otherwise, you over-blind optimist. Listen, please, my wonderful friend.~
== BSANDR ~ Fine, I will listen. I promise to do for <CHARNAME> whatever you ask me for, knowing for sure there will be no need for it.~
== BXANNN ~ You must prevent <CHARNAME> from stepping forward for the moonblade as my successor, I beg you, Sandrah.~
== BSANDR ~ <CHARNAME> is not your kin, not of Evereska, why should <PRO_HESHE> do such a thing?~
== BXANNN ~ You know that I will become part of that blade after my death. <CHARNAME> will try to preserve me by wielding the blade that is partly me. And the pity is that the blade will surely accept, as <PRO_HESHE> has the purity of heart, the courage and the sense of duty that is required.~
== BSANDR ~ You have my word for it, my love. Do you think it is the best way to prevent it, if I took the blade myself then?~
== BXANNN ~ MY!! What have I done! To prevent one desaster I have created the next one...~
== BSANDR ~ (Smiles.) There is only one way to solve this dilemma, my sweet loving elf. We need to take even more care to keep you alive.~
== BXANNN ~ (Xan begins to smile back at Sandrah - some moments later he starts to laugh heartily.) Oh, Sandrah, my sweet moonlight and my sunlight, once again you chased those dark clouds away. Whatever your words are, I know I can trust you to take care. (Xan bends down to Sandrah and kisses her.) I love you, Sandrah, and I do not betray <CHARNAME> if I say that.~
== BSANDR ~ Nor do I if I tell you the same, Xan, I love you.~
EXIT


//Yeslick
CHAIN
IF~ Global("SanYesl","GLOBAL",2)~ THEN BSANDR SanYesl1
~ It is now the forth time since dawn that you give me that inquisitory look once again, Yeslick.~
DO ~ SetGlobal("SanYesl","GLOBAL",3) RealSetGlobalTimer("SanYeslTa","LOCALS",3000) ~
== BYESLI ~ Nay..I meant, yeah, I's puzzled 'bout your likes quite a bit.~
== BSANDR ~ Is that so? I know your dwarf women do not occupy themselves in our business being clerics and fighters like we two. But then you are long enough in our Realms to have encountered girls like me.~
== BYESLI ~ Missed the point, wise gal, like was t'be expected. 'tis not ya occupation but the heritage of yours that makes me dwindle. That and the strange thing that ya don't live up to it.~
== BSANDR ~ That would be a bad thing if it were true, Yeslick. I try to follow the ways of my father Elminster and my grandmother Midnight as best as I can. Give me a bit of credit for being still young and therefore in my apprenticeship right now.~
== BYESLI ~ Hah, there it is, the lying and the cunning!!! Apprentice you call yourself - you're the strongest fighter and fiercest cleric mine ol' eyes ever spotted!! And ya pretty well left out the spot of your heritage that I was r'ferring to.~
== BSANDR ~ Oh, my, now I start to see what enrages you, good dwarf. Your hatred against Cyric of whom you think of being part of my bloodline as well.~
== BYESLI ~ By Clangeddin, an' isn't that Madman's blood flowing in ya veins?~
== BSANDR ~ Like it does in my father Elminster as well. And would you hold any accusation against the mighty mage himself, tell me?~
== BYESLI ~ Ya got it right, gal. I'm blamin' yours father of nothin' and I observe ya own deeds...'n ya still alive an' not slain by my hammer - for now.~
== BSANDR ~ Fair enough, Yeslick. Just one thing for you to think about - my grandfather Cyric was a good-hearted and fearless human before Ao made him the mad god you despise. My father was sired by the human not by the god that he became later. This is the blood I have in me.~
== BYESLI ~ Mmmh, the blood of those who slay even Gods...the blood of those who raise to the Weave...We'll see what comes out of such roots...~
EXIT

CHAIN
IF ~~ THEN BSANDR SanYeslHea1
~ Because you did not do it yourself.~
DO ~ SetGlobal("SanHealyesl","GLOBAL",4) RealSetGlobalTimer("SanYeslTa","LOCALS",600)~
== BYESLI ~ Yeah, yeah, proves only you're able to heal...says nothin' 'bout ye motifs.~
== BSANDR ~ I had no intention to *proof* anything to anybody, Yeslick, I just do what a healer does when she sees the need for it.~
== BYESLI ~ Maybe or maybe not. Know that ma eyes are ever watchful to observe ye every move, grand daughter of Cyric.~
== BSANDR ~ (Laughs) That is fine for me, Yeslick. It means that I have a competent fighter as my personal bodyguard this way.~
== BYESLI ~ Or your personal executioner if ye fail the test, gal.~
EXIT

CHAIN
IF~ Global("SanYesl","GLOBAL",4)~ THEN BSANDR SanYesl2
~ Will I sleep savely guarded tonight, Yeslick, or need I fear to be stricken by your revengeful hammer?~
DO ~ SetGlobal("SanYesl","GLOBAL",5) RealSetGlobalTimer("SanYeslTa","LOCALS",3000) ~
== BYESLI ~ Nay, gal, by Clangeddin, never woulda think of killin' the worst foe in sleep. Not that I consider you to be one.~
== BSANDR ~ You have changed your mind about me?~
== BYESLI ~ Guess ye can put it that way, yeah. You did nothin' I could find disagreeable so far. Ye seem honest an' fearless - an', gal, you strike quite a blow with that yours hammer.~
== BSANDR ~ Too bad that I lost my bodyguard this way.~
== BYESLI ~ Nay ye haven't. Com'rads are there to look after each other and guard 'em. You've shown ye do for the others, you'll receive likewise from me.~
== BSANDR ~ Goodnight, Yeslick.~
== BYESLI ~ Goodnight, comrade gal.~
DO~ RestParty()~ EXIT

CHAIN
IF~~THEN  BSANDR SanYeslElm
~ I do not see you hurt on the outside, Yeslick, so your need for help must be a different one than for my healing skills.~
DO~ SetGlobal("SanYeslElmi","GLOBAL",3)~
== BYESLI ~ Yeah, see, with that father of yours, now that I encountered him in real...See. he's the archfiend's own son and still...~
== BSANDR ~ Just as I am the archfiend's own granddaughter and still...~
== BYESLI ~ Gal, I knew ye would get the drift of it. Another point for ye...Eya, what I try t'say, 'tis maybe my impression of whatcha are or have ta be from yours blood was all wrong.~
== BSANDR ~ Yeslick, you are following <CHARNAME> and you see how <PRO_HESHE> acts despite the blood heritage. Whatever your understandable grudge against Cyric is, it is what his followers have done in his name, nothing that you have encountered from him directly.~
== BYESLI ~ The acts of the gods are what they do and what is done in their name, see. If his guys do it wrong he shoulda set out 'n stop ' crush 'em. right gal?~
== BSANDR ~ Sometimes I think, that we cannot attach our mortal values of good or bad - right or wrong - to the acts of the gods, Yeslick. The human Cyric, my grandfather Cyric, was neither a bad man nor a madman. When Ao made him a god that must have done something to his *character*, if gods have such a thing. Why such a god like the Prince of Lies exists is beyond my limited comprehension .~
== BYESLI ~ Mhmhmh, food fa thought, gal, I admit. Ye say that such a god serves a purpose - ha, maybe just as a bad example...and why is there a God of Murder needed? I dunno...~
== BSANDR ~ I do not know the answers either, my friend. What counts for me that you do not judge <CHARNAME> or me by the heritage in our blood but by the deeds and words you witness from us yourself.~
== BYESLI ~ So be it, gal 'n' friend o' mine. Ye both have done much to deserve this dwarf's respect. (Yeslick has seized Sandrah's hand and with an elegant bow places a kiss on her hand.) Onward, to new deeds, m'lady!~
EXIT

// Tiax

CHAIN
IF ~ Global("Santiax","LOCALS",1)~ THEN BSANDR SanTiax1
~ (Sandrah watches Tiax suspiciously as the gnome approaches her.) ~
DO ~ SetGlobal("Santiax","LOCALS",2) RealSetGlobalTimer("SantiaxTa","LOCALS",1600) ~
== BTIAX~ Even you will bow to the greatness of Tiax..eh..of Cyric - proud, over-proud priestess.~
== BSANDR ~ I do not even bow to my own goddess and she surely never bowed to Cyric.~
== BTIAX~ Hey, hey, she was his wife, his mate...fine, maybe she did not bow to him, but she followed him for sure...~
== BSANDR ~ Actually it was her that was leading their common operations, even if in love they were equals.~
== BTIAX~ Hurray, take this as an omen of Cyric...or maybe as one of Mystra, it should not matter, as long as you support my rising to rule, like your Goddess supported Cyric.~
== BSANDR ~ (Mumbles.) For the benefit of <CHARNAME> - I must find a way to cure this gnome's madness...~
EXIT

CHAIN
IF ~ Global("Santiax","LOCALS",3)~ THEN BSANDR SanTiax1
~ ...is utterly absurd, Tiax!~
DO ~ SetGlobal("Santiax","LOCALS",4) RealSetGlobalTimer("SantiaxTa","LOCALS",1600) ~
== BTIAX~ Why? You are his granddaughter, his heiress...~
== BSANDR ~ I am the granddaughter of the adventurer Cyric. My heritage goes back to the man, when he was still in his human form and before he was elevated by Ao to godhood. I am not the granddaughter of your mad god, Tiax.~
== BTIAX~ Blablabla...what is the use of that detail, Sandrah. You are of HIS blood, and that means that fate has sent me to your side as your natural companion so we both can rise in Cyric's name to his heritage...~
== BSANDR ~ God's have no heirs, Tiax. Sometimes an ursupator claims their power and domain, but that is a different story.~
== BTIAX~ Idiotic! The scheme is so clear, even a female must be able to see it - you and me, Cyric and Mystra. We will rule.~
== BSANDR ~ Tread careful Tiax, neither of those gods may like your rising to their realm.~
== BTIAX~ Baah, Cyric wants Tiax to rule. You should pray sometimes, priestess, then your goddess will surely tell you she wants you to follow her.~
== BSANDR ~ I am already following her, Tiax, as well as the way set out by the woman Midnight she had been before.~
== BTIAX~ Then how can you be so blind, Sandrah. If you follow Midnight - see what became of her, hehe, she rules, Cyric rules, Tiax will rule - The logic is infailable - Sandrah will rule.~
EXIT

CHAIN
IF~~ THEN BSANDR Sanhealtiax
~ Then all of our party will rise to rule, Tiax, as my healing skills are not limited to you alone.~
DO~SetGlobal("SanHealtiax","GLOBAL",5)~
== BTIAX~ We will use the slaves as long as they serve our purpose. If you see to it that they are fit to support us that is a good thing, my heart. Guess that's how Midnight helped along Cyric in the old days.~
== BSANDR~ (Sigh) Am I this mad gnome's lover by now already...?~
EXIT


//Kivan

CHAIN
IF ~ Global("Kivshil","GLOBAL",1) ~THEN BSANDR ImoTest
~  Kethvan - the 'forest wind'. A name like a poem.~
DO ~SetGlobal("Kivshil","GLOBAL",2) SetGlobal("PKivshil","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ I never heard anybody say my name like that since I left Shilmista. One does not get that pronounced right just from reading, Sandrah. Have you really been to my home then - few humans are ever granted admission?~
== BSANDR ~ My father is one of them, Kivan. He once took me with him, and the elves did not protest agains the little girl I was back then. They even showed me around a bit, they are very proud of Shilmista. ~
== BKIVAN ~ *sighs* Shilmista is the most beautiful place in the world...What do you think, melamin?~
== BSANDR ~ It is indeed very special. You must forgive me, I was just a child then and everything appeared to me like in a fairy tale. But I liked it as a visitor.~
== BKIVAN ~ You sound a bit reserved. But you must have been all over Faerun and seen so much. It must be hard to impress you with something.~
== BSANDR ~ It is very different whether you are just a passing visitor in a place or whether you call that place home. In Shilmista, I felt more like a spectator than any place else. I could not imagine that real people have real everyday lives in such a place.~
== BKIVAN ~ Then in some way you have felt it right, melamin, it is indeed no place for the profane things in life, it is our haven, our dream....sorry, let us follow the others. ~
= ~ (Kivan and Sandrah follow the group side by side for a while without the necessity for further words.)~
EXIT

CHAIN
IF ~ Global("Kivshil","GLOBAL",3) ~ THEN BSANDR SanKivInitial
~ Kivan, I know it is silly to ask if you are awake. I know about the elves' reverie, at least in theory - I have never known an elf privately enough to experience it.~
DO ~ SetGlobal("Kivshil","GLOBAL",4) SetGlobal("PKivshil","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ You are not one for idle chatter, Sandrah, so I will forgive you these clumsy opening lines.~
== BSANDR~ You really found them clumsy? It hurts me, Kivan, I am known for my eloquent conversation on all the important social events in the big towns. ~
== BKIVAN ~ (Smiles.) Eloquent indeed, Sandrah, I just found myself caught in your trap.~
== BSANDR~ Which is?~
== BKIVAN ~ You entangled me already in your conversation and lead me away from the thoughts I was having.~
== BSANDR~ Then I will guide you back to them now again, but this time you will not be alone facing the loss and the void. ~
== BKIVAN ~ What do you think you know about this?~
== BSANDR~ About your own personal one - nothing. An elf I knew once told me that you relive memories during the reverie in a very life-like, vivid way. It does not need much observation to see yours are what we humans would call nightmares.~
== BKIVAN ~ Deheriana is mela en'coiamin... the love of my life. It is the loss I morn.~
== BSANDR~ You say *She is*. ~
== BKIVAN ~ Humans would call her dead. But elves do not die. They venture from this being. She waits for me to join her in Arvanaith. ~
== BSANDR~ We all need to remember our past, our desires and those who have departed.~
== BKIVAN ~ But not all have lost the one who trusted them in the way I did. I must fulfill my vow to Shevarash before I can depart to join her.~
== BSANDR~ Kivan, I spent all my life until recently with a man who lives beside and with his dead mela en'coiamin. I know about those beasts on Toril who stay single after losing their mate.~
== BKIVAN ~ You know a lot for a young girl, I saw that already. You will never be accused of idle chatter by me. - Good night, Sandrah, you are no elf, you need your sleep to fight by my side again tomorrow.~
== BSANDR~ Good night, Kivan.~
== BKIVAN ~ *Kivan sits long beside Sandrah's side after she has closed her eyes.*~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~EXIT

CHAIN
IF ~ Global("Kivshil","GLOBAL",5) ~ THEN BSANDR SanKivIn2
~ (Kivan has purchased some apples from a merchant and distributes them among the group. He hands the last one to Sandrah, remaining silently at her side afterwards.)~
= ~ Delicious and healthy, a ranger's gift. - You want to talk about the man I know who shares a fate like yours, Kivan.~
DO ~ SetGlobal("Kivshil","GLOBAL",6) SetGlobal("PKivshil","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~  Your father, melamin?~
== BSANDR~ Yes, you are a good observer.~
== BKIVAN ~  You are very close to him, that is easy to see. Like one that had to grow early out of childhood with a single adult. I am glad, we had no children.~
== BSANDR~ Kivan, I was a very happy child with my father. He had his grief and his wrath but it did not blacken my days with him. I dearly love him for all he was and is.~
== BKIVAN ~  A happy man, even in his loss. I served Khalreshaar, the Lady of the Forest once, Sandrah. Now it is Shevarash, the Black Archer, I say my prayers to. Those who serve Shevarash lose the ability to feel pain, as all that was dear to them had been taken away. Your father had you, which may have saved him. ~
== BSANDR~  So, my friend, we need to find such a solution for you as well.~
== BKIVAN ~  When Tazok is dead, I will return to Shilmista to start my journey to Arvanaith. I am but a black arrow on Shevarash' bow. ~
== BSANDR~  My father was not granted the chance to avenge his beloved wife. The vile deed of the God of Murder was done from even beyond the murderer's grave. And still he gave meaning to his life, to my life and too many, many others throughout Faerun.~
== BKIVAN ~  * Kivan's face shows his deep thoughts, but also for the first time since you know him, he seems to be content, almost relaxed, as he silently walks beside Sandrah with his arm around her shoulder and a tender sidelook to her every now and then. They walk like that a bit behind the group for a long while.* ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("Kivkill","GLOBAL",2) ~ THEN BSANDR SanKivWar
~ Aah, Kivan, please, do you have a drop of water for me?~
DO ~ SetGlobal("Kivkill","GLOBAL",3) SetGlobal("PKivkill","GLOBAL",3) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~Here - Lle naa belegohtar... you are a mighty warrior, Sandrah.~
= ~ I must admit, I completely took you for a weekend warrior, in your shimmering chain mail and those robes that the merchants in Waterdeep may advertise as "adventurer's brown", "Cormanthyr green" or "road mud brown". (Kivan's laughter is hoarse, but, yes, it is really laughter.)~
== BSANDR~ That means quite something from a man with your experience. Not that it matters in case of an elf, but, how old are you, Kivan?~
== BKIVAN ~I had seen two hundred and twenty four summers before Deheriana was killed. I have not counted anymore afterwards.~
== BSANDR~ (Sandrah holds the waterbag to Kivan's lips and lets him drink in return.)~
== BKIVAN ~ But that was just yesterday, wasn't it, so what is there to count.~
== BSANDR~ Yesterday, Kivan, was the day when we rescued that little boy from the Ogres, remember. And the day before was when we discovered and prevented the bandit ambush on the caravan. A lot of travellers could have lost their lives. Remember, dear, none of these days was in vain.~
== BKIVAN ~ And the night before was the one we both saw this falling star, you remember that as well, Sandrah.~
== BSANDR~ Oh, yes my dear Kivan, and also the wish that I made upon it.~
== BKIVAN ~ Will you tell me?~
== BSANDR~ No.~
== BKIVAN ~ ??~
== BSANDR~ Sweet Kivan, with your two hundred and twenty four summers you should know, that those wishes on falling stars can only come true if you tell them to no one!~
== BKIVAN ~ Sandrah and being superstitious...(This time the bursting sounds from Kivan can no longer be mistaken. It is laughter - again.)~
EXIT

CHAIN
IF ~ Global("Kivkill","GLOBAL",4)~ THEN BSANDR SanKivWar2
~ (Sandrah walks silently beside Kivan a bit ahead of your group both scouting for possible dangers.)~
DO ~ SetGlobal("Kivkill","GLOBAL",5) SetGlobal("PKivkill","GLOBAL",5) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ Sandrah belegohtar... ~
== BSANDR~ You called me that before, a mighty warrior, but not with this sadness in the tone of your voice, my dear.~
== BKIVAN ~ I already loved and lost a mighty fighter in my life. Your capabilities may one day not be enough. We can never rely on fighting skills alone.~
== BSANDR~ Absolutely right, Kivan. Did I give you any reason to think that I did?~
== BKIVAN ~ (Kivan laughs) Oh, melomania of the thousand talents. Your resources will not be so easily drained. If your hammer fails you, you may revert to peanut throwing. (Laughs again)~
== BSANDR~I love this sound so dearly, Kivan. ~
== BKIVAN ~ Which sound? I do not hear anything.~
== BSANDR~Your laughter. It is wonderful to hear it again.~
== BKIVAN ~ My laughter...Somebody's magic must have returned it to me.~
== BSANDR~ Somebody's magic or somebody's...(Kisses Kivan quickly before she turns and moves away away, blushing like a little girl.) ~
== BKIVAN ~ (Mumbles to himself) Somebody's magic or somebody's stubborn love.~
EXIT

CHAIN
IF ~ Global("Kivshil","GLOBAL",7) ~THEN BSANDR SanKivIn4
~ (Whispers) Kivan...~
DO ~ SetGlobal("Kivshil","GLOBAL",8) SetGlobal("PKivshil","GLOBAL",8)~
== BKIVAN ~  Sandrah, you are wiser than young girls of your age normally are...~
==BSANDR~...and therefore I know what my two hundred and five summers older elf wants to tell me. And my answer is, I do not even try to replace her in your heart - I never could and I never would attempt to. She is yours forever and she is a large part of what you are. ~
== BKIVAN ~ So, if you know that already...~
==BSANDR~...it does not mean that what you feel for me and with me cannot be felt and not be part of your life - the life that is still happening. You are not dead and you will not die on the day you find Tazok. This day is now in a foreseeable future. You will live on afterwards, with her and your deed in your heart. And with the need for others by your side.~
== BKIVAN ~ All of that is so right. And it still cannot be.~
==BSANDR~My dear, do not think about what it cannot be - think of what it can be.~
== BKIVAN ~  I wish I had never met you, Sandrah. I mean, even in my pain and my hunger for revenge, my life was easy then. I am afraid of more pain and hurt to come - for you as well.~  
==BSANDR~Any human woman loving an elf will have to face the fact she will only be one episode in his life. It will be you to face pain and hurt once again.~
== BKIVAN ~ But what if it is worth it? If every moment before that end will be one I do not want to miss?~
==BSANDR~ I know of one who would not forgive you for not having tried at least to find that out. ~
== BKIVAN ~ I have told you so much of Deheriana and you listened so closely, Sandrah. Yes, she would not forgive me for missing what maybe is the second chance she has begged Khalreshaar to grant me.~
==BSANDR~ (This night you miss Sandrah's nearness - but you also rejoice while the look of Kivan's eyes, you saw before he lead Sandrah into the darkness of the nightly forest, follows you into your dream. A wonderful dream.)~ DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("KivNakD","GLOBAL",1) ~THEN BSANDR SanKivIn6
~ ...sure, I follow you wherever you lead me. I am neither afraid of the dark nor of you.~
DO ~ SetGlobal("KivNakD","GLOBAL",2) SetGlobal("PKivNakD","GLOBAL",2)~
== BKIVAN ~ Do you know how it feels to dance in a moonlight like this, naked and free, with nature and night talking to you in all their languages?~
==BSANDR~ You may think of me still as some city girl, but the largest part of my father's grounds was the wild garden over-looking the cliffs and the sea. All the animals there were my companions and friends.~
== BKIVAN ~ Amazing, once again, it explains what I have seen in you but could not name.~
==BSANDR~ I loved to go there, yes, nude and free, to feel the wind from the sea touching me everywhere, delivering messages from far away regions I would one day see. Carrying voices of people I might meet. Dwarfs, maybe even elves.~
== BKIVAN ~ Tell me more, Sandrah.~
==BSANDR~ I will rather show you than tell you. (Sandrah slowly drops the light gown she had put on after you had stopped for the rest. You see her slender feminine body enlighted by the pale light of the half moon. She takes some first hesitant steps to begin a dance to a music you cannot hear - maybe it is whispered in the wind.)~
== BKIVAN ~ (Now the tune becomes audible. Low, sad and longing. Sandrah's figures and movements become more confident as they follow the melody like in a trance. You suddenly recognize that it is Kivan who is humming this mesmerising tune.) ~
==BSANDR~ (Sandrah's eyes are closed and her lips are slightly parted as if awaiting a lover to join her dance.)~
== BKIVAN ~ (You see Kivan's muscular body now come out of the shade to join Sandrah. He has dropped his clothes completely as well. He starts to encircle her movements without ever touching her.)~
==BSANDR~ (Sandrah feels the presence of the naked elf. Without opening her eyes her movements react to his. He never touches her at all, just seems to direct her with his tune alone.)~
== BKIVAN ~ (A small cloud cuts out the moonlight for a moment. When the light appears again, the scene of the dance is vacated. The melody is gone as if it had never been. Has the whole scene maybe just been your imagination?)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanKivTaz","GLOBAL",1) ~THEN BSANDR SanKivTazd
~ (Sandrah has sat down beside Kivan and has silently removed the hunter's gloves from his hands. She gently moves her fingers along the bruises and scars of his battered hand.)~
DO~ SetGlobal("SanKivTaz","GLOBAL",2) SetGlobal("PSanKivTaz","GLOBAL",2) RealSetGlobalTimer("KivshilT","GLOBAL",880)~
== BKIVAN ~ It is in vain, Sandrah, no healer's skills can repair these fingers anymore. Tazok and his men did their job well that night. The only job they knew and could perform well.~
==BSANDR~ There is no real healing required here, Kivan. (She kisses the battered hand lightly.) You manage your bow and sword quite well with this hand. The healing has already come from your inside. It has you made go on and continue your live.~
== BKIVAN ~ It is not healing, you talk about, melamin, it is the strength that was provided by Shevarash to avenge Deheriana. Now the Black Archer is satisfied by Tazok's dead, he has no need for his tool anymore.~
==BSANDR~ My friend, we need to find another source of strength for you then.~
== BKIVAN ~ That will not be necessary anymore, as I told you before, my way is now to Arvanaith.~
==BSANDR~ Your way was always to Arvanaith, every elf's way is. But there may be well another two-hundred fourty and something years to be covered until you get there. At first, there is <CHARNAME>'s quest to finish. We need to find the one who hired Tazok for his deeds.~
== BKIVAN ~ You are right to remind me, this is an obligation that needs to be fulfilled. These old wounds again trouble me. (Kivan flexes his fingers.) I had been shooting more since I have joined this group, and the body protests by reminding me more avidly where it was broken and burnt. But I will not let it slow me, for our battles are the just ones. ~
==BSANDR~ (Sandrah has put Kivan's hand into her lap and starts to apply some cool smooth salve to the bruises. Kivan's eyes close to the gentle motions of Sandrah's fingers on the burned scars.) Healing needs to come from inside, melamin. (Her other hand, that is moist from the salve as well, has moved to Kivan's pointed ears in slow caress.)~
== BKIVAN ~ Aah, elves are very sensitive in this area.~
=~ (He whispers:) Cormlle naa tanya tel'raa - your heart is that of a lion. I never see you scared, not even by me. Can you be the source of strength I now require?~
==BSANDR~ You underestimate my healer's skills, my still unexperienced elf, I can heal more than just a few bruises or ressurect a fallen friend. (Her fingers now caress Kivan's closed eyelids, her mouth is close to Kivan's lips.)~
== BKIVAN ~ (He feels her breath close to his lips and opens his own in expectation.) Wisdom is no matter of age, let me taste your strength.~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanKivTaz","GLOBAL",3) ~THEN BSANDR SanKivTazL
~So what will happen, Kivan. What do we have to expect? Will some ship come out of Arvanaith and pick you up or something similar? ~
DO~ SetGlobal("SanKivTaz","GLOBAL",4) SetGlobal("PSanKivTaz","GLOBAL",4) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ We? Sandrah, my friend, that does not concern you.~
== BSANDR~It does not concern me? Are you for real, Kivan? Do you expect me to turn around and go and tell myself, *huh, so what? he is gone.* ~
== BKIVAN ~I, I- I admit I have not thought of this. I thought it would be clear. I kill Tazok and I go to Arvanaith. I am not sure how it will be achieved. But I feel you should not be here when it happens. ~
== BSANDR~As you say you do not know it yourself, then there is not a reason why we should not wait together.~
== BKIVAN ~What do you intend to do? ~
== BSANDR~ I sit here and wait with you. That is what friends are for. Wait with you for the ship, or the rainbow or the majestic eagle to come and take you away.~
== BKIVAN ~But that is impossible, you are no elf. You are not supposed to be here. You - you do not even believe in Arvanaith. You think that nothing will happen because it just does not exist for you. ~
== BSANDR~ This is the way it is for all of us that are not elves. We just have to carry on. Life is cruel to us. ~
== BKIVAN ~You are not very good at sarcasm, Sandrah. Your loving eyes give you away.~
== BSANDR~Will you really be so cruel as to send me away without knowing what really happens to you. Do you want me to spend the rest of my life imagining this and that and something else, just because you had not let me see it with my own eyes. Just to see it and accept it and have my peace.~
== BKIVAN ~ You are stubborn. ~
== BSANDR~Yes.~
== BKIVAN ~ mmh..~
== BSANDR~...~
== BKIVAN ~What now? ~
== BSANDR~I will not be a spoilsport and tell you how it will end.~
== BKIVAN ~So you know what is coming?~
== BSANDR~Nothing is coming, Kivan. This is not your fate. This is not what Deheriana intended for you. This is not why you survived and are still here on Toril. ~
== BKIVAN ~You mean it is my fate to have to endure on this plane here without her. Without the hope to see her ever again. Alone? ~
== BSANDR~You are not alone. ~
== BKIVAN ~No, I am not, you crazy, stubborn human girl, even if I wished I were. ~
== BSANDR~Then it is good that you do not really wish it. Now let us go, it is getting cold. <CHARNAME> is waiting for us yonder. (She takes Kivan's hand and he follows her without resistance towards your camp.)~
EXIT

CHAIN
IF ~ Global("CentKiv","GLOBAL",1)~ THEN BSANDR KivJon
~ Secretive elf, do you trust me as much as to share a bit of lore with me?~
DO ~ SetGlobal("CentKiv","GLOBAL",2) SetGlobal("SanSpokeCent","LOCALS",1)~
== BKIVAN  ~ How can I not trust the one that gives me so much every moment since I met her?~
== BSANDR ~ This mage's name, Jon Irenicus, I heard it before. He has done more with his magical powers than to punish this crazy loveblind murderess. Something much more evil and destructive.~
== BKIVAN  ~ Her speaking of him sounded like he is a man you should not get into trouble with. But how am I to help you in that matter, Sandrah?~
== BSANDR ~ The context in which I remember his name had to do with something done to an elf community. But like all these things, the elves hide it in the mist they love to surround what they consider their internal affairs.~
== BKIVAN  ~ Sandrah, I swear that I am hiding nothing from you, beloved. I have never heard the name before. What I can assure you, that he is not from Shilmista. That makes the man even more suspicious.~
== BSANDR ~ In which way, Kivan?~
== BKIVAN  ~ If he is such a powerful mage and he has really misused his powers like you assume, then whatever he has done must be a crime so enourmous, that it is kept secret even among the elves themselves. I can only honestly proclaim to you that I do not even have a glimpse of information what or where he has done it.~
== BSANDR ~ Never mind, Kivan. It was just curiosity that made me ask, because I had heard the name before and I was astonished to hear it in a place like this. Probably it does not concern us at all. Hopefully he will never cross our path.~
== BKIVAN  ~ I pray for that. We have plenty of opponents that threaten poor <CHARNAME>'s life every day - and yours, and yours. I hate to see your downfall waiting for you in these traps and dungeons.~
== BSANDR ~ I am sorry I have brought the topic up. You are right, we have enough to consider already. <CHARNAME>, please let us move out of here before this place depresses us all completely.~
EXIT

CHAIN
IF ~ Global("SanKevStay","LOCALS",1) ~ THEN BSANDR SanKevStay
~ Say, why do you continue to stay with <CHARNAME> after we have killed Tazok?~
DO ~ SetGlobal("SanKevStay","LOCALS",2) SetGlobal("PSanKevStay","LOCALS",2)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ (Kivan lies on his back in the grass gazing dreamily into the warm sun. Sandrah lies beside him with her head resting on his bare chest while he tenderly strokes her hair.)~
= ~ Hm, <PRO_HESHE> has taken me in when I was blindly following my revenge and has lead me onto a course where my own fate has become part of our overall concern. And mind, sweetheart, Tazok has been ressurected and my task is not yet done.~
== BSANDR ~ I see. Quite a list of reasons.~
== BKIVAN ~ (Kisses her forehead.) You are not trying to hear me say, my one and only reason to continue on this plane is the love of some silly little stubborn human girl, don't you?~
== BSANDR ~ It would not hurt me to hear it, if you would find the time to use a bit of nicer words, others than *silly* and *stubborn*. But, anyway, you are here and it is good.~
== BKIVAN ~ This time we will make sure Tazok will be dead and will stay dead.~
== BSANDR ~ Will you put a stake through his heart, like you do with a vampire, or something the same?~
== BKIVAN ~ Do you think I am cruel when I say, yes, I would if it is what Shevarash, the Black Archer, advises me as necessary to end this beast once and for all?~
== BSANDR ~ No, I would not call it cruel. It is no longer personal revenge for the one who tortured and murdered your mela en'coiamin, but it will be preventing a raging monster from roaming Toril in a bloody crusade. Sometimes such things must be done, like a healer must have the courage to cut a rotten limb before the whole body is contaminated from bad blood.~
== BKIVAN ~ It soothes me to hear these words from you. I know you do not issue them lightly but will be one to execute such a deed yourself if it is necessary. ~
=~ Now, melamina, let us look at this sunny bright day with other than these dark thoughts in mind. There is more to enjoy our life on Toril...~
== BSANDR ~ Like silly little stubborn human girls for example.~
== BKIVAN ~ Wonderful, steadfast, caring human girls, beautiful as the snow on the Spine of the World and a blooming apple tree in the gardens of Shilmista.~
== BSANDR ~ You can really find nicer words, Kivan, if one gives you the time. Nice, sweet and romantic. (She turns to face him and they end the conversation in a series of passionate kisses.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF~ Global("SanKivBow","GLOBAL",1)~ THEN BSANDR Kivbow
~ (Sandrah has taken Kivan in her arms and caresses his head while the elf is shaken with attacks of sobbing and mumbling elvish curses.)~
DO ~ SetGlobal("SanKivBow","GLOBAL",2)~ 
== BKIVAN  ~ So we are even betrayed of our revenge, these rascals just revived Tazok and he goes on with his bloodshed like before...~
== BSANDR ~ Ssssht. My love, it will all be corrected. These evil doers have no chance anymore. Their days are counted.~
== BKIVAN  ~ Sandrah belegohtar, will you join me when I renew my vow to Shevarash today?~
== BSANDR ~ Kivan, my life, no. No, this time we will not be blinded by revenge and destruction. This time we will cure you and us and the Sword Coast from this disease.~
== BKIVAN  ~ You will not...wait, yes...Sandrah I am listening to you, I know you keep a calm view and will set things right. Speak mellamina.~
== BSANDR ~ Look at it from the perspective of a healer, my elf. Tazok and this Imanel Silversword are just symptoms of the disease that has befallen the Sword Coast and now infects us with death and hatred. Sometimes a healer must cut deep to cure the disease at the very root. And this is what we must do now - together. You, me and <CHARNAME> and all that follow us.~
== BKIVAN  ~ (Kivan straightens and looks fiercly at the walls of the city.) That evil resides in there somewhere. I will follow my healer's guide to burn out the wound from any particle of its existence, so that the Sword Coast can become sane again.~
== BSANDR ~ ...and all those who have suffered by that plague. (She kisses Kivan intensively and then moves up to you.)~
=~ All those who have suffered by that plague, <CHARNAME>. (She takes your head with both hands and pulls you down to her warm and soothing lips.)~
EXIT

CHAIN
IF ~ Global("SanKivTaz","GLOBAL",5) ~THEN BSANDR SanKivSeeD
~Kivan, my sweetheart, are you looking at me so dreamily - or do you see another? ~
DO~ SetGlobal("SanKivTaz","GLOBAL",6) SetGlobal("PSanKivTaz","GLOBAL",6) RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ Your question is the answer already, my knowing and understanding healer. Truth is that I see both. Can you stand that truth, Sandrah?~
== BSANDR ~ I can and I have accepted it from the beginning. I do not even want you to loose her or forget her. She will always be within you and a part of you.~
== BKIVAN ~ Are you really so selfless and understanding, Sandrah?~
== BSANDR ~ I love you as you are and I am surely not jealous for someone who is gone. There is so much love in your heart, enough for me anytime. The fact that she will always be there as well only shows who you are Kivan, how much you care and that you never forget. It is exactly that devotion I so much admire in you.~
== BKIVAN ~ Long time ago you made me think about why Deheriana wanted me to continue on this plane for any other reason than to revenge her. A good friend tried to convince me that she wanted me to continue and seek another chance. I struggled to disagree but now I tend to think otherwise. Do you think she wanted me to find someone to take her place by my side?~
== BSANDR ~ No.~
== BKIVAN ~ But...~
== BSANDR ~ Have you not yet understood, my elf? I will not take *her* place. She will always be with you - with us. But I have found *my* place by your side, with her and not instead of her.~
== BKIVAN ~ Yes. Deheriana, I thank you for this. (He kisses Sandrah again and again.)~
EXIT

CHAIN
IF ~ Global("SanKivBtlAh","GLOBAL",1) ~THEN BSANDR SanKivSeeD
~There is a battle ahead today, my love. Be careful and have faith.~
DO~ SetGlobal("SanKivBtlAh","GLOBAL",2) SetGlobal("PSanKivBtlAh","GLOBAL",2)RealSetGlobalTimer("KivshilT","GLOBAL",800)~
== BKIVAN ~ My eyes will be on you. Cormlle naa tanya tel'raa. I have lost one strong spellcaster and fighter in my life. You know the price I have paid to risk it with another again. I will not survive it a second time.~
== BSANDR ~ It would be foolish to beg you not to have these thoughts clouding your mind. You have them and we will bare them. I will not be careless or foolish in battle, I want to taste your sweet lips again tonight. And I will.~
== BKIVAN ~ You are stubborn and you always get what you want. (He laughs) That gives me hope for the coming day.~
EXIT

CHAIN
IF ~ Global("San2ElvesK","GLOBAL",1)~ THEN BSANDR SanKivJet
~ Kivan, my best elf, did you knew our new companion Jet'Laya before?~
DO ~ SetGlobal("San2ElvesK","GLOBAL",2)~
== BKIVAN ~ That is a bit of a strange question, Sandrah, am I supposed to know every other elf on Toril. Would you know even every human in Waterdeep?~
== BSANDR ~ I admit it was a silly way to open a conversation. But to answer your question, yes I would know everybody in Waterdeep if you gave me some four hundred summers time for it.~
== BKIVAN ~ (Smiles.) So what is the real topic you wanted to address, my lovely joker.~
== BSANDR ~ She is a priestess of Lathander. It is quite unusual for your kin to pray to the new sun god, isn't it?~
== BKIVAN ~ I would agree to that, even if I have to remind you, that our kin is as widespread and diverted in their beliefs as your own. Probably you would find one or another elf following each god that is known on Toril. But, my friend, since I know for sure that you know that already, I assume your actual topic is my own belief.~
== BSANDR ~ I would lend you my ear if you started to talk about it, my dear friend, as I would listen to anything else you chose to tell me.~
== BKIVAN ~ I once believed in Khalreshaar, the Lady of the Forest, until I was forced to follow Shevarash. Today my hopes for any god in the pantheon are completely useless. My fate is on this plane now without any hope for redemption.~
== BSANDR ~ Come here, my forlorn warrior, sit beside me this eve. I will take your hand and pass the time in talk of lovelier things until Lathander sends us his morning light once again.~
== BKIVAN ~ While we do that I will tell you of the many times Selune lighted my nightly wakes and worries, and if any befalls me tonight you will need to bear them with me.~
== BSANDR ~ I will gladly do. (She kisses Kivan and they continue to talk in a low voice while you slowly glide into a dreamless sleep.)~ DO ~ RestParty()~
EXIT


CHAIN
IF ~ Global("SankivRab","LOCALS",1)~ THEN BSANDR SanKivSeeR
~ Look, Kivan, even here nature has found her way to establish her beauty and her creatures.~
DO ~ SetGlobal("SankivRab","LOCALS",2) SetGlobal("PSankivRab","LOCALS",2)~
== BKIVAN ~ Those poor rabbits must feel as lost and alone here as I do.~
== BSANDR ~ Oh, come on, sweetheart, do not get solemn. You are neither alone with me by your side, nor are you lost with your beautiful companion being able to show you everything you need in the city as you would do for me in the forest.~
== BKIVAN ~ An old rusty elf is no longer as flexible in his ways as you are, young rabbit. I see you at home in the city's bustle just the same as on a cool eve beneath the larchs. I envy you for your ability to feel at home wherever you are.~
== BSANDR ~ I think nature is everything that surrounds us and we are her children whereever we are. The druids are in error when they think only a lonely wood grove allows us such a perception. A sunset over the city's chimneys can be as beautiful as the sunrise over a lonely lake on the Spine of the World.~
== BKIVAN ~ You must know, as I am sure you have seen them both. With you at my side, Sandrah, I can imagine I will be able to feel the same everywhere.~
== BSANDR ~ That sounds promising. I prefer that to limiting ourselves to one choice only, my love.~
== BKIVAN ~ Then let us hurry. Show me the beautiful sides of *our* city!~
END
++ ~ *It is amazing to see your once moody elf companion gaining his new will to life at Sandrah's side. How you love her for her ability to create such small wonders.*~
EXIT

CHAIN
IF ~ Global("SankivRab","LOCALS",3)~ THEN BSANDR SanKivOutd
~ You seem to be more relaxed out here in nature again, sweetling, even though you put on quite a good fight with the city ways.~
DO ~ SetGlobal("SankivRab","LOCALS",4) SetGlobal("PSankivRab","LOCALS",4)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ It must have been your soothing presence that made me stand it, my love. Such a big city normally puts me more to unease.~
== BSANDR ~ Still there is a significant difference, something to be considered for the future.~
== BKIVAN ~ You do not need to set your stays in the city aside because of me, Sandrah. As you have seen, with you by my side I can manage everything.~
== BSANDR ~ That is good to know, as we will eventually do that, like shopping for things we cannot get in the woods and such. Maybe meet some old friends from time to time, buy a book, eat out at a restaurant.~
== BKIVAN ~ Mmm?~
== BSANDR ~ Is it not handy that I am quite flexibel, my elf? I can live in the city or outside, although I would prefer some view of the sea. But a lonely lake would do just as well.~
== BKIVAN ~ I once found a vacated cabin by a sunlit lake, with a veranda to sit in the evening sun, extended woodland for hunting nearby, a silhouette of mountains in the distance.~
== BSANDR ~ (She has closed her eyes, leaning against Kivan's shoulder.) I can see it, darling, yes, that is the place. I am sure a ranger like you finds the path to it again.~
== BKIVAN ~ Sure, sweetheart. So what is this all about then?~
== BSANDR ~ One day, Kivan, this quest will be done. And as you have missed your ship to Arvanaith by now, we need to think about our place here on Toril for that time. It is good to know there will be one that we both will love.~
== BKIVAN ~ I have the feeling that any objection against my stubborn little human lovebird will be utterly useless. (He lifts her chin with his forefinger to kiss her.)~
EXIT

CHAIN
IF ~ Global("SankivRab","LOCALS",5)~ THEN BSANDR SanKivOut2
~ (Sandrah gently pulls Kivan down into the grass beside her where she has opened her large book at one of the pages displaying a map.)~
DO ~ SetGlobal("SankivRab","LOCALS",6) SetGlobal("PSankivRab","LOCALS",6)RealSetGlobalTimer("KivshilT","GLOBAL",1200)~
== BKIVAN ~ Do you want to show me something, my heart.~
== BSANDR ~ No, Kivan, I want you to show ME something. Where approximately would our future home, that cabin at the lake, be found?~
== BKIVAN ~ Eh, mmh...(Kivan looks at the book irritated, then at Sandrah), well...~
== BSANDR ~ What is it, Kivan? Please, tell me.~
== BKIVAN ~ Oh, Sandrah, I am sorry, but...~
== BSANDR ~ Yes?~
== BKIVAN ~ It is just - I have no idea about maps. As a ranger I navigate with patterns in the trees, the stars, the wind, even the smells and the sounds of a landscape. I cannot match these impressions to what is shown on your page.~
== BSANDR ~ Darling, close your eyes and tell me of the journey as if we would take it. I will follow your words with my finger on my map.~
== BKIVAN ~ We will follow the Chionthar for six days walking at good pace...~
== BSANDR ~ We will need a stop from time to time, I get so easily hungry for you, sweet tease.~
== BKIVAN ~ Agreed, seven days. We will pass through the greenlands off from Iriaebor without touching the village. We will start to smell the new freshness in the air cleansed by Sunset Mountains. The fir needles soften our steps as we continue through the woods moving slightly upwards but not very steep. Birdsong surrounds us and a shy deer observes us from a safe distance. No animal will flee us, as they know no hunters here.~
== BSANDR ~ The journey is already worth it alone, my ranger.~
== BKIVAN ~ You seem to really feel it already. But we are almost there, as the woods open to a sunlit meadow that slightly slopes down to the lake. Halfways between the wood's edge and the shore you see our cabin, it looks so natural as if it was not built there but has somehow grown there as part of the landscape. - So where are we on your map?~
== BSANDR ~ Exactly here.~
== BKIVAN ~ But there is nothing?~
== BSANDR ~ Then it must be the right place. A place of our own, not known to the outsiders and not charted on any map, just like you described it.~
== BKIVAN ~ Who would have thought how fine we match, my sweetheart...~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~Global("SanTamoko","LOCALS",3)~ THEN BSANDR SanKivRev3
~ My love, your words to <CHARNAME> about revenge have warmed my heart.~
DO ~ SetGlobal("SanTamoko","LOCALS",4)~
== BKIVAN ~ They do not mean that I will not kill Tazok with my own hands and tear out his black heart to assure no one can ressurect him again.~
== BSANDR ~ I agree that it is a deed that must be done. Like a surgeon's clean cut to remove the source of a disease. It is our duty to do this act but it is not our personal revenge or lust for blood that guides our hands this time.~
== BKIVAN ~ It feels good to be the lonely avenger no longer, but at the side of a warm-hearted loving companion who understands the necessity of what needs to be done to close this chapter of our life.~
== BSANDR ~ Once the ghosts of the past are conquered, the light of the new day is waiting for us, Kivan.~
== BKIVAN ~ I yearn for it. With you, *my love of this plane*.~
EXIT


// Faldorn

CHAIN
IF ~ Global("SanFalB","GLOBAL",2) ~ THEN BSANDR SanFalHat
~ Is anything wrong with me, Faldorn?~
DO ~ SetGlobal("SanFalB","GLOBAL",3)~
== Bfaldo ~ Everrithing is wrrong with you and false. You have the stink of the city's backwater deep in yourr expensive dresses and made up hairdo.~
== BSANDR ~ Is that my crime, to be born in a city? That alone makes me hateful?~
== Bfaldo ~ You cannot change wherre you were borrn. But you adore the style and you keep yourr city ways even here at the bossom of the Great Mother, defiling her naked loins with your filth.~
== BSANDR IF ~ InMyArea("Pellig") ~ THEN~ My friend Pelligram seems to think otherwise. She is not my thrall, she follows me out of love.~
== Bfaldo IF ~ InMyArea("Pellig") ~ THEN~  Grrr. Herr feelings I can read like you read yourr books. You speak the truth. You arrre family to her. Strrange.~
== BSANDR IF ~ !InMyArea("Pellig") ~ THEN ~ The part of our house in Waterdeep I loved most was the wild garden. The animals there were my best friends.~
== Bfaldo IF ~ InMyArea("Pellig") ~ THEN ~  Yourr feelings I can read like you read yourr books. You speak the truth. You have respect forr the Great Mother. Strrange.~
== BSANDR ~ Do you really think that the way for all humans is to live in the wild again? Exploiting nature is vile but making use of natural resources to your need is what all children of the Great Mother do to survive. People who have a respect for their fellow beings can balance their demands with nature.~
== Bfaldo ~ Who does that? The farrmer destroys the wood and exploits the soil. He is a vampirrre sucking the Great Mother's vein ripped open with his plow.~
== BSANDR ~ The farmer feeds his family and other's who do not work the land themselves. The same way the hunter kills a deer for food. Just like a wolf does as well.~
== Bfaldo ~ And those that dig into the verry intestines of the Mother with their shovels to tear the orrre from her bleeding system - those bandits in the mine over there?~
== BSANDR ~ We are here to destroy them.~
== Bfaldo ~ Grrr. Let's stop talk and go kill them then.~
EXIT

// Eldoth
CHAIN
IF ~ Global("SanEldoDisl","LOCALS",7)~ THEN BSANDR EldothRuma
~ This is surely not your size, Eldoth!~
DO ~ SetGlobal("SanEldoDisl","LOCALS",8)~
== BELDOT~ (Holds one of Sandrah's expensive undershirts in his hand which he has taken from her backpack during the short break you called to refresh your party.)~
=~ I must admit it looks pretty luxurious - and if I might say, expensive.~
== BSANDR ~ Then it would be better to put it back before it can take any damage for which you would have to compensate.~
== BELDOT~ Hey, hey, I am just interested in my new comrades and like to get to know them a bit better.~
== BSANDR ~ By spying on their underware? Interesting.~
== BELDOT~ Say, all your equipment and clothes look like the best of qualities, it must be worth a fortune what you carry around on the road.~
== BSANDR ~ And you are volunteering to defend it from any thieves or such? Or are you one yourself?~
== BELDOT~ No insults please, lady rich girl. Say, why is one like you not at home in her estate where a well educated lovely young lady belongs? Maybe you are here trodding the dusty road with your hammer 'cos you're the thief yourself.~
== BSANDR ~ Do I look like one to you - well you must know about disguises, even if coming on as a bard is a great risk if one sings as terrible as you do.~
== BELDOT~ Be silent, it's not like your opinion is required on that matter. It would suit you much better to behave a bit more ladylike.~
== BSANDR ~ Good idea. As a lady from the City of Splendor I will have my servants just whip a common thief caught with his fingers on my belongings.~
== BELDOT~ (Flushes red and drops the shirt.) Calm down...(Stumbles away...)~
DO~ ApplySpellRES("CVSLEEP","Eldoth")~
EXIT

// Ajantis Banters
CHAIN
IF~Global("SanAjan1","LOCALS",2) ~ THEN BSANDR SanAjan1
~ (Ajantis has moved up to Sandrah.)~
DO ~SetGlobal("SanAjan1","LOCALS",3)~
== BAJANT ~ M'lady Sandrah, may I ask you for a bit of your time.~
== BSANDR ~ Of course, sir.., I mean, of course Ajantis.~
== BAJANT ~ Hm, Sandrah, are you trying to hide who you are from <CHARNAME>?~
== BSANDR ~ No, Ajantis, you are mistaken.~
== BAJANT ~ Really, but <CHARNAME> seems to be unaware of your father.~
== BSANDR ~ Yes, at the moment, but that does not mean I am hiding something. I follow <CHARNAME> as a loyal companion. I want to be received and accepted for what I am and what I do. I do not want any extra points or special treatment for being my father's daughter.~
== BAJANT ~ Will you tell who you are then in time?~
== BSANDR ~ My sweet paladin, you are talking of a fact that cannot be hidden anywhere on the Sword Coast for very long. <CHARNAME> will find out soon enough by own means. I only want this bit of time to gain my own reputation in this group without any credit to my father. Is that so hard to understand?~
== BAJANT ~ No, m'lady. I think this is acceptable. It does no harm and it is no lie. To gain your own merits instead of relying on your father's laurels is a valid course. And, if I may add this, m'lady, from what I see, you really will get your own reputation very fast.~
== BSANDR ~ A compliment? You then approve to my course of action?~
== BAJANT ~ I am happy to see you have your good reasons to act like you do. Maybe at one time I myself should have opened my eyes more to the real Sandrah than to be blinded by the image of the mage's daughter.~
== BSANDR ~ Thank you, my confidant.~
EXIT

CHAIN
IF~~ THEN BSANDR SanAjanHeal
~ If you are so observant, Ajantis, then you should have noticed that my healing skills are applied to all party members in need. *THAT* is not an indication of some special interest in you.~
DO ~ SetGlobal("SanHealAjan","GLOBAL",6) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",600)~
== BAJANT ~ Well, yes, you are right. You are taking care for us all in an exemplary way. Now, did your answer mean, that there is another kind of interest you may have in me?~
== BSANDR ~ Oh, my paladin, do not try to appear so innocent. We both know what could once have been developped between us if things had not gone otherwise...~
== BAJANT ~ You mean if you would have decided to change your ways to something more...ladylike...oh, no, that is not the right expression - I mean, you are a lady through and through - just not like...~
== BSANDR ~ ..not like the average empty headed giggling young debutante from the Waterdeep noblesse, with nothing on her mind than finding the *representative and adequate* husband like her mother and her grandmother before her.~
== BAJANT ~ You have a way to express things, Sandrah, that leaves me speechless, you know that well. But probably you learned these outspoken ways from your father who is known to astound people by his directness that sometimes can hurt as well.~
== BSANDR ~ And which is the truth nevertheless. Ajantis, you have become a man of the road now yourself. Admit that often the situations we face require this directness and this resolute actions. If you really wanted to spend your life with smalltalk and courtesy, the order would surely have some adequate missions for you.~
== BSANDR IF~Global("SanRomPath","GLOBAL",2)~THEN~ I really think you know yourself too little. Be honest, Ajantis, do you not sometimes admire <CHARNAME> or me for the way we directly deal with the heart of the matter?~
== BSANDR IF~Global("SanRomPath","GLOBAL",1)~THEN~ I really think you know yourself too little. You  would not be happy with a woman who is just decoration to a nice home - where you would not stay that long anyway...~
== BAJANT ~ Mylady, what I notice in you, is that you seem to be capable of both. You are a noblewoman at heart and by your actions but without the empty facade those ladies in Waterdeep show the world while there is nothing behind it in reality. And you are as well capable to outshine any of them with your beauty and your manners - whenever you choose it.~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",2)~ THEN BSANDR AjanHelm
~ Have I disturbed you with my actions once again, my paladin hero?~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",3)~
== BAJANT ~ Not so much disturbed as rather puzzled I would say.~
== BSANDR ~ My friend, let me help you to *unpuzzle* you. Just tell me what the matter is.~
== BAJANT ~ It is about your really lax relation to your goddess and the relation to Helm.~
== BSANDR ~ Ajantis, let us stay friends and not talk about religion, please.~
== BAJANT ~ Sandrah, we cannot be friends if we continously avoid such a crucial issue between us, do you not think so?~
== BSANDR ~ (Sigh) I think you are right, even though we may never resolve our different views. Nevertheless you have my interest awakened.~
== BAJANT ~ I will leave your dealing with Mystra aside as we both know well the family relations that lie behind that. Now what I have come to observe is rather, that your actions and opinions would suit a follower of Helm quite well. Actually I think you do more that would please the Vigilant One than many of his self-appointed followers.~
== BSANDR ~ Ajantis, that is so absurd, that it starts to become really interesting. Please continue with your *analysis*.~
== BAJANT ~ Maybe in a moment you will not think of it as so absurd anymore. This is what I see, mylady, when I compare your actions to Helm's rules.~
= ~ Helm says: *Never betray those who trust you.* You see, Sandrah, you fully comply with that.~
= ~ *Be fair and diligent in the conduct of your orders.* You never fail to act this way.~
= ~ *Protect the weak, poor, injured, and young; do not sacrifice them for others or for yourself.* Do I need to name the examples for your acting exactly this way. Would you not rather sacrifice yourself than to see anyone suffer for you?~
= ~ *Demonstrate excellence and loyalty in your role as a guardian and protector.* If that is not what you do to <CHARNAME>, then I am the blindest fool on Toril.~
== BSANDR ~ Now before I am accused of being a Helmite, please tell me where I fail, my paladin.~
== BAJANT ~ (Laughs) Sandrah, is that not obvious? Helm requires his follower's strict obedience to his rules. (Laughs again) Despite all your virtues, Sandrah, two words are surely not existing in your dictionary, *obedience* and *rule*.~
== BSANDR ~ So what is the result of this? Duty to one's cause does not require Helm or any other god at all. Do not let your vigilant one get notice of such blasphemic thoughts, I really fear for you, paladin.~
== BAJANT IF~GlobalGT("PCKnowsElmDaughter","GLOBAL",0)~ THEN~(Ajantis shakes his head but seems to be far from angry) Sandrah, I knew you would find a way out of my trap for convincing you of your calling to Helm. (He becomes very stern for a moment.) Not everybody has such a strong and unbendable character as you, Elminster's daughter. There are many who need the help and supervision of Helm to act like you act out of your own strength.~
== BAJANT IF~Global("PCKnowsElmDaughter","GLOBAL",0)~ THEN~(Ajantis shakes his head but seems to be far from angry) Sandrah, I knew you would find a way out of my trap for convincing you of your calling to Helm. (He becomes very stern for a moment.) Not everybody has such a strong and unbendable character as you, Mystra's pride. There are many who need the help and supervision of Helm to act like you act out of your own strength.~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",6)~ THEN BSANDR AjanMyst
~ If you look at me like that, Ajantis, it is again something that has to do with religion. Fine. I agree that the topic is unavoidable between a paladin and a priestess of different gods.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",7) ~
== BAJANT ~ Sandrah? I am relieved that you do not reject the topic anymore. I would really ask you about your current relation to Mystra. When we last saw each other in Waterdeep, I had the impression that you were fighting hard not to follow the way that everybody was expecting of you. I mean to become Mystra's priestess alongside  your father.~
== BSANDR ~ Mystra is among all the gods of Toril the goddess that allows their followers the most freedom in their own decisions. I am not obliged to follow strict rules like those of Helm. Actually, there is nothing that Mystra could demand from me, that I would not do anyway.~
== BAJANT ~ I already pointed out last time, that you do as much good as many followers of Helm would wish to do. Now you say, that Mystra does not directly provide you with the motives to do so as well. So what guides you then, Sandrah?~
== BSANDR ~ I have not confirmed that Mystra is not a guidance to me. All I said is that her rules and instructions are not expressed in clear commands, but are something that you find in your own heart and mind.~
= ~ Remember what you learned about Mystra, or rather about Midnight. She was an adventurer and cleric of pure heart. Due to her own interpretation of what was right and good, she was chosen by Ao at the Time of Troubles to help him destroy the renegade gods. Ao, the Lord of Lords, chose her, the human adventurer, instead of other gods.~
== BAJANT ~ Except for Helm. Ao put Helm beside the adventurers on the holy task.~
== BSANDR ~ (Smiles at Ajantis) You see how Midnight and Helm have worked hand in hand and succeeded to bring back peace to the troubled Toril. ~
== BAJANT ~ I like this view on our mission, even if we do not deal with fallen gods this time.~
== BSANDR ~ (Sandrah stops their walk abruptly.) Who says we do not?~
== BAJANT ~ What do you mean, Sandrah?~
== BSANDR ~ What? Oh, I am sorry, Ajantis, forget my words, I got carried away by my thoughts somehow.~
EXIT

CHAIN
IF~Global("SanImohelmKill","LOCALS",1)~ THEN BSANDR AjanMystkill
~...what do you mean by that, besta friend, I am blue-eyed?~
DO~SetGlobal("SanImohelmKill","LOCALS",2)~
==Bimoen~Aye, I guess I needa help ya out with some wisdom b'fore ya get too deep into trouble with that handsome helmit, yeah.~
== BSANDR ~You try to warn me about Ajantis, Imoen? Thank you, but I think I know him a bit longer than you do.~
==Bimoen~Same problem always, Sandrah, if ya standin' too close you cant see the global picture. I wasn't sleepin' in my Candlekeep hist'ry lessons all the time, you oughta know, I always listened to the interestin' parts.~
== BSANDR ~Like what for example?~
==Bimoen~Like those Time of Troubles - an' ol' Helm killing your Mystra!~
== BSANDR ~I see what you mean, my learned besta friend. Are you aware of the fact that the incarnation of Mystra slain by Helm was not the one that I serve. My grandmother Midnight was elevated to replace the fallen Mystra and to take her cloak and name.~
==Bimoen~You have no grudge against the helmites then - hihi. He might've done your granny a favour by removing the old one...~
== BSANDR ~Oh, Imoen, stop your wild analysis before it gets out of hand. Our view on what has happened way back then surely must take more historical facts into account. Helm is no murderer and my grandmother was not appointed to her task as the result of an intrigue.~
==Bimoen~Like I said...blue-eyed! Beware - one false move and our handsome companion will ...(she makes a gesture of cutting a throat.) Don't say ol' watchful Imoen didn't warn ya in time.~EXIT


CHAIN
IF ~ Global("SanAjantWDEntry","LOCALS",1)~ THEN BSANDR AjanWDentry
~ Does it make you nervous to enter our hometown so unexpectedly today, Ajantis?~
DO ~ SetGlobal("SanAjantWDEntry","LOCALS",2)~
== BAJANT ~ Nervous?...mmh,..no...yes. Oh, mylady, you read me like an open book, Sandrah!~
== BSANDR ~ Well, maybe nervous is not the right word, my paladin. I know how you like to return to Waterdeep - you do not want to be seen with me in public however.~
== BAJANT ~ Oh, no, that is a bit harsh, Sandrah. Your presence is nothing to be hidden or to be ashamed of - really the opposite. I truely adore you. It is only...well...you are so spontanious and overhwelming sometimes.~
== BSANDR ~ And you want me to behave and keep my feelings hidden while in our hometown?~
== BAJANT ~ Please do not misunderstand me...it may be a bit early to let get people here get the wrong impression - about us...I thought you would understand, Sandrah.~
== BSANDR ~ I understand very well, Ajantis. I will be the epitome of a lady while in Waterdeep, I swear it.~
== BAJANT ~ I had not intended to hurt your feelings with my request.~
== BSANDR ~ (Instead of an answer Sandrah kisses the perplexed paladin passionately.) So - we have a deal. I will not do such things while in Waterdeep. This priestess of Mystra has a reputation to loose here as well. (Laughs and kisses Ajantis again.)~
== BAJANT ~ ...will I ever understand this quicksilver girl?~
EXIT

CHAIN
IF~ Global("SanHelmDogmas","GLOBAL",9) ~ THEN BSANDR AjanExpla
~ You are very silent recently, my paladin hero. (Sandrah walks beside Ajantis and has taken his hand in hers in a totally natural way.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",11)~
== BAJANT ~ (The paladin does not reject Sandrah's nearness and seems quite relaxed by it.)~
=~ I have many confusing feelings in a kind of internal war going on, Sandrah. I think you know best of all the reasons for that.~
== BSANDR ~ Yes, Ajantis. And I am afraid it will not be resolved very soon.~
== BAJANT ~ You have feelings for me too, Sandrah, am I right.~
== BSANDR ~ Is that not obvious, my sweet hero. And they disturb me not less than they disturb you. It is not what I expected our relationship to be. I had a clear picture of you when I left Waterdeep and initially you confirmed it, when we met again. But is has changed bit by bit.~
== BAJANT ~ As often, Sandrah, you describe my feelings better than I could. As much as I admired you back then, you were not the woman who would ever fit in my expectations of the woman at my side. Back then.~
== BSANDR ~ I know very well. You mean that docile little housewife, the decorative pride of the mighty hero, the keeper of his house and mother of his children. A weak damsel to be protected and fondled. You do not intend to tell me you have changed your views on that.~
== BAJANT ~ (Laughs nervously) Strangely enough that almost describes it, even if I really hear your sarcasm well. And you are probably the woman who is farthest away from that expectation.~
== BSANDR ~ (Smiles at the paladin) As far as a paladin with such a view on womanhood is from the expectation I have for the man at my side.~
== BAJANT ~ But still...~
== BSANDR ~ Yes, but still...~
== BAJANT ~ The heart is a strange thing indeed. Nothing is as it should be, but...~
=~ (He stops abruptly and takes Sandrah in his strong arms.) I cannot help it...~
=~ (He kisses Sandrah almost violently and she responds with a hungry passion. A moment later Ajantis has turned and leaves out of sight in a hurry. He hovers in deep contemplation at the edge of the group for the rest of the day, avoiding to even glance at Sandrah.)~
EXIT

CHAIN
IF~ Global("SanHelmDogmas","GLOBAL",10) ~ THEN BSANDR AjanExpla
~ You are very silent recently, my paladin hero. (Sandrah walks beside Ajantis and has taken his hand in hers in a totally natural way.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",11)~
== BAJANT ~ (The paladin does not reject Sandrah's nearness and seems quite relaxed by it.)~
=~ I have many confusing feelings in a kind of internal war going on, Sandrah. I think you know best of all the reasons for that.~
== BSANDR ~ Is that not obvious, my sweet hero? And they disturb me not less than they disturb you. It is not what I expected our relationship to be. I had a clear picture of you when I left Waterdeep and initially you confirmed it, when we met again. But is has changed bit by bit.~
== BAJANT ~ As often, Sandrah, you describe my feelings better than I could. As much as I admired you back then, you were not the woman who would ever fit in my expectations of the woman at my side. Back then.~
== BSANDR ~ I know very well. You mean that docile little housewife, the decorative pride of the mighty hero, the keeper of his house and mother of his children. A weak damsel to be protected and fondled. You do not intend to tell me you have changed your views on that.~
== BAJANT ~ (Laughs nervously) Strangely enough that almost describes it, even if I really hear your sarcasm well. And you are probably the woman who is farthest away from that expectation.~
== BSANDR ~ (Smiles at the paladin) As far as a paladin with such a view on womanhood is from the expectation I have for the man at my side.~
= ~ And now, too make things even worse, you found suddenly there are two women of the kind, you never considered.~
== BAJANT ~ The heart is a strange thing indeed. Nothing is as it should be, but...~
== BSANDR ~ Your feelings for <CHARNAME> are obvious, Ajantis, as is the dilemma it puts you in. But how can I be of any help for you, with my own world revolving around and around - around you two.~
== BAJANT ~ But still...~
== BSANDR ~ Yes, but still...~
== BAJANT ~ The heart is a strange thing indeed. Nothing is as it should be, but...~
=~ (He stops abruptly and takes Sandrah in his strong arms.) I cannot help it...~
=~ (He kisses Sandrah almost violently and she responds with a hungry passion. A moment later Ajantis has turned and leaves out of sight in a hurry. He hovers in deep contemplation at the edge of the group for the rest of the day, avoiding to even glance at Sandrah.)~
EXIT

CHAIN
IF ~ Global("SanAjkilBant","GLOBAL",1)~ THEN BSANDR AjKilInt
~ (Smiles invitingly as Ajantis approaches her in his modest way.)  ~
DO ~ SetGlobal("SanAjkilBant","GLOBAL",2)~
== BAJANT ~M'lady Sandrah?~
==BSANDR ~ Sandrah, Ajantis, just plainly Sandrah. We are comrades in arms, friends. So what is bothering you at this moment?~
== BAJANT ~Your perception of the fighting we do, of all this killing. I have observed you - I mean as far as the heat of a battle allows such a thing. You are quite different from all other fighters I have observed, apart from the fact of course that you are better as any I have seen before.~
= ~ I know you will not take it as a compliment of course. You do not seem proud of what you do in battle, not like others of our party.~
==BSANDR ~ Philosophy for philosophy's sake, my friend, or real interest in the one you want to discuss it with?~
== BAJANT ~Yes. - I mean, yes, both. I want to learn about your motivation. ~
==BSANDR ~ I do what needs to be done. Too easy? Well, it would sum it up quite well nevertheless. But to satisfy you, I must add more detail, right?~
= ~ Fighting itself is an art. Do not look at me so sceptical, my friend. I really mean what I say. It is an art involving both the body and the mind. It includes force and power, but also tactics, and a bit of reading your enemy's mind in the blinking of an eye. All of that is challenging and arousing. But we both know, it does not end with that.~
= ~ You could say, the arena would be the place for me. It is not. It is a show and a carnival at best, or a bloody exploit at worst. It has no worthwhile motivation. ~
== BAJANT ~You hate the killing, right Sandrah. Somebody looses his one and only life at the end of the challenge and that overshadows everything else.~
==BSANDR ~ You understand it well. We can congratulate ourselves in the end, saying that we once again have crushed evil. And that is true most of the time, and it may be satisfactory for some of us.~
== BAJANT ~Not enough for you? Is that not the most worthy goal, Sandrah?~
==BSANDR ~ It would be, if our definition of evil is true and it would be, if there would exist no other means to stop evil. But you know as well as I know it is not so, there is not only black and white in this world - even for the view of a helmit.~
== BAJANT ~You were right. You do what needs to be done. But many questions are left open. It soothes me that I am not the only one that is seeking for answers where many people stop at the first idea that pleases their mind. ~
==BSANDR ~ You are right, my friend. I am a seeker. I am the daughter of the most famous seeker of the Realms. I can assure you that even he still has a lot of questions. But one great thing I have learned from him is that we nevertheless can do a lot of things and be sure that they are at least not wrong.~
== BAJANT ~ Thank you for that, Sandrah.~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",13) ~ THEN BSANDR AjanAfKi
~ As you are trying to avoid me, Ajantis, it seems to be up to me to take up our thread. (Her smile would melt the Ice on the Spine of the World.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",14)~
== BAJANT ~ I have already broken so many principles and oaths I had made to myself because of you, Sandrah. It cannot get any more worse.~
== BSANDR ~ Where is the galant paladin? I feel almost like I were an uncurable disease. If only I would not understand you so well...~
== BAJANT ~ Forgive me, Sandrah, yes, the galant paladin is all in tatters. Uncurable indeed. But I see how selfish I am. I think only of my own dilemma and forget all about how you must feel.~
== BSANDR ~(Sandrah has sat down close to the paladin. Her hand lies gently on his knee.) I am not feeling that bad, my poor sweetheart. Confused and unsure of how we will go from here, yes, but see, I am open to anything that might happen between us. It is more your peace of soul that is currently on my mind.~
== BAJANT ~Always the gentle healer, Sandrah, but like you said, there may be no cure for this.~
== BSANDR ~And maybe none is needed. You have already learned to open yourself to new possibilities that were unthinkable for you just two moons past. I am not expecting you to propose to me just because you have kissed me. As you know quite well, I am none of those Waterdeep girls you have known. Let us just learn and explore this together.~
== BAJANT ~But there is responsibility, Sandrah, we cannot just...~
== BSANDR ~Yes, we can! I am responsible for whatever happens just like you. I am not the little kitten that needs your protection.~
== BAJANT ~ Persuader, sweet devilish persuader...(He has already leaned over to her for a passionate kiss.)~ DO ~ StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
                
CHAIN 
IF ~ Global("SanHelmDogmas","GLOBAL",15) ~THEN BSANDR AjaNTM
~  Such a peaceful night and such a mild weather, so rare at the Sword Coast.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT ~ Would you mind to take a little walk with me, Sandrah, and enjoy the beauty that ends this day?~
== BSANDR ~ Eagerly. I will not put on my armour again, Ajantis, with my paladin by my side I fear nothing from the night.~
== BAJANT ~ Unless perhaps the paladin himself.~
== BSANDR ~ There are some dangers in life and there are some others. Sometimes you just have to take some risk or you will win nothing.~
== BAJANT ~ Are you talking about something other than goblins or wolves, Sandrah? The dangers that come from inside of us, perhaps?~
== BSANDR ~ Can they be really dangers if they come from our hearts, Ajantis. Provided, of course that heart is not a black one - which I would exclude in our cases. ~
== BAJANT ~ Do you mean to say that anything that our heart dictates cannot be dangerous?~
== BSANDR ~ Disturbing maybe - sometimes foolish - light hearted, if we talk of me - but dangerous? I would deny that.~
== BAJANT ~ I have followed your counsil, Sandrah, I have listened to my heart. I am not sure there is not some danger in what it tells me.~
== BSANDR ~ Still talking of danger, not of risk, darling?~
== BAJANT ~ Tell me truely, Sandrah, do you love <CHARNAME>?~
== BSANDR ~ Yes, I do.~
== BAJANT ~ But - but you stand here with me, holding my hand, wearing nothing but this teasing, eh, nothing, and encourage me in any way to think you love - me.~
== BSANDR ~ Yes, I do.~
= ~ You see, you took the risk and you have won. The danger is gone. The night is getting a bit chilly, my galant paladin, I need your embrace to keep me warm now. (She slings her arms around Ajantis and hugs him tightly.)~
== BAJANT ~ (He follows Sandrah to the starlit groove where they embrace each other long and passionately. You can hear them murmur between their kisses for a long time. But you still hear her words resounding in your ears - she loves you.)~ DO~RestParty()~
EXIT

CHAIN
IF ~ Global("SanAjanProp1","GLOBAL",1)~ THEN BSANDR Prop1
~ Do you really think I am the right person to council you on that, Ajantis.~
DO ~ SetGlobal("SanAjanProp1","GLOBAL",2)RealSetGlobalTimer("SanAjanPropDel","GLOBAL",420)~
== BAJANT ~ I honestly think so, because I know you will be honest - out of love for her and for me.~
== BSANDR ~ I cannot deny that those are my feelings for both of you. Nevertheless you know about my own attitude to such a step in general.~
== BAJANT ~ I am not sure I fully understand your motives though. I have learned enough about you to know that you do not lack responsibility.~
== BSANDR ~ Responsibility? Is that the primary issue here. Ajantis, she is young, even a bit younger than I am. We are still learning to deal with our feelings, with our heart. Is it so irresponsible of us to make some experience in love first before our mind and brain follow us? Do you really need an answer that binds for the rest of all our lives right now?~
== BAJANT ~ You were right, Sandrah. You cannot really be a concellor on this issue, as deep as you are in the matter yourself. Still you help me a lot with your words, as they provide me with the arguments for and against my step.~
== BSANDR ~ And your family? You really need their consent before you can make up your own mind?~
== BAJANT ~ You are right, I do not need it really. But I would still feel much happier with it than without. In the end it will be my decision alone - and hers of course.~
== BSANDR ~ (Smiles at the paladin.) I am glad you say that, you have advanced indeed, Ajantis, emancipated yourself in a way.~
== BAJANT ~ I have learned as much as to take your words as kindness, no longer as a way to mock me. If I only knew how our relationship would fit into the picture...~
== BSANDR ~ Do not worry, it never will. It is strange and beautiful and it just...it just is. (His arms fold around her as she glides up to his chest and kisses him long.)~
== BAJANT ~ You see, I accept it, even though I have no words for it.~
== BSANDR ~ We do not need words - not among ourselves and not for <CHARNAME>.~
== BAJANT ~ So you agree to the steps I will take, Sandrah?~
== BSANDR ~ Not at all, my love. And you will do it anyway...(Embraces him for another long kiss.)~
EXIT


CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",16) ~THEN BSANDR AjaNTF
~ Such a peaceful night and such a mild weather, so rare at the Sword Coast.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT ~ Would you mind to take a little walk with me, Sandrah, and enjoy the beauty that ends this day?~
== BSANDR ~ Eagerly. I will not put on my armour again, Ajantis, with my paladin by my side I fear nothing from the night.~
== BAJANT ~ Unless perhaps the paladin himself.~
== BSANDR ~ There are some dangers in life and there are some others. Sometimes you just have to take some risk or you will win nothing.~
== BAJANT ~ Are you talking about something other than goblins or wolves, Sandrah? The dangers that come from inside of us, perhaps?~
== BSANDR ~ Can they be really dangers if they come from our hearts, Ajantis. Provided, of course that heart is not a black one - which I would exclude in our cases. ~
== BAJANT ~ Do you mean to say that anything that our heart dictates cannot be dangerous?~
== BSANDR ~ Disturbing maybe - sometimes foolish - light hearted, if we talk of me - but dangerous? I would deny that.~
== BAJANT ~ I have followed your counsil, Sandrah, I have listened to my heart. I am not sure there is not some danger in what it tells me.~
== BSANDR ~ Still talking of danger, not of risk, darling?~
== BAJANT ~ Tell me truely, Sandrah, do you love <CHARNAME>?~
== BSANDR ~ Yes, I do.~
== BAJANT ~ Then we have one thing in common, mylady.~
== BSANDR ~ You see, you took the risk and you have won. The danger is gone. The night is getting a bit chilly, my galant paladin, I need your embrace to keep me warm now. (She slings her arms around Ajantis and hugs him tightly.)~
== BAJANT ~ Have you really understood me, Sandrah, I love <CHARNAME>.~
== BSANDR ~ And so do I. And if you still doubt it, I love you, Ajantis.~
== BAJANT ~ (He follows Sandrah to the starlit groove where they embrace each other long and passionately. You can hear them murmur between their kisses for a long time. But you still hear their words resounding in your ears - they both love you.)~ DO~RestParty()~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",66) ~THEN BSANDR AjaNTFR
~ Such a peaceful night and such a mild weather, so rare at the Sword Coast.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",17)~
== BAJANT ~ Would you mind to take a little walk with me, Sandrah, and enjoy the beauty that ends this day?~
== BSANDR ~ Eagerly. I will not put on my armour again, Ajantis, with my paladin by my side I fear nothing from the night.~
== BAJANT ~ Unless perhaps the paladin himself.~
== BSANDR ~ There are some dangers in life and there are some others. Sometimes you just have to take some risk or you will win nothing.~
== BAJANT ~ Are you talking about something other than goblins or wolves, Sandrah? The dangers that come from inside of us, perhaps?~
== BSANDR ~ Can they be really dangers if they come from our hearts, Ajantis. Provided, of course that heart is not a black one - which I would exclude in our cases. ~
== BAJANT ~ Do you mean to say that anything that our heart dictates cannot be dangerous?~
== BSANDR ~ Disturbing maybe - sometimes foolish - light hearted, if we talk of me - but dangerous? I would deny that.~
== BAJANT ~ I have followed your counsil, Sandrah, I have listened to my heart. I am not sure there is not some danger in what it tells me.~
== BSANDR ~ Still talking of danger, not of risk, darling?~
== BAJANT ~ Tell me truely, Sandrah, do you love <CHARNAME>?~
== BSANDR ~ Yes, I do.~
== BAJANT ~ Then we have one thing in common, mylady. Although you are granted with the priviledge of her accepting it.~
== BSANDR ~ You see, you took the risk and you have won. The danger is gone. The night is getting a bit chilly, my galant paladin, I need your embrace to keep me warm now. (She slings her arms around Ajantis and hugs him tightly.)~
== BAJANT ~ Sandrah, I love you. And it is not because <CHARNAME> rejected me and I am in need of a substitute.~
== BSANDR ~ I fully understand you. And if you still doubt it, I love you, Ajantis.~
== BAJANT ~ (He follows Sandrah to the starlit groove where they embrace each other long and passionately. You can hear them murmur between their kisses for a long time. But you still hear their words resounding in your ears - they both love you.)~ DO~RestParty()~
EXIT

CHAIN
IF ~ Global("SanAjanProp2","GLOBAL",5)~ THEN BSANDR AjaRG
~ So you really did it, my fearless paladin! (Sandrah has embraced Ajantis and smiles brightly into his face.)~
=~ Let me be the first one to congratulate you, my hero. (She kisses him tenderly.)~
DO ~ SetGlobal("SanAjanProp2","GLOBAL",6)~
== BAJANT ~ And you really approve to it, Sandrah?~
== BSANDR ~ I told you that I would, did I not? And judging by the ring she now wears she did the same.~
== BAJANT ~ I am sure your council in the matter was of some importance.~
== BSANDR ~ No, it was not, Ajantis, you should know that. As I am part of it myself, my role was not that of a counselor here. I talked to <CHARNAME> as openly about my own feelings as I do to you. Her decision is hers alone. ~
== BAJANT ~ You make me a very happy man with your words, Sandrah. If I had not loved you before, I would do it now. Still - your own answer to the same question would have been *no*, right?~
== BSANDR ~ Oh, sweetling, why bother, it has all turned out right. Just - <CHARNAME> is a very passionate woman.~
== BAJANT ~ What do you try to suggest by that, Sandrah?~
== BSANDR ~ Nothing to be afraid of, Ajantis, just that I observe your restrained treatment of her. Let yourself go a bit, continue following your heart - it has done you good so far. I know how passionate you can be, my lover, she deserves the same.~
== BAJANT ~ Well, yes, maybe...or...I mean...she is going to be my wife...~
== BSANDR ~ Sure. (She laughs.) I will not mingle between you, just do not be too surprised if she starts to make some demands on her future husband. (With a last kiss for the surprised paladin she whirls away.)~ EXIT

CHAIN
IF ~ Global("SanAjanProp3","GLOBAL",2)~ THEN BSANDR AjaPr
~ (Sandrah takes Ajantis' hand that he has offered her as he walks beside her.)~
DO ~ SetGlobal("SanAjanProp3","GLOBAL",3)~
== BAJANT ~ Dearest Sandrah, you have surely seen the presents I have made to <CHARNAME> recently?~
== BSANDR ~ Sure. Very caring and thoughtful of you. I think she appreciates that dearly. Not so much the gifts themselves but your ideas and reasons behind each. It is so romantic, my paladin.~
== BAJANT ~ You are so understanding and gentle, I have to shake my head every time I think about how I once mistook you.~
== BSANDR ~ I am guilty of the same, do you not think so. And you forgave me, sweetheart.~
== BAJANT ~ Maybe I make another mistake now when I try to explain why you do not receive gifts from me in the same way...~
== BSANDR ~ I will prevent this mistake. (She seals his lips with a passionate kiss.)~
== BAJANT ~ Mmpf...but I...Mmpf..(He is silenced again.)~
== BSANDR ~ Thank you for these wonderful gifts...(Sandrah seems to be a bit breathless from the kissing.) ~ EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",22)~ THEN BSANDR AjCarele
~ (Once again Ajantis and Sandrah walk closely entwined, always with one of them alert for possible dangers in the surrounding, but still finding the opportunity to exchange kisses every now and then.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",23)~
== BAJANT ~ My love, I am a bit concerned about how far our relationship has grown by now - eh, I mean, eh, in that starlit grove last evening it was hard to restrain, oh...can you not help me a bit with my words?~
== BSANDR ~ Responsibility, my paladin? Well, I am not careless, if that is what you are concerned about. My knowledge in Mystra's arts and my education as a healer will assure that we may have all the pleasures we want to have, without consequences that would be unwanted - at the current time.~
== BAJANT ~ I see that you completely understand my concerns, my wonderful cleric. A child...~
== BSANDR ~ ...is surely not what we want from each other these days. It is not the right time in our live for that right now. That does not mean we have to restrain ourselves in our desire for each other. You know my constant advice: *Follow your heart*.~
== BAJANT ~ But you understand why I was concerned about it, Sandrah?~
== BSANDR ~ Of course, and that makes you only more loveable. Hm, that look in your eyes, sweetheart...hunger?~
== BAJANT ~ Hunger for one of the sweetest things that has ever walked Toril...~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",24)~ THEN BSANDR Ajboth1
~ (Ajantis and Sandrah have laid down in the dry grass side by side. Sandrah rumages her backpack and starts to arrange a variety of small delicious snacks on a napkin between them.)~
= ~ <CHARNAME>, come here, love, join us for those little bits I have secretly acquainted in the last town.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",25)~
== BAJANT ~ Oh, yes, our little picnic would not be nice without you, my beloved. (He moves aside to make an inviting space for you between them)~
END
++ ~ What a surprise, Sandrah, these things look delicious. (You make yourself comfortable in their midst and administer a kiss to the left and the right before taking a piece of a spiced sausage.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~+ Ajboth2
++ ~ Oh, you lovebirds, I'm afraid you must do without me. The tasks of a leader hold me up. (You look into two puzzled and disappointed faces.)~ +  Ajboth3

CHAIN
IF~~ THEN BSANDR Ajboth2
~ Try one of these, darling. (Sandrah quickly withdraws the piece of blue cheese she had held between two fingers pretending to feed you and kisses your lips instead.)~
== BAJANT ~ You must feel hungry, <CHARNAME>, being fed with nothing but air by your girlfriend. (He offers you a small slice of almond cake on the palm of his hand.)~
END
++~ (You take the cake with your mouth and then start to lick some imaginary crumbs from his palm.)~ EXIT

CHAIN
IF~~ THEN BSANDR Ajboth3
~ (Sandrah wordlessly starts to pack the things back together.)~
== BAJANT ~ (Ajantis assists her silently while shaking his head in disbelieve.)~
END
++ ~ (You turn away ashamed, feeling the frustration you have caused with your rejection.)~ EXIT
++ ~ Hey, wait a second, not so hasty. I see someone has already done it for me, let me join you. ~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ + Ajboth2

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",26)~ THEN BSANDR AjPellDanc
~ (Sandrah is playing with her large cat in the light of the full moon. The movements of the young woman and her panther resemble an elegant dance, a perfect mixture of the grace and the power of those two creatures.)~
= ~ (You watch the scenario silently fascinated, as does Ajantis standing in the shade of a large tree.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",27)~
== BAJANT ~ I could stand here all night to watch the dance of you two wonderful creatures, Sandrah.~
== BSANDR ~ You could either join us, my sweetheart, or you could propose some other recreational occupation for us. (Her body language leaves no doubt as to what she is thinking about.)~
== BAJANT ~ I will not deny you any of the pleasures that I share with <CHARNAME>, except for sharing my name with you.~
== BSANDR ~ I do not mean to insult the name of your family, Ajantis, still I am only interested in the man behind that name. (With an elegant movement that indicates the end of her play with Pelligram, Sandrah lands in Ajantis' arms. The nearly transparent blouse she wears when not in armour has slipped halfways from her body.)~
== BAJANT ~ (Ajantis lips glide down from her mouth to her bare shoulder and further down to her breast...)~
END
++ ~ (You turn back to the campfire and your bedroll, awaiting the return of your two lovers.)~ + AjPellDanc1

CHAIN
IF ~ ~ THEN BSANDR AjPellDanc1
~ (You have almost dozed off into happy dreams when you feel Sandrah's silken skin against your naked backside as she glides into your bedroll.) Thank you for everything, my love.~
== BAJANT ~ (A moment later you feel a strong calloused hand glide gently between your thights from the front to caress you.) Good night, my beautiful bethroted.~ DO ~ RestParty()~ EXIT


CHAIN
IF ~ Global("SanAjanGifts","GLOBAL",1)~ THEN BSANDR AjaPrR
~ (Sandrah takes Ajantis' hand that he has offered her as he walks beside her.)~
DO ~ SetGlobal("SanAjanGifts","GLOBAL",2) RealSetGlobalTimer("SanAjGifts","GLOBAL",1200)~
== BAJANT ~ Dearest Sandrah, you have surely seen the messenger I talked to recently?~
== BSANDR ~ Sure. I was afraid the order would have some task for you sooner of later that would take me from my side for a while. I had rather preferred the *later* to the *sooner* nevertheless.~
== BAJANT ~ You are so understanding and gentle, I have to shake my head every time I think about how I once mistook you.~
== BSANDR ~ I am guilty of the same, do you not think so. And you forgave me, sweetheart.~
== BAJANT ~ But let me clear the dark cloud that may shadow this lovely day immediately. The messenger was not from the order but he delivered a little thing to me I had requested from home. I would be a very happy man if you would accept this little gift from me. ~ DO ~ GiveItemCreate("X#AJRONE","CVSandr",0,0,0)~
== BSANDR ~ Oh, my lovely hero! I sense the protective spells it has for the case that my paladin is not present to care for me himself. How very caring and thoughtful of you. And how romantic.~
=~(She seals his lips with a passionate kiss.)~
== BAJANT ~ Mmpf...but I...Mmpf..(He is silenced again.)~
== BSANDR ~ Thank you for all these wonderful gifts...(Sandrah seems to be a bit breathless from the kissing.) ~ EXIT

CHAIN
IF ~ Global("SanAjanGifts","GLOBAL",3)~ THEN BSANDR AjbothR
~ (Ajantis and Sandrah have laid down in the dry grass side by side. Sandrah rumages her backpack and starts to arrange a variety of small delicious snacks on a napkin between them.)~
= ~ <CHARNAME>, come here, love, join us for those little bits I have secretly acquainted in the last town.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",25)SetGlobal("SanAjanGifts","GLOBAL",4) RealsetGlobalTimer("SanAjGifts","GLOBAL",1800)~
== BAJANT ~ Oh, yes, our little picnic would not be nice without you, <CHARNAME>. (He moves aside to make an inviting space for you between them)~
END
++ ~ What a surprise, Sandrah, these things look delicious. (You make yourself comfortable in their midst and administer a kiss on the cheek to the left and the right before taking a piece of a spiced sausage.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~+ Ajboth2R
++ ~ Oh, you lovebirds, I'm afraid you must do without me. The tasks of a leader hold me up. (You look into two puzzled and disappointed faces.)~ +  Ajboth3R

CHAIN
IF~~ THEN BSANDR Ajboth2R
~ Try one of these, darling. (Sandrah quickly withdraws the piece of blue cheese she had held between two fingers pretending to feed you and kisses your lips instead.)~
== BAJANT ~ You must feel hungry, <CHARNAME>, being fed with nothing but air by your girlfriend. (He offers you a small slice of almond cake on the palm of his hand.)~
END
++~ (You take the cake with your mouth and thank him with a smile.)~ EXIT

CHAIN
IF~~ THEN BSANDR Ajboth3R
~ (Sandrah wordlessly starts to pack the things back together.)~
== BAJANT ~ (Ajantis assists her silently while shaking his head in disbelieve.)~
END
++ ~ (You turn away ashamed, feeling the frustration you have caused with your rejection.)~ EXIT
++ ~ Hey, wait a second, not so hasty. I see someone has already done it for me, let me join you. ~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ Ajboth2

CHAIN
IF ~ Global("SanAjanGifts","GLOBAL",5)~ THEN BSANDR AjPellDancA
~ (Sandrah is playing with her large cat in the light of the full moon. The movements of the young woman and her panther resemble an elegant dance, a perfect mixture of the grace and the power of those two creatures.)~
= ~ (You watch the scenario silently fascinated, as does Ajantis standing in the shade of a large tree.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",27)SetGlobal("SanAjanGifts","GLOBAL",6) RealsetGlobalTimer("SanAjGifts","GLOBAL",1800)~
== BAJANT ~ I could stand here all night to watch the dance of you two wonderful creatures, Sandrah.~
== BSANDR ~ You could either join us, my sweetheart, or you could propose some other recreational occupation for us. (Her body language leaves no doubt as to what she is thinking about.)~
== BAJANT ~ I will not deny you any of the pleasures that I would share with a wife even if I'm not sharing my name with you.~
== BSANDR ~ I do not mean to insult the name of your family, Ajantis, still I am only interested in the man behind that name. (With an elegant movement that indicates the end of her play with Pelligram, Sandrah lands in Ajantis' arms. The nearly transparent blouse she wears when not in armour has slipped halfways from her body.)~
== BAJANT ~ (Ajantis lips glide down from her mouth to her bare shoulder and further down to her breast...)~
END
++ ~ (You turn back to the campfire and your bedroll, awaiting the return of your happy lover.)~ + AjPellDanc1A

CHAIN
IF ~ ~ THEN BSANDR AjPellDanc1A
~ (You have almost dozed off into happy dreams when you feel Sandrah's silken skin against your naked backside as she glides into your bedroll.) Thank you for everything, my love.~
END
++ ~ (You turn around to her and give her a good night kiss.) I love you.~ DO ~ RestParty()~ EXIT
++ ~ I was already feeling lonely, my darling. It is so good to feel you near. ~ DO ~ RestParty()~ EXIT

// Finch Banter

CHAIN
IF ~ Global("SuFiPel","GLOBAL",1)~ THEN BSANDR FinchBantBH
~Finch, just look at all these books, is that not impressive? ~
DO ~ SetGlobal("SuFiPel","GLOBAL",2) ~
==IF_FILE_EXISTS BSUFINCH~ Colossal. If I were better with drawing, I would make a sketch of this place. This is what I dream my library should be like, Sandrah. ~
== BSANDR ~ I hope it will be different. Much better, if I understood you right. Look here, you see only scholars studying for their own sake. Your library is aimed at the people.~
==IF_FILE_EXISTS BSUFINCH~ Oh, yes, you are so observant, Sandrah. I just saw all the books and the knowledge stored here and was impressed. Silly me, yes, the real people should be here, not only those clerics and monks.~
== BSANDR ~ Even if they leave a bit of soil on the carpet.~
==IF_FILE_EXISTS BSUFINCH~ (Writes into her sketchbook) I make a note, we should have tiles, not those thick carpets. So much easier to clean. Sorry, I must make some other notes of this place as well, nice talking to you, Sandrah.~
EXIT

CHAIN
IF ~ Global("FinchBant1","LOCALS",1)~ THEN BSANDR FinchBant1m
~ (You have stopped the party for a little snack. Everybody makes comfortable and Finch has taken a seat near Sandrah this time.)~
DO ~SetGlobal("FinchBant1","LOCALS",3)~
==IF_FILE_EXISTS BSUFINCH~ Excuse me, Sandrah, I think you will not remember me from Waterdeep, am I right?~
== BSANDR ~ Honestly, Finch, no, I do not. Should I?~
==IF_FILE_EXISTS BSUFINCH~ Oh, no, I mean - we never have really met or talked with each other, it would be mere coincidence if you even would have recognized someone as unsignificant as me.~
== BSANDR ~ Waterdeep is a big city, I do not know all the people who live there. There is no reason to belittle yourself or to scold me for not knowing you.~
==IF_FILE_EXISTS BSUFINCH~ Sorry, I read so many words but when it comes to using them , I fail  to express myself right.~
= ~ It is only natural that you do not know me. It is just so strange that, of course, I have the feeling we know each other well, because I know you, the mighty mage's daughter, the beautiful priestess of Mystra. You are so prominent that everybody knows you and then we think you know us, too.~
== BSANDR ~ I see your point now. Then maybe we should change that now as we are comerads in <CHARNAME>'s group. I heard you are a priestess of Deneir?~
==IF_FILE_EXISTS BSUFINCH~ Oh, yes, you know about him of course. Oh, how I envy you for all the knowledge you have access to by your goddess and your father as well.~
== BSANDR ~ To achieve knowledge is always a labourous task even if you have access to some resources. Look at <CHARNAME>, he has learned a lot growing up in the magnificent Candlekeep library. But the real learning just started when he had to depart from the books and had to deal with the real life.~
==IF_FILE_EXISTS BSUFINCH~ You do not think then that books and learning provide you with real knowledge?~
== BSANDR ~ That is not what I tried to express. They are of course important - however not for their own sake but to prepare us and make us fit for the real life. Our knowledge proves its worth not in a scholar's study and intellectual discourse but when helping us to master the problems in our lives.~
= ~ As a priestess, one of my foremost goals is it to help people and make the world a little more bearable for us all. It is for this purpose I use my knowledge. There is no knowledge just for knowledge's sake. That would be like the rich man with his sack of gold coins left in a desolate place - he starves to death because there is nothing to buy and he cannot eat his gold.~
==IF_FILE_EXISTS BSUFINCH~ Oh, it is so interesting to discuss with you. We must do this again...but now <CHARNAME> calls us to move on.~
EXIT

CHAIN
IF ~ Global("FinchBant1","LOCALS",2)~ THEN BSANDR FinchBant1f
~ (You have stopped the party for a little snack. Everybody makes comfortable and Finch has taken a seat near Sandrah this time.)~
DO ~SetGlobal("FinchBant1","LOCALS",3)~
==IF_FILE_EXISTS BSUFINCH~ Excuse me, Sandrah, I think you will not remember me from Waterdeep, am I right?~
== BSANDR ~ Honestly, Finch, no, I do not. Should I?~
==IF_FILE_EXISTS BSUFINCH~ Oh, no, I mean - we never have really met or talked with each other, it would be mere coincidence if you even would have recognized someone as unsignificant as me.~
== BSANDR ~ Waterdeep is a big city, I do not know all the people who live there. There is no reason to belittle yourself or to scold me for not knowing you.~
==IF_FILE_EXISTS BSUFINCH~ Sorry, I read so many words but when it comes to using them , I fail  to express myself right.~
= ~ It is only natural that you do not know me. It is just so strange that, of course, I have the feeling we know each other well, because I know you, the mighty mage's daughter, the beautiful priestess of Mystra. You are so prominent that everybody knows you and then we think you know us, too.~
== BSANDR ~ I see your point now. Then maybe we should change that now as we are comerads in <CHARNAME>'s group. I heard you are a priestess of Deneir?~
==IF_FILE_EXISTS BSUFINCH~ Oh, yes, you know about him of course. Oh, how I envy you for all the knowledge you have access to by your goddess and your father as well.~
== BSANDR ~ To achieve knowledge is always a labourous task even if you have access to some resources. Look at <CHARNAME>, she has learned a lot growing up in the magnificent Candlekeep library. But the real learning just started when she had to depart from the books and had to deal with the real life.~
==IF_FILE_EXISTS BSUFINCH~ You do not think then that books and learning provide you with real knowledge?~
== BSANDR ~ That is not what I tried to express. They are of course important - however not for their own sake but to prepare us and make us fit for the real life. Our knowledge proves its worth not in a scholar's study and intellectual discourse but when helping us to master the problems in our lives.~
= ~ As a priestess, one of my foremost goals is it to help people and make the world a little more bearable for us all. It is for this purpose I use my knowledge. There is no knowledge just for knowledge's sake. That would be like the rich man with his sack of gold coins left in a desolate place - he starves to death because there is nothing to buy and he cannot eat his gold.~
==IF_FILE_EXISTS BSUFINCH~ Oh, it is so interesting to discuss with you. We must do this again...but now <CHARNAME> calls us to move on.~
EXIT

CHAIN
IF ~ Global("FinchBant1","LOCALS",4)~ THEN BSANDR FinchBant2
~ Do you want to take a closer look at it, Finch?~
DO ~SetGlobal("FinchBant1","LOCALS",5)~
==IF_FILE_EXISTS BSUFINCH~ Oh, yes, please Sandrah. It looks so impressive and then you study it all the time, I mean if <CHARNAME> lets you, haha. What is it?~
== BSANDR ~ It is a book my father has given to me. It is very dear and special to me. And on the side, it helps me in this adventuring life quite a lot.~
==IF_FILE_EXISTS BSUFINCH~ Oh, by Deneir, *Elminster's History of Faerun* - and with a personal signature of the mage himself!~
== BSANDR ~ You forgot that the author is my own father, Finch. It has a different importance to me than it may have to you as a teacher and preserver of knowledge.~
==IF_FILE_EXISTS BSUFINCH~ You mean apart from the almost complete knowledge it contains.~
== BSANDR ~ Not apart from it. This knowledge actually is the heritage my father gives to me for my way through life. I know that he has written down all he learned during his long life wandering the Realms in order to preserve the information for his child.~
==IF_FILE_EXISTS BSUFINCH~ You mean he has written this breathtaking work just for you?~
== BSANDR ~ Yes and no. He was always thinking of me when writing down a new part of it. He told me, that he had the image in his mind of his daughter sitting on his lap and him telling her the story of the adventure he just had. Honestly, he often did just that with me and those are very dear memories.~
= ~ From this origin comes the initial idea of the book. Elminster being Elminster then found, that what is useful for his daughter may be useful for others as well, so he had the book published in Waterdeep for all.~
==IF_FILE_EXISTS BSUFINCH~ For all? I am afraid not many people can afford the astronomic price for a copy of it.~
== BSANDR ~ That is not Elminster's fault, it is how the economy works. On the other hand, not many people on Faerun do really need all of the information contained within this tome. And most of those who could need it, would not be able to read it, sadly.~
==IF_FILE_EXISTS BSUFINCH~ Ha, you see now how important my work is, Sandrah! To bring the light of knowledge to the peasants, to allow them to read and participate in what others knew and have written down.~
EXIT

CHAIN
IF~~ THEN BSANDR FinchHealed
~ We are both still learning to deal with this *real life*, Finch. You did not get these wounds from turning the pages of your books. You were bravely fighting just minutes ago.~
DO ~ SetGlobal("SanHealfink","GLOBAL",6) ~
==IF_FILE_EXISTS BSUFINCH ~ You are right - but not fully. The fight was forced on us, all I had to do was to react instinctively to defend me and my companions.~
== BSANDR ~ And you see my mistake. I cast a healing spell on you, instinctively because I saw you hurt. With a bit more of thinking, I would have kept my spell for our comrades that have not our skills and I should have adviced you to use one of your own on yourself.~
==IF_FILE_EXISTS BSUFINCH ~ You are always so wise, Sandrah. It helps me a lot to see you make mistakes as well. And even more how open you are to admit them. You never try to display yourself as the shining heroine you are.~
== BSANDR ~ As you just saw yourself, it is good not to think of myself as that *heroine*. I am but an apprentice in this business and it is good to be reminded of that. Arrogance would be our downfall.~
==IF_FILE_EXISTS BSUFINCH ~ Belittleling ourselves is inappropriate as well. We must make adequate use of our combined skills, then <CHARNAME>'s mission will be a success.~
EXIT

CHAIN
IF ~ Global("SanSUFiCLREV","GLOBAL",1)~ THEN BSANDR SuFiBookQ
~ Now we have discovered that at least your familiy here in Waterdeep was not completely unknown to me.~
DO ~ SetGlobal("SanSUFiCLREV","GLOBAL",2)~
==IF_FILE_EXISTS BSUFINCH~ Oh, the family is soo big and busy, it is surely impossible to grow up in this town without ever running into one of us. But Clarissa is a bit different from the rest. With her interest in books as well, she always was important for me.~
== BSANDR ~ My father of course is a constant customer of her supplies. And vice versa. He gave her lots of books to sell that he found along his journeys through the realms.~
==IF_FILE_EXISTS BSUFINCH~ I suggest to see her shop, <CHARNAME>, before we leave Waterdeep. She may have something useful for us among her maps and books.~
END
++~Sure, we are just a stonethrow away from her door anyway, let us go there at once.~ EXIT
++~Bah, we surely do not need to load us with more dusty stuff like old tomes and parchments.~ + SuFiBookQ2

CHAIN
IF~~ THEN BSANDR SuFiBookQ2
~ <CHARNAME>! CHILD OF CANDLEKEEP! If Gorion would hear you now! We will go there immediately - with or without you!~
==IF_FILE_EXISTS BSUFINCH~ How disappointing. But, Sandrah, I do not want to cause a fight between <CHARNAME> and yourself over a simple suggestion I made.~
== BSANDR ~ Sshh! This has nothing to do with you, Finch. If <CHARNAME> decides to act like an imbecile, it is time to remind <PRO_HIMHER> of a proper education.~
END
++ ~ Ha ha ha, Sandrah, I love your temperament, but spare your real wrath for Naronguth and such. Hey, did you not see this little shimmer in my eyes. Imoen can assure you, it is always there when I make a joke or try to fool someone. ~ + SuFiBookQ3

CHAIN
IF~~ THEN BSANDR SuFiBookQ3
~ (Sandrah takes your arm and laughs with you.) And I thought we have our first lover's fight right here on the street in front of my father's house. You have really got me fooled. (Blushes deep red.)~
END
++ ~ (Kiss her.) I envy your enemies. Just before you strike them down, the last they see in their lives is your utmost beauty when you are angry. What a way to die. But enough, let us see Clarissa now.~ 
EXIT

CHAIN
IF ~ Global("SanSuBH","GLOBAL",13)InParty("Sufinch") ~ THEN BSANDR SuFiBookQ60
~ What have you found, Finch?~
DO ~ SetGlobal("SanSuBH","GLOBAL",14) RealSetGlobalTimer("BloomwT","GLOBAL",1200)~
==IF_FILE_EXISTS BSUFINCH~ Sandrah, I have memorised something about that crazy writer Monteelah. Maybe it is helpful. ~
== BSANDR ~ Please, just tell it to us, then we may see.~
==IF_FILE_EXISTS BSUFINCH~ It is reported that Monteelah was found one day on the beach near Ulgoth's Beard washed by waves to the shore. He could not remember his name or past or anything. It was later he started to write his books to make a living as he seemed not to have learned any handicraft in his former life. ~
== BSANDR ~ The hints and descriptions in his book are his own writing. So he remembers about the island and what is there to be found.~
==IF_FILE_EXISTS BSUFINCH~ That is true. It does not fit together. And what sense would you make out of that? ~
== BSANDR ~ His amnesia might have been a trick to conceal his real past life. The life of a pirate and maybe sole survivor of a pirate ship that has hidden a treasure on some island. But somebody from his past has recognised him and knows what is really behind his unreadable book that has not gone into public publishing.~
==IF_FILE_EXISTS BSUFINCH~ His other books are at least more readable. He could make a living out of them. But we cannot ask him anymore. He died in the Beard two winters ago.~
EXIT

CHAIN
IF ~ Global("SanSuUnKnBo","GLOBAL",1) InParty("Sufinch") ~ THEN BSANDR SaFiBoUnkn
~ Finch, have you ever heard about that great *Book of Unknowing*?~
DO ~ SetGlobal("SanSuUnKnBo","GLOBAL",2) ~
==IF_FILE_EXISTS BSUFINCH~ Hm, not that I know of it. But, wait - (Laughs) - if I understand it correctly, I may have held in in my hand and even read it, but I simply would not know of it, right?~
== BSANDR ~ Misty, misty indeed. I guess that would only happen to true believers in Leira. Us trivial unknowing mortals may have a chance to see it and remember.~
==IF_FILE_EXISTS BSUFINCH~ Whatever, Sandrah. It sounds like an interesting subject. My, if we could only get access to Candlekeep again.~
== BSANDR ~ We have a number of reasons to attempt for that, this book being the least of it. The knowledge to be found there is also related to our friends <CHARNAME> and Imoen and their heritage and fate.~
==IF_FILE_EXISTS BSUFINCH~ As always, you are right Sandrah. I so often forget to lift my nose from my scrolls and books and look at the greater perspective for a moment. Yes, yes, this mysterious book is but a side dish on the larger menu of our quest.~
EXIT

// Coran

CHAIN
IF ~ Global("SanCoran","LOCALS",2)~ THEN BSANDR SanCoranFi
~ So you are from the beautiful Tethir forest, Coran.~
DO~ SetGlobal("SanCoran","LOCALS",3)~
== BCORAN~ You are well educated, my fine maid, and yes I hailed from there once but I called many places my home since then.~
== BSANDR ~ With surely more to follow if you stay with this company.~
== BCORAN~ And what a delight that will be, sweetling, to explore them on the side of the Flower of Toril.~
== BSANDR ~ (Laughs) How many poor broken hearted damsels have worn this title before me, elf?~
== BCORAN~ (Smiles back) I am not completely unexperienced with your fair gender, but believe me, I try not to repeat myself in a dull routine. A special flower like you has deserved an adequate treatment - from one competent to provide such.~
== BSANDR ~ I am glad I have found one then. I look forward to find out what a true *master of the arts* may have in store for me.~
== BCORAN~ (Places a quick kiss on Sandrah's fingertips.) Fair maiden, that is a challenge I am more than happy to accept.~
EXIT

CHAIN
IF ~ Global("SanCoran","LOCALS",4)~ THEN BSANDR SanCoranbo
~ (Sandrah has stopped by the side of the road and kneels down to relace her boot.)~
DO~ SetGlobal("SanCoran","LOCALS",5) RealSetGlobalTimer("SanCoranTi","LOCALS",3600)~
== BCORAN~ (Coran dashes to her side.) Sweetest maiden, let your poor servant kneel for you to provide his humble service...~
== BSANDR ~ No, Coran, get up immediately. Do you not see that a number of fair maidens from this village may observe this scene - you spoil all your chances for this eve if they see you like that.~
== BCORAN~ By Hanali, you would be right, my fairie, if such a need would exist. A hunter should never be so careless, I admit.~
== BSANDR ~ A hunter should never set all his chances on one single arrow. His plate may remain empty for his lonely supper.~
== BCORAN~ Which would be of no matter at all, when he has the vision of a foot so light that it barely touches the dust of the road but yet able to trample the mightiest ogre into the mud.~
== BSANDR ~ Our dreams may well let us forget the empty stomach for a while. Do not let such carelessness become a habbit, my elfish poet. The labours of romance require a fair amount of stableness.~
EXIT

CHAIN
IF ~ Global("SanCoran","LOCALS",6)~ THEN BSANDR SanCoranSi
~ (Sandrah has inspected the dusted celeste in the remote corner of the inn's public room. Some muted notes begin to evolve into a melody under Sandrah's adept fingers.)~
DO~ SetGlobal("SanCoran","LOCALS",7) RealSetGlobalTimer("SanCoranTi","LOCALS",600)~
== BCORAN~ Hmmm, dadada...~
== BSANDR ~ Coran I heard you sing before, I really need your voice for this little tune, my own would spoil the whole performance.~
== BCORAN~ (Coran dreamily closes his eyes.) Keep playing, I do not know the tune but your fingers already play the melody on my spine and nerves...yes... ~
=~*Like the word that is whispered by the morning breeze,
your name was blown to my ear through the hassle of a busy day,
I had to stop where I stood and I sank to my knees,
Why is your voice so near when you're still far away...* ~
== BSANDR ~ (Sandrah repeats the last line on her instrument before Coran opens his eyes again, returning from a kind of trance.)~
== BCORAN~ Kitten, you really play me like that instrument, the dust is blown away and a freshness fills my thoughts - my thoughts of you. (He stands behind the seated girl now with both his hands on her shoulders.)~
== BSANDR ~ A great singer, and a poet on the side. I wonder why you have not become a bard, Coran.~
== BCORAN~ A good thief needs a number of talents to distract his victims while his quick fingers remove their purse.~
== BSANDR ~ And what did you steal from me, smart thief?~
== BCORAN~ I small piece of your heart maybe, too small to hurt you, but the greatest of treasures for me I can imagine.~
== BSANDR ~ You poets have just one little problem - your words are always a bit too sweet to be believed.~
== BCORAN~ Just like you, Sandrah, my little dream weaver. In the end you require tangible facts. I am not afraid to give you proof of the truth of my promises. (He kisses the neckline of the girl still sitting at her instrument.)~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",8)~ THEN BSANDR SanCorBedrol1
~ (Coran observes Sandrah's preparations for the nightly rest.)~
DO ~SetGlobal("SanCoran","LOCALS",9) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN~ It really grieves me to be forced to observe such a sad sight every evening, kitten.~
== BSANDR~ A sad sight, Coran? I had dearly hoped that the sight of me out of my armour would rather delight such a conaisseur of fair maidens like you are.~
== BCORAN~ Oh, sure, you are a statuesque beauty, flawless in every respect, a perfection rarely to be found and worth every moment of admiration. But then - you slip into the cold bedroll, alone! - where a long queue of cavaliers should line up willing to pleasure you.~
== BSANDR~ And what would my Coran do if those were standing there?~
== BCORAN~ Just to be admitted to that queue at all - be it even at the very low end of it - would force my heart into singing out loud.~
== BSANDR~ Let me hear the song, sweetheart, and get promoted by one slot.~
== BCORAN~ 
*The lark that watched the maiden undress,
Told me of beauties of heavens, no less,
I sing along with that bird, an anxiuous elf
As in short while I must see it all for myself.*~
== BSANDR~ (Smiles and blows Coran a kiss.) Probably you will, thief of maiden hearts.~ DO~RestParty()~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",10)~THEN BSANDR SanCorVine
~  Two bottles of wine? Is that not a bit too much at once?~
DO ~ SetGlobal("SanCoran","LOCALS",11) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN~ Kitten, I was not totally sure which one you would prefer, so I brought along two different ones for you to decide, the sweet one in this bottle or the fruity one in the other.~
== BSANDR~You know well, my expert, the sweet one gives you a short glimpse into paradise, but it will not last long. What is left is a sticky feeling in the mouth and maybe even a bit of a headache.~
= ~ That dry fruity one may not reveal its potential at the first sip, but the more time you allow it to settle on you, the more of its depth you recognise. The taste in your mouth stays for a long while and you even experience new nuances over time.~
== BCORAN~ Sandrah, you have very well described what sets you apart from the large crowd of sweet damsels that can be found in every town we enter. Yours is the taste that requires time and patience to explore fully, even if the label already lets you guess the universe of pleasure that may await the one who is willing to risk it.~
== BSANDR~Coran, we will see if your courage is enough to venture further.~
== BCORAN~ Be prepared, Sandrah, it may turn out to be.~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",12)~THEN BSANDR SanCorEve1
~  (Sandrah closes her book as the light fades and reading becomes impossible.)~
DO ~ SetGlobal("SanCoran","LOCALS",13) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN~ I have studied you studying your tome for quite a while, Sandrah.~
== BSANDR~ And did you learn as much that way as I did reading the lore?~
== BCORAN~ I heard people talk about the beauty that lies in knowledge. Looking at you while learning gives that expression some new meaning.~
== BSANDR~ Come lie beside me, my busy student, let us forget about that heady stuff at this wonderful hour.~
== BCORAN~ (Coran stretches himself beside Sandrah and starts to play with her long curls she has loosened for the evening.) It is truely a very peaceful scenery over the land at this hour. Not something we can share very often in these days.~
== BSANDR~ (Sandrah has opened Coran's shirt and caresses his bare breast.) You are a nice company to share such a moment.~
== BCORAN~ Your own company makes just any moment of any day a special one, kitten.~
== BSANDR~ Stop talking. (She puts a finger to his lips to silence him while her teeth have started to nibble on the skin of his chest.)~
== BCORAN~ (Coran sucks on her fingers while his hands slowly search for the laces of the light gown she has put on after her evening bath.)~
== BSANDR~ (Darkness comes quickly at this time of the year...)~DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF~ Global("SanCorShirt","LOCALS",1)~ THEN BSANDR SanCorshirt
~ Are you glancing at these shirts to buy one, darling. A bit of an enhancement to your outfit would make even more girls get attracted to you.~
DO ~ SetGlobal("SanCorShirt","LOCALS",2)~
== BCORAN~My kitten, do you not see those are actually blouses, I am gazing at. A weird thought has just crossed my mind...could your magic not turn me into one of those?~
== BSANDR~ Long sleeves or short?~
== BCORAN~Eeh? What? Oh, long ones, so that I would cover even more of your perfect beautiful body, my love.~
== BSANDR~ Oh, Coran, I am so sorry...oops I was too fast with my spellcasting.~
== BCORAN~ Why, what is wrong?~
== BSANDR~ I prematurely thought you were eyeing that big store wench for some time already, so I made you a blouse some sizes to large for me. Poor Coran - or maybe not, I am sure you will make the best of the situation - at least she is also female.~
== BCORAN~ How can you still think I have eyes for any female except for my one and only Queen of Hearts.~
== BSANDR~(Laughs) I do not doubt that - only I never know who is the one to wear this title at any moment, the changes are too rapid. (She kisses the perplexed elf on the mouth before she twirls away to inspect some girdles in a shop display.)~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",15)~THEN BSANDR SanCorEve2
~ Yes? I mean yes!~
DO ~ SetGlobal("SanCoran","LOCALS",16)~
== BCORAN~ You mean yes, kitten?~
== BSANDR~ Do you still see someone in front of you in the queue volunteering to remove the terrible coldness from my bedroll tonight?~
== BCORAN~ If I did I would simply ignore him, I guess. There is a glitter in your eyes today that tells me it is meant for me.~
== BSANDR~ No cold feet, my elf? ~
== BCORAN~ Do you have such?~
== BSANDR~ Oh, yes, and the coldness is starting to creep up my legs already as the only one who could do something about it still stands around babbling instead of acting.~
== BCORAN~ No wonder, the way you have dressed tonight is wonderful but surely not keeping you warm.(Coran swiftly lifts Sandrah onto the rest of his armchair and removes her high heeled slippers to massage her naked feet. Slowly but expertly his fingers start to move upwards on her leg that extends from her glimmering night shirt.)~
== BSANDR~ Hmmm. It starts to get a bit warmer. (Her own hands have vanished beneath the morning gown Coran is wearing after his bath at the inn.)~
== BCORAN~ (Coran lifts his lightweighted lover up and starts to move towards the staircase.) Soon, my sweet prey, it will get pretty hot. Mmpf.~
== BSANDR~ (Sandrah's hungry mouth has already stopped any further words from the elf.)~
DO~ RestParty()~
EXIT

CHAIN
IF ~Global("SanCoran","LOCALS",17)~THEN BSANDR SanCormor1
~ (Yawn)~
DO ~ SetGlobal("SanCoran","LOCALS",18) RealSetGlobalTimer("SanCoranTi","LOCALS",1800)~
== BCORAN~ (Yawn)~
== BSANDR~ (One glance at Sandrah shows you that she certainly did not sleep much last night.)~
== BCORAN~ (Coran wears dark rings below his eyes which he hardly keeps open.)~
END
++~ We have a good march in the fresh air before us this morning, friends! Ready?~ + SanCormor2

CHAIN
IF~~ THEN BSANDR SanCormor2
~ Sure. (Stiffles another yawn)~
== BCORAN~ Whatever.(Yawn)~
== BSANDR~ Sweetheart, what would you need to get you awake?~
== BCORAN~ The chance to get a few minutes of rest from that hungry beast that drained me tonight.~
== BSANDR~ (Quickly kisses Coran and then weaves a small gesture in his direction.)~
== BCORAN~ Ahh. Seems that this helps as well...~ DO~ CreateVisualEffectObject("SPFLESHS","Coran")~
EXIT

/* Coran Babytalks */

CHAIN
IF~ Global("SanCorbabe","GLOBAL",1)~ THEN BSANDR  SanCorbabe1
~ (Sandrah smiles at Coran.) You seem to be surprised. Do you not have a number of those little ones already?~
DO ~ SetGlobal("SanCorbabe","GLOBAL",2) SetGlobal("P#CoranBaby","GLOBAL",1)~
== BCORAN~ By Hanali, YOU do not seem to be surprised the least of having me revealed as a father.~
== BSANDR ~ Given the longivity of an elf and your personal lifestyle, my surprise is that this is the first encounter of that kind since we met.~
== BCORAN~ It sounds like you expect the Sword Coast to be flooded by my offspring...~
== BSANDR ~ (Laughs.) Kind of, yes. Now, but honestly, Coran, it seems like it is the first time you encounter this situation and ... hm, what are you going to do about it?~
== BCORAN~ What? Eh, did we not help the girl already by restoring her from that curse?~
== BSANDR ~ Does your fatherly care end with that, elf. I must say I am disappointed. I was expecting you to care more for the ones that are close to you.~
== BCORAN~ But she isn't close to me anymore. You have heard it yourself, Brielbara is past and I am past for her.~
== BSANDR ~ Maybe so - for her. But what about Namara? She is your child and she is not past.~
== BCORAN~ Why do you care so much about other woman's children, Sandrah, even if I am their father?~
== BSANDR ~ Should I not? Maybe I should not care about this father as well?~
== BCORAN~ But, sweet kitten...(Sandrah has already turned and moved on.)~
EXIT

CHAIN
IF~ Global("SanCorbabe","GLOBAL",4)~ THEN BSANDR  SanCorbabe2
~ (Sandrah has moved close to Coran as the elf somehow helplessly fondles Namara.) Let me give you a hand, Coran. Even if I am not mother I know a bit about childcare from my healer's education.~
DO ~ SetGlobal("SanCorbabe","GLOBAL",5) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~
== BCORAN~Luck be a Lady, Sandrah, and it seems to me that you are both my lady and my luck.~
== BSANDR ~*smiles and strokes Namara’s head* I think that title rightfully belongs to this little lady.~
== BCORAN~I went back to her mother because of you... It was the greatest surprise in my life. When I saw the child, my heart went cold, for thoughts of what you were going to do.~
= ~I was expecting you to berate me for Namara’s existence every time you were cross with me, turning our sweet companionship into the unbearable.~
= ~Yet, you insisted that I decided on something... good. I was lucky that it was you by my side that day or, as the Seldarine know, I would have acted like a selfish brat.~
== BSANDR ~I am not of the Seldarine, but I know that you would not have acted as a selfish brat, Coran. There is honor in you. Sooner or later, you would have done the right thing.~
== BCORAN~You... you see me that way? As an honorable man?~
== BSANDR ~Not exactly paladin-like honorable, but close enough.~
== BCORAN~That’s... that’s such a strange thing to hear from a woman. But then...you're different from all of those I have ever known, kitten.~
EXIT

CHAIN
IF~ Global("SanCorbabe","GLOBAL",6)~ THEN BSANDR  SanCorbabe3
~ (Sandrah has taken Namara from Coran and nurses the baby with a bottle of milk. She hums a little tune and the girl smiles and sucks the bottle eagerly.)~
DO ~ SetGlobal("SanCorbabe","GLOBAL",7) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",COROM_TIMER)~
== BCORAN~ You have never asked, but do you want to know about Briel?~
== BSANDR ~Only if this story is different than all others.~
== BCORAN~It was different. I was always the one to go for merry women with easy wit and little fear. Brielbara was not the type at all. (Nor are you...)~
= ~I was broke then, and had to resort to cutting purses in the market square - the most miserable kind of thievery, if you ask me. So I was meddling in the crowds, keeping my eyes open for a well-to-do merchant, and the City Watchers...~
= ~You know how in the buzz and swirl of the crowd, a single creature or object suddenly catch your attention and you focus on them, as if nothing else exists? I saw Briel this way - a woman in long robes, with her head and face draped by a silken shawl, so that only her eyes were visible.~
== BSANDR  ~Your imagination, however, quickly added details...~
== BCORAN ~*grins* It is almost scary how well you know me.~
= ~Brielbara stood in front of the flower merchant and looked at the blooms for a while. And I looked at her... Then she startled and hurried away. Something in this startle endeared her to me. I did not have the time to light-finger a bud, and only enough money to buy a single red flower. I did so, and ran after her.~
= ~When I offered her the flower, there was surprise and gratitude in her eyes, but she shook her head and told me that she was married. 'Well,' I replied, 'so much the better. I am for making you happy, and your husband - to take care of all your other needs.'~
= ~The next thing I knew, I was standing in the middle of the busy street in Baldur’s Gate, hugging a strange woman who sobbed into my shoulder. In a moment, she wiped her tears away and straightened. You met Yago... he was quite apt at devouring the very last shred of happiness from his wife. Brielbara was determined to snatch out of his jaws whatever she could. Rarely have I met woman who plunged into an affair with such decisiveness and passion.~
= ~After a while, being fed up with seeing bruises all over Brielbara’s body and listening to what her husband did to her, I suggested that I spirit her away from Yago. At first she was quite fascinated by the prospect, but when she understood that I would neither stay with her long after our escape, nor settle down in a remote corner of the world, she told me that a human’s life is too short to make new starts.~
= ~A good dose of despair in the gaiety of our meetings finally wore me down, and I left.~
== BSANDR ~So, it was the memory of happiness, which prompted her to keep Namara. I would have run away with you, even if I knew it would only last for a day...~
== BCORAN ~*Coran embraces her and kisses her hair lightly.* I know, my firehearted kitten.~
EXIT

CHAIN
IF~ Global("SanCorbabe","GLOBAL",8)~ THEN BSANDR  SanCorbabe4
~ (Sandrah looks expectantly at Coran who finished to read a letter.) Good or bad news, my love?~
DO ~ SetGlobal("SanCorbabe","GLOBAL",9) RealSetGlobalTimer("P#CGBabyTalkTime","GLOBAL",180)~
== BCORAN~ I would leave that decision to you, kitten, as much as you've grown fond with my little baby. But I received a message from Brielbara. Her affairs are settled, and she’d like to take Namara back.~
== BSANDR ~ You are right, I love the little one - but I am not her mother, just a substitute for a time, so of course I accept her rights. And Coran... take this gold from my purse, please. Brielbara will look more favorably on you if you do not arrive empty-handed.~
== BCORAN~You would trust a thief with your gold and the knowledge of your full purse?~
== BSANDR ~I would trust *you* with that.~
== BCORAN~Thank you, kitten. But what... what did you mean about Briel liking me?~
== BSANDR ~Coran, you sired Namara on Brielbara, and you are quite fond of the child. I will let you figure it out on your own, my sweet elf.~
== BCORAN~My Lady Luck, my sweet kitten. *Coran holds Sandrah close and whispers into her ear.* You and me is the right thing... the whole thing. If you believe me, I'll be waiting for you in the 'Sturgeon.'~  DO ~ LeaveParty() SetGlobal("P#CoranMoves","GLOBAL",1)SetLeavePartyDialogueFile()~
EXIT

CHAIN
IF~ Global("SanCorbabe","GLOBAL",12)~ THEN BSANDR  SanCorbabe5
~ (Sandrah seems to hesitate for a short moment as she sees Coran again.)~
DO~ SetGlobal("SanCorbabe","GLOBAL",13)~
== BCORAN~ A'maelamin Sandrah, cormamin lindua ele lle... ~
== BSANDR ~(Smiles) And so does mine heart sing at the sight of you.~
== BCORAN~Ah, a’maelamin, I have missed you so! (Coran catches Sandrah in his arms and swirls her around.) Ah, I am sorry, I was talking to you in my thoughts all the way here and slipped to elvish inadvertently. My heart sings to see thee, beloved kitten. Hmm... it sounds more... natural in elvish than in Common. Never mind!~
== BSANDR ~It feels already like you have never been gone!~
== BCORAN~How have you been, my kitten? Unhurt? And not seduced by some irresponsible vagabond? I want to know of every moment I have missed... ~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT


// Jaheira First

CHAIN
IF ~ Global("JarKhalBant1","GLOBAL",1) Global("SanRomPath","GLOBAL",1)
~ THEN BSANDR JarBant1m
~ (Jaheira has chosen a quiet moment to approach Sandrah.)~
DO ~SetGlobal("JarKhalBant1","GLOBAL",2)~
== BJahei ~ On a word please, Sandrah.~
== BSANDR ~ Sure, Jaheira. By the way, it is good that you are with us now.~
== BJahei ~ Thank you, but I am not looking for compliments at the moment. Your words at the Inn and the way you avoided the topic of your father have unsettled me a bit.~
== BSANDR ~ I can imagine that. But believe me, I am not trying to hide anything - just I am not confronting <CHARNAME> with everything at once. I think he has to gain some insight on his own before any of us should reveal more than necessary.~
== BJahei ~ I would agree to that, provided your motives are just. So I gathered from what you said - I mean what you not said - that your father does not know about your own little interference here? ~
== BSANDR ~ He did not send me himself, but he has surely found out by now. I can only hope he has as much trust in me as I can ask you to trust me.~
== BJahei ~ Mh, on behalf of your father, I decide to trust you for the time being and keep my mouth shut towards <CHARNAME>. But I will keep my eyes on you, little Sandrah.~
== BKhali IF ~ InParty("KHALID") ~ THEN ~ N-n-not so little anymore, f-f-fine lady S-S-Sandrah, a real nice lady indeed...~
== BJahei IF ~ InParty("KHALID") ~ THEN ~ KHALID!~
== BKhali IF ~ InParty("KHALID") ~ THEN ~ Mmmh.~
EXIT

CHAIN
IF ~ Global("JarKhalBant1","GLOBAL",1) Global("SanRomPath","GLOBAL",2)
~ THEN BSANDR JarBant1f
~ (Jaheira has chosen a quiet moment to approach Sandrah.)~
DO ~SetGlobal("JarKhalBant1","GLOBAL",2)~
== BJahei ~ On a word please, Sandrah.~
== BSANDR ~ Sure, Jaheira. By the way, it is good that you are with us now.~
== BJahei ~ Thank you, but I am not looking for compliments at the moment. Your words at the Inn and the way you avoided the topic of your father have unsettled me a bit.~
== BSANDR ~ I can imagine that. But believe me, I am not trying to hide anything - just I am not confronting <CHARNAME> with everything at once. I think she has to gain some insight on her own before any of us should reveal more than necessary.~
== BJahei ~ I would agree to that, provided your motives are just. So I gathered from what you said - I mean what you not said - that your father does not know about your own little interferance here? ~
== BSANDR ~ He did not send me himself, but he has surely found out by now. I can only hope he has as much trust in me as I can ask you to trust me.~
== BJahei ~ Mh, on behalf of your father, I decide to trust you for the time being and keep my mouth shut towards <CHARNAME>. But I will keep my eyes on you, little Sandrah.~
== BKhali IF ~ InParty("KHALID") ~ THEN ~ N-n-not so little anymore, f-f-fine lady S-S-Sandrah, a real nice lady indeed...~
== BJahei IF ~ InParty("KHALID") ~ THEN ~ KHALID!~
== BKhali IF ~ InParty("KHALID") ~ THEN ~ Mmmh.~
EXIT

CHAIN
IF~ Global("JarKhalBant1","GLOBAL",3)~ THEN BSANDR JarBant2
~ (Sandrah has sensed that Jaheira is not within earshot as she approaches Khalid.) ~
DO ~SetGlobal("JarKhalBant1","GLOBAL",4)~
== BKhali ~ L-little lady (His ears redden.)~
== BSANDR ~ No need to be nervous, my friend, Jaheira is occupied elsewhere. I wanted to talk a bit with you. Your opinion and memory alone is of interest to me at this moment.~
== BKhali ~ Thank you, Sandrah, normally people always address Jaheira in matters of importance. (He straightens his shoulders - his stuttering seems to have gone.)~
== BSANDR ~ From your words the other day I have deducted that you have known my mother still alive.~
== BKhali ~ Well, you have probably heard a thousand times already how much you resemble her, so you surely want to hear something else this time. ~
= ~ She has loved your father with all her heart, although some people were looking strangely at their apparent difference in age.~
== BSANDR ~ But you know well, that my father is blessed by Mystra with a prolonged life and has the heart, strength and soul that many younger men are lacking.~
== BKhali ~ True, and you yourself are the best proof of his capabilities and also the love between your parents.~
== BSANDR ~ Not even the devilish plan of the murderous God has ever lessened father's love for my mother, he still adores her every single day. But how was she in her daily life?~
== BKhali ~ She loved all living things, plants and animals, not like a druid does, more from her heart, if you know what I mean. And she loved to sing. Your garden at Waterdeep was always resounding with her songs. We all have lost so much with losing her...~
== BJahei IF~ InParty("Jaheira")~ THEN~ Now, you two, what are you sticking your heads together for?~
== BKhali IF~ InParty("Jaheira")~ THEN~ Oh, Jaheira, I-I-I was telling Sandrah about her m-mother.~
== BJahei IF~ InParty("Jaheira")~ THEN~ Ah, what do you know, blind romantic fool. Lovely fool.~
EXIT

CHAIN
IF~ Global("JarKhalBant1","GLOBAL",6)~ THEN BSANDR JarBant2al
~ (Sandrah has approached Khalid.) ~
DO ~SetGlobal("JarKhalBant1","GLOBAL",4)~
== BKhali ~ L-little lady (His ears redden.)~
== BSANDR ~ No need to be nervous, my friend, Jaheira is not present. I wanted to talk a bit with you. Your opinion and memory alone is of interest to me at this moment.~
== BKhali ~ Thank you, Sandrah, normally people always address Jaheira in matters of importance. (He straightens his shoulders - his stuttering seems to have gone.)~
== BSANDR ~ From your words the other day I have deducted that you have known my mother still alive.~
== BKhali ~ Well, you have probably heard a thousand times already how much you resemble her, so you surely want to hear something else this time. ~
= ~ She has loved your father with all her heart, although some people were looking strangely at their apparent difference in age.~
== BSANDR ~ But you know well, that my father is blessed by Mystra with a prolonged life and has the heart, strength and soul that many younger men are lacking.~
== BKhali ~ True, and you yourself are the best proof of his capabilities and also the love between your parents.~
== BSANDR ~ Not even the devilish plan of the murderous God has ever lessened father's love for my mother, he still adores her every single day. But how was she in her daily life?~
== BKhali ~ She loved all living things, plants and animals, not like a druid does, more from her heart, if you know what I mean. And she loved to sing. Your garden at Waterdeep was always resounding with her songs. We all have lost so much with losing her.~
== BSANDR ~ Thank you, my friend. (Sandrah touches Khalid's cheek gently.) ~
== BKhali ~ (Murmers) If you only knew how much you resemble that lovely being...~
EXIT

CHAIN
IF~~THEN  BSANDR SanJAHHea1
~ Thank you, Jaheira, for correcting my actions. In the heat of the battle I tend to cast my healing spells almost instinctively on those I see in need. You are right, I should learn to focus my resources on those who do not have the possibilities themself.~
DO~  SetGlobal("SanHealjah","GLOBAL",4)~
== BJahei ~ Oh, Sandrah, like so often you misunderstand me. It was not my intention to critise you at all. Although I now would agree with your self-analysis.~
== BSANDR ~ And you mistake me as well. I have not felt critisized at all. I know I am not yet at the end of my education and I have understood your words as those of a tutor, not those of a critic. You have the experience I still lack and I am willing to learn.~
== BJahei ~ Mmh, if that is so, then well, yes. I will continue to give you my advice when I see need for it.~
== BSANDR ~ I am not so unexperienced as not to hear the lingering mistrust in between your words, Jaheira. How did I raise your suspicion this time?~
== BJahei ~ I admit, I have not made up my mind on you yet. You are not an easy person - I mean you do so many contradicting things, some wise, some foolish from my point of view, I just cannot come to any conclusion.~
== BSANDR ~ Like what, Jaheira?~
== BJahei ~ Please, do not insist on an answer right now. Let us move on. We should delay this talk to another day.~
EXIT

CHAIN
IF ~ Global("SanJahKiv","GLOBAL",1)~ THEN BSANDR SanjahKiv
~ ...both of you are the result of such relationships, Jaheira. ~
DO ~ SetGlobal("SanJahKiv","GLOBAL",2)~
== BJahei ~ True, but irrelevant for our topic. You are intelligent enough to recognise that you will never take the place of his mela en'coiamin. So what are you trying to do? And what about <CHARNAME>?~
== BSANDR ~ If there was ever a Harper than it is you, Jaheira. Always with the nose and fingers in other people's business. Listen, I do not want to insult you, I know you are the self-appointed warden of <CHARNAME>. But I care for <PRO_HIMHER> from the depth of my heart as well.~
== BJahei ~ That is not so clear from this situation you have created!~
== BSANDR ~ You mean to say, it is not so clear to you. And that is disturbing you. You still do not trust me.~
== BJahei ~ Mh. I was about to. But your actions seem to shift so rapidly, I cannot see clearly anymore.~
== BSANDR ~ But you think you must in order to protect <CHARNAME> and so we can run around in circles for a long time. So I think the only means to avoid that is to endure your scrutiny.~
== BJahei ~ Good. So what about Kivan?~
== BSANDR ~ You are absolutely right, I will never become his mela en'coiamin. But I can be his reason to continue on this plane, as he calls it, and to make his days worth living.~
== BJahei ~ Why do you want to keep him here? Let him travel on to Arvanaith and Deheriana. A healer like you cannot really be so selfish to let him suffer on this plane just for a few nightly pleasures.~
== BSANDR ~ (You can see that Sandrah is fighting very hard with herself for a moment. Jaheira instinctively has taken two steps back and grabbed her stick with both hands.)~
== BJahei ~ So?~
== BSANDR ~ Well, as you do not care for other people' feelings and beliefs, I will not care for yours now! I do not care if you believe in Arvanaith for yourself or not! ~
= ~ I will not let this man go blindly into his death and self-distruction! This wonderful man who has so much more to give in his life. Forget about the legends and myths of your Arvanaith! It does not exist! The only place where he will ever see his beloved Deheriana is in his dreams. I will not let him throw his life away and go into the dark void which is all there is after death. Life is here and now - not in the afterworld whatever name you give to it.~
== BJahei ~ A-a-a-and <CHARNAME>?~
== BSANDR ~ <CHARNAME> is my mela en'coiamin, if you grant us humans such, and <PRO_HESHE> is much more understanding and knowing than you can ever imagine. Stick your chauvinistic thoughts of jealousy where you want them, but <CHARNAME> knows that I am true to <PRO_HIMHER>, even if I am trying to save the life of an elf who deserves it.~
== BJahei ~ But, Sandrah...~
== BSANDR ~ Enough! If you do not understand it by now, you never will.~
EXIT

CHAIN
IF ~ Global("SanHealkal","GLOBAL",7)~ THEN BSANDR SanKhaInt
~ (Sandrah has taken off her armour and boots and sits with her light skirt in the last bits of light to study her tome again.)~
DO ~ SetGlobal("SanHealkal","GLOBAL",8)~
== BKhali ~ You are the most beautiful scholar I have ever seen, Sandrah, illuminated by the dying embers and studying your enourmous tome.~
== BSANDR ~ (Sandrah smiles at Khalid who sits down beside her for a talk.) It must be this special light. It lets you shine as well like a shimmering strong knight - but then, it must be more than just the light, maybe it is your true nature that shows when all the disturbing surrounding is eliminated.~
== BKhali ~ Well, and I thought I could master a compliment. These words were surely not written in that book of Elminster.~
== BSANDR ~ Elminster sure could have written about romance in his way, he has the necessary experience. But, yes, he limits himself to facts in his book.~
== BKhali ~ So you will need to find another source for the experiences you might want to gain in the arts of love.~
== BSANDR ~ Travelling the Sword Coast like we do, might help in this. I can take the opportunity to flirt with a stately knight, for example, when he is not occupied with his *dragon* tasks for a while.~
== BKhali ~ (Khalid has moved a bit closer to Sandrah.) A young lady like you will be able to attract such a knight quite easily if she wanted to.~
== BSANDR ~ (Sandrah has closed her book and put it into her backpack. She rises to her naked feet displaying her well shaped legs in her short skirt.) Would you mind to take a little stroll outside of the camp before the meal is ready. This knight and damsel topic is quite an issue that any young girl likes to learn more about from someone who seems to know a bit.~
== BKhali ~ With great pleasure, mylady. (Khalid takes Sandrah's hand which she had offered to help him to his feet and the two wander off into the darkness hand in hand.)  ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanHealkal","GLOBAL",9)~ THEN BSANDR SanKhaInt2
~ Jaheira, this look again? Just talk to me if there is some problem you have with me.~
DO ~ SetGlobal("SanHealkal","GLOBAL",10)~
== BJahei ~ Well, hm, so what is going on there between you and my husband, Sandrah?~
== BSANDR ~ Going on? I do not like the tone of that question at all. Jaheira, you have a wonderful and loving husband and there is nothing *going on*. I like him very much and I enjoy talking with him whenever he has some time for me.~
== BJahei ~ That is all, young one? Are you really so innocent or just so cunning?~
== BSANDR ~ He is your husband and he loves you exquisitly. What is so wrong if he spends a moment now and then with a young girl, even if she is charming and beautiful. Do you trust him so little?~
== BJahei ~ Hm, Sandrah, probably it is really like you say - in your eyes. But I know my husband's weaknesses well. I beg of you as a friend, please do not encourage him to think he is more than a comrade to you. ~
== BSANDR ~ I have done and will do nothing that may come between you and the man who loves you more than anything on Toril. I can assure you, it is not just gratitude that binds him to you. You really have not the least reason to doubt him.~
== BJahei ~ Is that really so, Sandrah? ~
== BSANDR ~ It is - and it makes me a bit sad that you really doubt such an honest man. I have enjoyed every moment I spent with him in friendship, but now this has become bitter for me.~
= ~ I promise you one thing, Jaheira - (Sandrah has a tear in her eye.) - I will not tell Khalid about this conversation and your mistrust in him.~
== BJahei ~ Thank you.~
EXIT

CHAIN
IF~ Global("SanFrJah","LOCALS",1)~ THEN  BSANDR SanJAHTut
~ (Jaheira and Sandrah march side by side in front of you.)~
DO~ SetGlobal("SanFrJah","LOCALS",2)~
== BJahei ~ Elminster's daughter.~
== BSANDR ~ Sandrah is my name. Or do you still think I have not earned to be called by my own name by now, Jaheira?~
== BJahei ~ Sure, Sandrah, I had no intention to belittle you. Your name in the Realms is starting to get famous already, you may even outgrow you father's reputation in just a while.~
=~ I called you his daughter just because of that growth. The little girl I knew is on her way to something, whatever it is. And <CHARNAME>'s fate is related to you. Consequently your companions like me are involved as well.~
== BSANDR ~ Are you concerned about that, Jaheira.~
== BJahei ~ I ought to be, don't you agree, Sandrah? It was Gorion's wish for Khalid and me to take care of his ward. Even if I must admit that <PRO_HESHE> has probably outgrown our care already.~
== BSANDR ~ That would not change the fact that you are trusted and valuable companions still. And neither <PRO_HIMHER> nor me will ever be so capable as not to have need for your experienced tutalage.~
== BJahei ~ I appreciate your careful considerations, Sandrah, in an older person such would be anticipated as *wisdom*. Hm, and I appreciate your friendship, if I may call it such.~
== BSANDR ~ You may call it that, Jaheira.~
EXIT

CHAIN
IF ~ Global("SanHealkal","GLOBAL",11)~ THEN BSANDR SanKhaIntPeaceG
~ Khalid, it is reported that there is a kind of mystic grove near to this place, a relict of old druid culture. Does that sound interesting to you?~
DO ~ SetGlobal("SanHealkal","GLOBAL",12) ~
== BKhali ~ Sure, especially in your company, Sandrah.~
== BSANDR ~ Then let us join our forces to persuade Jaheira to come with us and be our druid guide in the matter.~
== BKhali ~ Well,eh...if you think so...~
== BSANDR ~ Jaheira! Come with us, we like to walk over to the old druids place with you.~
== BJahei ~ Yes, sure.~
== BSANDR ~ (Sandrah links her arms left and right with Jaheira and Khalid and the three disappear into the near trees...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanHealkal","GLOBAL",13)~ THEN BSANDR SanKhaIntPeaceR
~ (A while later the three reappear chatting and laughing happily - like a family on a sunday trip, you think to yourself.)~
DO ~ SetGlobal("SanHealkal","GLOBAL",14) ~
== BKhali ~ That was quite interesting, especially in the company of such two wonderful guides.~
== BSANDR ~ Amazing how different things appear when seen with a druid's view. Thank you so much! (She kisses first Jaheira and then Khalid on the cheek before she twirls away.)~
== BKhali ~ Oh, my love, I wish we could have a daughter like this...~
== BJahei ~ My lovely husband, *IF* we had a daughter one day, I agree, she should become like Sandrah...~
== BKhali ~ (Khalid lifts Jaheira up easily and swings her around in his strong arms.) There will be no escape and no excuse for you tonight, my sweetheart. I will assure you of my husband's duties.~
== BJahei ~ Lovely fool. (Her attemted protest is drenched in a series of kisses.) ~
EXIT

// Viconia on Male PC

CHAIN
IF ~
Global("VicBant1","GLOBAL",1)
 ~ THEN BSANDR VicBant1
~ (Viconia puts her hand on Sandrah's shoulder causing her to stop.)~
DO ~SetGlobal("VicBant1","GLOBAL",2) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon ~ I think in your surfacer's manner I have to thank you for directing your male to take me into the group.~
== BSANDR ~ What? Oh, I see. You are mistaken, Viconia, but he is not...I mean he is the leader of this group and I do not order him to do things. But, I councelled our leader in the question.~
== BVicon ~ Is that the method of you surface women to rule? Not by open commands but hidden by your undenieable charm. Clever, cunning, almost drowlike.~
== BSANDR ~ Viconia, I'm not ruling him and he is not ruling me although he is the leader of this group. We all follow him in our own free will, just like you do yourself.~
== BVicon ~ Ah, he is not yours - maybe I will use him then. I will have to adjust my poor brain to your twisted way of thinking or I will perish up here in the sun. But it is not easy.~
== BSANDR ~ You are welcome to ask me whenever you feel like that, Viconia.~
== BVicon ~ (Viconia walks on, shaking her head and mumbling in her language, obviously in deep disbelief of what she encountered.)~ EXIT

// Viconia on Female PC
CHAIN
IF ~
Global("VicBant2","GLOBAL",1)
 ~ THEN BSANDR VicBant2
~ (Viconia puts her hand on Sandrah's shoulder causing her to stop.)~
DO ~SetGlobal("VicBant2","GLOBAL",2) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon ~ I think in your surfacer's manner I have to thank you for directing <CHARNAME> to take me into the group.~
== BSANDR ~ What? Oh, I see. You are mistaken, Viconia, she is the leader of this group and I do not order her to do things. But, I councelled our leader in the question.~
== BVicon ~ Is that the method of you surface women to climb up to rule? Not by open rivalry but hidden by your undenieable charm. Clever, cunning, almost drowlike.~
== BSANDR ~ Viconia, I'm not aiming to rule her and she is not ruling me although she is the leader of this group. We all follow her in our own free will, just like you do yourself.~
== BVicon ~ And she will not kill you for mating with her males?~
== BSANDR ~ Her males? They are not hers here on the surface, they have their own right to decide whom they want to love.~
== BVicon ~ I will have to adjust my poor brain to your twisted way of thinking or I will perish up here in the sun. But it is not easy. At least I understand that I can take one of the males for my pleasure if I want to.~
= ~ (Viconia walks on, shaking her head and mumbling in her language, obviously in deep disbelief of what she has heard.)~ EXIT

// Viconia's Piece
CHAIN
IF ~
Global("VicBant3","GLOBAL",1)
 ~ THEN BSANDR VicBant3
 ~ What is that, Viconia? It stirs something in my memory, but I cannot locate it.~
DO ~SetGlobal("VicBant3","GLOBAL",2) GiveItemCreate("Sanwi1","CVSandr",0,0,0) AddJournalEntry(@148,QUEST) RealSetGlobalTimer("VicBantT","GLOBAL",1200)~
== BVicon ~ Rivvin, I had hoped you could tell me what it is. My goddess made it important to me that you would get it. (Viconia hands a small piece of decorated cloth to Sandrah.)~
== BSANDR ~ It is too small to make out much. It has a part of an ornament on it but I cannot say what it may be. It is more the pattern and the colouring in general that makes it look strangely familiar to me. Can you tell me more about it?~
== BVicon ~ I have it for a long time already as I found it on my first day on the surface when I escaped Menzoberranzan. A small group of travellers was attacked by bandits at nightfall. The travellers killed the bandits and hastily escaped protecting the baby children they carried.~
= ~ I crept to the bandit corpses to search them for food and anything valuable as I had escaped the Underdark with just what I had on my body and was very hungry and defenseless. I somehow got this clothpiece in between the other things I took as booty.~
= ~ I had not recognised what I had taken from the bodies out there in the dark. But when I made my camp for the night later and examined my grab I found it.~
== BSANDR ~ What made you keep such a strange piece of cloth for such a long time? It must have been meaningless to you.~
== BVicon ~ Right. I first threw it away with the rest of the unuasable items I had taken from the bandits. But that very night I had a strange dream, a vision from Shar herself I believe. She told me that I would meet another priestess one day that would recognise and need the piece I have found.~
== BSANDR ~ And you now believe that this priestess is me?~
== BVicon ~ I think so. Even though you do not know now the nature of this item, it has some resemblance for you, you feel something on it.~
== BSANDR ~ Yes, I do. But what is it. It does not look like anything a robber or bandit would carry.~
== BVicon ~ I was always thinking it had belonged to the travellers with the babies rather than the bandits. It was torn off during the fight and then I found it.~
== BSANDR ~ Thank you, Viconia. We will find out what it is, somehow. There must be other pieces like that. And there must be a deeper reason, why some goddess thinks that I will need them.~
== BVicon ~ (There is a smile and a look of content on the strange but beautiful face of the drow.)~
EXIT

CHAIN
IF ~ Global("VicBant3","GLOBAL",3)~  THEN BSANDR VicBant4
~ Viconia, one question has been on my mind for some time.~
DO ~ SetGlobal("VicBant3","GLOBAL",4)RealSetGlobalTimer("VicBantT","GLOBAL",ONE_DAY)~
== BVicon ~ You always are willing to help me with my questions, abbil. I will help you with yours, if I can.~
== BSANDR ~ We rescued you from the rage of the Flaming Fist. I believe that the ones hunting you were not really holding any evidence for the accusation against you. But were they simply after you because of your race?~
== BVicon ~ (Viconia is silent for a while. It is obvious that she is not sure to come to terms with her own instincts.) Sandrah, to trust another woman in Menzoberranzan would most likely be asking for your own death. With you, however it is different.~
= ~ Yes, I kill when I must, and when I kill it is in an artful and painful way. But I am no murderer. Do I not see you do that all the time, to kill because you must?~
== BSANDR ~ You are right, except I neither take it as an art nor do I get any satisfaction from it.~
= ~ I understand, you had to kill, and those Fist mercenaries took the opportunity to call it murder?~
== BVicon ~ You are right, Sandrah. The law up here on the surface is for protection of the noble and the righteous. A drow could not even dream to receive justice from any of your courts.~
== BSANDR ~ As much as I hate to say it, Viconia, but I must admit that you are probably right. Any of our courts would sentence you to death for killing even the most depictable surfacer without giving you any chance to justify your deed. The surface has its dark sides as well, and you are an outsider and an outcast from the beginning - at least for most of those who think of themselves as good and righteous citizens. ~
== BVicon ~ But you do not, and <CHARNAME> does not.~
== BSANDR ~ Maybe, because <CHARNAME> has something of an outlaw in <PRO_HIMHER>, and all that follow <PRO_HIMHER> as well. We do good to look at things in more depth and come to our own unprejudiced conclusions.~
== BVicon ~ I killed a man and his son who had taken me in for some time. I was desperate from my long time of running away and hiding on the surface, and I was foolish enough to believe they did not despise me for my race. But I was wrong and I blame my own weakness for it. They took me in on a remote farm but their intentions were not good. They had heard the stories of the pleasures the women of my race can provide to the males, and they just wanted me as the slave for their sick perverted lust. When they tried it - both together - these cowardly bastards - I killed them with my bare hands.~
== BSANDR ~ So it was self defense, not murder. I have to agree that none of our courts would share my personal view on it.~
== BVicon ~ Even worse, as the other son of the man I killed was in the Flaming Fist, and it was him who took after me for revenge for his father and brother in the name of the law.~
== BSANDR ~ So he was not hunting you with the knowledge of his superiors but for a personal revenge disguised as the law. Good to know. So you are not a hunted criminal and we are not outlaws that shelter you.~
== BVicon ~ Sandrah, in a strange way it has felt good to tell you. I feel free now. I can be a member of our group like any other?~
== BSANDR ~ Sure.~
EXIT

CHAIN
IF  ~Global("VicBant3","GLOBAL",5)~ THEN BSANDR VicBant5
~ Viconia, I have a strange sounding request for you, please do not laugh at me, my friend.~
DO ~ SetGlobal("VicBant3","GLOBAL",6)RealSetGlobalTimer("VicBantT","GLOBAL",ONE_DAY) ~
== BVicon ~ Hm, calling me friend is something strange already, as are all the rest of your habbits, still. But I agree, if I am not willing to learn, I will perish on the surface. And you are someone who is worth learning from.~
== BSANDR ~ Viconia, this is not easy for me and I must ask you to keep it as a secret between you and me, especially to <CHARNAME>.~
== BVicon ~ What? Once I think I have learned something about your ways, it turns out I completely must have misunderstood it. You cunning little witch, so you are indeed starting to intrigue against <CHARNAME> and you want me on your side!~
== BSANDR ~ (Sandrah starts to laugh.) Viconia, I should have known I phrased it all wrong for your ears. I want to hide it from <CHARNAME>, but I intend a positive and pleasant surprise for <PRO_HIMHER>, not an intrigue for power or such.~
== BVicon ~ (The strange throaty noises that Viconia makes must be her version of a laughter.) Why do I feel relieved now instead of being disappointed? Looks like I am getting soft and weak already from your influence.~
== BSANDR ~ (You swear you see Sandrah getting a bit rosy on her cheeks like a little girl.) Mmh, Viconia, I like to ask you to give me some instructions...in your art...I mean... I am not very experienced in the art of making love. I want to give <CHARNAME> a bit more of pleasure, if you know what I mean...~
== BVicon ~ (The last you hear is Viconia's deep throaty laughter, as she takes Sandrah some distance away from the group for her first lesson. You start to get a bit excited about what those two may do - but then - probably you will find out soon, maybe this night already?)~
EXIT

CHAIN
IF ~ Global("SanDSOTSCUW","GLOBAL",6)~ THEN BSANDR VicJarl1
~ Viconia, I see this rings some alarms with you.~
DO ~ SetGlobal("SanDSOTSCUW","GLOBAL",7)~
== BVicon ~ This would indeed be disturbing news. The matron mothers themselves would not dare to openly or secretly act against the Bregan D'aerthe. ~
== BSANDR ~ The question is, what they do here, so close to the surface of the Sword Coast and at a time where we have this crisis up there.~
== BVicon ~ Jarlaxle is known to take any chance for large scale bloodshed and expansion of his power he can smell. His cunning mind exceeds the fantasies of the drow females themselves.~
== BSANDR ~ We can only hope that he is not in league with the Iron Throne and its leaders then.~ DO ~ AddexperienceParty(2100) ~
EXIT

// Two Cleric Lovers at Inn
CHAIN
IF ~ Global("SanVicInnLov","LOCALS",1)~ THEN BSANDR SanVicInn1
~ (Having finished your negotiations with the innkeeper, you look around the public room for your companions.)~
DO ~ SetGlobal("SanVicInnLov","LOCALS",2)~
== BVicon ~ (You see your dark elf cleric and Sandrah chat at a table at the far end of the room. You also observe that a number of males of all ages stroll nervously around your two wonderful companions like a pack of hungry wolves, giving the females glances of hardly disguised lust.)~
== BSANDR ~ (You know Sandrah's expression well enough by now to know that she is fully aware of the impact that she and her drow friend have on the men in this room.)~
== BVicon ~ (The partly vicious, partly amused smile around Viconia's lips reveals that she has her fun from the situation as well.)~
END
++ ~ (You stay where you are, knowing that the two are perfectly capable to handle the situation alone.) ~ + SanVicInnNo
IF~Global("SanRompath","GLOBAL",1)~THEN REPLY ~ (You leasurely stroll over to the table feeling the envious glances of the other males as you take your seat next to the beauties.) ~ + SanVicInnYes
IF~Global("SanRompath","GLOBAL",2)~THEN REPLY ~ (You leasurely stroll over to the table swinging your hips and opening an extra button on your shirt to add to the tease as you take your seat next to the other beauties.) ~ + SanVicInnFem

CHAIN
IF ~~ THEN BSANDR SanVicInnNo
~ (After some time Sandrah looks over to you and shakes her head. She and Viconia rise and come towards you.)~
DO ~ SetGlobal("SanVicInnLov","LOCALS",4)~
== BVicon ~ A room full of male fools up to their knees in their own drooling lust and still two beautiful women must go to bed alone. You surfacers always are an unpleasant surprise.~
== BSANDR ~ We can still make our choice, Viconia, I guess a wink from you will make any of them jump to your command.~
== BVicon ~ No, thank you, my friend. (Giving you a disappointed glance, she adds) There is not a single one that would interest me. A weak assembly of the weak gender. Goodnight.~
== BSANDR ~ You are right, let them have their beers and exchange their exaggerated stories of all the girls they have loved - in their fantasy.~
== BVicon ~ (Hand in hand they move up the stairs to the bedrooms...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~ THEN BSANDR SanVicInnFem
~ (After some time Sandrah looks over to you two and shakes her head.)~
DO ~ SetGlobal("SanVicInnLov","LOCALS",4)~
== BVicon ~ A room full of male fools up to their knees in their own drooling lust and still three beautiful women must go to bed alone. You surfacers always are an unpleasant surprise.~
== BSANDR ~ We can still make our choice, Viconia, I guess a wink from you will make any of them jump to your command.~
== BVicon ~ No, thank you, my friend. There is not a single one that would interest me. A weak assembly of the weak gender. Goodnight.~
== BSANDR ~ You are right, let them have their beers and exchange their exaggerated stories of all the girls they have loved - in their fantasy.~
== BVicon ~ (Hand in hand they move up the stairs to the bedrooms...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~~ THEN BSANDR SanVicInnYes
~ Hmm, see our hero is coming to rescue his poor girls from this whole male onset.~
== BVicon ~ Do you think he assumes we are too weak to handle this without his boyish and pathetic attempts at heroism?~
== BSANDR ~ Vicky, give him a point for at least trying it, even if his abilities are limited.~
== BVicon ~ Fine, I agree, he is the most acceptable tonight, even if the contest is not too hard to be the winner here.~
END
++ ~ Are you two trying to mock me? Is that the way to greet your leader and protector?~ + SanVicInnYes2

CHAIN
IF ~~ THEN BSANDR SanVicInnYes2
~ (Sandrah gives you a most inviting smile and blows you a kiss.)~
== BVicon ~ (Viconia's face turns to the colour of an Avocado as her harsh rough laughter fills the room) My leader and protector...pfff. You have really won the prize, <CHARNAME>.~
== BSANDR ~ Gallant, charming and - funny. What a great mixture.~
== BVicon ~ Oh, yes, really amusing, I have to give you that. Are there maybe other qualities in this one that are worth exploring?~
== BSANDR ~ We will not find out by sitting at this table and giving these onlookers a good show...~
== BVicon ~ Right, come on, yalluk, you deserve the chance to show us that you can stand up to the promise you have made us with your grand entry.~
== BSANDR ~ (Before you realise what is going on, you have received a kiss from the left and the right while two strong and determined girls motion you in the direction of the stairs that lead to the bedrooms.) ~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() RestParty() ~
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",3)~ THEN BSANDR SanVicInnYes3
~ Good morning, my wonderful lover.~
DO ~ SetGlobal("SanVicInnLov","LOCALS",6)~
== BVicon ~ Not too bad, rivvil, mmh, not too bad. You have earned yourself a chance to ask for my pleasures again and - maybe, just maybe, I may agree to endure your clumsy attempts once again. Choices are not too many up here on the surface.~
== BSANDR ~ (Laughs and gives Viconia a kiss before she kisses you.) You must really have impressed Vicky. I have never heard her issue such a heartfelt compliment to any male before.~
== BVicon ~ Enough! Let's all get moving before this scene gets too silly.~
= ~(Her agile tongue that slips into your mouth while she gives you a final kiss betrays her words. This was probably not the last night you spent with her...)~
== BSANDR ~ Yes, let us follow our 'leader and protector' to new heroic adventures.~
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",5)~ THEN BSANDR SanVicInnNo3
~ (Sandrah smiles at you and shakes her head as she joins you hand in hand with Viconia) A good night it was - but something was still missing.~
DO ~ SetGlobal("SanVicInnLov","LOCALS",6)~
== BVicon ~ Something or someone? (She gives you a questioning glance.)~
== BSANDR IF ~Global("SanRompath","GLOBAL",1)~THEN~ (Laughs and gives Viconia a kiss before she kisses you.) You must really have impressed Vicky. I have never seen her indicating to any male before that she might have missed him.~
== BSANDR IF ~Global("SanRompath","GLOBAL",2)~THEN~ (Laughs and gives Viconia a kiss before she kisses you.) There is much to learn from a drow if one is willing, maybe next time you will give it a try yourself?~
== BVicon ~ Enough! Let's all get moving before this scene gets too silly.~
= ~(Her agile tongue that slips into your mouth while she gives you a good morning kiss betrays her words. This was probably not the last chance for you to spend a night with her...)~
== BSANDR ~ Yes, let us follow our 'leader and protector' to new heroic adventures.~
EXIT

CHAIN
IF ~Global("SanVicInnLov","LOCALS",7)~ THEN BSANDR SanVicInnD1
~ (As soon as you have entered the tavern, Sandrah smiles at you in a fashion that leaves little doubt to her intend with you - right here and right now.)~
DO ~ SetGlobal("SanVicInnLov","LOCALS",8)~
== BVicon ~ (A sudden pain in your earlobe makes you turn around abruptly - to look into your drow companion's grinning teeth.)~
== BSANDR ~ A short glance at the crowd gathered in this place, especially the male part of it, has made one thing clear to us, right Vicky?~
== BVicon ~ (Viconia blows softly into your still hurting ear.) There is just one who is acceptable to be allowed the attempt to humour me this evening.~
== BSANDR ~ Ah, <PRO_HESHE> is a bit better than a mere apprentice by now, Vicky, even if not yet a perfect lover.~
== BVicon ~ Oh, my poor surfacer friend! The choices you have are so thin up here that you settle for almost anything that is not completely unacceptable. So what - you cannot get any better, so what is there needs to serve the purpose.~
END
++ ~ Stop that immediately, you two. I AM NOT YOUR PLAYTOY! If you want a single kiss from me tonight stop treating me like that!~ + SanVicInnD2

CHAIN
IF ~~ THEN BSANDR SanVicInnD2
~ Vicky, you were right, anger can be a real motivation for a tired warrior like <CHARNAME>. I surrender to your will and charm to be your willing *playtoy*, take me! (She lets herself fall into your arm, purring in joy and anticipation.)~
== BVicon ~ I tremble before your strength, oh <CHARNAME>, hahaha. I am yours tonight but beware - better prove yourself worthy of it. (She sneaks into your other arm like the dangerous but fascinating carnivor she really is.) ~
== BSANDR ~ (With the two overwhelming beauties having seized you again in this way you are not sure about who really is in control of this situation - but then, who cares?)~
DO ~ RestParty() ~
EXIT




// Bjornin 1st visit
CHAIN
IF ~
Global("SanHadBjor","GLOBAL",1)~
THEN BSANDR BjorFi
~ Poor man, your healing really takes a lot of time. Are you sure you are treated right by the ones who care for you? (Smiles sweetly at Bjornin.) ~
DO ~ SetGlobal("SanHadBjor","GLOBAL",2) ~
== Bjorni ~ Mylady, indeed my suffering has been long already and regeneration seems to have stalled. (Watching Sandrah come closer, his eyes seem to brighten significantly.] ~
==  BSANDR ~ I have quite some healing skills myself. Please hold still while I take a closer look at your wounds. (Sandrah is now standing very close to Bjornin and starts to unbutton his shirt.)~
== Bjorni ~ Mylady, maybe it is better to get out of this public area for your examination. (His breathing is excited.).~
= ~ I have a room upstairs in this inn, where you may continue your...healing.~
==  BSANDR ~ (Sandrah takes Bjornin's hand) Lead on then, brave warrior, let us not allow you to suffer any longer. ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT


// Bjornin 2nd visit
CHAIN
IF ~Global("SanHadBjor","GLOBAL",6)~THEN BSANDR BjorRev
~ Bjornin, good to see you again. You are looking quite well already. How do you feel, dear? ~
DO ~SetGlobal("SanHadBjor","GLOBAL",7)~
== Bjorni ~ Oh, Sandrah , your last *prescription* has done me so good. Only...~
== BSANDR ~ Please tell me, what is on your mind?~
== Bjorni ~ Your healing makes me feel so whole again, but I am still not completely restored. Would it be too much for me to ask you to give me another kind treatment?~
== BSANDR ~ Of course not. It is my duty and my pleasure to help an *experienced warrior* to recover his full strength. Have you still rented that cosy little room upstairs? ~
== Bjorni ~ Not only that, I have in addition a bottle of Calimshan wine to accompany the *medication*. ~ 
== BSANDR ~ Lead on, my paladin.~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~EXIT

//Edwin Warning

CHAIN
IF~ Global("Cowscroll","GLOBAL",1)~ THEN BSANDR EdwEny
~ Mageling, do not dare to even look in my direction.~
DO~ SetGlobal("Cowscroll","GLOBAL",2)~
== Bedwin_ ~ You are an arrogant fool! Just because you are the mighty man's daughter, you do not impress me the least. <CHARNAME> leads you like his little doggie on a leash, haha. Do not try to bite me, little one.~
== BSANDR ~ My loyalty to <CHARNAME> is the only thing that keeps you alive at the moment. Whatever <PRO_HISHER> reason is to let you come along, watch out, red scum, one false move and I skin you alive.~
== Bedwin_ ~ Ha, boil in your own wraith, you will not dare to touch me, priestess.~
== BSANDR ~ I need not even move a finger against you, red wizard. The curse of Mystra is upon you now. You yourself will be your own greatest enemy.~
== Bedwin_ ~ (Edwin has turned ghostly pale upon these last words. You see his hands tremble as he quickly moves away from Sandrah.)~ DO ~ GiveItemCreate("myscurs","Edwin",0,0,0) UseItem("myscurs","Edwin") ActionOverride("Edwin",ChangeAIScript("BGEDWI2",OVERRIDE))~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",3)~ THEN BSANDR EdwCurs
~ (Edwin has again hurt himself badly by his own miscast spell.)~
DO~ SetGlobal("Cowscroll","GLOBAL",4)~
== Bedwin_ ~ Damned arrogant priestess, what have you done to me?~
== BSANDR ~ Mageling, I told you already, I will do nothing and I have done nothing against you, as long as <CHARNAME> tolerates your evil presence in this group!~
== Bedwin_ ~ You lie, crazy witch! I am cursed, all my spells work against myself instead of helping the group to crush our enemies.~
END
++ ~ Sandrah, did you really bestow your goddess' curse on Edwin, I cannot believe that?~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~+ EdwCurs2
++ ~ You two, stop it immediately. As long as you are in my party, I demand you find a way to get along with each other. We are following a common goal, mind that.~ + EdwCurs2

CHAIN
IF ~~ THEN BSANDR EdwCurs2
~ <CHARNAME>, I have sworn and I swear it again, I am not responsible for Edwin's fate. My goddess is not one who can be petitioned by prayers to act on my behalf. I see that Edwin is probably cursed by her, but it is not my doing. He has brought his fate upon himself by his own misuse of Mystra's gifts.~
== Bedwin_ ~ LIAR! I was a competent red wizard until I met you. It started when you threatened me. You, and you alone are behind all this. And you cheat your beloved leader with your intrigue!~
== BSANDR ~ Stop your senseless accusations, Mageling. I even used my healer skills on you when you needed it. I do my best for <CHARNAME>'s group at all times.~
END
++ ~ Calm down, both of you. Sandrah, I believe you, because I know you well enough. You did not do it, but the goddess you worship has acted against Edwin nevertheless. So now I ask you as my counselor for an advice, please.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ EdwCurs3
++ ~ If you two cannot get along with each other, I will not risk our goals and the benefit of the rest to suffer from your childish quarrel. Find a way to cooperate or you two will leave.~ + EdwCurs3

CHAIN
IF ~~ THEN BSANDR EdwCurs3
~ (It is obvious, that Sandrah is badly hurt by your mistrust.) ~
== Bedwin_ ~ My reputation as a wizard is destroyed by that priestess. I am powerless, she has cursed me and she has weakened you, <CHARNAME>, with her mislead arrogance. It is she who has to go.~
== BSANDR ~ (Sandrah is very calm when she speaks again.) I see only one solution, <CHARNAME>. I admit my goddess is probably the reason for Edwin's state, punishing him for his misuse of her gifts and his hunger for power. I did not ask her to do this and I have no way to make her undo it.~
=~ All I can do at this moment is to give you my counselor's advice. It looks as if only Edwin's offensive spells suffer from that curse. The best will be for him to concentrate on the defensive and protective spells he knows or may start to learn.~
== Bedwin_ ~ Ha, what a cunning plan, cursed witch, now you reveal your true intention...~
== BSANDR ~ All I am saying, that changing his attitude may be one solution against the curse. If Mystra sees the change in his use of magic, she will perhaps even remove the curse from him.~
END
++ ~ I suggest to follow Sandrah's advice for the time being. Just try it, Edwin, and we will see how it works.~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",5)~ THEN BSANDR SanEdlook
~ Can you not cast your lusty gaze elsewhere, Mageling? There is a couple of wild boars in the brushes over there, their females should be to your liking. (Edwin was studying Sandrah intensively while she was dismantling her armour and boots for the rest you have called.)~
DO~ SetGlobal("Cowscroll","GLOBAL",6)~
== Bedwin_ ~ How can so much needless and undeserved hatred exist in a fragile person of such outmost beauty? What makes you hate me so much without ever having exchanged a real conversation with me?~
== BSANDR ~ You have not done anything yet to make me change my global opinion of the Red Scourge at all. Every word you have said so far has confirmed only my darkest expectation.~
== Bedwin_ ~ Ah, but I cannot imagine that a woman of your intelligence and charm lacks the sophistication to recognize a real man of quality. ~
== BSANDR ~ I am sure I would recognize one, but what does that have to do with you, Edwin?~
== Bedwin_ ~ I have observed your interest in erotic adventures and new experiences and I can promise you...~
== BSANDR ~ ...if I would need an embroidered red skirt for one of those adventures, I will simply cast a stun spell on you and make me one out of your robe. I am sure that some mindless female will come along and find the naked statue attractive. A nice prospect in which we both are the winners, do you not think so?~
== Bedwin_ ~ Your arrogance will be your downfall priestess. I await the day you come crawling to my bedside..(Oh, how I love these strong ones becoming submissive slaves when I stir up their dark lusts...)~
== BSANDR ~ (Sandrah tip-toes lightly to the nearby pond in just her fragile shirt for her refreshing bath, making sure that Edwin gets a full view of the treasures denied to him.)~
== Bedwin_ ~ What a tease...what a fruit to be plucked...aah...~  DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",7)~ THEN BSANDR SanEdlook
~ (In a motion too fast for the naked eye, Sandrah's hammer has appeared in her hand ready to strike as Edwin is approaching her smiling slickly.)~
DO~ SetGlobal("Cowscroll","GLOBAL",8) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_ ~ Oh, please hold it, girl..eh, mylady, ehm, I have the impression that you are one of the rare civilized beings in this forsaken land. (...and a beauty that would outshine any ruler's harem easily.) Can we not get along in a mannered way?~
== BSANDR ~ What are you creeping up to me for, snake. You want to bite my foot or rather lick it?~
== Bedwin_ ~ (Oh my, any of the two would make my dreams come true.) Eh, I just want to talk to you from comrad to comrad - for the sake of <CHARNAME> and <PRO_HISHER> progress. (That should get her - blindly devoted as she is to that simian.)~
== BSANDR ~ Speak!~
== Bedwin_ ~ (Ah, not one for the harem, indeed, that one would rule, if she only wanted to.) This curse from your goddess, priestess of Mystra, can we not do something about it? It should be clear now that I am loyal to <CHARNAME> and this group could largely benefit from the full use of my skills (This group could even benefit from a halfdead goblin with a broken quarterstaff.)~
== BSANDR ~ Spare me your insults, magelings, I think I made it clear that I have nothing to do with your curse and I can and will do nothing to help you. I have kept you alive so far, which is already more than you deserve and more you would do for me.~
== Bedwin_ ~ (What an error! Oh how I would keep you alive, how I would awaken your senses and your lust every day again, little tease...) Do not think I am ungrateful and I have not recognized that. (Deep inside she must feel it - feel how much she needs a man of my qualities.) Just go to think about it patiently, maybe you can guess of a way for improvement with all the knowledge you undoubtly possess. (Do not think too hard, I don't want to see your face wrinkled, pussy.)~
== BSANDR ~ Step carefully, I maybe will not heal your leg if you foolishly break it when you loose your grip in your own slime.~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",9)~ THEN BSANDR SanEdNoCurse
~ (Sandrah lightly raises a brow as Edwin is approaching her smiling happily.) Yes?~
DO~ SetGlobal("Cowscroll","GLOBAL",10) RealSetGlobalTimer("CowscrollT","GLOBAL",1500) ~
== Bedwin_ ~ Mylady, I want to let you participate in the joy I am feeling today. (I would give you a feast, sweetling, that you would never forget, mmmh.)~
== BSANDR ~ Did you let a town explode in fireballs or melt the glaciers of the Cloudpeaks to drown Nashkel? Such are the things that delight the red scum.~
== Bedwin_ ~ Oh, Sandrah, none of the evil you appoint to me could be further from my heart. I am however sure that somehow you are not as innocent as you try to appear in the state that makes me so happy today. (If ever you were innocent, little bitch, I can almost smell all the men you have experienced...) Your goddess has removed her curse from me.~
== BSANDR ~ She will have her reasons. Be sure I will not send a thankful prayer to her for that.~
== Bedwin_ ~ But would you not follow the advice of Mystra and forgive me as well? (We can manifest our new friendship in kisses as sweet as our best Thayan wines...)~
== BSANDR ~ As little as I had to do with Mystra cursing you, I have to do with her forgiving you. I question her not but I do not follow her blindly.~
== Bedwin_ ~ *MY* feelings today are high enough to forgive you your hesitation, sweetest priestess. Deep in my heart I know that your goddess has seen through your eyes and decided with what you have recognised about me to remove her curse.~
== BSANDR ~ Mmh. That may indeed be possible. Be that as it may, look at that wench over there, mageling, just the cheap type you so much enjoy. Would it not be great to celebrate your joy with her - and likewise free me of your presence.~
== Bedwin_ ~ I would rather celebrate this event with someone of the same sophistication and cultural level as myself...~
== BSANDR ~ Here, I lend you my handmirror for the day. Look inside and you will see the only one matching that description I can imagine.~
== Bedwin_ ~ (I am not mistaken. Even her insults are more pleasing than any woman's compliments. - Melting glaciers? You will be washed away by your own feelings, little girl, once the dam is broken by me.)~
EXIT

CHAIN
IF ~ Global("SanEdBlushTa","GLOBAL",1)~ THEN BSANDR SanEdBlushTaNoDy
~ This really destroys all my hopes I had for a possible relationship, dearest mage?~
DO~ SetGlobal("SanEdBlushTa","GLOBAL",2) SetGlobal("SanEdBlush","GLOBAL",2)RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
==Bedwin_ ~ (Dearest mage? Girl, I knew I would get you sooner or later.) Uh, Sandrah, our relationship, eh, what?~
==BSANDR ~ How could I ever dream to compete with the beauties of the Blushing Mermaid or the Undercellars. Your taste in women is for those at a level I can never reach.~
==Bedwin_ ~ Your training with the smith of Beregost and others may help...~
==BSANDR ~ Still I am afraid I can never reach the level you prefer in women. I wonder how any girl can ever sink so low.~
EXIT

CHAIN
IF ~Global("SanEdAnts","GLOBAL",1)~ THEN BSANDR SanEdInnAnt1
~ (Sandrah has left the public room to go upstairs. You decide to give her a little moment, knowing how she loves to prepare herself for the intimate hours she will soon share with you.)~
DO~ SetGlobal("SanEdAnts","GLOBAL",2) RealSetGlobalTimer("CowscrollT","GLOBAL",1200)~
== Bedwin_ ~ (Edwin has risen just a moment later mumbling some excuse to retire upstairs as well.)~
END
++ ~ You order yourself a final nightcap drink and start to imagine your wonderful lover in her glimmering neglige waiting for your affection eagerly.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+  SanEdInnAnt2
++ ~ The obvious interest that Edwin has shown recently for Sandrah and his early disappearance without one of the tavern girls makes you suspicious. You rise to make sure that Edwin has really retired to *his* room.~ +  SanEdInnAnt2
++ ~ You are sure that Edwin has sneaked out behind Sandrah with some intentions you do not like. Although you fully trust Sandrah to be able to handle the Thayan wizard all by herself, you are interested in how far he would dare to go and how she will defend herself.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+  SanEdInnAnt2

CHAIN
IF ~~ THEN BSANDR SanEdInnAnt2
~ (As you come silently upstairs you see the light in your and Sandrah's room and you observe the nifty nightgown she has prepared on the bed while she is still combing her auburn locks.)~
== Bedwin_ ~ (As your eyes adjust to the darkness of the corridor, you recognise the dark figure that has become almost one with the large wardrobe halfway down the hall. Edwin is observing Sandrah's every move.)~  
END
++ ~ (You stomp up the last steps of the staircase and walk towards your room.) Goodnight, Edwin. ( You make sure the door is well closed behind you before you take Sandrah in your arms and lift her onto the bed.)~ EXIT
++ ~ (You freeze to a statue right where you stand and wait how the situation will evolve.)~+ SanEdInnAnt3

CHAIN
IF ~~ THEN BSANDR SanEdInnAnt3
~ (Sandrah has put the hairbrush away and starts to unlace her underware.)~
== Bedwin_ ~ (Even in the dim light granted to you, Edwins increasing arousal is visible and you can hear his respiration get heavier as Sandrah lays the hairbrush away and starts to unlace her undergown.)~
== BSANDR ~ (You all of a sudden realise the slightly wicked smile on Sandrah's face and a moment later the almost invisible motion of her right hand showing you she must have cast some spell, although you are not yet seeing any effect.)~
== Bedwin_ ~ (Sandrah has moved a bit to one side, and in the light from the room you now see the caravan of little ants that have started to march towards the unaware Edwin. A moment later the first ones have reached his bare foot and continue to crawl up his leg and disappear below his red gown.)~
== BSANDR ~ (Sandrah turns around to the door now allowing both you and Edwin a  full view of her splendid body.)~
== Bedwin_ ~ (Edwin's jaw sacks down - but a second later the whole situation changes. The armada of ants must have reached his more intimate areas now.)~
== BSANDR ~ Come, my love, do not let me suffer much longer without you, <CHARNAME>. (You realise that she has known all the time what has been going on in the darkness in front of her room.)~
== Bedwin_ ~ Aaah, what is this? (Edwin has commenced some sort of dance by now. In a really masochistic way he starts to beat on his own body where you guess it must hurt the most...)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanEdLoveBoy","LOCALS",1)~ THEN BSANDR SanEdBetter
~ Hold still, <CHARNAME>, a quick healing for you, my love.~
DO~ SetGlobal("SanEdLoveBoy","LOCALS",2) ForceSpell(Player1,CLERIC_HEAL)RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
== Bedwin_ ~ It is such a sad sight every time, Sandrah. How can such a lady like you throw herself away at such a simian. Open your eyes and see the possibilities while you are still young and desireable. (Oh, how disireable she is.)~
== BSANDR ~ Are you talking about such possibilities like red clad maroons who see a pretty love slave in any girl they meet?~
== Bedwin_ ~ You are lacking the fantasy, Sandrah, to imagine the pleasures and the lust my love slaves experience. Not even to mention the paradise that opens to a true lady of my heart. (If you only knew how true these words are, sweet persuader.)~
== BSANDR ~ Ha, it is slaves you need indeed, mageling, as the idea of any strong woman more than able to equal you, would make you realise your impotence.~
== Bedwin_ ~ I have the feeling that such a woman would challenge me to even greater achievements, goals that a licking slave could not provide. (The licking from such a woman would let me forget any love slave I ever enjoyed.) ~
== BSANDR ~ Dream on, Edwin. And pleasure yourself with that fat waitress we will meet again when <CHARNAME> leads us back to your favourite inn in the meantime.~
== Bedwin_ ~ I can see through your mask, priestess. It is really you who is the one afraid. Your affairs with men that cannot match your wit and passion for even the shortest moment are really hurting a true connaisseur who must observe them. Such a waste, pearls before the swine...~
= ~ Wake up. With your power, your abilities, your beauty and grace you are made for a ruler. You should be the companion of a leader, a general, a mighty mage - shortly an Odesseiron!~
== BSANDR ~ I will gladly look ahead to meet your brother in Thay then one day.~
== Bedwin_ ~ What? Whom? (Arrgh, that wit, that wickedness. I will get you, Sandrah, if not this way then another.)~
EXIT

CHAIN
IF ~ Global("SanEdLoveBoy","LOCALS",3) ~ THEN BSANDR SanEdAlmDy
~ What a terrible whining, Edwin. Will you be dead soon?~
DO~ SetGlobal("SanEdLoveBoy","LOCALS",4) RealSetGlobalTimer("CowscrollT","GLOBAL",1500)~
== Bedwin_ ~ I may very well be, given the neglection this group's healer lets me suffer.~
== BSANDR ~ Are you hinting at that light scratch you received in the last battle. I do not assume you would give any of your slaves even a minute of rest to care for such a wound.~
== Bedwin_ ~ Those creatures are made to suffer such, it does not hurt them much. But the fine intellectual genius is very much impeded by such bodily sufferings.~
== BSANDR ~ I see. That is why you run around in this skirt like a weak little girl and moan when the thorn of a rose pricks your soft skin.~
== Bedwin_ ~ (Oh, my thorny rose, one has to bleed and to suffer to enjoy the beauty and the delight of your presence.) A lady of your finesse should understand that to be a birthright of our class.~
== BSANDR ~ Our class? Mageling, you want to degrade me to your level? (She angrily throws a minor potion of healing in Edwin's direction.)~
== Bedwin_ ~ (Edwin clumsily attempts to catch the bottle but stumbles and falls, hurting himself worse than before, while the healing potion spills out into the dust.)~ DO ~ TakeItemReplace("Potn54","potn08","Edwin") ApplyDamage(Myself,16,CRUSHING) ApplySpellRES("CVSLEEP","Edwin") ~
EXIT


CHAIN
IF ~Global("Cowscroll","GLOBAL",11)~ THEN BSANDR SanEdRobRag
~ That red robe is really the adequate garnment for you.~
DO ~ SetGlobal("Cowscroll","GLOBAL",12) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_~ It is indeed of the finest Thayan quality and the embroidering took month of slave's work to perfect it.~
== BSANDR~ I was more pointing at the red colour that issues a warning even in the dark wilderness out here.~
== Bedwin_~ Warning. For a lady of our qualities it offers the promise of sensual experiences hitherto unknown to you.~
== BSANDR~It reminds me of a Thayan rug we had at home in front of the fireplace. I loved to lie on it in the evening warming my nude body near the fire.~
== Bedwin_~ (Oh, don't stop now...I see the picture...I feel it almost, oh..) Mylady, my robe could really serve such a purpose at our nightly campfire...~
== BSANDR~ The bad thing would be that you would either be in it - or you would have to take it off. I am not sure which variant is the more disgusting.~
== Bedwin_~ Don't try to fool yourself, Sandrah, you are a girl who aches with all her senses for more satisfaction than those clumsy lovers you find at the Sword Coast could ever imagine. Every movement of your perfect body expressed the need to be adored by one who really knows to handle it adequately. (Ha, an art only few masters even in Thay have perfected to my level.)~
== BSANDR~ Thank you, Edwin, for reminding me of that. (She leaves Edwin and moves to where you are preparing your place by the campfire.)~
== Bedwin_~ (What now? Why does she seek the nearness of that half-ape at such a moment?)~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",13)~ THEN BSANDR SanEdEndl
~ The promising red robe, a solemn light in the darkness.~
DO ~SetGlobal("Cowscroll","GLOBAL",14) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_~ Don't fear anything, sweetest Sandrah. (No fireball but still a warm welcome?). Are you in a gentle mood tonight, lady of my dreams?~
== BSANDR~ Look at that starfilled sky, Edwin, and tell me of anyone who would not yearn for the nearness of a caring person by her side when gazing at the eternal - mh, nothing?~
== Bedwin_~ Is it nothingness you see in that space or rather eternity?~
== BSANDR~ An eternity of possibilities that would end up in nothingness if we cannot make up our minds about chosing one or the other.~
== Bedwin_~ And you are one of those who is willing to make choices, even on the risk that might be involved in one or the other.~
== BSANDR~ The risk is often the extra thrill that makes one possibility more interesting than the safe path.~
== Bedwin_~ I hear a soul speaking that understands my language, Sandrah. The safe way is for the stupid millions who dwell their lives like grazing cattle. Only the superior minds, the courageous hearts and those not afraid of the uncharted void will be satisfied with new experiences and enduring pleasures.~
== BSANDR~ And you would sacrifice happily the *grazing millions* to tickle your greedy lust.~
== Bedwin_~ As you would slaughter a lamb for the meat to satisfy your appetite.~
== BSANDR~ Good night, Edwin, there are still millions of possibilities open.~
== Bedwin_~ What? Oh, yes, one more closed, but still the door is open...(Like that open door you left for me at the inn before that clumsy lover of yours made <PRO_HISHER> premature appearance.)~
== BSANDR~ Sleep well, wizard.~ DO ~  ApplySpellRES("CVSLEEP","Edwin") ~
EXIT

CHAIN
IF ~Global("CowElmFear","LOCALS",1)~ THEN BSANDR cowMeetElm
~ Edwin, what is it with you, do you need my help? (Sandrah stretches out her hand to help Edwin to his feet again.)~
DO ~ SetGlobal("CowElmFear","LOCALS",2)~
== Bedwin_~ Oh, I swooned a bit it seems. (Uh, and holding your delicate little hand assures the next attack...) Something powerful and fearful is around here.~
== BSANDR~ Here? This is my hometown, Edwin, my father's house is right over there. I can sense nothing frightening around. My father's protective skills make sure that even the worst dark enemies have no access to this place.~
== Bedwin_~ Is it THAT house there? There is the source of my trouble, I can sense it clearly! (What a chance on the side, I will hold that lovely hand as long as I can, whatever hell is waiting over there.)~
== BSANDR~ (Sandrah suddenly starts to laugh heartily.)~
== Bedwin_~ Does my condition really amuse you so? Even you cannot be that cold hearted, lady. (Not with a warm lovely hand like that.)~
== BSANDR~ Oh, forgive me, nothing is wrong here. I just have come to realise what the trouble is. Having travelled with you for so long, red wizard, I almost forgot about your true nature.~
== Bedwin_~ ???~
== BSANDR~ Of course Elminster's house must be the darkest of dungeons from the view of your kind, and my father's protections sense the presence of the red scum as well.~
== Bedwin_~ Elminster? Your father? (He lets go Sandrah's hand as if it were a poisonous snake.) You are...~
== BSANDR~ You did not know that, Edwin? Everybody here knows that I am Elminster's daughter.~
== Bedwin_ ~ And we will enter the lair of the dragon now?~
END
++ ~ Sandrah, will it be safe for Edwin to enter your father's house? He is a companion of our party like everyone else here.~ + cowMeetElm2
++ ~ Sandrah, I demand of you to guarantee Edwin's safety in your fasther's house. He is my chosen companion and even Elminster has to accept that, do you hear me.~ + cowMeetElm3

CHAIN
IF ~~ THEN BSANDR cowMeetElm2
~ Yes, <CHARNAME>, Edwin is our companion by your choice. Be assured that my father will accept that as he respects your decision as this group's captain. Same as his daughter.~ DO~ AddexperienceParty(500)~
EXIT

CHAIN
IF ~~ THEN BSANDR cowMeetElm3
~ Yes, master, I guarantee Edwin's safety. (The look she gives you tells you that Edwin's safety may be assured - but your own could be at stake.)~
DO ~ ApplySpellRES("CVChaRed",Player1)~ EXIT

CHAIN
IF ~Global("CowElmFear","LOCALS",3)~ THEN BSANDR cowMeetElm4
~ Yes, Edwin?~
DO ~ SetGlobal("CowElmFear","LOCALS",4)~
== Bedwin_ ~ I have waited for a quiet moment. my sweetest lady Sandrah, to thank you for what you did on my behalf on our visit to Waterdeep. (Oh, I have not washed my hand that held your fingers there, fragile and fine but yet powerful in their ability to cast spells even I envy you for.)~
== BSANDR~ You are a companion of <CHARNAME> and thus aiming with us for this party's benefit, or at least I assume the last until I have evidence against you.~
== Bedwin_ ~ You are well aware that a meeting of my kin with the mightiest of the Harpers and the prime disciple of Mystra nearly always ends deadly - for the red wizard. It was your shielding hand that stayed Elminster's wrath. (Oh that hand that fills my dreams at night, may I take the chance now to hold it again?).~
== BSANDR~ I dearly wish I made no mistake. Should your cunning mind lead you to any betrayal against <CHARNAME> you will find my wrath matching that of my father with ease.~
== Bedwin_ ~ (Edwin takes Sandrah's hand and attempts to kiss her fingers in a grand act.) I swear...~
== BSANDR~ (Smack) Swear nothing, mageling, you will be judged by your deeds not by your slimy sloberring my body.~
== Bedwin_ ~ (Edwin touches his slapped cheek.) Another part not to be washed.~
== BSANDR~ What?~
== Bedwin_ ~ You will find my acts be completely adequate to your demands, mylady. (Or at least what will become visible for you.) Your example is always an encouragement for me.~
== BSANDR~ Oh, my. Are there really women on Toril who think a Thayan lover would be the pinnacle of any girl's wishes? Why do they not come quickly to relief me of this presence?~ DO ~ RestParty()~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",15)~ THEN BSANDR SanEdArmCo
~ I take your silent starring at me for a compliment, Edwin.~
DO ~ SetGlobal("Cowscroll","GLOBAL",16)~
== Bedwin_ ~ What? I wasn't...~
== BSANDR ~ You were silently adoring me for the last hundred heartbeats. It appears strange to me, as I imagine that this is normally the way you like your women to react to you.~
== Bedwin_ ~ It is indeed...(Get your senses together mage, the goddess is really talking to you.) I was pensing whether it would be better to be the silent connaisseur savouring your beauty or the bard singing your praise.~
== BSANDR~ I am glad you chose the first option. In my wildest fantasy I cannot imagine you singing.~
== Bedwin_~ (In your wildest fantasies I would prefer another role myself.)~
== BSANDR~ Is this the famous Thayan charm that makes women all over Faerun shiver when they only think of it, the way the imagination of a night with a drow lady would make you faint?~
== Bedwin_~ You are the only woman I have ever encountered that is able to keep her feminine charm (should I have said sex appeal) even in a heavy armour.~
== BSANDR~ That is really a charming compliment, Edwin. And I even have the proof that it must be the truth.~
== Bedwin_ ~ Of course it is! (Sometimes it is just not necessary to lie when the facts are so overwhelming.)~
== BSANDR IF ~ GlobalGT("SanBooTlk","GLOBAL",1)~THEN ~ Sure. Minsc was saying exactly the same.~
== BSANDR IF ~ GlobalLT("SanBooTlk","GLOBAL",1)~THEN ~ Sure. That vegetable merchant in Nashkel was saying exactly the same.~
== Bedwin_ IF ~ GlobalGT("SanBooTlk","GLOBAL",1)~THEN  ~ WHAT! (His rat must have told him, how could such a simian come to such an observation by himself.) I am...~
== Bedwin_ IF ~ GlobalLT("SanBooTlk","GLOBAL",1)~THEN ~ WHAT! (Is that the level of courtesy she appoints to me? Same as that smelly simian?) I am...~
== BSANDR ~ Speechless?~
== Bedwin_ ~...~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",17)~ THEN BSANDR SanEdCoomAsp
~ Yes?~
DO ~ SetGlobal("Cowscroll","GLOBAL",18) RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_~ Sandrah, don't you feel it yourself, we are the only suitable people in this hopeless assembly of simians. Do you not feel the urge for some civilized conversation with one who would exceptionally be able to understand you.~
== BSANDR~ And what should be the topic for our clash of bonmots and our firework of intelligent exchange, my red-robed genius?~
== Bedwin_~ There are so many aspects of you, mylady, that fascinate me.~
== BSANDR~ Let us look for some communalities then, shall we? ~
== Bedwin_~ Fine~
== BSANDR~ So let us take the primary aspects of your personality and see how they match mine. ~
= ~ Cunning? No match.~
= ~ Egoism? No match.~
= ~ Cowardice? No match.~
=~ A knack for the colour red? No match. ~
=~ But now mine ~
= ~ Beauty? No match.~
=~ Intelligence? No match.~
=~ Courage? No match. ~
=~ A Warm Heart? No match. ~
= ~ An insurmountable dislike for each other? Bingo!~
=~ So we have by ways of our common intelligent analysis really found an interesting topic for our conversation. ~
== Bedwin_~ But there must be...~
== BSANDR~ Thank you so much, Edwin, you were right. That was really a diversion from the daily ennui we have to face. We should urgently do that again.~
== Bedwin_~ (I have to admit her analysis was almost correct - except...why did she deny my intelligence?)~ DO~RestParty()~
EXIT

CHAIN
IF ~ Global("Cowscroll","GLOBAL",19)~ THEN BSANDR SanEdPenny
~ Edwin?~
DO~ SetGlobal("Cowscroll","GLOBAL",20)RealSetGlobalTimer("CowscrollT","GLOBAL",1800)~
== Bedwin_~ A penny for your thoughts, Sandrah?~
== BSANDR~ Do you have one?~
== Bedwin_~ What?~
== BSANDR~ A penny.~
== Bedwin_~ Eh...sure...~
== BSANDR~ Sure, you must have. Now I know the reason why that little beggar girl we just passed started crying.~
== Bedwin_~ I would never do such a...- I would never be caught doing such a thing.~
== BSANDR~ Anyway, so without having ever done a single bit of honest work in your life you somehow got into possession of a penny.~
== Bedwin_~ Honestly, I would say I'm a millionairy at home in Thay.~
== BSANDR~ My thoughts were drifting to the warm scented bath I envisioned for tonight. I had just removed my boots...~
== Bedwin_~ (Oh those wonderfully crafted tiny artworks...)~
== BSANDR~ ...and started dipping my toes into the water to test the temperature...~
== Bedwin_~ ..mmh...that wonderful middle toe graced by the silver engraved ring that I dreamed of kissing...~
== BSANDR~ What are you mumbling there, Edwin?~
== Bedwin_~ Eeh, nothing, nothing, please continue.~
== BSANDR~ Oh, that was already all for the one penny you wanted to invest on me.~
EXIT

CHAIN
IF~ Global("SanEdWizCandlAtt","LOCALS",1) ~ THEN BSANDR CandlwizRed
~ Whereever they appear it is on some cunning wicked purpose.~
DO ~ SetGlobal("SanEdWizCandlAtt","LOCALS",2) ~
== Bedwin_~ Don't you see, girl, never become the enemy of the Red Wizards, they get you for sure, even if you hide in a remote place.~
== BSANDR~ And then they attack me with such childish attempts like this fool. (Laughs) I am truely scared.~
== Bedwin_~ (Whoever that wimp was, he did not do honour to the red robe.) They probably just send a little apprentice out after that foolish old man. Why overpower the attack. They could not know that their opponent would be someone like you. (Terrible fighter girl, still I would get the upper hand soon in any battle between the sheets...)~
== BSANDR~ I am still young, I can wait. Wait for the one red robe who does not attack without purpose - and for the one whose skills would match his ambitions. You, Edwin, are the only one I ever spoke a complete sentence with, as your collegues all laid dead at my feet within seconds.~
== Bedwin_~  Uuuh, the little poodle pulls on <CHARNAME>'s leash again, haha. Your threats are wasted on me. (Let us wrestle in my bedroll this eve, you will see what power really means.)~
== BSANDR~ Right, wasted just like the attempts to exchange any intelligent word with you.~
EXIT

CHAIN
IF~ Global("SanEdCyr","LOCALS",1)~ THEN BSANDR SanEdCyrR
~ Edwin, you look as if you have found the spell to rule all of Toril, your happiness is always a bad sign for others.~
DO~ SetGlobal("SanEdCyr","LOCALS",2)~
== Bedwin_~ (The spell to rule you, that's what I am after.) Sandrah, you are already forgiven, I have discovered the reason for your wicked ways on me. Perfect.~
== BSANDR~ Only the perverted brain of a red mage can find happiness in something described as *wickedness*.~
== Bedwin_~ If it is the revelation of one of the greatest gods of Toril than it is perfectly acceptable. It is your own grandfather who speaks out of you. (My wonderful Demi-Goddess, what more reason to adore you!)~
== BSANDR~ Hm. That had to come. Yes, it is true that through my father and his ancestry both in Midnight and in Cyric, I may be mistaken for a grandchild of the Prince of Lies.~
== Bedwin_~ Mistaken? You surely are, your father was bred by Cyric, the great god, and his mistress Mystra. You know well how we Thayans worship Cyric.~
== BSANDR~ And what does have to do with us, Edwin?~
== Bedwin_~ Can you not see the sign set for us, as Cyric and Mystra conquered during the Time of Troubles hand in hand, same way it is foreseen for her grandchild to do the same with a devotee of Cyric.~
== BSANDR~ Only there is a flaw in your reasoning, Edwin. It were not the God you follow and the Goddess of Magic who seeded my father and are therefore my grandparents - it were the adventuress Midnight and a human thief name of Cyric that are his parents. With both ascending to godhood later, they have lost as well the connection to their former life on the material plane. It is therefore an error to attach the current God of Lies and Murder to my heritage.~
== Bedwin_~ I love it how you wiggle and struggle, fighting makes you utmost attractive, Sandrah. You are most beautiful when you are angry. (Only one has to stay outside of your hammer's range.) You may try to construct your own reasonings to avoid the obvious but the impact of your heritage will sooner or later become apparent, granddaughter of Cyric!~
== BSANDR~ If your lore is so profound, Edwin, it has surely not slipped your attention that both, Cyric and Midnight, were masters of their own fate and even stood up against the gods themselves, assisting Ao to kill the false ones. Reflect about this aspect of my heritage as well, mageling.~
EXIT

CHAIN
IF ~Global("sanredatt","GLOBAL",3)~THEN BSANDR SanEdEastWood
~Was I mistaken in my defending you against the disciples of the Morning Lord, Edwin?~
DO~SetGlobal("sanredatt","GLOBAL",4)~
== Bedwin_~You were not, not at all. (You seldom are erring, unless it comes to your choice of males.) I know these wizards, yes, I admit, but I have nothing to do with that ritual. (I would never do something so amateurish as that.)~
== BSANDR~I believe you - this was too clumsy for your skills even.~
== Bedwin_~Thank you, in a way. It seems Denak and his goons were bored a bit while waiting for my success with that Rashemi witch and were using the meantime for their little hobby.~
== BSANDR~Hm, maybe. In Thay nobody seems to trust the other much as this Zulkir Nevron sent some overseers after you. The fact that you were not on THEIR side of this Thayan intrigue does not yet mean you are on OUR side. ~
== Bedwin_~(Good enough to be by your side, sweetheart, so things can evolve further between us...)~EXIT

// Branwen Joined

CHAIN
IF ~ Global("SanBranSearch","GLOBAL",4) Global("SanBranJoined","GLOBAL",1) ~ THEN BSANDR SanbranThx
~ I am so glad we were able to free you, I was so desperate when I learned first about your fate.~
DO ~ SetGlobal("SanBranJoined","GLOBAL",2)~
==BBRANW ~ You knew about my fate? Did you urge <CHARNAME> to come to my rescue then?~
== BSANDR ~ My father has a magic device, Mystra's Shard, that sometimes shows events to him. Your imprisonment by this Tranzik was shown by the Shard. It made me feel responsible to do something about it, because it was a bad deed and I was probably one of the few who knew about it.~
==BBRANW ~ Strange, priestess, the same magic that caused my terrible fate also in a way triggered my rescue. By Tempus, I do not know what to make out of your goddess Mystra now?~
== BSANDR ~ Mystra grants her powers to many but some do not use them in the way they should. The goddess and her priests are there to correct things that have gone astray.~
==BBRANW ~ If so, then onwards in Tempus' name and in Mystra's name! Let us crush Tranzik and all that are on his side!~
EXIT


CHAIN
IF ~ Global("SanBranSearch","GLOBAL",3) Global("SanBranJoined","GLOBAL",1)Global("SanRomPath","GLOBAL",2) ~ THEN BSANDR SanbranRepl1
~ I am so glad we were able to free you, I was so desperate when I learned first about your fate.~
DO ~ SetGlobal("SanBranJoined","GLOBAL",2) SetGlobal("SanPidPack","GLOBAL",36)~
==BBRANW ~ You knew about my fate? Did you urge <CHARNAME> to come to my rescue then?~
== BSANDR ~ My father has a magic device, Mystra's Shard, that sometimes shows events to him. Your imprisonment by this Tranzik was shown by the Shard. It made me feel responsible to do something about it, because it was a bad deed and I was probably one of the few who knew about it.~
==BBRANW ~ Strange, priestess, the same magic that caused my terrible fate also in a way triggered my rescue. By Tempus, I do not know what to make out of your goddess Mystra now?~
== BSANDR ~ Mystra grants her powers to many but some do not use them in the way they should. The goddess and her priests are there to correct things that have gone astray.~
==BBRANW ~ If so, then onwards in Tempus' name and in Mystra's name! Let us crush Tranzik and all that are on his side!~
== BSANDR ~ So be it. But there is something else on my mind, now that you are with us. ~
==BBRANW ~ Speak up, Sandrah, for all you have done, I see you as my friend.~
== BSANDR ~ <CHARNAME> and I have not gone along so well lately. She has rather rudely rebuked my feelings for her. I stayed with her to accomplish this task, but now you are freed, I think she has another cleric and fighter by her side and I am no longer needed. Please take care of her for me, will you.~
==BBRANW ~ Feelings for her? But you are both...nevermind.~
= ~ Hold on, Sandrah, today my new life has started and new hope is reborn. I dearly wish that can be the same for you. Stay with us and give <CHARNAME> another chance.~
== BSANDR ~ Thank you for your friendly advice, Branwen. I can only hope she will try to talk to me soon.~
EXIT

CHAIN
IF ~ Global("SanBranSearch","GLOBAL",3) Global("SanBranJoined","GLOBAL",1)Global("SanRomPath","GLOBAL",1) ~ THEN BSANDR SanbranRepl2
~ I am so glad we were able to free you, I was so desperate when I learned first about your fate.~
DO ~ SetGlobal("SanBranJoined","GLOBAL",2) SetGlobal("SanPidPack","GLOBAL",36) RealSetGlobalTimer("SanBranReplTime","GLOBAL",ONE_DAY)~
==BBRANW ~ You knew about my fate? Did you urge <CHARNAME> to come to my rescue then?~
== BSANDR ~ My father has a magic device, Mystra's Shard, that sometimes shows events to him. Your imprisonment by this Tranzik was shown by the Shard. It made me feel responsible to do something about it, because it was a bad deed and I was probably one of the few who knew about it.~
==BBRANW ~ Strange, priestess, the same magic that caused my terrible fate also in a way triggered my rescue. By Tempus, I do not know what to make out of your goddess Mystra now?~
== BSANDR ~ Mystra grants her powers to many but some do not use them in the way they should. The goddess and her priests are there to correct things that have gone astray.~
==BBRANW ~ If so, then onwards in Tempus' name and in Mystra's name! Let us crush Tranzik and all that are on his side!~
== BSANDR ~ So be it. But there is something else on my mind, now that you are with us. ~
==BBRANW ~ Speak up, Sandrah, for all you have done, I see you as my friend.~
== BSANDR ~ <CHARNAME> and I have not gone along so well lately. He has rather rudely rebuked my feelings for him. I stayed with him to accomplish this task, but now you are freed, I think he has another cleric and fighter by his side and I am no longer needed. Please take care of him for me, will you.~
==BBRANW ~ Hold on, Sandrah, today my new life has started and new hope is reborn. I dearly wish that can be the same for you. Stay with us and give <CHARNAME> another chance.~
== BSANDR ~ Thank you for your friendly advice, Branwen. I can only hope he will try to talk to me soon.~
EXIT

CHAIN
IF ~ Global("SanBranTRInv","LOCALS",1)~ THEN BSANDR SanBranTRInvq
~ Branwen, may I ask you about your recent past and this mage Tranzig?~
DO ~ SetGlobal("SanBranTRInv","LOCALS",2)~
==BBRANW ~ Hm. Thou did much for me, Sandrah, so I feel obliged to answer thee, although I am a bit ashamed of my errors connected with him.~
== BSANDR ~ We all make mistakes, do not worry too much about that. It was neither my intention to critisize nor to open freshly healed wounds again. But your knowledge may be useful for our party at the moment.~
= ~ Did your acquaintance with Tranzig and his men maybe give you an insight into what lies currently ahead of us?~
==BBRANW ~ Thou are right, Sandrah, I should forget my dented pride for the moment and contribute to our success with the information I have, even if it is only little.~
= ~ It seems that Tranzig is part of an organisation responsible for the bandit raids as well as for the problems with the mines. A half-orc runs the operations underground with the help of a large army of kobolds that for some reason take him for a godlike leader. So this is what we will face probably when we go down there. This is already all the knowledge I have about this issue.~
== BSANDR ~ Thank you, Branwen.~
==BBRANW ~ No, my friend, I have to thank thee for reminding me that this group is now MY group and my contribution can go beyond the wielding of my weapons for <CHARNAME>. ~
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",1) ~ THEN BSANDR SanbranBant1
~  Our ways to become priestesses to our respective gods could not have been more different, Branwen.~
DO~ SetGlobal("SanBranFrT","GLOBAL",2) RealSetGlobalTimer("SanBranFrTTT","LOCALS",300) ~
==BBRANW ~ You can say that. To you it must have been the obvious path, for me it was the most stony and forbidden way to choose.~
== BSANDR ~ You are right. The only thing that I had to fight to accept my calling was my own self. Everybody else was thinking just like you, namely that it would be my obvious destiny.~
==BBRANW ~ Guess I know what you are aiming at, Sandrah. Just because your way seemed to be already made for you, you had trouble to accept the choice as your own. I already know you good enough to imagine your inner rejection of that. You don't like others to make your decisions for you.~
== BSANDR ~ Which makes us somehow similar again, do you not think, Branwen. You go your own way as well and follow your own decisions.~
==BBRANW ~ Tempus guides my way and my choices - thus they are not really mine.~
== BSANDR ~ I see. Mystra is quite different here. She expects you to come to your own conclusions, even tolerating your errors to some degrees. To find your way, you cannot rely on her guidance in the little details.~
==BBRANW ~ That sounds as if you would do what you do with or without Mystra anyway. A strange goddess indeed. As is her priestess.~
== BSANDR ~ (Laughs) Which of my numerous strange habits are you referring to now?~
==BBRANW ~ You are a strong fighter, one which would make Tempus approve without doubt. You do not hide behind your magic, you are even very restraint using it other than to heal.~
== BSANDR ~ You see, Mystra allows a lot of choices in her name. Perhaps that made her acceptable for me in the end. It is still my way and my choice, as long as I steer on the right course.~
==BBRANW ~ To steer on the right course, my friend, that is the word for us Northlanders. Onward then, in Tempus name.~
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",3)~ THEN BSANDR SanbranBant2
~ (You see your two beautiful and completely different cleric girls stand together near the cliffs overlooking the sea. Two young women silhouetted against the morning sky, they seem careless and happily chatting with each other.)~
DO ~ SetGlobal("SanBranFrT","GLOBAL",4)~
==BBRANW ~ (Branwen lets her long locks with that golden shimmer dry by the soft breeze, her face turned to the sun to give colour to her face.) What do you have there, Sandrah?~
== BSANDR ~ This little bottle contains an experiment I attempted to create something that might please you.~
==BBRANW ~ To please me? A gift? ~
==BSANDR ~ Call it a gift, yes, but only if you like what I created. I have observed your recent sadness. Oh, psst, do not deny it. Your are the faithful, cheerful warrior priestess, without doubt. Just a little bit homesick at the moment, right.~
==BBRANW ~ 'tis indeed that I think of Norheim more often these days. I'm afraid it softens me and I prayed to Tempus for strength.~
==BSANDR ~ He has heard your plea as you are strong as ever, Branwen. Thinking of home and what is dear to your heart is not a weakness. It is good when a fighter knows what she is fighting for. ~
=~ (Sandrah has moved closer to Branwen with a small bottle that she now carefully unscrews.) Smell it.~
==BBRANW ~ (Branwen has closed her eyes and takes a deep breath of the scent that seems to be contained in the flacon.) Magic, aah. A cool spring morning in my parent's house by the sea. Fresh air blows into my open window from the waterfront. Seagulls are in a fight over a crab in the air above. The constant deep vibration of one wave after another rolling in with the flood. ~
=~(Branwen's eyes are closed and her arms are open as if to engulf the the scenery she sees.) Sandrah, the whole landscape you have captured in the scent from this little bottle. You are a true mage.~
==BSANDR ~ You really like it? That makes me happy. I tried to preserve some of your very own nature in this essence. But it is not a magic, Branwen, it is just artisanry. A precise mixture of natural ingrediences that creates this kind of image by the nose rather than by the eye.~
==BBRANW ~ Thou knowest much about people's minds and how to cure the soul. Thou are maybe a better healer than me - I heal only the battle scars. Thank you, my friend. This morning has done me good. I am ready to crush some villain's heads again.~
==BSANDR ~ (Takes Branwen's hand as they stroll out of your sight.) Lead on, I count on you if healing is required afterwards.~
EXIT

CHAIN
IF ~Global("SanBranFrT","GLOBAL",5)~ THEN BSANDR SanbranBant3
~ What does this skeptical look mean that you give me, Branwen? ~
DO ~ SetGlobal("SanBranFrT","GLOBAL",6)~
==BBRANW ~ I wonder about thine going into battle, Sandrah. You never show any sign of indecision or fear but neither enthusiasm or joy.~
==BSANDR ~ The battles and fights we have to stand are forced upon us, we do not seek them and we have no other choice than to persist. Thus there is no room to show fear or to dither, we cannot avoid them anyway.~
==BBRANW ~ It is hard for me to believe that such a great fighter as thou art hath no satisfaction in a battle well fought. What a waste in Tempus' eyes.~
==BSANDR ~ What joy can there be in ending life? The warrior's work is not that of a craftsman who can be proud of the work he has created. In battle we create nothing, we just destroy.~
==BBRANW ~ By destroying evil we create a path for a better world, Sandrah. Admit that, even when you despise the deed as such.~
==BSANDR ~ I surely admit that, it is only that I wish there would be another way to reach this goal more often. Why does death and blood appear the only solution so often? Why can we not find other methods to make Toril a better place?~
==BBRANW ~ I will include you in my prayer to Tempus tonight, my friend. I have my doubts and moments of weakness now and then but I overcome them with His help.~
EXIT

CHAIN
IF ~Global("SanBrandoT","GLOBAL",2)~ THEN BSANDR SanbranBant4
~ You like to walk a while beside me, Branwen? ~
DO ~ SetGlobal("SanBrandoT","GLOBAL",3) RealSetGlobalTimer("SanBranFrTTT","LOCALS",480)~
==BBRANW ~ (Takes Sandrah's hand and walks beside her closely.)~
= ~ Tell me, my friend, have you ever thought of a life different from the one we lead today.~
==BSANDR ~ There will be one someday, Branwen, even if I have not made up my mind about how it will be for me.~
==BBRANW ~ I mean to give up the fighting and protecting the innocent and helping the needy and become somebody's wife and such?~
==BSANDR ~ The way you describe it sounds like all of this belongs together in one big package. I believe you are wrong there.~
==BBRANW ~ Am I? Tempus requires complete dedication to his path, not some half-hearted followers with just some good intentions.~
==BSANDR ~ Let me explain what I can imagine for me and then see about you. Now, I will surely find a companion to share my views, my life - and my bed. I will surely always in my life stand up and fight evil and help those in need. I may no longer roam the Realms in search of those fights but my spirit will surely remain as it always was.~
==BBRANW ~ Will you not weaken beside your husband by relying on him for protection? Will you not put the care for him - and for your children - above your valour for fighting?~
==BSANDR ~ Maybe those, the family, the home, my friends and all that will give me the strength to stand up and fight time and time again, Branwen. To keep up the spirit we have today while we are young into our later years requires strong motivation. Maybe you have yours from Tempus. I can tell you the lore of many respected heroes who found their motivation in love.~
==BBRANW ~ Love is indeed a strong motivator, my dear friend. What I am afraid of is, that it is a two-sided thing. Fear for the loss of the beloved may as well hinder the strong fighter.~
==BSANDR ~ As would doubt about the right reasons to risk your life. I am a cleric myself, Branwen, and I doubt that the duty for a god or goddess will ever be stronger than the love for the ones inside my own heart.~
==BBRANW ~ If I could only have the same certainty, oh Sandrah. (She puts her arms around Sandrah and the two walk entwined for a long while. Branwen is in deep thoughts, now and then glancing at Sandrah in search for reassurance.)~
EXIT

CHAIN
IF ~ Global("SanBranKilT","GLOBAL",1)~ THEN BSANDR SanBranKiltec
~ Why do you give me such a strange look, Branwen?~
DO ~ SetGlobal("SanBranKilT","GLOBAL",2)~
==BBRANW ~ I observe that you have not sweated at all in that last battle. (Branwen steps up to Sandrah and touches her face shyly.) ~
==BSANDR ~ I hope I did my duty in Tempus' view - and in yours, Branwen.~
==BBRANW ~ Do not joke, Sandrah, you killed more of those bastards than I did. And now look at me, all sweaty and greasy and my hair tangled badly.~
==BSANDR ~ (Sandrah has already a soft sponge in her hand to clean Branwen's lovely face - an instant later she takes care of the fighter girl's blond locks.) You will look wonderful again in just some seconds, dear.~
==BBRANW ~ Aah, that feels good. I could cast a healing spell myself, but it is much sweeter to be cared for like this. Still, I'm puzzled continously about your fighting style. I have never before seen anyone dance with a mighty war hammer like you. Yes, it is a dance, even if it is a deadly one for your foe.~
==BSANDR ~ Side by side we make a pretty good phalanx to protect the rest of our group and especially <CHARNAME>, do you agree, Branwen.~
==BBRANW ~ Sure, my friend, I know I can trust you blindly however dangerous the fight becomes. Hm, and I come to enjoy this aftermath as well.~
==BSANDR ~ Me, too, now let me look at those other bruises you received down there...~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanBranDzt","GLOBAL",1)~ THEN BSANDR SanbranDrzt
~ Good to see my drow friend well and alive again.~
DO ~ SetGlobal("SanBranDzt","GLOBAL",2) SetGlobal("SansharDzt","GLOBAL",2)~
==BBRANW ~ So you know this mighty fighter, Sandrah. He is admirable, but strange that you call a drow your friend.~
==BSANDR ~ You have not recognized him then? I am sure you have heard about him nonetheless. It was Drizzt Do'Urden himself.~
==BBRANW ~ Wow, Drizzt Do'Urden, no wonder he impressed me from the very beginning. And you have the priviledge to know him? How I envy you.~
==BSANDR ~ You would envy me even more if you would know that he was one of my teachers in combat, Branwen.~
==BBRANW ~ It really explains a lot about your impressive abilities. I wish I had a teacher like that - or even a real teacher at all.~
==BSANDR ~ I was already wondering about your profession, Branwen, as I know from the habits of your people that it is not a way normally for a female to follow Tempus as fighter and as priest.~
==BBRANW ~ 'tis really true, my companion. And it is the reason I had to learn by fighting a lot on my own and teaching myself.~
==BSANDR ~ The result is then even more astonishing. I will gladly listen to your tale once <CHARNAME> will call us for a halt this eve.~
EXIT

CHAIN
IF~Global("SansharDzt","GLOBAL",1)~THEN BSANDR SansharDrzt
~ Good to see my drow friend well and alive again.~
DO ~ SetGlobal("SansharDzt","GLOBAL",2)SetGlobal("SanBranDzt","GLOBAL",2) ~
==BSHART ~ So you know this mighty fighter, Sandrah. He is admirable, but strange that you call a drow your friend.~
==BSANDR ~ You have not recognized him then? I am sure you have heard about him nonetheless. It was Drizzt Do'Urden himself.~
==BSHART ~ Wow, Drizzt Do'Urden, no wonder he impressed me from the very beginning. And you have the priviledge to know him? How I envy you.~
==BSANDR ~ You would envy me even more if you would know that he was one of my teachers in combat, Shar-Teel.~
==BSHART ~ It really explains a lot about your impressive abilities. I wish I had a teacher like that - or even a real teacher at all.~
==BSANDR ~ I was already wondering about your skills, as I know from that your skills have surely not been taught to you from the Flaming Fist.~
==BSHART ~ (Spits) True, pussycat. And it is the reason I had to learn by fighting a lot on my own and teaching myself - and learning from Ysena.~
==BSANDR ~ The result is then even more astonishing. I will gladly listen to your tale once <CHARNAME> will call us for a halt this eve.~
EXIT

CHAIN
IF ~ Global("SanBranTrzg","GLOBAL",1)~ THEN BSANDR SanbranDrzt
~ You must be content to see this bastard dead, Branwen. Will it lighten your heart to tell me how he came to do to you what he did?~
DO ~ SetGlobal("SanBranTrzg","GLOBAL",2)~
==BBRANW ~ You have the gift to look deep into your comrad's hearts, my friend. More so than me, as my own senses betrayed me with this mage. In romance I think I have not experienced much of subtleties. Tranzig's slithering tongue put my doubts to rest easily, as I know he could not have done with you.~
==BSANDR ~ He wanted more than you were willing to give him.~
==BBRANW ~ After a time, yes. I saw through his false ways quickly and kicked him out of my bedroll. He said: "A woman with a stone heart... shall all be stone..." and put that terrible spell on me.~
==BSANDR ~ I am not one who thinks revenge is a good motivation, but there are cases where it appears to be the only solution. Knowing he will never again be able to do you or any other woman any harm, should give you more pleasant dreams from now on.~
==BBRANW ~ Thank you, Sandrah. talking to you often puts my heart more at ease.~
==BSANDR ~ Let us cheer the whole party up now, let us drink to the sure destruction of these bandits.~
EXIT

CHAIN
IF~ Global("SanBranTrzg","GLOBAL",3)~ THEN BSANDR SanBranTiny
~ (Sandrah and Branwen are lying side by side in the grass during the short rest you grant to your troups. Sandrah plays with Branwen's long flowing golden locks.)~
DO ~ SetGlobal("SanBranTrzg","GLOBAL",4)~
==BBRANW ~ (Branwen catches Sandrah's fingers and inspects them closely.)~
==BSANDR ~ Is there anything special about my hand, dear?~
==BBRANW ~ I have never seen such fragile and elegant fingers before. It is a true wonder to think of the hundreds of slain beasts and monsters that have been extinguished by them. Not to mention the powerful spells I have seen emerge from them with my own eyes.~
==BSANDR ~ (Smiles) Their main purpose is to heal - and to provide pleasure to the ones I like. (She tenderly touches Branwen's cheek and follows the northern priestess upper lip with the tip of her finger.)~
==BBRANW ~ (Sighs and closes her eyes) You possess many various talents, Sandrah. I very much like most of them. ~
==BSANDR ~ (Sandrah's fingertips slowly caress the other girl's closed eyelids.) Too few are these peaceful moments these days.~
==BBRANW ~ But the more precious they are. (She opens her eyes and kisses each of Sandrah's fingers slowly and carefully.)~
EXIT

CHAIN
IF ~ Global("SanBranDetLove","GLOBAL",2) ~ THEN BSANDR SanBranOpen
~ It is no longer an unusual sight for you to see your two beautiful young clerics, Sandrah and Branwen walk hand in hand and talking to each other in the most friendly manner. Actually you enjoy their presence very much.~
DO~ SetGlobal("SanBranDetLove","GLOBAL",3)~
==BBRANW IF~Global("P#BranMatch","GLOBAL",1)~THEN~'tis a strange situation, Sandrah. I am becoming more and more your friend as I become <CHARNAME>'s.~
==BBRANW IF~Global("P#BranMatch","GLOBAL",0)~THEN~'tis a strange situation, Sandrah. I am becoming more and more your friend as I get to know you.~
==BSANDR~ Call it strange and I will call it wonderful, Branwen. (Sandrah has stopped to turn to Branwen, her hands holding the girl at both shoulders.)~
==BBRANW~ I feel something for you that I have never felt before. (Branwen has moved nearer to Sandrah, who now embraces the northern cleric.)~
==BSANDR~ (Smiles.) Is that how our challenge will end then? Have you found the ones to cover the loss of your kin?~
==BBRANW~ I have. (She kisses Sandrah's cheek and blushes.) Healer of souls.~
==BSANDR~ Did you tell <CHARNAME> already? (Sandrah kisses Branwen's eyelids, as the other girl closes her eyes willingly.)~
==BBRANW~ Do I needst to? I guess, <PRO_HESHE> wouldst surely know by now. (Her lips half open to receive Sandrah's kiss on her mouth.)~
==BSANDR IF~Global("P#BranMatch","GLOBAL",1)~THEN~ Come, my love. (The girls move up to you, Branwen shyly following Sandrah's command. You receive a gentle kiss on each cheek as they take you in their middle to continue the journey by your side.)~
==BSANDR IF~Global("P#BranMatch","GLOBAL",0)~THEN~ Come, my love. (Branwen shyly following Sandrah's command as they continue the journey side by side.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanBranOV","LOCALS",2)~ THEN BSANDR  SanBranOV1
~ Branwen, I have observed you and <CHARNAME> recently. Something has happened to you, my love. I am here to talk about it, if you like to.~
DO ~ SetGlobal("SanBranOV","LOCALS",3) SetGlobal("SanBranDec","GLOBAL",4)~
==BBRANW~ 'tis good you ask me, Sandrah, as I staggered to start the conversation for some time now, but I lacked the words - and the confidence.~
== BSANDR ~ You are afraid I would be able to convince you to change the decision you have made, right?~
==BBRANW~ Thou are wise and loving as always - and thou make it not really easier for me with thine understanding ways. I know 'tis silly to ask because thee will do it anyway, but - please, hold on to <CHARNAME> and give him the strength and love <PRO_HESHE> will need.~
== BSANDR ~ Tempus' calling is stronger than the love you feel for us.~
==BBRANW~ Tempus grants me wisdom to see things as they are, Sandrah, and I see that I cannot shrug these changes that have come over me, or wave them away. ~
== BSANDR ~ (Slowly but steadily Sandrah has moved Branwen close to you during the conversation and now the two beautiful clerics have come to stand in front of you.)~
==BBRANW~ <CHARNAME>, I have come to a decision, and 'tis important that you listen to me. It relieves me to share it with you, for now I am whole and calm, and in a strange way, born again.~
END
++ ~ Is there nothing I can say, nothing Sandrah can say, to make you reconsider this step, my love?~ + SanBranOV2

CHAIN
IF ~~ THEN BSANDR  SanBranOV2
~ (Sandrah has taken your hand and you feel the strength she tries to give you pulse through you almost physically.)~
==BBRANW~ If I would stay with thee, <CHARNAME>, there would be nothing to come between us, save camaraderie, and most likely, I shall depart once bards choir the first ballad telling of the Hero of the Sword Coast. 'tis not what thou and Sandrah deserve to suffer every day.~
== BSANDR ~ Will you go to contemplate then on your own for a while?~
==BBRANW~ 'tis what I think is best for us all and best for thee, <CHARNAME>, to complete thine quest.  Tempus' hand shall guide you through your battles, and my prayer will shield you from most serious injuries and harms. As will Sandrah by your side. I will find you again shouldst Tempus allow me thus.~
END
++ ~ It is hard to accept this and to let you go. You will always find our open arms should you consider to come back to us. I will always love you, Branwen.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~+  SanBranOV3
++ ~ Sandrah has tried to prepare me for the case that Tempus' demands would be stronger than your love. It is still painful and nothing I can shield my heart against. I know I cannot hold you and I will not try. I will always love you, Branwen.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",4)~+  SanBranOV3

CHAIN
IF ~~ THEN BSANDR  SanBranOV3
~ I will always love you, Branwen.~
==BBRANW~ You are truly a man of noble stance and generous spirit, <CHARNAME>. I thank you most heartily... and I will always remember you two in my prayers. Fare you well. Fare you well, Sandrah.~
DO ~ SetGlobal("P#BranwenRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT


 
//Haiass

CHAIN
IF ~ Global("HaiassFr","GLOBAL",1) ~ THEN BSANDR Haiass1
~ Hello, Haiass, does the fine wolf like to play.~
DO ~ SetGlobal("HaiassFr","GLOBAL",2) RealSetGlobalTimer("SandrahMorningTalkTime","GLOBAL",600)~
== HAIASS ~ (Your wolf wags his tail full of enthusiasm. He really seems to like Sandrah.)~
== BSANDR ~ Come on, Haiass catch this! (She throws a small branch over the meadows.) ~
== HAIASS ~ (The wolf speeds off following the toy. Sandrah follows behind, getting away from the group.) ~
== BSANDR ~ (You hear Sandrah laughing merrily and Haiass letting off little howls of joy in some distance now.) ~
END
++~ Wait...~ EXTERN BSANDR Haiass2

CHAIN
IF ~ Global("HaiassPellRom","GLOBAL",3) ~THEN BSANDR Hairab
~ (Haiass has vanished for some time into the dark woods around. Now he reappears, carrying a freshly caught rabbit between his wolf's teeth. He moves over to Pelligram and lays down the cadaver in front of her.)~
DO ~ SetGlobal("HaiassPellRom","GLOBAL",4)~
== Pellig ~ Gracefully and majestic, the mighty cat lays down and with one large bite devours one of the rabbit's legs. You can feel her satisfied purring rumbling through the soles of your feet. The cat pushes the rest of the rabbit over to the waiting wolf.~
== HAIASS ~ Haiass settles down beside Pelligram and starts to chew on one of the remaining legs of the rabbit.~
== BSANDR ~ (Sandra has moved to your side and has put her head on your shoulder while watching the scene together with you.) It looks like those two develop similar feelings for each other as do their masters.~
END
++ ~ (Laugh) Do not expect me to run out into the night to get you a bloody raw rabbit, darling.~  EXIT
++ ~ I suggest to skip the introduction with the raw meat and go directly to the part after dinner.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~
EXIT

CHAIN
IF ~ Global("HaiassHurt","GLOBAL",1)~ THEN  BSANDR Haihurt
~ (Pelligram starts to run hectically between Haiass and yourself. She obviously wants to attract your attention towards your wolf.)~
= ~Oh, Pelligram! I see your wolf friend needs some healing. ~ DO ~ SetGlobal("HaiassHurt","GLOBAL",2) ReallyForceSpellRES("CVHealh","Haiass")~
EXIT

CHAIN
IF ~ Global("HaiassPellRom","GLOBAL",5) ~THEN BSANDR HaiPelTown
~ (Sandrah touches your arm lightly and as you look at her she silently directs your gaze to your animal companions.)~
DO ~ SetGlobal("HaiassPellRom","GLOBAL",6)~
== Pellig ~ In her graceful and majestic manner, the mighty cat has moved alongside to your wolf.~
== HAIASS ~ Haiass' hairs stand up all along his back. His eyes are inspecting the unknown area around and the large amount of people suspiciously.~
== Pellig ~ The cat purrs lowly and her nearness seems to calm Haiass significantly. After a while he relaxes obviously.~
== BSANDR ~ Your wolf has never been to a city of that size before, <CHARNAME>?~
END
++ ~ I never left Candlekeep myself for one of the cities on the Sword Coast. Whenever we went out, it was to the more rural surroundings of my home.~ + HaiPelTown1

CHAIN
IF ~ ~THEN BSANDR HaiPelTown1
~ Pelligram grew up in the hassle of Waterdeep, she tutors Haiass in this new situation.~
END
++~ And her mistress surely will do the same for me. (Take her hand and continue alongside of her.)~DO~ IncrementGlobal("Sanpoints","GLOBAL",2)~ EXIT
++~ Only his master is not in need of such support. (Smile at Sandrah and straighten your back, showing her that the big city has no impact on your nerves.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~ Global("HaiassPellRom","GLOBAL",7) ~THEN BSANDR HaiPelBath
~ (You stop your party by the waterside to observe a scene between your animal companions.)~
DO ~ SetGlobal("HaiassPellRom","GLOBAL",8)~
== Pellig ~ Forgetting all her usual majestic behaviour the large cat nervously moves up and down by the water, carefully avoiding to wet her paws.~
== HAIASS ~ Haiass has made a big splashing jump into the wet element and enjoys himself with chasing some wild ducks around.~
== Pellig ~ Cautiously Pelligram dips her snout into the water but retrieves a second later. She is obviously struggling with her ambition to follow her companion wherever he goes and her inborn cat's instinct to stay away from water.~
== HAIASS ~ When your wolf has tired of his fun, he comes jumping out and standing himself right next to Pelligram, he shakes his body dry, splashing the water from his fur all over the cat.~
== Pellig ~ (Pfeff.) A large cat's paw rewards the wolf for his deed. However, you observe that Pelligram has retracted her claws before striking at Haiass. ~
END
++ ~ (Laugh) They follow each other wherever they go it seems. I am sure in a little moment your cat would have taken all her courage together and stepped into the water.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ HaiPelBath2
++ ~ That is the difference to us humans. You would not hesitate even a moment before following me into any danger I would lead you to.~ + HaiPelBath2

CHAIN
IF~~THEN  BSANDR HaiPelBath2
~ I cannot blame her for being careful and analysing the situation of which her instincts have warned her. Love is one thing, but blind devotion is another. It is better to keep a cool head sometimes and have your opinion on a situation.~
== HAIASS ~ Haiass has started to dry his cat companion by licking the water off her fur.~
== Pellig ~ The mighty pantheress has stretched out in the grass and has closed her eyes in delight.~
EXIT

// Safana BG1

CHAIN
IF ~ Global("SanSafaBan","GLOBAL",2) ~ THEN BSANDR SanSaf1
~ I can understand poor people in need of the bare necessities to turn to thieving if they see that others possess in abandon what they themselves would need to survive. Probably not a description that would apply to you, Safana.~
DO ~  SetGlobal("SanSafaBan","GLOBAL",3) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN~ I had to emancipate myself against the expectations of an over-protective family trying to turn me into some boring matron of a kind, the type living only for her husband and children.~
== BSANDR~ I see, you are a kind of rebel then, stealing from the rich to give to the poor?~
== BSAFAN~ Hm, not exactly, wisecrack, the *stealing from the rich* part is okay as it wouldn't make sense to steal from the poor. But why give it away? I have my own needs to cope with now that I lost my rich family's support.~
== BSANDR~ I am sure *selfishness* is your middle name.~
== BSAFAN~ Hey, come on, someone as attractive and sophisticated as you should know the prices for things of any value.~
== BSANDR~ Yes, I do - and I know how to protect them against theft, be assured.~
== BSAFAN~ (Coughs) Darling, I thought your hammer was the most dangerous weapon on the Sword Coast but probably it's really your tongue. ~
EXIT

CHAIN
IF ~ Global("SanSafaBan","GLOBAL",4) ~ THEN BSANDR SanSaf4
~ We can really improve our outfits a bit and do some shopping, what do you think, <CHARNAME>?.~
DO ~  SetGlobal("SanSafaBan","GLOBAL",5) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN~ Hurray, it is SURELY about time to do some shopping, my wardrobe has suffered significantly from this crawling through the mud of the Sword Coast.~
=~ Say, Sandrah, with your obvious taste and style in all matters of chic, would you mind to help me a bit with my choices?~
== BSANDR~ Sure I will. (Laughs.) Remember we have gold enough to pay the stuff, I would not endanger <CHARNAME>'s reputation by a theft of just some garnments.~
== BSAFAN~ Tell me, your style is really of a sophisticated mix of understatement and obvious wealth - and it still is so...sexy.~
== BSANDR~ Remember I am from Waterdeep, the City of Splendor. Maybe you just inhale this taste when you grow up there. You yourself cannot disguise your southern heritage, Calimshan I would guess?~
== BSAFAN~ Perfectly right, I hale from Calimport. We down there *inhale* it as well, even if the breeze is much lighter and warmer in our region, haha.~
EXIT

CHAIN
IF ~ Global("SanSafaBan","GLOBAL",11) ~ THEN BSANDR SanSaf5
~ (Sandrah quickly sidesteps to escape Safana's attempt to hit her cheek in anger).~
DO ~  SetGlobal("SanSafaBan","GLOBAL",12) RealSetGlobalTimer("SanSafaBanTi","LOCALS",600)~
== BSAFAN~ You bastard! How do I stand here now, as a liar and dreamer of love fantasies.~
== BSANDR~ Yes, you *stand* and do not hang by your neck at this moment. They do not like pirates at all in these coastal towns, dear. I made you appear to be not one.~
== BSAFAN~ Just a silly little girl telling exaggerated stories about her love life. I liar and a thief.~
== BSANDR~ That is what you say now, not what I have said or proven to the court. All I have proven is that the officials of this town do not have any evidence or witnesses to prove that you are guilty in the sense of the law to have been a member of the Exzesus' crew. Nothing more and nothing less.~
== BSAFAN~ Hm, I see...Hm, then it's not so bad in the end. The officials cannot prove my pirate background and punish me for it. And as far as I know they cannot accuse me of the same crime twice.~
== BSANDR~ Not in this town, so much is true.~
== BSAFAN~ They can elsewhere, I see. But, hey...that means that you yourself do not disbelieve my stories...I mean, you do not need a proof by the law.~
== BSANDR~What I personally think of this matter is completely irrelevant. (Sandrah turns around and leaves to play with Pelligram.)~
== BSAFAN~ Is she for me or against me now?~
END
++ ~ She just saved your life, do you need any more proof as to where she stands?~EXIT
++ ~ Maybe she has found out something about you for herself by this process?~ EXIT

CHAIN
IF~Global("SanSafaBan","GLOBAL",14)~ THEN BSANDR SanSaf14
~ (Sandrah has taken out her tome to read before bedtime.)~
DO~SetGlobal("SanSafaBan","GLOBAL",15)~
== BSAFAN~ Is it fiction or facts in that book of yours, darling?~
== BSANDR~I prefer facts this evening. Although I would not reject some fiction if it were well told and entertaining.~
== BSAFAN~ You still believe that I'm an expert in that field, don't you?~
== BSANDR~I would not have brought that topic up by myself but if you insist - no, I do not believe your pirate stories and any adventures you report before the time you joined <CHARNAME>.~
== BSAFAN~ You think I'm just a liar then?~
== BSANDR~I would not call you that. A storyteller, yes, a girl with fantasy. You were bored before you joined us and tried to make your life a bit more interesting.~
== BSAFAN~ I never brought mischief to anyone or lied for my advantage, darling.~
== BSANDR~(Grins) The only one you got into trouble was yourself actually. But now things have changed as you have real stories to tell about the heroic deeds of <CHARNAME> and company.~
== BSAFAN~ Like how I killed three doppelgangers with a single blow of my hammer...~
== BSANDR~Your hammer? Oh, I did not see it because I was occupied with opening that lock to the treasure chest...~
== BSAFAN~ Hey, you opened a lock?~
== BSANDR~(Laughs) Sure...while you wielded a war hammer.~
== BSAFAN~ Darling Sandrah, you are quite some storyteller...~ DO~RestParty()~EXIT



// Garrick Interludes
CHAIN
IF ~Global("SanGarr1","GLOBAL",1) ~ THEN BSANDR SanGarr1
~ What are you humming there, Garrick, I have never heard that tune before.~
DO~ SetGlobal("SanGarr1","GLOBAL",2)~
== BGARRI ~ Brilliant, mylady, if you never heard it, then probably nobody else did. Ehem, it is my own, or a least I think it is, you know... with us bards, sometimes the inspiration comes and you don't really know how.~
==BSANDR ~ And then you find out later it came from another bard you overheard somehow and somewhen.~
== BGARRI ~ Sadly enough, that is the case sometimes. You cannot always control the calling of the muse... but...~
=~ Mylady, you are probably, emm, not aware that you would star in my current epos on heroes of the Sword Coast.~
==BSANDR ~ Do I? Hm, I like the tune for it, Garrick. Please, sing it again.~
== BGARRI ~ With pleasure, lady Sandrah.
 *Along the trails of Sword Coast frightening and cold,
Resound the tales of the daughter of the mage of old,
Her eyes as shiny as the star of....emm,*
I am still trying to find adequate words...it is not easy. ~
= ~ Mmh. You are by far the most beautiful woman I ever encountered, mylady.~
==BSANDR ~ Sorry, Garrick, a bard's compliment of this kind needs to be translated as *you do not directly hurt my eyes*.~
== BGARRI ~ Is that the impression you have of us bards? Everything I say would be largely exaggerated? Then I am stuck, what can I say to make me believe I tell the truth?~
==BSANDR ~ That is easy, my sweet bard. Stop talking and prove what you mean by actions instead.~
== BGARRI ~ I can tell we're going to get along ... ah, brilliantly, Sandrah...Oh, well, uh... I mean, we could at least give it a go. Ah well... ~
= ~ (The rest trails off into the distance, as Garrick and Sandrah have fallen far behind the group...)~
EXIT

CHAIN
IF ~ Global("SanGarr1","GLOBAL",3) InParty("Garrick")~ THEN BSANDR SanGarr3
~ Garrick, excuse me if I use a bard's speech, but you look like a happy hen that has laid the golden egg.~
DO ~SetGlobal("SanGarr1","GLOBAL",4) ~
== BGARRI ~ Something like that indeed, how could you know, mylady?~
==BSANDR ~ So, what is it?~
== BGARRI ~ I have progressed with my Sandrah of Waterdeep song significantly...I am hoping you would lend me your ear and, eh, approve to it..~
==BSANDR ~ (Laughs gently) Oh, my own personal poet, let us hear it, then.~
== BGARRI ~ Eh, now...mylady, it is still work in progress...I would suggest the current version is still for your ears only, hm, yes, not yet for public...~
==BSANDR ~ Come, my bard, let us go to this other room for the..rehearsal.~  DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanGarr1","GLOBAL",5)InParty("Garrick")~ THEN BSANDR SanGarr5
~ Now, my preferred artist?~
DO~ SetGlobal("SanGarr1","GLOBAL",6) RealSetGlobalTimer("SangarLeDel","LOCALS",300)~
== BGARRI ~ Sweetest heroine, I think I have changed my mind a bit.~
==BSANDR ~ Oh, in which way?~
== BGARRI ~ I, em, I thought I would leave my hero epos aside for a while and concentrate on another subject instead.~
==BSANDR ~ Have you lost your interest in your heroine then?~
== BGARRI ~ Oh, no, not at all. I-I how shall I say, I think the heroic aspects of my main character are for the general public. I start to get, uhm, more interested in the more personal sides - the more romantic aspects of the character, you see...~
==BSANDR ~ So you will become a balladeer of lovesongs, my lovely artist?~
== BGARRI ~ It is my heart, dear Sandrah, that sings these songs, no longer my art. Listen closely...~
DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode() ~
EXIT

CHAIN
IF ~ Global("SanGarrN","GLOBAL",1)~ THEN BSANDR SanGarrDa
~ Do not be so shy, my bard, I just wanted to propose something new to you this eve.~
DO~ SetGlobal("SanGarrN","GLOBAL",2) ~
== BGARRI ~ I'm all ears, as the saying goes.~
==BSANDR ~ You can surely play some music that one can dance to?~
== BGARRI ~ I am more for the ballads and lovesongs, eh , apart from the hero sagas. Mmh, but then - if you would be happy with a slow dance rather than those jigs and reels, mylady...~
==BSANDR ~ Let us see. <CHARNAME>, may I ask you courtly for this dance? I must warn you however, the bard anounced a slow one. One to get a bit nearer to each other I assume.~
END
++ ~ Oh, please, Sandrah, spare me this ordeal. I cannot be this groups respected leader anymore if they see me dance.~ +  SanGarrDaSe
++ ~ A slow one? I may be able to manage that without breaking my feet and your toes, Sandrah. Yes, let's do it.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ SanGarrDaPC

CHAIN
IF~~ THEN BSANDR SanGarrDaSe
~ If this is so. (She takes Garrick's hand and motions him to his feet. Laying one arm around his shoulder she whispers in his ear:) So you will be my partner for this dance yourself. Just sing your melody in my ear, no one else really needs to hear it.~
== BGARRI ~ (Embraces Sandrah gently and begins to stear her to the movements of a slow tune he hums into her ear. You observe, that both of them are really good dancers. You regret your choice already.)
~ DO ~ RestParty()~ EXIT

CHAIN
IF~~ THEN BSANDR SanGarrDaPC
~ Garrick, please, let us hear the tune.~
== BGARRI ~ * In the light of the silvery moon
Two young lovers sway and swoon
To the lonely violin's lovely tune
They knew that would end just too soon...*~
==BSANDR ~ (Sandrah feels light as a delicate bird in your arms. And while you know it is otherwise, she still gives you the feeling that you are leading this dance. You take this as just another short insight into her manyfold abilities.)
~ DO ~ RestParty()~  EXIT

CHAIN
IF ~ Global("SanGarQCh","GLOBAL",1)~ THEN BSANDR SanGarCh
~ Garrick, you look absolutely fantastic in that chainmail. It is like it was made especially for you.~
DO ~ SetGlobal("SanGarQCh","GLOBAL",2)~
== BGARRI ~ Oh, Sandrah, (blush) you really, ehm, you like how I look in this?~
==BSANDR ~ My lovely bard, you have convinced me today that you differ from the average bard I have encountered so far. There is more than sweet words in you as you have proven with your brave standing against Myr'Cutio. You really deserve this chainmail - and the admiration of the women you attract with it.~
== BGARRI ~  Does that, eh, include the admiration of a certain lady who is more important than any of those wenches that fall for fanciful clad bards? I, eh-, I mean one that cannot be blinded by a shining armour, but sees directly to the heart that pulses beneath.~
==BSANDR ~ You mean a heart that pulses a little bit quicker every time the said bard glimpses the lady in question here?~
== BGARRI ~ It is about to burst through this strong armour to jump directly into your hands, mylady...~
==BSANDR ~ (Pretends to catch an imaginary object with both hands.) It is safe with me. I will take good care of it. (She puts the invisible object inside of her armour right next to where her own heart is situated.)~
EXIT

CHAIN
IF ~ Global("SanGarQCh","GLOBAL",3)~ THEN BSANDR SanGarCh
~ Garrick, I think I have a thing you might want back again.~
DO ~ SetGlobal("SanGarQCh","GLOBAL",4) RealSetGlobalTimer("SangarLeDel","LOCALS",300)~
== BGARRI ~ Mylady, I have lost so many things on you, my sleep, my heart, my brain..~
==BSANDR ~ Hopefully not your voice and inspiration, my bard. As for your heart...(She has taken off her armour already and is clad in one of her clinging and shining shirts that reveal her perfect body so seductively. She takes his hand and leads it between her breasts.) You remember where I put it?~
== BGARRI ~ Maybe if I would explore that area a bit more, I would find the other things I miss as well.~
==BSANDR ~ My fearless explorer, only those who dare something will be rewarded...~
DO~ StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT
                

CHAIN
IF ~ Global("SanGarr1","GLOBAL",7)~ THEN BSANDR SanGarle
~ Garrick, my dear, good news or bad news?.~
DO ~ SetGlobal("SanGarr1","GLOBAL",8)~
== BGARRI ~ (Garrick holds the message he had received with slight disbelief.) Probably both, sweetest heroine. Good news for the aspiring bard and not so good for the man in love.~
==BSANDR ~ It sounds like they offer you an engagement in your profession but of course you cannot travel with us during that time.~
== BGARRI ~ Exactly that, my sweetest inspiration...and you partly have to blame yourself for that as it was the song about my favourite heroine that is responsible for the proposed contract.~
==BSANDR ~ Where would you have to go?~
== BGARRI ~ The famous Elfsong in Baldur's Gate, I still cannot believe it. That man scribbling notes in that last tavern all the time while I sang just for you, Sandrah...~
==BSANDR ~I remember, we made some private jokes about him and his greasy notebook...~
== BGARRI ~ Looks like he was a talent scout from the Gate and he was fascinated by my performance, although it was solely aimed at you, my heroine.~
==BSANDR ~(Kisses the bard) You were excellent that night...eh...I mean that evening...I mean your performance...eh...your artistic performance, of course.~
== BGARRI ~(Smiles) You enjoyed the other part of my art after the song just as well - you did not hide it.~
==BSANDR ~(Sighs) When do you need to go - and for how long?~
== BGARRI ~ Actually I wanted you just to know it first before I tell <CHARNAME> that I need to leave right away. The first performance is already in three days. They want me for two tendays - the ELFSONG, twenty performances, just imagine.~
==BSANDR ~Congratulations, from all my heart. It seems the good news is very good and the bad news is not too bad as we will surely pass by the Gate - maybe even in time to see the newborn star of the Sword Coast.~
== BGARRI ~ (They embrace and kiss time and time again before Garrick finally takes his leave.)~ DO~ LeaveParty() SetDialog("Garrip") EscapeAreaMove("BG0705",837,783,0)~ EXIT
                
CHAIN
IF ~~ THEN BSANDR Sanhealgarri
~ (Smiles) If you would reduce a bit the bard's pathos, I would appreciate your praise much more.~
DO~SetGlobal("SanHealgar","GLOBAL",4)~
== BGARRI ~ Hm, oh Sandrah, are you still not convinced that my words are the truth coming directly from my heart? Too bad...~
== BSANDR ~ Do not worry, my bard, I will dearly enjoy any proof of those feelings, given they go beyond mere words.~
== BGARRI ~ Dadada...
The lady who shatters in battle with mighty hands,
Heals the wounds of the friends when the battle ends,
Praise for her deeds she will accept none by the bard,
Who stands admiring her with a song from his heart...~
== BSANDR ~ Your melodies are so wonderful - they make even your words believable this way. I have to apologise for my mistrust.~
== BGARRI ~ Eh, not so easy, Sandrah, you cannot apologise with mere words. Now it is your turn to proof what you just said. (Blushes deeply)~
== BSANDR ~ (She steps up to Garrick and touches his face gently. Her fingertips follow the line of his smiling lips until he half opens his mouth. Sandrah lifts herself on her toes and kisses the bard.)~ DO~ StartCutSceneMode()
                SmallWait(4)
                FadeToColor([20.0],0)
		Wait(4)
		FadeFromColor([20.0],0)
                EndCutSceneMode() ~ EXIT

// Shar-Teel Episodes

CHAIN
IF~ Global("SanShartDuel","GLOBAL",2)~ THEN BSANDR SanShart0
~ Frustrated? ~
DO ~ SetGlobal("SanShartDuel","GLOBAL",3)~
== BSHART~ You really trapped me somehow, *puss in boots*, and I will find out how and get my revenge. ~
== BSANDR ~ You may have your revenge any time *wildcat*. There was no trick. Maybe I am just the better fighter. ~
== BSHART~ You make me laugh. One like you - to beat me without a trick. Never. ~
== BSANDR ~ We will have a lot of time to find out together, I guess. You will surely get a chance to study my honest fighting more than once. Let us go now crush <CHARNAME>'s enemies - side by side.~
== BSHART~ Growl! ~
EXIT

CHAIN
IF~ Global("SanShartDuel","GLOBAL",4)~ THEN BSANDR SanShartM0
~ Frustrated? ~
DO ~ SetGlobal("SanShartDuel","GLOBAL",5)~
== BSHART~ Were you trapped in the same way to follow <CHARNAME>, little *puss in boots*?~
= ~ Ha, probably not, you little weekend warrior princess - with your playtoy hammer and your designer shop armour. I bet you wet your silk panties when you see a hobgoblin.~
== BSANDR ~ I hope your fighting skills are better than your judgements on people's abilities, *wildcat*. Maybe I am just a better fighter than you can imagine. ~
END
++ ~ We will see YOUR worth soon, Shar-Teel. But do not sulk too much when you see Sandrah get into action. She's one of the best fighters of the Sword Coast, whatever your prejudice against her looks might have suggested. ~ + SanShartM1

CHAIN
IF~~  THEN BSANDR SanShartM1
~ We will have a lot of time to find out together, I guess. You will surely get a chance to study my honest fighting more than once. Let us go now crush <CHARNAME>'s enemies - side by side.~
== BSHART~ Growl! ~
EXIT

CHAIN
IF~ Global("SanSharInt","GLOBAL",2) ~ THEN BSANDR SanShart1
~ Men aren't that bad, Shar-Teel. You must have made especially bad experiences, including those with your father.~ 
DO ~ SetGlobal("SanSharInt","GLOBAL",3) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Ha, pussycat! For you, NO man can be too bad to lower yourself down to him. Ah, forget it, I did not say that...~
== BSANDR ~ What do you mean?~
== BSHART~ Sandrah, earnestly, I cannot really get to terms with you. You are so strong and confident, but at the same time you think men are the greatest thing on earth. You could have them all and rule them at your liking, but you let them persuade you with their silly sweettalk. They lick you everywhere like dogs in heat - let them lick your boots instead, you deserve it.~
== BSANDR~ Competition is your everything, Shar-Teel. Or so it seems. One always must rule another, prove to be better, be the winner. Can there be no equality between people?~
== BSHART~ Hm - you are even stranger than I had imagined. You have no need to lower yourself to anyone, so why do you want to be equal to a standard that is not yours. ~
= ~ And equality between man and woman - crazy. Equality between a dog and his master? Put your men on the short leash and feel the power running through you, Sandrah. You are the best example that WE are the ruling gender!~
== BSANDR~ Who wants to be queen of slaves and spittlelickers. My interest in men is for those who match me, in strength but also in passion, personality, and devotion.~
== BSHART~ Sure, the higher the risk and the harder the battle, the sweeter is the victory.~
== BSANDR~ Oh, my, I told you, I am not interested in such kind of conquers.~
== BSHART~ What a waste of beauty and strength. The mighty lioness happy in her golden cage. I pity you, poor little rich girl. (Even after these words you can see that Shar-Teel seems to be in deep thoughts. Sandrah does not seem to fit into her picture of the world at large.)~
EXIT

CHAIN
IF~ Global("SanSharInt","GLOBAL",4) ~ THEN BSANDR SanShart2
~ No fighting?~
DO ~ SetGlobal("SanSharInt","GLOBAL",5) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Peace, Sandrah. I thought a bit about you and maybe it is worth to take you as you are - for the moment.~
== BSANDR ~ Good, if you want to talk about something, I will not reject you. We are at least comrads of <CHARNAME>.~
== BSHART~ My mother was a whore and my father is the worst male swine in Faerun, while I am the product of their mating. Not a start into this damned life that can be compared to yours.~
== BSANDR ~  But you have overcome this handicap of origin with your strength and will, even if it has left some scars on your soul. In some way that is a fact for which you earn my respect.~
== BSHART~  Sandrah, your respect? Yes, you may be surprised now, but it really means something to me. Tell me, what do you see in me?~
== BSANDR ~  I see someone who follows her own way with a codex of honour that may not be the same as mine, but at least you are true to yourself, you are honest and you have a strong will to bend things in your way.~
== BSHART~  Is that good or bad, in your eyes.~
== BSANDR ~ I am not talking of good or bad here. I am talking about character and personality, Shar-Teel. Your circumstances up to now have shaped your current goals and visions. That is not set in stone for me. You would be able to pursue another goal with the same straightforward honesty. ~
== BSHART~  What else can there be than wealth, power, and the independence both allow you?~
== BSANDR ~ A real and deep satisfaction from the deed you have done, something that goes beyond counting your  gain in gold at the end of the day.~
== BSHART~  This is the typical perspective of one who always had it all without ever needing to suffer and fight for it.~
== BSANDR ~  Right. But it is also the knowledge of one who always had what you want so eagerly, that it does not give you enduring happiness to dwell on your richess and your power.~
== BSHART~  Either you are right or those are just the words of the bored nobles who need fighting and struggle not to survive but to put a thrill in their otherwise empty lives.~
== BSANDR ~ I think we will have time together on this quest to find out about that.~
== BSHART~ Ha, and crush some stupid males and find some treasures while doing it.~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",6) ~ THEN BSANDR SanShart2m
~ We have a common interest, Shar-Teel, am I right?~
DO ~ SetGlobal("SanSharInt","GLOBAL",8) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Your taste in men might not always be the same as mine. But there are exceptions, if that is what you mean?~
== BSANDR ~ I appreciate your openess on this topic. So you are not denying that <CHARNAME> is a bit of an exception from his gender even for your standards.~
== BSHART~ I would agree to that. (Slowly her hands wander towards her weapons, her shoulders straighten.)~
== BSANDR ~ Relax, Shar-Teel, it is not my intention to fight over him with you. We are no cats in heat, my friend.~
== BSHART IF ~ Global("X#ShartSex","GLOBAL",1)~ THEN ~ You would not call me friend if you were aware what has happened during your watch last night.~
== BSHART IF ~ !Global("X#ShartSex","GLOBAL",1)~ THEN ~ You would not call me friend if you were aware what could happen during your next night watch or when you are not with the group. ~
== BSANDR ~ Do I really appear to be so naive? Do you really think I do not know it exactly? Do you really think it could happen if I do not consent to it.~
== BSHART~ (Shar-Teel's hand has now gripped the handle of her weapon.) So what?~
== BSANDR IF ~ Global("X#ShartSex","GLOBAL",1)~ THEN ~  Were you able to teach him something that he did not yet know about making love?~
== BSANDR IF ~ !Global("X#ShartSex","GLOBAL",1)~ THEN ~ Do you think you will be able to teach him something that he does not yet know about making love? ~
== BSHART~ You may be the stronger fighter, Sandrah, but I doubt that you had already all the experience in the carnal area that I had, good or bad.~
== BSANDR ~ Sure the bad ones are missing in my repertoire. I do not envy you for them. Life has let you get your full share of unpleasantness up to now, right?~
== BSHART~ (Shar-Teel's hands have dropped from her weapon and she has sat down with her knees up to her chin. It almost looks like she would burst into tears any moment.]~
== BSANDR ~ (Sandrah has settled down beside her and puts her arm around her shoulder.) You really had the worst of experiences, my dear, right? I am sorry, it had to come up in you again, when you rather should be happier. Ssssh. It will not happen again. Not as long as you are with me and <CHARNAME>.~
== BSHART~ (The two sit together like that for a long time whispering intensively to each other, while you have moved the group a bit away to talk about easier subjects.)~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",7)~ THEN BSANDR SanShart2f
~ We have a common interest, Shar-Teel, am I right?~
DO ~ SetGlobal("SanSharInt","GLOBAL",8) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Your taste in men might not always be the same as mine. But there are exceptions, if that is what you mean? Are you trying to quarrel with me on behalf of such lesser beings like men are?~
== BSANDR ~ I appreciate your openess on this topic. You seem to be both lured to men like a moth to a flames and in the same moment you hate and despise them.~
== BSHART~ I would agree to that. But that would be nothing a rich young playgirl like you would understand. (Shar-Teel's hand has now gripped the handle of her weapon.) You may be the stronger fighter, Sandrah, but I doubt that you had already all the experience in the carnal area that I had, good or bad.~
== BSANDR ~ Sure the bad ones are missing in my repertoire. I do not envy you for them. Life has let you get your full share of unpleasantness up to now, right?~
== BSHART~ (Shar-Teel's hands have dropped from her weapon and she has sat down with her knees up to her chin. It almost looks like she would burst into tears any moment.]~
== BSANDR ~ (Sandrah has settled down beside her and puts her arm around her shoulder.) You really had the worst of experiences, my dear, right? I am sorry, it had to come up in you again, when you rather should be happier. Ssssh. It will not happen again. Not as long as you are with me and <CHARNAME>.~
== BSHART~ (The two sit together like that for a long time whispering intensively to each other, while you have moved the group a bit away to talk about easier subjects.)~
EXIT

CHAIN
IF ~ Global("SanSharReDo","GLOBAL",1) ~ THEN BSANDR SharRedo
~ You have quarrelled with <CHARNAME> a bit, wildcat?~
== BSHART ~ What's that to you, pussycat? Take him or let him alone, I don't care at all. Just another dumb male swine. I hate myself for having thought otherwise just one second.~
== BSANDR~ I see that it hurts you, Shar-Teel. And it is not your pride that is dented.~
== BSHART ~ Bah, little miss clever...you silly...ah, forget it - well, with you there is no way to pretend, he?~
== BSANDR~ You are hurt. And you are too proud to forgive him. Although you want to.~
== BSHART ~ Mmmh.~
== BSANDR~ Mmmh, wildcat. Is it so hard? Normally you just take what you want. If you want him...~
== BSHART ~ (Picks up a small stone and throws it at you. It hits you near your left ear. You notice that she threw it only lightly and that it is just a small pebble.)~
END
++ ~ Good hit, Shar-Teel~DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ + SharRedo2
++ ~ You want a fight, Shar-Teel?~ + SharRedo2
++ ~ One more like this and you will regret it, wench.~ +  SharRedo3
++ ~ (Look up to the sky.) That eagle up there must have eaten cherries, I guess.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ SharRedo2

CHAIN
IF ~~ THEN BSANDR SharRedo2
~ I leave the rest to you, wildcat.~
== BSHART ~ Are you prepared for a hard fight, loverboy? There will be one in our bedroll tonight if you have the stamia not to run away from me.~
END
IF~ GlobalLT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY ~ I will be ready. And I don't care who wins or looses. Perhaps we both win.~ DO ~ SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~ EXIT
IF~ GlobalGT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  ~ I will be ready. And I don't care who wins or looses. Perhaps we both have won already.~ DO ~ SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~ EXIT

CHAIN
IF ~~ THEN BSANDR SharRedo3
~ You do not give up that easily, wildcat.~
== BSHART ~ Maybe I will regret it but anyway.~
=~ Are you prepared for a hard fight, loverboy? There will be one in our bedroll tonight if you have the stamia not to run away from me.~
END
IF~ GlobalLT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  ~ I will be ready. And I don't care who wins or looses. Perhaps we both win.~ DO ~ SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~ EXIT
IF~ GlobalGT("X#SharInterestTalk","GLOBAL",32)~THEN REPLY  ~ I will be ready. And I don't care who wins or looses. Perhaps we both have won already.~ DO ~ SetGlobal("SanSharReDo","GLOBAL",2)
SetGlobal("X#SHARINTEREST","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",600)~ EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",9)~ THEN BSANDR SanShart3
~ Shar-Teel, when we fought against Greywolf, you mentioned a bit of your past. It still haunts you.~
DO ~ SetGlobal("SanSharInt","GLOBAL",10) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Paah, a few old ghosts pop up now and then. Don't think they can scare me now. My blade is always ready for those who dare to taste it.~
== BSANDR ~ Good. Then you might be willing to tell me a bit more about it. For example, who was the Ysena, you mentioned, probably not the same Ysena I heard of?~
== BSHART~ Probably THE SAME Ysena, the only Ysena, you may have heard about. The mighty bandit that scared the shit out of rich little girls like you!~
== BSANDR ~ Oh, when I met here once in Waterdeep, I was not really wetting my pants. She was strong, yes, but also desperate. I pitied her.~
== BSHART~ (Shar-Teel puts the weapon she had instinctively drawn - in a motion too quick to be really seen - back into its sheath.) How come, little rich cleric girl, that I believe you. Actually you somehow remind me of her.~
== BSANDR ~ Sure, the ragged outfit, the hungry look in my eyes, the desperate hate against everything and everybody. I see what you mean.~
== BSHART~ Were it not you, Sandrah, then a dead cadaver would now lie bleeding before my feet. Ha, but you are strong - strong at will like Ysena was. You were just lucky to be born on the bright side of the road. Without that, my friend, you would have become like her. Fighting for your right to exist, fearing nothing and no one.~
== BSANDR ~ I see what you mean, Shar-Teel - and maybe that is not so wrong. So you were her disciple and apprentice then?~
== BSHART~ You could call it something like that, yes.~
== BSANDR ~ So if I could have become like her if my life had been less blessed, would you admit that it could be true in the other way as well?~
== BSHART~ What do you mean by that? Don't try to trick me with words.~
== BSANDR ~ If she had been born in my place, would she not have used her skills and passion in a similar way. Fighting like I do for some cause instead of fighting for mere survival and some grub? Is that idea so remote?~
== BSHART~ (Shar-Teel is silent for some while.) Ysena was forced by circumstances to the life she led. Hard to say what could have become of her in a luckier world. You could damn be right in your assumption -- the more I think of it the more I tend to agree.~
== BSANDR ~ If it is true for her, Shar-Teel, it would be true for you as well. Only you are still alive, and young, and strong. Your story is not yet told to the end.~
== BSHART~ Damn, why do I NOT have the impression you are just another glee babbling cleric trying to show me the *right way*.~
== BSANDR ~ Because I am not talking of a *right way* to you. I am talking about your potential, your abilities, your strength. And of the ways those can be used. You have choices. And your possibilities have increased now that you are with <CHARNAME>.~
== BSHART~ I have much too think about, little cleric beauty, ha! You are not so stupid all the time. (Gives Sandrah a hard punch in the ribs. Although it really must have hurt, the intention nevertheless appeared to be of friendly appreciation. At least Sandrah reacts that way.)~
EXIT

CHAIN
IF~~ THEN BSANDR Sharheal1
~ I am already sure you were not the little girl that ran to mammy, mammy, mammy when she scratched her knees a bit. Accepting my healer skills is not admitting any weakness.~
DO ~ SetGlobal("SanHealshar","GLOBAL",8)~
== BSHART~ Right you are, I never did that weening crap with my mother. I'd rather smear myself with my own blood all over instead.~
==BSANDR ~ I am not mammy, wildcat, and I do not cuddle you at all. This is a professional healer's act to restore your fighting abilities - see it as that.~
== BSHART~ Ha, and it's an act on yourself, Sandrah, for your own little pride and your sake to prove what an oh-so-good heart you have.~
==BSANDR ~ (Sandrah moves up to Shar-Teel and sticks two fingers into the slash she has just healed a moment ago. Blood begins to drop again from the wound as Sandrah mercilessly pokes the injured flesh. Her look is straight into Shar-Teel's eyes.)~
== BSHART~ (Shar-Teel returns Sandrah's gaze while sweat pearls appear on her forehead and she begins to tremble from the pain.)~
==BSANDR ~ (Sandrah laughs) You are indeed strong and proud, my friend. (With some quick and skilled movements she closes the wound again and applies a soothing paste to it.)~
== BSHART~ (Shar-Teel laughs back.) Only someone as strong as you would have dared to do such a thing to me...my friend.~
EXIT

CHAIN
IF~~ THEN BSANDR Sharheal2
~ I am already sure you were not the little girl that ran to mammy, mammy, mammy when it scratches her knees a bit. Accepting my healer skills is not admitting any weakness. I would have allowed you your suffering if my professional analysis had not advised me that a hale Wildcat is of more advantage for the group.~
DO ~ SetGlobal("SanHealshar","GLOBAL",8)~
== BSHART~ Right you are, I never did that weening crap with my mother. I'd rather smear myself with my own blood all over instead.~
==BSANDR ~ I am not mammy, Wildcat, and I do not wait for you to be hurt if I want to cuddle you. This is a professional healer's act to restore your fighting abilities - see it as that.~
== BSHART~ Ha, and it's an act on yourself, Sandrah, for your own little pride and your sake to prove what an oh-so-good heart you have.~
==BSANDR ~ (Sandrah moves up to Shar-Teel and sticks two fingers into the slash she has just healed a moment ago. Blood begins to drop again from the wound as Sandrah mercilessly pokes the injured flesh. Her look is straight into Shar-Teel's eyes.)~
== BSHART~ (Shar-Teel returns Sandrah's gaze while sweat pearls appear on her forehead and she begins to tremble from the pain.)~
==BSANDR ~ (Sandrah laughs) You are indeed strong and proud, Wildcat. (With some quick and skilled movements she closes the wound again and seals it with a series of soothing kisses.)~
== BSHART~ (Shar-Teel laughs back.) Only someone as strong as you would have dared to do such a thing to me. (She presses Sandrah's head with both hands deeper between her breasts) .~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",11)~ THEN BSANDR SanShart3
~ (Sandrah has silently moved up to Shar-Teel, and with a quick sidestep and a push has brought the fierce warrior girl to a fall. Sandrah sits on Shar-Teel's breast and starts to smear dirt into her face.)~
DO ~ SetGlobal("SanSharInt","GLOBAL",12) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Ha, you hot little bitch. Have I got you out of your reserve now, are you willing to fight now with me over <CHARNAME>?~
== BSANDR ~ (Sandrah just laughs on top of her helplessly struggling victim and moves now higher up on Shar-Teels body, holding the girl's head in an iron grib between her naked shapely legs.)~
== BSHART~ (Shar-Teels struggling ceases while she snorts exhausted between Sandrah's thights.) ~
== BSANDR ~ (Sandrah has started to caress Shar-Teel's hair, fondling her ears gently, while her eyes are closed.)~
== BSHART~ (The movement of Shar-Teel's head beneath Sandrah's body has taken on a rhythm that you just know too well. You turn away from your two lover girls when you sense that the fight is no fight at all, but Shar-Teel is now demonstrating to Sandrah what she received from you last night.)~ DO~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",13) ~ THEN BSANDR SanShart4
~ *After another long day of travelling and fighting Shar-Teel and Sandrah sit together in the shade of the evening sun. Sandrah has taken care of some of Shar-Teel's neglected wounds.*~
DO~ SetGlobal("SanSharInt","GLOBAL",14)~
== BSHART~ Hey, pussycat, what's in that satchel you have laid there ready?~
== BSANDR ~ Hold still, wildcat, you will see as soon as I finished this work here with you.~
== BSHART~ *Growls like the wildcat she actually is but closes her eyes under the medication from Sandrah's patient and tender hands.*~
== BSANDR ~ *Sandrah has taken a hairbrush from the satchel by her side and starts to comb out the knots and entangled twigs from Shar-Teel's wild mane. The wildcat's growl has turned into a low purring.*~
== BSHART~ If you start to put ribbons in my hair, I will skin you alive, pussycat.~
== BSANDR ~  Psst. wildcat, let me do my job. You know I am good at what I do. ~
== BSHART~ Grrrh.~
== BSANDR ~ * At the end of the procedure, Sandrah pulls out another small item from her satchel and decorates Shar-Teels splendid hairdo with it. First you think it is an exotic flower that sticks on the left side of Shar-Teel's locks...~
== BSHART~ Pussycat, give me that mirror of yours and let me inspect what you have done. I will decide on your fate then.~
= ~ Her grin widens as she sees the miniature skull that Sandrah has attached to her hair where other girls would wear a nice flower or a ribbon.~
== BSANDR ~ Satisfied, my wildcat?~
== BSHART ~ You may yet survive another day, pussycat. *It takes you a second to realise, that the bellowing sounds from Shar-Teel is really heartfelt laughter.*~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",15) Global("Sanrompath","Global",1)~THEN BSANDR SanShart6M
~ (Sandrah and Shar-Teel come up from the small pond where they had taken a bath. They are barefoot and just dressed in light short skirts that cling to their still wet bodies. The sight of your two beauties in the sunlight like this arouses you immediately.)~
DO ~ SetGlobal("SanSharInt","GLOBAL",16)~
==BSHART ~ Hey, that's mine, pussycat! (Shar-Teel tries to grab a towel from Sandrah, who was drying her locks while walking.)~
==BSANDR ~ You could have asked me nicely and I might have given it to you. Although it is mine - you never even owned a towel before.~
==BSHART ~ (Before you can realise it, the two girls start to fight with each other in a way that you are not sure if it is still fun.) Ha, take this.~
==BSANDR ~ Beginner! (Still you are much too fascinated to intervene, instead you study the near perfect view of those beautiful fighters in their action.) ~
==BSHART ~ (Shar-Teel attacks Sandrah with heavy blows from her fists. Her body is all strength and grace. You admire the play of her muscles beneath her skin, which is by now smooth and gleaming from Sandrah's permanent care applied on her friend. She really reminds you of a mighty wildcat.)~
==BSANDR ~ (None of Shar-Teel's heavy blows seems to have any affect on Sandrah. With light playful movements she twitches out of reach of the pounding fists always in the last instant. You wonder how her almost fragile body is able to use her hammer in fight like you have seen - cutting down orcs with a single strike. Everything with her seems to depend on technique and body control. Her fighting style reminds you of a sophisticated dance rather than a killing job.)~
==BSHART ~ Hey, pussycat, let's stop it. See <CHARNAME> is already so excited about us, he will have no reserves to pleasure us later.~
==BSANDR ~ Uh, yes, (looking at the bulge beneath your girdle) he is obviously ready for us right now, wildcat.~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",15) Global("Sanrompath","Global",2)~THEN BSANDR SanShart6F
~ (Sandrah and Shar-Teel come up from the small pond where they had taken a bath. They are barefoot and just dressed in light short skirts that cling to their still wet bodies.)~
DO ~ SetGlobal("SanSharInt","GLOBAL",16)~
==BSHART ~ Hey, that's mine, pussycat! (Shar-Teel tries to grab a towel from Sandrah, who was drying her locks while walking.)~
==BSANDR ~ You could have asked me nicely and I might have given it to you. Although it is mine - you never even owned a towel before.~
==BSHART ~ (Before you can realise it, the two girls start to fight with each other in a way that you are not sure if it is still fun.) Ha, take this.~
==BSANDR ~ Beginner! (Still you are much too fascinated to intervene, instead you study the near perfect view of those beautiful fighters in their action.) ~
==BSHART ~ (Shar-Teel attacks Sandrah with heavy blows from her fists. Her body is all strength and grace. You admire the play of her muscles beneath her skin, which is by now smooth and gleaming from Sandrah's permanent care applied on her friend. She really reminds you of a mighty wildcat.)~
==BSANDR ~ (None of Shar-Teel's heavy blows seems to have any affect on Sandrah. With light playful movements she twitches out of reach of the pounding fists always in the last instant. You wonder how her almost fragile body is able to use her hammer in fight like you have seen - cutting down orcs with a single strike. Everything with her seems to depend on technique and body control. Her fighting style reminds you of a sophisticated dance rather than a killing job.)~
==BSHART ~ Hey, pussycat, let's stop it. See <CHARNAME> enjoys our display just too much.~
EXIT

CHAIN
IF ~ Global("SanSharBoth","GLOBAL",1)~ THEN BSANDR SanShartBN1
~ (As you enter your room at the inn, you find Shar-Teel and Sandrah already present. Both had left the common room earlier to care for their recent injuries.)~
DO ~ SetGlobal("SanSharBoth","GLOBAL",2)~
==BSHART~ Aaah, good, now a little bit more to the left, too. (Shar-Teel lies on the bed on her stomach, completely naked. Except for a number of bruises and scars, you observe again how beautiful her body can be when cleaned and cared for.)~
==BSANDR ~ Then hold still once again. Clench your teeth it will hurt a bit. But I think you will like that even more. (Sandrah kneels on the bed beside Shar-Teel with a cup of salve from which she takes with her fingertips to gently massage it onto the lying girl's wounds. Sandrah has put on one of those transparent nothings you so much enjoy see her wearing, just to tear them from her body in your arousal.)~
==BSHART~ Ouch, little bastard. Don't think I love pain when I could have something better instead.~
==BSANDR ~ (Sandrah quickly adjusts a number of small kisses all around the wound she was working on.) You will feel much better immediately. I swear.~
END
++ ~ * You silently close the door behind you and lean your back against it, preparing to watch the two wonderful girls like they were some piece of art.*~ + SanShartBN2
++ ~ * You lie down on the bed next to the pair and continue to watch them while you feel your own arousal grow moment by moment.* ~ + SanShartBN3

CHAIN
IF ~~ THEN BSANDR SanShartBN2
~ There is someone else, Sharly, who might want to join us.~
==BSHART ~ Hey, loverboy, get your cute ass over here, unless you want to drown in that puddle drooling from your open mouth. ~
END
++ ~ *You move over to the bed, where Shar-Teel's steel-hard grib catches you as soon as you come into reach and forces you to kneel down in front of her. She laughs triumphantly before she starts to kiss you with full passion.*~ + SanShartBN4


CHAIN
IF ~~ THEN BSANDR SanShartBN3
~ *Sandrah playfully puts a dot of the salve to the top of your nose, smiling invitigly at you.*~
==BSHART ~ Hey, loverboy, are you too shy or just too dumb. (She gets hold of both of your ears and forces your head down to hers. She laughs triumphantly before she starts to kiss you with full passion.)~
END
++ ~ * You have already decided that any opposition from your side would be completely useless against those two accomplished fighters.* ~ +SanShartBN4

CHAIN
IF ~~ THEN BSANDR SanShartBN4
~ While your mouth is occupied by Shar-Teel's busy and demanding tongue, you feels Sandrah's gentle lips taking care of that part of your body that has painfully grown in the presence of the two persuaders. But your wonderful healer knows exactly how to turn that kind of pain into pleasure. ~ DO ~ RestParty() ~
EXIT

CHAIN
IF ~ Global("DimDay","GLOBAL",1)~ THEN BSANDR Dimday
~ Good bard, take these coins and spend the evening with your wife and children, please.~ 
DO~ SetGlobal("DimDay","GLOBAL",2) TakePartyGold(50) ~
==BSANDR ~ (You are happy with Sandrah's action - the guy was really terrible.)~
= ~ (Sandrah sits down at the old celesta in the corner and tries a few notes.)~
= ~ (Soon a beautiful melody starts to emerge from the battered instrument.)~
==BSHART ~ Oh, I know this one, it is a wonderful tune!~ DO ~PlaySound("DimDay")  ~
= ~
**I see you on the street in company
  Why don't you come and ease your mind with me
  I'm living for the night we steal away
  I need you at the dimming of the day** ~
= ~ (You could hear a needle drop at the inn as Shar-Teel's wonderful voice has calmed all chatter. Shar-Teel stands beside Sandrah with her hand on the sitting girl's shoulder and her gaze is like a million miles away. You swear you saw a little teardrop in her eye.)~
==BSANDR ~ (Sandrah takes Shar-Teel's hand and the two girls come over to you.)~
==BSHART ~ Sandrah, don't you think the musicians can claim a reward.~
==BSANDR ~ You want me to go around the room with a tin can collecting coins, really?~
==BSHART ~ I think this here loverboy will have to pay for all. (Her smile at you is soft and sweet, the music and her associated memories must have mellowed her mood tonight.)~
==BSANDR ~ (Sandrah puts one arm around your shoulder, while Shar-Teel grips your arm on the other side and gently but unresistable they guide you to your bedroom upstairs.) ~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("DimDay","GLOBAL",4) ~ THEN BSANDR CruelTBK
~ (Your two lovecats have sided up left and right of you embracing your shoulders.)~
DO ~ SetGlobal("DimDay","GLOBAL",5) ~
==BSHART ~ (While Sandrah starts to whistle a jolly tune, Shar-Teel joins in with her beautiful voice: ~
= ~ * Cruel to be kind in the right measure
 Cruel to be kind it's a very good sign
 Cruel to be kind means that I love you
 You got to be cruel to be kind.*~
= ~ (She punches you hard in the ribs. As you open your mouth to gasp for air, her tongue slides gently into your mouth and her lips seal off any protest.)~
==BSANDR ~ (Sandrah's arms embrace you from behind to steady you, but she also pins your arms to your body, so her friend can continue her love attack without your resistance - as if you would attempt any.)~
EXIT

CHAIN
IF ~ Global("SharRead1","GLOBAL",1)~ THEN BSANDR SanShartbook1
~(As you enter the side room you rented for your party after a negotiation with the proprietor, you are once more struck by another surprise from your lovecats. You had thought you knew them by now and even Shar-Teel coming up in a gown and a nice hairdo would not shock you anymore. But you have erred.)~
DO ~ SetGlobal("SharRead1","GLOBAL",2) ~
==BSHART~ (Shar-Teel sits at the table with Sandrah kneeling beside her with her arm around Shar-Teel's shoulder and peering into the BOOK that she holds.)~
= ~ And then the ca-v-a, cava what, cava-li oh, cavalier, hey what a word, it's even pathetic when pronounced, but looks horrible in writing. Too much ado for an arrogant male.~
==BSANDR ~ Wildcat, we will never find out the end of the story if you keep commenting all the words like that. ~
==BSHART~ It seems like your warrior has instinctively sensed your presence now, as Shar-Teel turns around to look at you - through a pair of spectacles!! ~
=~ Hey, loverboy, you really spent your youth with stuff like that? And I complained about my upbringing...~
END
++ ~ She-bear what is wrong with your eyes? ~ + SanShartbook2

CHAIN
IF ~~ THEN BSANDR SanShartbook2
~ Hello, <CHARNAME>.~
==BSHART~ Nothing is wrong, bloody idiot, just Sandrah and I found out that I am a bit short-sighted when it comes to reading.~
END
++~ No wonder, it was never detected, since when do you READ?~ + SanShartbook3

CHAIN
IF ~~ THEN BSANDR SanShartbook3
~Oh my, <CHARNAME>! (Sandrah looks really disappointed.)~
==BSHART~ Ha, pussycat, didn't I tell you? Now you owe me. I told you he would come up with something stupid like that. Even the best of them males cannot be trained into something better.~
==BSANDR ~ <CHARNAME>, you could really have come up with something more intelligent. I was betting with Shar-Teel you would. Sorry I have to leave you now - to clean and polish her boots.~
==BSHART~ Mind it, I will give you no pardon. If I cannot see my pretty face in them afterwards, I will give you a spanking. ~
==BSANDR ~ Good trick, wildcat, but your lesson is not finished. Your new teacher will continue with you now. (While changing positions with you, she manages to give you a passionate kiss, before leaving you alone with Shar-Teel.)~
==BSHART~ You do not really intend to continue with THAT lesson, hm, my cavalier?~
END
++~ A cavalier is also a man of honour to his lady - and I promised to Sandrah. So you do not want me to break my word?~ + SanShartbook4

CHAIN
IF ~~ THEN BSANDR SanShartbook4
~(Shar-Teel makes a face but nevertheless turns back to the book without further protest.)~
==BSHART~ Mpf. So that clever pussycat is again the winner in the end.~
= ~ *And then the cavalier bowed down to the lady and kissed her parted lips...* Hey, loverboy, what are you waiting for, you man of honour...~
END
++ ~ (You follow the book's instructions immediately.)~
EXIT

CHAIN
IF ~ Global("SharRead1","GLOBAL",3)~ THEN BSANDR SharReadName
~ (Sandrah and Shar-Teel sit together with the wildcat holding a book they read together. Although no longer the big surprise it once was, it is still a strange sight to you. Somehow you expect Shar-Teel to jump up any moment to throw the book into the campfire with a scowl. But nothing of that kind happens.)~
DO ~ SetGlobal("SharRead1","GLOBAL",4)~
== BSHART~ *When the wizard turned to look at Me-ri-nandra*, Merinandra? A strange name, isn't it?~
== BSANDR ~ It is elvish, just like Shar-Teel.~
== BSHART~  Shar-Teel is elvish, are you sure, how strange?~
== BSANDR ~ At least it would make sense. Did you not know that, wildcat? Maybe I am wrong, tell me, what do you know about it?~
== BSHART~  Actually, I never asked. It was just a name to me. It is not bad, isn't it? I kinda like it, or maybe I just got used to it without caring too much.~
== BSANDR ~ *The Deep Pond*, hm, it makes some sense, anything may be found in it, a dangerous beast or a rich treasure.~
== BSHART~ Deep Pond, which idiot would name his daughter so? Oh, sure, my idiotic father of course, the brainless moroon. He probably picked up the word during his *hero days* and just liked the sound of it. And then he put it on his daughter just so - why should he care how a girl is named.~
== BSANDR ~ Maybe this is how it came about. But then, it is a beautiful name for a beautiful girl. It is unique, everybody in the Realms will know it soon. Including your family.~
== BSHART~ Ha, the *great hero's* daughter will outshine her wicked father. Everybody will notice what a little pathetic male he is compared to the Deep Pond.~
== BSANDR ~ I am thinking more of the passion and love, the beauty and the energy, the friendship and the care, that can be found in this pond. Dark and brooding on the surface but worth diving into it with open eyes.~
== BSHART~ Oh, you silly wanna-be poet. (Shar-Teel laughs gently, it seems that in reality she seems to enjoy Sandrah's compliments.) Before you go completely over the top let me seal your mouth with this. (She bends over to kiss Sandrah on the mouth.)~
== BSANDR ~ (The book falls to the ground as the two lovecats roll entwined in the grass in their loving embrace.)~ DO ~ StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()~
EXIT

CHAIN
IF ~ Global("SanSharGoM","LOCALS",1)~ THEN BSANDR SanSharGom1
~ Contemplating on your live, Wildcat?~
DO ~ SetGlobal("SanSharGoM","LOCALS",2)~
== BSHART~ Whatever your highbrow word means, I am just plainly thinking, pussycat.~
== BSANDR ~ Are you interested to share your thoughts with me?~
== BSHART~ Sometimes you're really slow for one who always tries to be so clever. Why did you think I made my thoughtfulness so obvious.~
== BSANDR ~ You have me listening, darling.~
== BSHART IF~Global("Sanrompath","Global",1)~THEN~ Gosh, just think of it - some weeks ago I would've been so proud and all to have the son of the God of Murder walk by my side...and in my bedroll at nights.~
== BSHART IF~Global("Sanrompath","Global",2)~THEN~ Gosh, just think of it - some weeks ago I would've been so proud and all to have the daughter of the God of Murder walk by my side...and you in my bedroll at nights.~
== BSANDR IF~Global("Sanrompath","Global",1)~THEN~ And now? Are you not proud to be his she-bear?~
== BSHART IF~Global("Sanrompath","Global",1)~THEN~ That's it, exactly, pussycat, fuck this murdergod, I am proud to be <CHARNAME>'s girl, do you see it.~
== BSANDR IF~Global("Sanrompath","Global",2)~THEN~ And now? Are you not proud to be with us?~
== BSHART IF~Global("Sanrompath","Global",2)~THEN~That's it, exactly, pussycat, fuck this murdergod, I am proud to be your *friends*, do you see it.~
== BSANDR ~ Yes, I do. It is quite a difference.~
== BSHART IF~Global("Sanrompath","Global",1)~THEN~ Yeah, you and him and all that love-crap thing. Damn it, but it feels just good. I am no longer who I am...~
== BSHART IF~Global("Sanrompath","Global",2)~THEN~ Yeah, you and her and all that love-crap and friendship things. Damn it, but it feels just good. I am no longer who I am...~
== BSANDR ~ You are more yourself than you ever were, Shar-Teel, a proud and upright fighter, stronger than anyone, including the male population of the Sword Coast. And you know what you are fighting for by now.~
== BSHART~ Sure I do. I just had a victory over one of my worst fears ever.~
== BSANDR ~ Do you tell me about it?~
== BSHART~ I was afraid the whole woman-in-love thing would make me weak and such, make me end like my mother...I am stronger than I ever was.~
== BSANDR ~ Without any doubt, Shar-Teel, you definitely are.~
EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",17)~ THEN BSANDR SanSharBabe
~ Wildcat, I wonder how you want your children to be brought up, given your own sad experience.~
DO ~ SetGlobal("SanSharInt","GLOBAL",18)~
== BSHART~ HAVE YOU STOOD IN THE SUN TOO LONG? Pussycat, your brain must have crumbled in the heat. Who do you think will get me knocked up ever?~
== BSANDR ~ Let us assume it is just a hypothetical question, just a little mind game. To talk about it will not yet get you pregnant.~
== BSHART~ So, my daughter will learn to be independent. I will teach her to make up her own mind and not to swallow any male lies about life. She will be free to choose her way and her occupation.~
== BSANDR ~ Even if she does not want to become a fighter or warrior like her famous mother?~
== BSHART~ Why wouldn't she want that? Mmh, yes maybe. I mean, I was forced to this occupation by having to fight my way through. She will have it better. Maybe she will want to become a healer like some other mighty strong woman I know. Guess what, if she inherits my spirit, there will be no telling her what she thinks is right for her anyway. She will just grab what she thinks is hers. Ha, she will be one to stir something up on the Sword Coast.~
== BSANDR ~ And what if it is a boy?~
== BSHART~ Oh, gosh, beware. Hm, but still - given the right education from the beginning, we could make something out of him. Teach him respect for women, accept their strength.~
== BSANDR ~ You do not want to make him a little pet toy for the girls though, darling. He must have a chance to develop his own way and mind just like your daughter. Equal chances for both.~
== BSHART~ Guess you are right. We don't want to raise a spittle licker. I want him to be strong and respectable like his father.~
== BSANDR ~ You mean <CHARNAME>?~
== BSHART~ Of course...HEY, wait a minute, you cunning little puss! You have really tricked me into becoming the mother of <CHARNAME>'s brats, you witch.~
== BSANDR ~ You seemed to enjoy the idea quite a bit.~
== BSHART~ Pussycat, forget it, you made me stand in that hot sun next to you just too long. My brain has dried out just like yours. (She starts to attack Sandrah with her hard punches.)~
== BSANDR ~ (Like always, Sandrah just lightly dances out of the reach of Shar-Teel's fist. Some minutes later you see the girls lie in each others arms, exhausted and laughing.)~
END
++ ~ *Shar-Teel to be the mother of your children? What a thought. And what about Sandrah herself?*~
EXIT

CHAIN
IF ~ Global("SanSharTown","GLOBAL",2) ~ THEN BSANDR SanSharTown1
~  How do you feel to be back in your hometown, dear?~
DO ~ SetGlobal("SanSharTown","GLOBAL",3)~
== BSHART~ Bah, *hometown*! Too bad those bandits haven't raided it and taught those pathetic Fists an enduring lesson. Now we need to do it.~
== BSANDR ~ Chances are that we meet a certain Angelo Dorsan while in town.~
== BSHART~ The worst swine of them all. I tell you what, pussycat, I think I have changed quite a bit since I am in this group. Today, if I'd meet this bastard who calls himself my father I can just laugh him in the face. He has become so small and irrelevant to me that I don't care anymore to hate him.~
== BSANDR ~ That is good to hear. Your inner strength has built up to the physical then. This way we can also avoid some confrontations with the Flaming Fist. Please think of it. <CHARNAME>'s quest requires that we do not attract too much attention - at least not yet.~
== BSHART~ Suits me well, Sandrah. Revenge is a dish to be served cold. We will built up the trap for our foe and all that support them in cold blood and unescapable deadly. When the hour comes for them to realize, it will be too late.~
= ~ I tell you something, pussycat, I bet when we reveal the whole plot we will find the bloody idiot who boasts to be my father among our catch.~
== BSANDR ~ Why do you think so? Is there anything you know that might be helpful to us?~
== BSHART~ No, I have no evidence, I just know this fool too well. This Iron Throne complot is just the kind of thing he would fall for, the prospect of easy money and power and such - the whole package of pathetic male idiocy that attracts leeches like Angelo Dorsan. Imagine his face when the whole thing is shattered by no other that his spoiled, useless daughter, HA!~
== BSANDR ~ HA! ~
EXIT

CHAIN
IF ~~ THEN BSANDR SharPregT1
~ Sure. (Sandrah kneels down beside her friend, removes the armour and starts her examination. Her face suddenly turns to a sceptical expression before she takes some strange instrument from her backpack and starts to examine the belly more closely.) Hm, hm, hm.~
DO ~ SetGlobal("SanSharInt","GLOBAL",21) RealSetGlobalTimer("SanSharIntT","GLOBAL",SANROM_TIMER)~
== BSHART~ Hey, pussycat, at times I love it when you tickle my belly, but now is not the time for such play. Speak, what's up?~
== BSANDR ~ Tell me, wildcat, what did you do with that green bottle I mixed for you some time ago?~
== BSHART~ OOOH, damn it! I broke it in that Ogre battle long ago. I completely forgot to tell you to make me one again...~
== BSANDR ~ SHAR-TEEL!!!~
== BSHART~ SANDRAH!!! NO, DAMN IT, that cannot be!~
== BSANDR ~ It can be and it is. I am definitly sure. Congratulations, wildcat.~
END
++ ~ A broken medicine bottle long ago causes a sickness now? Would one of you please explain to me what is going on? ~ + SharPregT2

CHAIN
IF ~~ THEN BSANDR SharPregT2
~ (Sandrah smiles at you and takes your hand.) Congratulations to you as well, <CHARNAME>.~
== BSHART~ (Shar-Teel has jumped up red-faced and starts pounding her fists on your chest.) You bloody bastard, you are no better than any other male swine...~
== BSANDR ~ (Sandrah quickly slaps Shar-Teel in the face.) Stop it, wildcat. If you want to blame someone than do it on yourself. You were the careless one, not him. But this is not a situation to put blame on anyone. Hey, sweetheart, do not spoil this happy event so.~
= ~(Sandrah puts her arms around both of you.) Come on, this is really happy news. Remember, wildcat, how you told me some time ago how you would raise him or her. You two will be really good parents.~
END
++ ~ Parents? You mean...Shar-Teel is...Oh, my. (You take Shar-Teel in your arms and kiss her.) This was not intended at all, but what is that is. We will find a way to make something good out of it, she-bear, I promise you.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~+ SharPregT4
++ ~ WHAT? You really did that to me...You - you...Sandrah, I am sure with your skills you can surely help us out of this dilemma quickly.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-1)~+ SharPregT3

CHAIN
IF ~~ THEN BSANDR SharPregT3
~ <CHARNAME>! I can only believe that these words come from the initial shock of that unexpected news. Calm down, love, and think about it again. My healers assistance in this case is to assure that all will be done for mother and child that a healer can do to make you very happy parents in seven moons time.~
END
++ ~ Mmmh. Maybe you are right. Shar-Teel, I really love you. If you agree to have this child - our child - I will be its father with joy. We will give him the childhood that we two never had.~ + SharPregT5

CHAIN
IF~~ THEN BSANDR SharPregT4
~ (Sandrah smiles at both of you) <CHARNAME> will be so completely different from the father you have known, Shar-Teel.~
== BSHART~ He'd better be. I will not loose my weapon skills just because my belly will grow.~
END
++ ~ I am sure you will defend your little one like any good she-bear does. Shar-Teel, I really love you. And this child - our child - I will be its father with joy. We will give him the childhood that we two never had.~ + SharPregT5

CHAIN
IF ~~ THEN BSANDR SharPregT5
~ It will still be some time, seven moons to be exact. We have a lot of time to finish our quest and find a good place for you and the little one.~
== BSHART~ Damn it! Millions of women have done that before, so why should I be afraid. I swear I will be a mother whom this child will love and respect all life long. And you, <CHARNAME>, I will gut you and boil you and then have pussycat revive you to start slicing you again if you ever dare to do anything wrong to our child. Remember all I told you about my bloody father and simply do the opposite and you may survive. (Shar-Teel has tears in her eyes - they might come from joy.)~
== BSANDR ~ Our house in Waterdeep will always be there when the time comes that you cannot travel and fight anymore, Shar-Teel. There is no need for haste to find a place. There is still time enough for us to finish this quest and make plans for our life thereafter. It will all turn out to be wonderful.~
== BSHART~ (Shar-Teel is now hugging you like you have never dreamed she could.) This whole bloody love thing has got us in the end, you crazy idiotic male sweet sweet loving man. Puuh, in some time I cannot wear this armour anymore, but skirts. ~
== BSANDR ~ Trust me, wildcat, I will find some for you that even you will like. You must overcome the feeling that becoming a mother means you get dependent and weak. It will not, I know you good enough. You will stay strong and proud in your new role.~
== BSHART~ Just think of it, just a little while ago I would have killed you for such words, just to drop you beside the cadaver of the male that did such a thing to me. And now? ~
= ~ Since I have thrown up already twice this morning there is little chance that anything is left in my stomach to vomit out now. So listen closely, loverboy. I think I can say it now without getting sick. I LOVE YOU.~
END
++ ~ And I love you.~ DO ~ ClearAllActions()
SmallWait(2)
SetInterrupt(FALSE)
TextScreen("SharBa")
AddJournalEntry(@350,QUEST)
~ EXIT

CHAIN
IF ~ Global("SanSharInt","GLOBAL",22) ~ THEN BSANDR SharPregN
~ Say, wildcat, have you and <CHARNAME> already discussed the possible names.~
DO ~ SetGlobal("SanSharInt","GLOBAL",23) RealSetGlobalTimer("SanSharPreg","GLOBAL",300000)~
== BSHART~ What is there to discuss, her name will...Ah, mmh, you are somehow right, pussycat. I have to adjust to this new way of thinking I guess. I mean from now on it will be us, not just me. Yeah, he has a kind of right to say his mind as well.~
== BSANDR ~ You know him well enough, he will not bully you around. ~ 
== BSHART~ Hey, loverboy, move on over to your lovecats, will you.~
== BSANDR ~ We are discussing the issue of names for your child.~
END
++ ~ His name will of course...~ + SharPregN2

CHAIN
IF ~~ THEN BSANDR SharPregN2
~ Hold it, <CHARNAME>. The mother started a similar sentence with *her name will be...*. So before you kill each other about it and I loose both the people I love dearly, how about this: Shar-Teel, you will decide the girl's name and, <CHARNAME>, you will decide the boy's name.~
== BSHART~ Sounds reasonable, doesn't, my love?~
END
++ ~ Yes, that sounds fair. Mh, maybe we can keep the name that is not needed this time for a later occasion...~ + SharPregN3

CHAIN
IF ~~ THEN BSANDR SharPregN3
~ Sounds like someone is already planning on a real family...~
== BSHART~ Hey, hey, lovely idiot, before you do that you need to qualify as a father for this one first. Don't think you're done with just putting your seed into me and then go and have your fun with our pussycat here. I will beat responsibility into your empty head if I must.~
== BSANDR ~ You were right, <CHARNAME>. (Sandrah laughs friendly.) A real she-bear defending her young one against each and all.~
== BSHART~ And do you see anything wrong with that? Just wait and see what you will do when your time comes.~
== BSANDR ~ I was not critising you at all, wildcat. You do that perfectly right. Remember what some misguided people will think about your child's heritage from its father. It will need a strong mother like yourself. ~
== BSHART~ I, mh, I was also thinking that the little one would have a loving aunt to teach the lore of Toril and things like proper language and such. You know this tutor kind of person.~
== BSANDR ~ Agreed. You are really seriously making plans for the future. You have quite changed a bit from the first time we have met.~
== BSHART~ I am not really missing anything from that time. And don't think I like those males any better just because of this one-in-a-million exception we have found.~
EXIT

CHAIN
IF ~Global("SanSharAngD","LOCALS",1) Global("SanRompath","Global",1)~ THEN BSANDR SanSharAngDeadM
~ Shar-Teel?.~
DO ~ SetGlobal("SanSharAngD","LOCALS",2) ~
== BSHART ~ So now he is finally dead. Died because of his own male stupidity. YOU BASTARD, YOU SCUM! I was sure we would find him down here in his greedy lust for power, but too stupid to see he was just used as a tool once again.~
== BSANDR ~ Something must have been in him after all. He made it far - but not as far as his daughter.~
== BSHART ~ He made the wrong choices, that idiot, again and again in his life. I made the right one, thanks to you and to <CHARNAME>.~
== BSANDR ~ Do you pity him?~
== BSHART ~ No...I am just glad this episode is over now. Angelo Dorsan no longer looms over me, I am free from that ghost now.~
== BSANDR ~ A new life is ahead of you, wildcat, the one you have already begun for some time.~
== BSHART ~ You say it, pussycat, this is exactly how I feel about it.~
==BSHART ~ Loverboy, move your ass over here, your wife is in need of you, just in case you haven't noticed yet, you dolt.~
END
++~ (Move to Shar-Teel and silently lay your arms around her shoulder.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",3)~ EXIT
++~ (Clean your weapon and ignore Shar-Teel and Sandrah.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",-6) ~EXIT
++~ I cannot say I'm sorry for his death - nor do I think you should be. It's good you are now free of him forever.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~ EXIT

CHAIN
IF ~Global("SanSharAngD","LOCALS",1) Global("SanRompath","Global",2)~ THEN BSANDR SanSharAngDeadF
~ Shar-Teel?.~
DO ~ SetGlobal("SanSharAngD","LOCALS",2) ~
== BSHART ~ So now he is finally dead. Died because of his own male stupidity. YOU BASTARD, YOU SCUM! I was sure we would find him down here in his greedy lust for power, but too stupid to see he was just used as a tool once again.~
== BSANDR ~ Something must have been in him after all. He made it far - but not as far as his daughter.~
== BSHART ~ He made the wrong choices, that idiot, again and again in his life. I made the right one, thanks to you and to <CHARNAME>.~
== BSANDR ~ Do you pity him?~
== BSHART ~ No...I am just glad this episode is over now. Angelo Dorsan no longer looms over me, I am free from that ghost now.~
== BSANDR ~ A new life is ahead of you, wildcat, the one you have already begun for some time.~
== BSHART ~ You say it, pussycat, this is exactly how I feel about it.~EXIT

CHAIN
IF ~Global("SanSharInt","GLOBAL",24)~ THEN BSANDR SanSharGoWDBaby1
~ Sorry, wildcat, there is no way to close that armour around you anymore. You have grown out of it by now.~
DO ~ SetGlobal("SanSharInt","GLOBAL",25) ~
== BSHART ~ You dare to call me fat, pussycat, just wait...~
== BSANDR ~ Stop, wildcat. Fat is not the expression to be used here. That you start to grow out of your armour and your other clothes does not come unexpected, regarding your condition.~
== BSHART ~ Yeah, sorry, I'm a bit edgy these days...~
== BSANDR ~ Haha, I would not have noticed any difference to other times. But, honestly, as your trusted healer I have to tell you that the adventuring days will now be over for you for a time.~
== BSHART ~ I can't honestly say that I'm prepared, really. Anyway, what is that is and what must be done be done. Watcha propose, pussycat?~ DO~  FillSlot(SLOT_ARMOR)~
== BSANDR ~ As <CHARNAME>'s quest has not allowed us to find an own place by now, I renew my invitation to go to Waterdeep and set the new family up in my father's place meanwhile.~
END
++ ~ Listen, everybody, we will need to take a break in adventuring to bring the expectant mother home to Waterdeep! ~ +  SanSharGoWDBaby2

CHAIN
IF ~~ THEN BSANDR SanSharGoWDBaby2
~ MEN! You were right, wildcat.~
== BSHART ~ Listen, lover-boy, you wanna-be father, listen carefully. It is me who becomes the mother here, so don't you dare mothering me, sweetheart.~
= ~ So, Sandrah, your offer is accepted and I will start my travel to Waterdeep now.~
END
++~ But we surely need to accompany...~ +  SanSharGoWDBaby3

CHAIN
IF ~~ THEN BSANDR SanSharGoWDBaby3
~ MEN! ~
== BSHART ~ Didn't I tell you to listen? I go to Waterdeep, I am not sick, I am not weakened, I am strong enough to care for two, <CHARNAME>, for me and the baby. There is nothing between here and Waterdeep that the strongest fighter woman on the Sword Coast cannot overcome. Worry not for me, sweetling, mind your remaining business and stay your hands away from business you cannot handle, hehe.~
== BSANDR ~ Landrel will find us and notify us when the time has come to get to Waterdeep ourselves, <CHARNAME>. Shar-Teel is right, she is quite capable to get there by her own still.~
== BSHART ~ So, time for goodbye, you take good care of our totally incompetent male - he's just shown it once again. Don't spoil him completely with your vanilla love, I will need his zest pretty soon again.~
== BSANDR ~ I will, worry not. Let us make it short, wildcat. I love you.~
== BSHART ~ I love you, pussycat, guess I will even miss you a bit.~
END
++~ I love you, Shar-Teel, and I will surely miss you more than just a bit.~+  SanSharGoWDBaby4

CHAIN
IF ~~ THEN BSANDR SanSharGoWDBaby4
~ MEN! ~
== BSHART ~ (Shar-Teel smiles as she turns to go. She turns quickly but not quickly enough to hide the small tear she has in her eye as well.)~
DO ~ SetGlobal("x#sharinterest","Global",3) ActionOverride("Sharteel",LeaveParty())
ActionOverride("Sharteel",MoveBetweenAreas("CVSans",[352.325],12))~
EXIT



// In Elminster's Tower

CHAIN
IF ~ Global("Santlove","GLOBAL",2) ~ THEN BSANDR SantLove21
~ My friends, please feel at home in this place. Go downstairs, where Landrel will be able to fulfill your every wish and need. If necessary with the help of his own knowledge in the magic arts.~
= ~<CHARNAME>, please, please come with me down these stairs to my own quarter, my love.~
DO ~ SetGlobal("Santlove","GLOBAL",3) ~
== Bimoen IF~ InParty("Imoen2") ~ THEN ~ Huuh, don't need to tell lil' ol' Imoen what those two are up to...~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ All this love stuff only makes me go sick, ah let's test this Landrel guy, even though he's just a male. ~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ I hope she still remembers some of my lessons. I bet she does, she's a real good learner. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Pst, do not disturb this precious moment. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ (Closes her book of novels) Oh, when will I ever find one of those romantic heroes. Just only reading about it is not the same. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Just to think I could have gone to that room once...~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ People have no idea, how much a little musical background would enhance a romantic encounter. ~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! Can this Landrel mage get a cool nice beer from some real dwarfish brewer. Let us test him. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ So, well, eh, em. Some just have the knack to *DO* things. ~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, I heard that mage downstairs could get us a real decent feast together. Hey, let the barrels pop open! ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Oh, this young love. Happy tonight and facing doom tomorrow already. ~
== Bjenli IF~InParty("CVJenlig")~THEN~(Hiss) Will be long time till Jen'lig find male of her kin for mating.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~May Sune reign over this place tonight for thee to feel her spirit.~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Hey, ladies, there is sure another bedroom in this house to have some fun in. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ The prophesy surely spared out some intersting parts. Or mayhap some prude monks have made the respective scrolls disappear.~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ And we thought we had still a child given to our care. The wheel of nature never stands still.~
== BSANDR ~ Goodnight all, goodnight.~ DO~
StartCutSceneMode()
                SmallWait(4)
		FadeToColor([30.0],0)
		Wait(2)
		ActionOverride(Player1,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player2,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player3,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player4,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player5,LeaveAreaLUA("CVdre2","",[700.950],7))
		ActionOverride(Player6,LeaveAreaLUA("CVdre2","",[700.950],7))
		FadeFromColor([30.0],0)
                EndCutSceneMode()~
EXIT


CHAIN
IF ~ Global("Santlove","GLOBAL",7) ~ THEN BSANDR SantLove71
~ My friends, I hope you all had a good night.~
DO ~ SetGlobal("Santlove","GLOBAL",8) ~
== Bimoen IF~ InParty("Imoen2") ~ THEN ~ Huuh, what a place. <CHARNAME>, one day we will have a home like this, just wait and see.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ Hey, Landrel, loverboy, you've got quite some stamina - for a male. ~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ These surfacer mages are cunning. Disguised as old man with the fire of a young stallion under those mysterious robes. (Bites Landrels earlobe until some blood starts dripping. Landrel quickly casts a healing spell.) ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ It is good to have these precious moments of peace once in a while. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ Do we have to leave already. I am not finished to read even all the titles from these tomes. There are so many I have not even found time to open at least one. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ It was good, I took the time to pay a visit to my family at the other end of town. I would introduce you to them, but they had to leave for Amn already earlier this morning.~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Oh, Waterdeep. One day I will be on the big stage right here. Or in Athkatla ~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! This Landrel mage really had true cool dwarfish beer. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ So, well, I hope *your* night was what you expected it to be. ~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, do not cry at me like this. My poor head. I cannot even remember the right healing spell for this type of headache. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ This quiet moment was nothing but an illusion, friends. Doom is waiting on that doorstep yonder already. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ I cannot figure one of the traps in this damned house. So many good things and not one *souvenir* to prove I was really here. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ 'tis a place filled with knowledge and wisdom in ev'ry corner. The old scrolls do not lie about your father, Sandrah.~
==Bedwin_  IF~ InParty("Edwin") ~ THEN ~ (The sooner we leave this cage the better...how can such a place be the home of a lovebird like her?)~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~I can see that my goddess gave thee a taste of her pleasures (giggles and blushes lightly).~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ I despise the perversion of human cities. Why can people not take the example of this house to see how a symbiosis with nature can be achieved?~
== Bjenli IF~InParty("CVJenlig")~THEN~ Jen'lig senses power that will be helpful for her mission. Manlings here are more than they show open.~
== BSANDR ~ Let us see what my father may have found out meanwhile.~
EXIT

CHAIN
IF ~ Global("SanSuBH","GLOBAL",30)!InParty("Imoen2")~ THEN BSANDR BloodyMoney1
~ The papers seem to be the real treasure here. I will need to take them along and study why so many had to die for them. All these other treasures here are soiled with blood.~
DO ~ SetGlobal("SanSuBH","GLOBAL",31)~
END
++ ~ Anyway, let us take as much as we can. We will have use for it and the dead will not live again if we just let it rot here.~ EXIT
++ ~ Let us take as much as we can anyhow. We will sell it and use the money to do some good on the Sword Coast. I will see to it that no life was lost here without a purpose. Otherwise the treasure will just raise the greed of other evil minds.~ EXIT

CHAIN
IF ~ Global("SanSuBH","GLOBAL",30)InParty("Imoen2") GlobalLT("OrcPrison","GLOBAL",24)~ THEN BSANDR BloodyMoney2
~  The papers seem to be the real treasure here. I will need to take them along and study why so many had to die for them. All this other treasures here are soiled with blood.~
DO ~ SetGlobal("SanSuBH","GLOBAL",31)~
== Bimoen~ Scary to think of all the many and many people dead or zombied for this. Dontcha think we can make something good from it? Take this loot and distribute it to ones who had suffered from the pirates and such?~
== BSANDR ~ You have a golden heart, Imoen, my friend. You are right. We should take it and try to repair some damages done by the villains. I would have nothing from it myself.~
== Bimoen~ Me's thinking, see as me and <CHARNAME> are orphans but had it good nonetheless, but there's other poor kids that've lost the parents to those pirates - can't we do something about it with this gold, maybe?~
== BSANDR ~ You are wonderful, Imoen. We will find a possibility to do this. Right, <CHARNAME>?~
END
++ ~ Anyway, let us take as much as we can. We will have use for it and the dead will not live again if we just let it rot here.~ EXIT
++ ~ Let us take as much as we can anyhow. We will sell it and use the money to do some good on the Sword Coast. I will see to it that no life was lost here without a purpose. Otherwise the treasure will just raise the greed of other evil minds.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

CHAIN
IF ~ Global("SanSuBH","GLOBAL",30)InParty("Imoen2") GlobalGT("OrcPrison","GLOBAL",23)~ THEN BSANDR BloodyMoney3
~  The papers seem to be the real treasure here. I will need to take them along and study why so many had to die for them. All this other treasures here are soiled with blood.~
DO ~ SetGlobal("SanSuBH","GLOBAL",31)~
== Bimoen~ Scary to think of all the many and many people dead or zombied for this. Dontcha think we can make something good from it. Take this loot and distribute it to ones who had suffered from the pirates and such.~
== BSANDR ~ Are there not some among your children in Beregost who lost their parents to the pirates, my friend?~
== Bimoen~ Yeah, little Yanni's dad was a sailor slaughtered, 'n' Annie-Sue lost both parents who were fishermen... and also.. oh there are so many - Let's grab what we can carry and take it to the temple in Beregost, will you. (Looks around at her comrades.)~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ HA, before your whining never ends I will carry a sack myself to the glibbering priests. (Her eyes betray Shar-Teel, her harsh words are nothing but a masquerade. It is clear that she fully agrees with Imoen's intention.) ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ If always blood and death could finally lead to an acceptable end, Imoen, Toril could be a much better place for all. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ The deeds of Imoen the Magnificent go on and on. A new chapter will be written today in her book. ~
== Bedwin_ IF ~InParty("Edwin") ~THEN ~ (Uh, that pink incarnation of nitwit! The gold, the power, yes, give it to a horde of babbling brats...) My leader, you will surely be wiser than to do such.~
== BMinsc_ IF ~InParty("Minsc") ~THEN ~ Boo says he loves the pink little lady. You don't need to be strong as Minsc to do heroic deeds.~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ Mylady Imoen, if there ever was a heart of gold that outshines any darkness, it is yours. No evil can persist in your presence.~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ I am getting weaker and weaker with each day on the surface and in this company. This unbearable babbling girl grabs me at a part I thought was imune to such attacks - my heart.~
==Bskie IF~ InParty("Skie") ~ THEN ~What a great idea!!...I mean, after we put some aside to purchase some stylish replacement for our torn wardrobe, right?~
==Bjenli IF ~ InParty("CVJenlig") ~ THEN ~(Hiss) Jen'lig will carry some for pink girl plan. Counselor Sandrah know real worth of treasure found here.~
==IF_FILE_EXISTS k-roseB  IF~ InParty("k-rose") ~ THEN ~ Sing a song of joy with me at the end of this long and dreadful night. With the morning and with our heroine Imoen comes hope. ~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! Give me such a sack for your orphans. But don't tell any dwarf you ever met about it. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Such great deed done with such ease, Lady Imoen. I envy you for that, in a good way, I mean.~
== IF_FILE_EXISTS BRH#ISRA  IF~ InParty("RH#ISRA") ~ THEN ~A pure heart like yours can provide change where so many others fail, Imoen.~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, the slaughter is done and for a valid purpose as it comes out in the end. Righteous deeds will follow us. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Oh to bring a bit of light and hope to these poor children once more. After all, our perils make some sense this way, the moonblade is not wielded in vain. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Money not for our own bags and I stand here and fully agree to that? Some people have a way to bring out the best in us. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ 'tis an intention of the truely pure at heart. I am grateful to have found such company in perilious times. No god of murder stands a chance against a golden heart as thine, Imoen.~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ Imoen, be careful. As good as your intentions are, do not imbalance nature too much. Ah, forget what I just said, give me my part of the load to carry.~
== BSANDR ~ You are wonderful, Imoen. We will find a possibility to do this. Right, <CHARNAME>?~
END
++ ~ Anyway, let us take as much as we can. We will have use for it and the dead will not live again if we just let it rot here.~ EXIT
++ ~ Let us take as much as we can anyhow. We will sell it and use the money to do some good on the Sword Coast. I will see to it that no life was lost here without a purpose. Otherwise the treasure will just raise the greed of other evil minds.~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT


CHAIN
IF~ Global("SanSuBH","GLOBAL",32)~ THEN BSANDR ZombStr
~ We were too late, poor captain. Let us take him on board and later bury him at sea, like is the custom for a seaman.~
DO ~ SetGlobal("SanSuBH","GLOBAL",33)~
== Bimoen IF ~ InParty("Imoen2")~ THEN~ Yeah, this island is no place for a good man. He might get a zombie here, huuh. But aye, wisecracks, hope you know how to run a ship.~
== BSANDR IF ~ !InParty("Imoen2")~ THEN~ This island is no place for a good man. The question is now, how do we get away from here without him.~
== BSHART IF~ InParty("Sharteel") ~ THEN ~ What? You have no plan for that? Gosh. ~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Bad luck, but I am a woodelf. We have seafaring brothers, but this island is deserted. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ We should look for books, maybe. We may find something on the ship. An instruction or so.~
== BSANDR IF ~ !InParty("Sufinch")~ THEN~ This adventure started with a book, perhaps the ending will be found from books as well. What about that one from our poor captain? There may be others that help around that ship.~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ We have smit all the evil on this island. And now we are stuck? Helm will help.~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ I should never have gone out to sea, I knew it. So here is the end of our journey. No, by Shar. We find a way, we always do.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ Buzzurk! You foolish <PRO_RACE> never listened to me. The sea is not a friend to any dwarf. ~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ Lathander will not forsake us, he will see our pure hearts in need.~
== Bedwin_  IF~ InParty("Edwin") ~ THEN ~ Imbeciles! Have you taken me to this island without any return plans...(But my little clever heroine will surely find a way out of here...if she would only find a way to my bedroll as well...). What are you waiting on, <PRO_RACE>, do something!~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ By Tempus, what a shame. I come from a seafaring tribe but I admit, I cannot handle a ship like that. ~
==Bskie IF~ InParty("Skie") ~ THEN ~I...just...want...to...leave this terrible place, PLEASE!~
==Bjenli IF ~ InParty("CVJenlig") ~ THEN ~(Hiss) Jen'lig knowledge of githyanki spelljammer not helpful here. Water not concept of Astral Plane.~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Sails and ropes. What a jungle of ropes and more ropes. All of them strong enough to hold the weight of a man, if he decides to hang himself. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Hey, we are no sailors, but we have learned a bit on the way over. Someone of you must remember it still - as I do not. ~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ 'tis a long journey I have taken from Rashemen to this place. I know mine fate is not to end here. I will look at mine scrolls for aid.~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ Sandrah, a practical girl like you from a harbour town, do you not know how to sail?~
== BMinsc_ IF~ InParty("Minsc") ~ THEN ~ Have no fear, Boo, we will find a way to return without your fur getting wet. Our lovely Sandrah and our clever <CHARNAME> have enough knowledge for that.~
== BSANDR ~ I know a bit about small craft with one sail. I did a trip or two as a child. But this one with all its sails and ropes is something different. Let us not be hasty, we are far out on the sea, not near the coast. It will take us three days back to the Sword Coast. ~
END
++ ~ Let us take a look at what we find on the ship and inside and then let us reconvene a bit later, to discuss our plans.~ EXIT

// Xvart Secret
CHAIN
IF~Global("SanDruids","cvdru0",2)~THEN BSANDR XvartSecret
~ The epitome of blind bigotry - if these shadow druids really love and protect nature chances are poor for the environment I love.~
DO~SetGlobal("SanDruids","cvdru0",3) SetGlobal("SanXvartPeace","Global",1)~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Those are blind, misled fools who cause destruction everywhere they appear, especially to mother nature they pretend to defend.~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ Balance cannot be achieved by violently enforcing the one side only. Sandrah, my friend from the City of Splendor, you understand nature much better than any of those fanatics.~
== BMinsc_ IF~ InParty("Minsc") ~ THEN ~ The stench of this evil hole makes Minsc swoon and Boo has even overthrown his breakfast. Good we kicked their butts and they leave the little blue people alone now.~
== Bfaldo IF~ InParty("Faldorn") ~ THEN ~ We have soiled this place with blood and the earth moans. They might have been mislead by those strange vapours in these caves, but are we so much better than them in what we did? ~
END
++~ It was good to return, Sandrah. We cannot bring back the innocent ones we were forced to kill, but we have at least put an end to it.~DO~AddexperienceParty(1000)~EXIT

// Dynaheir Quest Talks

CHAIN
IF ~Global("SanDynAftGn","GLOBAL",1)~ THEN  BSANDR KickSPT443
~ From your accent I deduct you are from Rashemen. How come you be here on the Sword Coast?~
DO ~ SetGlobal("SanDynAftGn","GLOBAL",2)~
==BDYNAH ~ Thou art right and well learned, young priestess, I am Dynaheir, a witch of Rashemen. ~
== CVSandrJ ~ So far from your home I would assume you are on a dajemma? ~
==BDYNAH ~ Oh, my age for dajemma is past. I was sent to the Sword Coast by the Wychalarn in search of other knowledge. But here and now 'tis not place nor time for prolonged lore. We should go back to the topic when we know each other better. ~
== CVSandrJ ~ Agreed. I look forward to exchange what knowledge we both may have on the current and past proceedings hereabout. My mother's mother was a born Rashemi.~
= ~ (You see that Dynaheir looks puzzled for a moment back at Sandrah. Something seems to be shared between these two women that has slipped your attention.)~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",2) ~THEN BSANDR DyCloth
~  I had the feeling earlier that you were a bit of astonished to see me in <CHARNAME>'s company, Dynaheir. May it be that you know me in any way.~
DO ~ SetGlobal("DYBant","GLOBAL",3) RealSetGlobalTimer("DynBantT","GLOBAL",1600)~
== BDYNAH ~ 'Tis not you in person that I thought familiar, it is something about you I noticed or something you own.~
== BSANDR ~ Strange enough, as I had a similar kind of sudden feeling, as if something connects us both. Perhaps if you tell me why you have come from a place half a season's travel away from here, we get a hint.~
== BDYNAH ~ 'Tis an interesting time for the Realms, with great things foretold for the Sword Coast.  'Tis therefore a likely place to look for what we need. ~
== BSANDR ~ Many things have been foretold by the seers, but there is only one that is so widely spread that it would also be known in your country - the prophecies of Alaundo.~
== BDYNAH ~ I see, young one, I's not mislead to believe thou art wise far beyond thine apparent age. I and my comrade Minsc have been sent by the Wychalarn to determine if the prophecies of Alaundo are true. We search for the spawn of Bhaal.~
== BSANDR ~ A spawn of Bhaal! You have found the trace of one of those children?~
== BDYNAH ~ Children they no longer will be this time as we speak. They will be of age enough to start the struggle for power as foreseen by the wise Alaundo.~
== BSANDR ~ We are in research of the current troubles along the Sword Coast, the increasing bandit raids and the Iron Crisis. There may be more involved, a struggle for power indeed. Some say that Amn is involved and Baldur's Gate. But it looks more than a struggle for economic power of the merchants league than a bloody one as mentioned by Alaundo.~
== BDYNAH ~ Or 'tis mayhap one disguised as the other. ~
== BSANDR ~ Or a spawn making his first attempt but not having reached its full power by now.~
== BDYNAH ~ Hope for thine assumption to be true, priestess, as it may give the chance to stop still what was foretold...~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",4)~ THEN BSANDR DyClothGiv
~  Are you willing to talk with me about your search for the Bhaal spawn that you have mentioned to me?~
DO ~ SetGlobal("DYBant","GLOBAL",5) SetGlobal("SanNotCloth","GLOBAL",3) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH IF ~ GlobalLT("Formedcloth","GLOBAL",2)~THEN~ 'tis maybe good to have a confidant in this, Sandrah, and I hath reasoned with mineself to trust thee. Now that we regained mine Journal I want to show thee a find I had hidden between the pages in the book. I ask you to take into your custody for the moment, a strange item indeed.~ DO ~ GiveItemCreate("Sanwi2","CVSandr",0,0,0)~
== BDYNAH IF ~ GlobalGT("Formedcloth","GLOBAL",1)~THEN~ 'tis maybe good to have a confidant in this, Sandrah, and I hath reasoned with mineself to trust thee. 'tis connected with that strange piece of cloth I found.~
== BDYNAH ~  I have come to possess during Minsc and mine travel this item I wanted to debate with you. ~
== BSANDR IF ~GlobalLT("Formedcloth","GLOBAL",2)~ THEN~ A strange piece of cloth with a part of a pattern that somehow reminds me of something I have seen before. If I only knew when or where. Can you tell me more about it, Dynaheir?~
== BSANDR IF ~ PartyHasItem("Sanwi3")~ THEN~ They belong to the same puzzle. (Sandrah has put the cloth piece she received at the Firewine from the caravan guard beside this one.) Another part of the same item. Can you tell me more about it, Dynaheir?~
== BSANDR IF ~ PartyHasItem("Sanwi1")~ THEN~ Look at this. (Sandrah has put the first cloth piece she received from Viconia beside this one.) Another part of the same item. Can you tell me more about it, Dynaheir?~
== BDYNAH  ~ I found it near a place thine folk call the Firewine. But it must have been lost in older times, me guesses at the end of the Time of Troubles...Thou know the lore, or so I hope.~
== BSANDR ~ The lore about the Firewine or the history of the Time of Troubles?~
== BDYNAH  ~ 'tis the second I was referring to. 'tis the time when the spawns of Bhaal were created and born by the mothers all over Faerun, mothers whom the God had chosen to carry on his seed as he knew his fate was sealed.~
== BSANDR ~ Mothers who were not really mothers but mere vessels for the spawns to be created. Misused women who had to die by giving birth to what was forced into them.~
== BDYNAH  ~ Thou hath a warmth heart to care so for these long dead women. (Dynaheir takes a deep look at Sandrah, and sensing the pain in the younger women, puts an arm around her shoulders.) But there is more, ain't it?~
== BSANDR ~ My own mother was one of them...~
== BDYNAH  ~ But...No, that cannot be true...thou are nay the one! I cannot err so...~
== BSANDR ~ Stay calm, Dynaheir, it is not me I am talking about. You are right, I am no Bhaalspawn. But my own mother was cursed with one after she had me.~
== BDYNAH  ~ Alas thine own interest is explained! That child who is neither thy brother or sister and not even thy mother's child - this is what thou searches... ~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",6) ~ THEN BSANDR SanDyBS1
~ Dynaheir, you confessed to me already you came to the Sword Coast in search of a Bhaalspawn.~
DO ~ SetGlobal("DYBant","GLOBAL",7) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH  ~ 'tis the truth, as well as we have excluded thee already for being one. But what about the second child your mother had.~
== BSANDR ~ I do not know her or him, you see I do not even know the spawn's gender. Nor what happened to it after my mother died.~
== BDYNAH  ~ Mayhaps 'tis the same one we both pursue then.~
== BSANDR ~ But is it the one that we assume to be at the heart of the machinations that bother the Realms today. Or is it the other one?~
== BDYNAH  ~ The other one? I have heard of some that read the prophecies of Alaundo in this way. Art thou mayhaps one of them, one of Elminster's school?~
== BSANDR IF ~ Global("PCKnowsElmDaughter","GLOBAL",1)~ THEN ~ Even more, I am Elminster's daughter. And as such I agree with my father, that the one able to obstruct the spawn who rises to acquire the dead god's throne must be a Bhaalspawn as well.~
== BSANDR IF ~ Global("PCKnowsElmDaughter","GLOBAL",0)~ THEN ~ I agree with Elminster, that the one able to obstruct the spawn who rises to acquire the dead god's throne must be a Bhaalspawn as well.~
== BDYNAH  ~ And still thou dost not know which one thou will face if thou succeed to find your mother's lost child, the ursurpator or the defender.~
== BSANDR ~ That is true, Dynaheir. Is your reason you stay with <CHARNAME>'s party not the same? You could have left in the last town we passed to continue your search - unless you believe that <CHARNAME> will lead you to the answer you seek.~
== BDYNAH  ~ Yes, <PRO_HESHE> is entwined with the plot, hence the assassins, the dreams. Thou thinkest the same, Sandrah.~
== BSANDR IF ~ GlobalGT("WinskApp1","GLOBAL",7)~ THEN ~ I do. Even if I think your motivation goes deeper. We have encountered an Othlor who appears to be in league with the spawn searching godhood. A renegade from your land as it seems.~
== BDYNAH IF ~ GlobalGT("WinskApp1","GLOBAL",7)~ THEN~ Strange - the gnoll story with the Old One hunting me now appears in a different light. Let us take some time to ponder this new lore, Sandrah. This exchange hath been a fructuous one.~
== BSANDR IF ~ !GlobalGT("WinskApp1","GLOBAL",7)~ THEN ~ I do. Even if I think your motivation goes deeper than just a scholastic interest. ~
== BDYNAH IF ~ !GlobalGT("WinskApp1","GLOBAL",7)~ THEN~ Let us take some time to ponder this new lore, Sandrah. This exchange hath been a fructuous one.~ 
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",8) ~ THEN BSANDR SanDyBS1
~ Dynaheir, will you give me some insigh into a Hathran's approach to the magic arts?~
DO ~ SetGlobal("DYBant","GLOBAL",9) RealSetGlobalTimer("DynBantT","GLOBAL",1800)~
== BDYNAH~ Thou artst wise, my young friend, to name it *the magic arts*. Thou knowest that we are chosen among our folks when still very young. The elders sense the gift for the arts in a young one and take her from her family to teach her from then on. It is an honor for the family which is given another child into their care in return.~
== BSANDR ~ That sounds like you believe that one needs a gift or a talent to start the studies at first.~
== BDYNAH~ 'tis true, but also truth is that the gift would be lost if it weren't trained and schooled from an early day onwards. Even if thou art a gifted one the work is hard and endures all thine life to evolve it to mastery.~
== BSANDR ~ I see. But if that is true, it is as well true for any other profession or art. You may have a talent for drawing pictures, but it needs more than just this to reach the mastery of a Leonardo.~
== BDYNAH~ Hm, a valid opinion from one who seems to possess a gift for more than one direction. The Hathran's may be too much focussed on magic to specialize it so much, while you are right to apply the idea to other professions as well.~
== BSANDR ~ Anyway it is understandable with your centuries of war with Thay and the important role your battle mages play in that.~
== BDYNAH~ Thine understanding in the ways and reasons of foreign culture is amazing, Sandrah, I much enjoy exchanging lore and opinions with thee.~
== BSANDR ~ I can only return this observation to you, Dynaheir. We shall continue our talks for the benefit of this group and our common support for <CHARNAME>.~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",10)~ THEN BSANDR SanDycommI
~ No studies tonight, Dynaheir. (Sandrah's voice is gentle and inviting. She seems to enjoy her talks with the Rashemen wizard.)~
DO ~ SetGlobal("DYBant","GLOBAL",11) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH~ I suggest to have our common interest as the subject for a joined conversation tonight, Sandrah.~
== BSANDR ~ The common subject being the Bhaalspawn issue or <CHARNAME>?~
== BDYNAH~ Thou art a precise observer, young friend. Mayhaps the two will reveal in the end as the same.~
== BSANDR ~ It is in deed that we have quite a bit in common then, but from the caution I sense in your words I deduct, that you are still not completely sure about the answer yet. Neither am I.~
== BDYNAH~ Thanks for this openess, Sandrah. I will be as open to thee as well shouldst I gain more insight to that common suspicion.~
== BSANDR ~ Good - than perhaps the other aspect of that subject may be the appropriate topic for this eve?~
== BDYNAH~ I have lately by an error and in care for <CHARNAME> entered into a dream of <PRO_HISHER>.~
== BSANDR ~ I truely believe that it was in sorrow over <PRO_HIMHER>, as I know you well enough not to assume that you would misuse your gifts for another reason. Will you talk about what you found - knowing that I would not misuse such a knowledge as well?~
== BDYNAH~ My trust in thee is complete with anything concerning <CHARNAME> as your feelings are obvious. As are <PRO_HISHER>, from what I saw in <PRO_HISHER> dream.~
== BSANDR ~ You were in it as well, Dynaheir? Does that irritate you?~
== BDYNAH~ Thou knowest that?~
== BSANDR ~ I know <CHARNAME> well enough to anticipate that a woman of your charm, knowledge and dedication will not leave <PRO_HIMHER> without interest. You are a fascinating and warm female that attracts others naturally.~
== BDYNAH~ (Blushes) Anything you sayth will appeal to thineself as well. Strangely I do not hear the voice of jealousy from your words.~
== BSANDR ~ Jealousy? I do not own <CHARNAME> for myself. I just love <PRO_HIMHER>. I clearly see in you the same that <PRO_HESHE> might see. How can <PRO_HESHE> be not attracted by such a woman?~
== BDYNAH~ Thou hath given me a lot of thoughts for the rest of this night, Sandrah. Goodnight.~
== BSANDR ~ Goodnight, Dynaheir. (Sandrah surprises the other woman with a light goodnight kiss on the cheek.) ~ DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("DYBantF","GLOBAL",10)~ THEN BSANDR SanDycommInF
~ No studies tonight, Dynaheir. (Sandrah's voice is gentle and inviting. She seems to enjoy her talks with the Rashemen wizard.)~
DO ~ SetGlobal("DYBant","GLOBAL",11) SetGlobal("DYBantF","GLOBAL",11) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH~ I suggest to have our common interest as the subject for a joined conversation tonight, Sandrah.~
== BSANDR ~ The common subject being the Bhaalspawn issue or <CHARNAME>?~
== BDYNAH~ Thou art a precise observer, young friend. Mayhaps the two will reveal in the end as the same.~
== BSANDR ~ It is in deed that we have quite a bit in common then, but from the caution I sense in your words I deduct, that you are still not completely sure about the answer yet. Neither am I.~
== BDYNAH~ Thanks for this openess, Sandrah. I will be as open to thee as well shouldst I gain more insight to that common suspicion.~
== BSANDR ~ Good - than perhaps the other aspect of that subject may be the appropriate topic for this eve?~
== BDYNAH~ Thou knowest that?~
== BSANDR ~ I know <CHARNAME> well enough to anticipate that a woman of your charm, knowledge and dedication will not leave <PRO_HIMHER> without interest. You are a fascinating and warm female that attracts others naturally.~
== BDYNAH~ (Blushes) Anything you sayth will appeal to thineself as well. Strangely I do not hear the voice of jealousy from your words.~
== BSANDR ~ Jealousy? I do not own <CHARNAME> for myself. I just love <PRO_HIMHER>. I clearly see in you the same that <PRO_HESHE> might see. How can <PRO_HESHE> be not attracted by such a woman?~
== BDYNAH~ Thou hath given me a lot of thoughts for the rest of this night, Sandrah. Goodnight.~
== BSANDR ~ Goodnight, Dynaheir. (Sandrah surprises the other woman with a light goodnight kiss on the cheek.) ~ DO~ RestParty()~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",12)~ THEN BSANDR SanDyRedW
~ Dynaheir, I have come to enjoy our common exchange of lore and opinions quite a bit. Do you want to sit down by my side during this rest again?~
DO~ SetGlobal("DYBant","GLOBAL",13) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH~  Thank, Sandrah, 'tis that I feel likewise about our conversations. We have more in common than the difference in age and origin wouldst let thou think. Say, why is it thou so despise the filthy Red Scourge, the Thayan wizards?~
== BSANDR~ For me they represent everything that makes magic and the arts provided by my goddess such a two-sided medal. The red scum are the downside of it, the incarnation of the misuse of Mystra's powers.~
== BDYNAH~ Fighting Thayan invading armies and their wizards ensures our survival, Sandrah, so it cometh natural for me. A Rashemi doth no more than guard his house. Thine reasons are far more abstract.~
== BSANDR~ Maybe, but any of them I encountered until today has added to my bad impression of Thay. Meddling in Necromancy, basing their society on slavery and keeping their women at a similar low level - name any despisable attitude and you will find it in Thay.~
== BDYNAH ~ Thayans are a nation which breeds wars, and thus is bringing on the demise of humans. Szass Tam, the current ruler of Thay, was born decades earlier than me, and now he continues his existence as a lich. ~
== BSANDR~ They do not respect even death and nature itself. They melted glaciers with their magic to make the meltwater caused flooding in Immilmar and Mulsantir.~
== BDYNAH~ Me and my sisters went to repair damages and salvage what we could. Meanwhile, Thayan forces crossed the foothills of the High Country.~
== BSANDR~ In my lessons on the Realm's and Toril's history I have learned of the wars between Rashemen and Thay. My heart is always with the righteous side, Dynaheir, and Rashemi gained my respect by standing against these armies of evil for so long.~
= ~ But there is another issue I want to bring to your attention and maybe you can provide some council on it.~
== BDYNAH~ I gladly wouldst if I have any to provide.~
== BSANDR~ I have mentioned my opinion on the Red Scourge to <CHARNAME> on occasions. I probably have acted with too much visible emotions and have lost my standing as a counselor with <PRO_HIMHER> on that subject. It will be hard for me to prevent <PRO_HIMHER> now from getting involved with them, should one of them slime his way into our group.~
== BDYNAH~ I am afraid that with Thay and Rashemen being the enemies they are, <PRO_HISHER> ears will be dumb to my advice as well. Shouldst the case occur, all we can do is stand together sisterly and help each other to obstruct their evil from <CHARNAME>.~
== BSANDR~ (They embrace each other and exchange a kiss to seal their bond for your benefit.)~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",14)~ THEN BSANDR SanDyRedW
~ Dynaheir, I feel much for you by now and I hope you see me as your friend as well.~
DO~ SetGlobal("DYBant","GLOBAL",15) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH~ I do, young one, thou hast grown dear to my heart, you and <CHARNAME>, more than may be good for all of us.~
== BSANDR~ It is as if you knew what I wanted to talk about. I have come to recognise that you believe much in fate and destiny and that what happens follows some higher design.~
== BDYNAH~ Thou hath surely observed as well that 'tis my believe we are not mere puppets in somebody's game.~
== BSANDR~ Have you come to the Sword Coast to change the destiny that you assume is yours?~
== BDYNAH~ (Smiles) If it were mine to alter destiny then it wouldn't be my destiny but what I made of it instead. 'tis true, I have seen that my future would be in this land far from Rashemen and I needed to come here as fate is unavoidable.~
== BSANDR~ And it is connected with <CHARNAME> and who he is. But what was not revealed by your forsight is that love would be part of it.~
== BDYNAH~ And maybe love will make the change from destiny to destination here. Thou understand much, young friend. Do not try to mingle with what is dealt to us.~
== BSANDR~ If just that would be my fate? If I followed a calling just like you did, to find <CHARNAME> and play my part here just like you thought you need to do? And what if love is the power that is changing it for me as well.~
== BDYNAH~ (Dynaheir has embraced Sandrah) Your love for <CHARNAME> or your love for me, Sandrah?~
== BSANDR~ Both. (She returns the embrace and kisses the Rashemi.)~ DO ~RestParty()~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",34)~ THEN BSANDR SanDyRedWF
~ Dynaheir, I feel much for you by now and I hope you see me as your friend as well.~
DO~ SetGlobal("DYBant","GLOBAL",15) RealSetGlobalTimer("DynBantT","GLOBAL",1000)~
== BDYNAH~ I do, young one, thou hast grown dear to my heart, you and <CHARNAME>, more than may be good for all of us.~
= ~ Know that it is not custom among the Hathran but not very seldom found that we love one of our own gender. Mayhaps 'tis 'cause the fate that waitest for most of us doth not allow to think of family life.~
== BSANDR~ It is as if you knew what I wanted to talk about. I have come to recognise that you believe much in fate and destiny and that what happens follows some higher design.~
== BDYNAH~ Thou hath surely observed as well that 'tis my believe we are not mere puppets in somebody's game.~
== BSANDR~ Have you come to the Sword Coast to change the destiny that you assume is yours?~
== BDYNAH~ (Smiles) If it were mine to alter destiny than it wouldn't be my destiny but what I made of it instead. 'tis true, I have seen my future would be in this land far from Rashemen and I needed to come here as fate is unavoidable.~
== BSANDR~ And it is connected with <CHARNAME> and who she is. But what was not revealed by your forsight is that love would be part of it and that you would not be alone in your task to guard her.~
== BDYNAH~ And maybe love will make the change from destiny to destination here. Thou understand much, young friend. Do not try to mingle with what is dealt to us.~
== BSANDR~ If just that would be my fate? If I followed a calling just like you did, to find <CHARNAME> and play my part here just like you thought you need to do? And what if love is the power that is changing it for me as well.~
== BDYNAH~ (Dynaheir has embraced Sandrah) Your love for <CHARNAME> or your love for me, Sandrah?~
== BSANDR~ Both. (She returns the embrace and kisses the Rashemi.)~
EXIT


CHAIN
IF ~ Global("DYBant","GLOBAL",16)~ THEN BSANDR SanDyLbs
~ We have discovered more and more of what we have in common in so many ways, my Hathran friend.~
DO~ SetGlobal("DYBant","GLOBAL",17) RealSetGlobalTimer("DynBantT","GLOBAL",800)~
== BDYNAH~ I hadth not dared to think likewise when we initially met. The surprise is not a bad one.~
== BSANDR ~ We have both come from places outside the Sword Coast for a spawn of Bhaal. But what we found is by far different from any expectations, however those may once have been.~
== BDYNAH ~ 'tis true, not to count the complications to our hearts it would add.~
== BSANDR ~ Love is a thing that often catches us unaware and may appear in the place where we last expected it.~
== BDYNAH ~ Like falling in love with a Bhaalspawn...~
== BSANDR ~ Like falling in love with a Bhaalspawn...(The two embrace and passionately kiss each other.)~
== BDYNAH ~ I always had the feeling my dajemma hath been ended prematurely by the Elders. Now I found it true. One hath to find love to mature really.~
== BSANDR ~ It was my feeling that this venture with <CHARNAME> would be my dajemma if my kin had this custom. Only it is my perception that maybe there is a kind of dajemma that will never end in all our lives.~
== BDYNAH ~ That kind, mine young but wise friend, is called life itself.~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",18)~ THEN BSANDR SanDywinsk
~ We not only love the same Bhaalspawn, Dynaheir, we are also <PRO_HISHER> protectors and advisors.~
DO~ SetGlobal("DYBant","GLOBAL",19) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH ~ I am in agreement with these words, Sandrah, 'tis still my mission, now even more as I protect my lover by it.~
== BSANDR~ Then we should try to join our forces to find out about the Orloth who has hunted <CHARNAME> once and is now hunting him again - and you.~
== BDYNAH ~ His name is Winsky Perorate, once one of the most powerful wizards of my homeland.~
== BSANDR~ Is he part of the reasons you came to the Sword Coast then, Dynaheir?~
== BDYNAH ~ I have crossed his path before and I have sensed a vague relationship with my studies on the topic of Bhaal then, but he hath not been considered by me or the Hathrans when I was selected to come here.~
= ~ I hath told thee of my dajemma and that it had ended by our secret mission being betrayed to Thay. One of the traitors in this widespread conspiracy against Rashemen itself was Winsky.~
== BSANDR ~ That explains why he had been expelled from your country and afterwards came to the Sword Coast to search for his instrument of revenge. Were you among those to expell him?~
== BDYNAH ~ No, I was still young then, just finished my dajemma. But I was one of the witnesses at his council, having escaped and survived the deadly betrayal set up for us. Mine testimony among others led to the verdict against that well-respected Orloth in the end.~
== BSANDR ~ Still it may be his perception, that your presence here today is connected to the events back then.~
== BDYNAH ~ 'tis to be expected, yes. It was not foretold this way but it appears to be the truth. It was prophesised in the scrolls that the Bhaalspawn rising would threaten Rashemen. Now it seems the reason being the renegade steering him against us.~
== BSANDR ~ Only, Dynaheir, the threat is no longer against Rashemen alone, as Sarevok is no longer really under control of the Orloth as it appears, but the threat is against all of the Realms and maybe beyond.~
== BDYNAH ~ (The Hathran puts her arm around the younger woman's shoulder and they continue to walk entwined, with Sandrah's head resting lightly on Dynaheir's arm.)~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",48)~ THEN BSANDR SanDywinskPast
~ We not only love the same Bhaalspawn, Dynaheir, we are also <PRO_HISHER> protectors and advisors.~
DO~ SetGlobal("DYBant","GLOBAL",19) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH ~ I am in agreement with these words, Sandrah, 'tis still my mission, now even more as I protect my lover by it.~
== BSANDR~ Then we should try to join our forces to find out about the Orloth who has hunted <CHARNAME> - and you.~
== BDYNAH ~ His name was Winsky Perorate, once one of the most powerful wizards of my homeland.~
== BSANDR~ Was he part of the reasons you came to the Sword Coast then, Dynaheir?~
== BDYNAH ~ I have crossed his path before and I have sensed a vague relationship with my studies on the topic of Bhaal then, but he hath not been considered by me or the Hathrans when I was selected to come westbound.~
= ~ I hath told thee of my dajemma and that it had ended by our secret mission being betrayed to Thay. One of the traitors in this widespread conspiracy against Rashemen itself was Winsky.~
== BSANDR ~ That explains why he had been expelled from your country and afterwards came to the Sword Coast to search for his instrument of revenge. Were you among those to expell him?~
== BDYNAH ~ No, I was still young then, just finished my dajemma. But I was one of the witnesses at his council, having escaped and survived the deadly betrayal set up for us. Mine testimony among others led to the verdict against that well-respected Orloth in the end.~
== BSANDR ~ Still it may have been his perception, that your presence at Baldur's Gate was connected to the events back then.~
== BDYNAH ~ 'tis to be expected, yes. It was not foretold this way but it appears to be the truth. It was prophesised in the scrolls that the Bhaalspawn rising would threaten Rashemen. Now it seems the reason being the renegade steering him against us.~
== BSANDR ~ Only, Dynaheir, the threat against Rashemen by Winski has disappeared, but the threat of the Bhaalspawns against all of the Realms and maybe beyond has grown.~
== BDYNAH ~ (The Hathran puts her arm around the younger woman's shoulder and they continue to walk entwined, with Sandrah's head resting lightly on Dynaheir's arm.)~
EXIT

CHAIN 
IF ~Global("SanMinDyStat","LOCALS",1)~ THEN BSANDR  SanMinDyStat1
~ Thank you, Boo, you are a true cavalier, I hope Minsc is willing to learn well from you.~
DO ~ SetGlobal("SanMinDyStat","LOCALS",2)~
==BMinsc_ ~ Minsc learns a lot and also learns from Sandrah.~
== BDYNAH ~ Sandrah, wouldst thou mind a friendly talk with me a bit aside, please.~
== BSANDR ~ You are welcome, hathran. See you later, Minsc. (Dynaheir and Sandrah sit down some distance apart from the rest of the party.)~
== BDYNAH ~ We have talked about thine healing skills already, my friend, and mine lack of those. Thou probably hath understood by now that I am concerned about Minsc's state and mine lacking ability to do much for him that far away from Rashemen.~
=~ I know that people would take Minsc and me for lovers, but this is not true. So we would not cause thee embarrassment if that is what concerns thee. My desire to have him near is not romantic, 'tis practical. ~
== BSANDR ~ I know that, Dynaheir, as well as how he feels, more like a brother. (She looks questioningly at Dynaheir.) I am aware of the Rashemi custom to take a girl with the gift for the arts from the parents and give them another child to raise in return. ~
== BDYNAH ~ Thy eye is sharp, Sandrah, and thy knowledge of foreign lore impressive! Indeed, Minsc is the boy that my parents raised in my stead. I recognized him when I met him after my parent's death - the wounds he had received defending my home town Borovsk from the Thayan raid stole his memories and his wit. But... he is mine brother nonetheless. ~
== BSANDR ~ The care that your brother requires comes not from spells or scrolls, Dynaheir. We both can partake in his healing with our sisterly love fór him. Talk to his heart and he undertstands you. This is the healing his soul requires.~
== BDYNAH ~ Minsc is a slow thinker, yet not insensitive. Why, with his... rodent, I am afraid he is more sensitive than needed. And I want him not to be hurt by a foolish romance for a girl who is beyond his reach.~
== BSANDR ~ Boo is Minsc himself, Dynaheir, you may have observed yourself. For some reason Minsc is afraid of his own wit and lets Boo speak on his behalf. Let others think what they want, we two undertand it and that is enough.~
== BDYNAH ~ And romancing thee, is that a part of the therapy or a dangerous play on thine side? I am afraid of Minsc reaction should he feel betrayal.~
== BSANDR ~ I see that danger, too, and I am not betraying him. To rebuke him will hurt him even more, it will make him feel unwanted and inferior. This is not what I feel for him. I care as much for him as you do, believe me and I am not misusing him as a playtool.~
== BDYNAH ~ Agreed. Thou hast to take a risk there to access him and to heal him and I am grateful you do. I trust thee, Sandrah...and I accept the possibility of failure. 'tis not that it can go worse but only better. (Dynaheir embraces Sandrah to seal the mutual understanding between the two women.)~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",20)~ THEN BSANDR SanDyFightBha
~ (Sandrah and Dynaheir have sat themselves apart from you and the rest of the group. They seem unaware that you can hear them through the thin screen that separates the spaces at the inn.)~
DO~ SetGlobal("DYBant","GLOBAL",21)~
== BDYNAH~'tis a grave task I entrust to thee, Sandrah, knowing that your love for <CHARNAME> - and your love for me - will make thee agree.~
== BSANDR ~ You indeed sound and look disturbed, beloved friend. How can I lighten you up, dear.~
== BDYNAH~ Thou can lighten mine heart by listening and accepting your part of the share as I must foresee it for thee.~
== BSANDR ~ Speak, my mysterious lover, and be assured whatever you ask of me will be done.~
== BDYNAH~ Thou knowst well the customs of the Hathran and mine gift for divination, which I have used to see the fate this journey will bring onto me.~
== BSANDR ~ From your voice I can tell what you have seen. But we both share the belief that any fate is not sealed until the very moment it happens. Any ending can be altered by the faithful and dedicated.~
== BDYNAH~ I thought at first 'twas a fate that could be averted, but now I think I know better. The hope to err I will not give up, dearest Sandrah, nonetheless I will take precaution that I have prepared thee for the case the foreseen comes true.~
== BSANDR ~ It is the fate of the Hathran to give her life for what she protects.~
== BDYNAH~'tis <CHARNAME> whom this Hathran is tasked to protect, thou knowest that thyself, as it is the task thou hast chosen for yourself.~
== BSANDR ~ It is now, even if I have not chosen it - it has chosen me.~
== BDYNAH~ The foe who waits for us in Baldur's Gate is great, but above him and beyond him looms a shadow darker than night. I looked at it, and I perceived how small we art in front of it.~
== BSANDR ~ You have seen the God of Murder himself then, Dynaheir. The battle will not end in Baldur's Gate and with the current foe. You have seen what I had only sensed as one of the possibilities in the hidden future.~
== BDYNAH~ Thy senses and conclusions have rarely failed you until now, <CHARNAME> wert born to fight evil, to save lives, to stop armies and hatred - he wert born to do it, and I would not let this future be stolen from thee two. ~
== BSANDR ~ I give you my word, Dynaheir, I will stand by his side in this, should your worse vision come true. Always.~
== BDYNAH~'tis good to hear it, even if I's known so before, beloved.~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",35)~ THEN BSANDR SanDyFightBhaF
~ (Sandrah and Dynaheir have sat themselves apart from you and the rest of the group. They seem unaware that you can hear them through the thin screen that separates the spaces at the inn.)~
DO~ SetGlobal("DYBant","GLOBAL",21)~
== BDYNAH~'tis a grave task I entrust to thee, Sandrah, knowing that your love for <CHARNAME> - and your love for me - will make thee agree.~
== BSANDR ~ You indeed sound and look disturbed, beloved friend. How can I lighten you up, dear.~
== BDYNAH~ Thou can lighten mine heart by listening and accepting your part of the share as I must foresee it for thee.~
== BSANDR ~ Speak, my mysterious lover, and be assured whatever you ask of me will be done.~
== BDYNAH~ Thou knowst well the customs of the Hathran and mine gift for divination, which I have used to see the fate this journey will bring onto me.~
== BSANDR ~ From your voice I can tell what you have seen. But we both share the belief that any fate is not sealed until the very moment it happens. Any ending can be altered by the faithful and dedicated.~
== BDYNAH~ I thought at first 'twas a fate that could be averted, but now I think I know better. The hope to err I will not give up, dearest Sandrah, nonetheless I will take precaution that I have prepared thee for the case the foreseen comes true.~
== BSANDR ~ It is the fate of the Hathran to give her life for what she protects.~
== BDYNAH~'tis <CHARNAME> whom this Hathran is tasked to protect, thou knowest that thyself, as it is the task thou hast chosen for yourself.~
== BSANDR ~ It is now, even if I have not chosen it - it has chosen me.~
== BDYNAH~ The foe who waits for us in Baldur's Gate is great, but above him and beyond him looms a shadow darker than night. I looked at it, and I perceived how small we art in front of it.~
== BSANDR ~ You have seen the God of Murder himself then, Dynaheir. The battle will not end in Baldur's Gate and with the current foe. You have seen what I had only sensed as one of the possibilities in the hidden future.~
== BDYNAH~ Thy senses and conclusions have rarely failed you until now, <CHARNAME> wert born to fight evil, to save lives, to stop armies and hatred - she wert born to do it, and I would not let this future be stolen from thee two. ~
== BSANDR ~ I give you my word, Dynaheir, I will stand by her side in this, should your worse vision come true. Always.~
== BDYNAH~'tis good to hear it, even if I's known so before, beloved.~
EXIT


CHAIN
IF~ Global("SanDyWyEd","LOCALS",1)~ THEN BSANDR SanDyWyEd
~ The red wizard so near to you irritates you a bit, to say the least.~
DO ~ SetGlobal("SanDyWyEd","LOCALS",2)~
== BDYNAH~ I still have not the idea why <CHARNAME> keepeth the snake so near to <PRO_HISHER> bossom.~
== BSANDR ~ It is maybe better to have the enemy under close observation than attacking out of the dark. But honestly, Dynaheir, I do not know it. It is no secret to <PRO_HIMHER> how much I despise the red scum.~
== BDYNAH~ 'tis mayhaps a valid point that we both can watch Edwin's every move and will not be caught unawares.~
== BSANDR ~ He will not act against our joint powers of Mystra. Those will be more than enough to defeat him any time.~
== BDYNAH~ (Smiles) Not to forget your fighting abilities as thee will strike him down with a single hit of thine hammer.~
== BSANDR ~ Is there anything specific between you and this particular Thayan? He was trying to get us to kill you, not just because you are a Hathran, but because you are Dynaheir.~
== BDYNAH~ Seemingly he knoweth more about me than I know about him. We have learned that he is an Odesseiron, but it appears to me that he is not one of the most respected in his own family. To be send here on this mission on the Sword Coast is a punishment rather than a gratitude from his elders.~
== BSANDR ~ Or maybe a chance to compensate for some misdeed and regain his status. So the Odesseirons must have an interest in you of which you are unaware.~
== BDYNAH~ 'tis good to have a confidant in this, so we both can watch out for any hint of the reasons and for any danger for me.~
== BSANDR ~ Should he endanger you, he would threaten all of us including <CHARNAME>. Count on me and count on <CHARNAME> when it comes to decide.~
== BDYNAH~ (Dynaheir embraces the younger cleric gently and nods.)~
EXIT

CHAIN
IF ~ Global("DYBant","GLOBAL",22)~ THEN BSANDR SanDyAscens
~ (It has become a familiar and almost soothing picture for you to see the two women you so dearly love sitting together in their studies of books and scrolls.)~
DO ~ SetGlobal("DYBant","GLOBAL",23) RealSetGlobalTimer("DynBantT","GLOBAL",1200)~
== BDYNAH~ Arest thou glad to have found the right Bhaalspawn in <CHARNAME>, my love? ~
== BSANDR ~ This is a very strange question, Dynaheir, as I had never any idea of what I was really seeking in the beginning. And I am still not sure I have found all the answers that are out there.~
== BDYNAH~ 'tis that thou doth not believe much in fate and a future that is already written as we go through to it. If thou wouldst found the Bhaalspawn of thy mother to be the evil one thou wouldst have attempted to change fate. Thus is your nature.~
== BSANDR ~ Yes, I admit it probably is. It is my relation to my goddess and all her companions that this plane here is our plane to shape and to dwell on. They may guide and advise us but must take into account our spirit of rebellion against an unjust fate dealt out to us.~
== BDYNAH~ Since I came so close to thee I have studied more your goddess - and the woman she was before that. 'tis Midnight thou resemble more and more with your deeds each day.~
== BSANDR ~ Then you have studied her and me well, as she is my inspiration for many things I do. She and her son.~
== BDYNAH~ Thine father Elminster, a worthy man to follow. Thou knowst that Mystra has gone through many incarnations, and the current is but one of them. She has become what she is by following a path that is equal to thine.~
== BSANDR ~ Then you would be aware that I, just like her, would have slain the new god of murder, even if I had found him in the spawn of my own mother.~
== BDYNAH~ Thou art a factor that is not to be found in the scrolls and prophesies I have studied so intensly for long and which made me to venture to the Sword Coast on this quest. Mayhaps 'tis this element that will make the difference in the end.~
== BSANDR ~ There is some hand I feel in this, Dynaheir, of which I always thought it was my goddess, but I may err. I had dreams that made me leave Candlekeep, and we have encountered strange coincidences that let me find the truth about my mother's spawn and others of the blood as if guided to it.~
== BDYNAH~ Something is waiting for you there in the unwritten part of the future, Sandrah, as sure as my fate is waiting for me the way it is written.~
== BSANDR ~ Beloved Hathran, I have respect for your faith but I built mine on the lack of logic in your reasoning. If my future is unwritten and in my hands, and if <CHARNAME>'s way with Bhaals blood in <PRO_HIMHER> is still chosen by no one else but <CHARNAME> - then why should your fate be sealed?~
== BDYNAH ~ Thou wouldst fight against a pantheon of gods to make it undone, I know for sure - and maybe you will, granddaughter of Midnight.~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT

CHAIN
IF ~Global("SanDyUnTo","LOCALS",1) ~ THEN BSANDR SanDyUnTo
~ (Sandrah, who has remained silent during the last attempt of Winski on Dynaheir has now taken her friend's hand in the way she has so often taken yours to provide you with confidence and strength.)~
DO~ SetGlobal("SanDyUnTo","LOCALS",2)~
== BDYNAH~ Thou dost not believe in the fate that I saw lie ahead of me, my love?~
== BSANDR ~ I believe more than ever in our ability to change a fate that may be drafted only but not put into stone until the tiny moment where the future becomes the present. ~
== BDYNAH IF ~ InParty("Minsc") ~ THEN ~ We will know soon, Sandrah. I hope thou art the one who is right this time. Shouldst it not be so it will be thyne task alone to care for Minsc and <CHARNAME>.~
== BDYNAH IF ~ !InParty("Minsc") ~ THEN ~ We will know soon, Sandrah. I hope thou art the one who is right this time. Shouldst it not be so it will be thyne task alone to care for <CHARNAME>.~
== BSANDR ~ You have my word on it, it will always be as if you would be guarding with me. But worry not, we both have felt the hand that plays the odd card in this game all the time.~
== BDYNAH IF ~ GlobalLT("DYBant","GLOBAL",23)~ THEN ~ Thou art a factor that is not to be found in the scrolls and prophesies I have studied so intensly for long and which made me to venture to the Sword Coast on this quest. Mayhaps 'tis this element that will make the difference in the end.~
== BDYNAH IF ~ GlobalGT("DYBant","GLOBAL",22)~ THEN ~ Thou art that card?~
== BSANDR ~ Not me alone. I refer to the one who seems to have guided me to be here at this moment, the one who has led us two together to meet at <CHARNAME>'s side.~
== BDYNAH ~ Thou talk of thy goddess?~
== BSANDR ~ The one who has hunted and defeated the God of Murder already but whose son has been punished by Bhaal even from beyond the grave.~
== BDYNAH ~ Thou mayhaps be right, as Aloundo's prophesies stem from the time before thy grandmother Midnight took Mystra's cloak and place. Her name is not found in the scrolls.~
EXIT

CHAIN
IF ~ Global("X#MinscBoo","GLOBAL",4)~ THEN BSANDR MinscBooMysPlan
~ You have been very thoughful recently, Hathran.~
DO~ SetGlobal("X#MinscBoo","GLOBAL",5)~
== BDYNAH ~ I was wandering if thy goddess hath truely a plan for bringing Minsc and you together.~
== BSANDR ~ Yes and no, I think.~
== BDYNAH  ~(Smiles) Thou meanst yes, together for some quest that is thine both to resolve, but no for being more than companions in that.~
== BSANDR ~ But you also will know that whatever those gods intend for us, it is still us on our material plane that live our lives and decide our fate.~
== BDYNAH  ~ Thou willst answer in love and care to Minsc if it be his will. Thou willst never hurt my brother, I knowest that. ~
== BSANDR ~ I will as long as it is allowed to me. ~
== BDYNAH  ~ There is someone else waiting for him in the future, is that thy meaning?~
== BSANDR ~ Yes.~
== BDYNAH  ~ Kwowing and accepting that will spare thee the hurt to come.~
== BSANDR ~ I accept that as the price for the time that is granted to us meanwhile. Your brother is a pure and gentle soul like rarely any other I have ever encountered. Just like his sister.~
== BDYNAH~ (Dynaheir embraces and kisses the younger cleric gently and then leads her towards her bedroll.)~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT


// Drizzt
CHAIN
IF WEIGHT #-3~InParty("CVSandr") OR(2) GlobalGT("F_MeetDrizztInBeard","Global",0) Global("DrDuMeetUlg","GLOBAL",1)~THEN Drizzt JoinSan
~Well met. Are you prepared, then?~
==CVSandrJ~Oh, yes...sorry, <CHARNAME>, of course this is your decision...~
==CVJenliJ IF~InParty("CVSandr")InParty("CVJenlig")~THEN~(Hiss) Good to fight with Sandrah's teacher - if apprentice that good, says much about master.~
END
++~I'm as ready as I'm likely to ever be. Let's go, shall we?~+ JoinSan2
++~Not just yet, I still have a bit of preparation to do.~EXIT

CHAIN
IF~~THEN Drizzt JoinSan2
~Let's go!~
DO~JoinParty()~EXIT

CHAIN
IF ~ Global("SanDrizzt","GLOBAL",3)~ THEN BSANDR SanDriBG1In
~ Somehow I have always hoped the day would come when I could join you in one of your missions.~
DO ~ SetGlobal("SanDrizzt","GLOBAL",4) SetGlobal("SanDrizzt2","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ~ (Smiles down at his former student) I was always sure that day would come, having had the opportunity to to form your skills and to see you grow and develop yourself over the time since we first met. It is not a blatant compliment if I say that you have exceeded even the most optimistic expectation.~
== BSANDR~ Be aware, my friend, that the rest of <CHARNAME>'s companions including <PRO_HIMHER> are a competent team in which I am but one of the parts.~
== F_DRIZTJ~ Granted. Still you will always remain someone special to me, my girl. But let us move now and talk at another occasion. ~
EXIT

CHAIN
IF ~ Global("SanDrizzt","GLOBAL",5)~ THEN BSANDR SanDriBG1Olddays
~ Recently I had to confess to <CHARNAME> my feelings for you while I was your student, Drizzt.~
DO ~ SetGlobal("SanDrizzt","GLOBAL",6) SetGlobal("SanDrizzt2","GLOBAL",6) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ~ Well...you were young and a romantic girl...it was to be expected and I understood from your father's advice that it was quite normal for a human teenager. As irritating as this time might have been for you, I am content we managed to get through it well.~
== BSANDR~ I was not aware that you really noticed it - and even talked to my father about it. It would make me ashamed, but, I think you are right, it was totally normal in my development.~
== F_DRIZTJ~ Things are different now, Sandrah, you have really become the woman who was visible back then in the blooming young girl. Comparison to your mother is unavoidable for anyone who has known her.~
== BSANDR~ You knew her, you did? Yes, sure. Strangely we have never talked about her before.~
== F_DRIZTJ~ (The colour that the dark elf's face takes on, is hard to describe - maybe avocado?) Eeh, she was a remarkable woman.~
== BSANDR~ (Looks questioningly at Drizzt - then she laughs) Drizzt!~
== F_DRIZTJ~ Well, yes. I really admired her secretly in those days when she first came to Waterdeep. Few women like her grace the surface of Toril. But you have surely heard that fact about her before. I am open to you, her daughter, there is really not much more to tell about it, as she finally chose your father. We stayed friends and that is the whole story.~
== BSANDR~ Thank you, Drizzt, your secret is safe with me. Your reputation of the lone chaste drow warrior for righteousness is not endangered.~
== F_DRIZTJ~ (Puzzled) Such is my reputation? One rarely hears the stories told by others about oneself, so much is true.~
== BSANDR~ I am seldom blinded by prejudice, Drizzt. I will make up my mind based on my own findings about you (Smiles at Drizzt in her undecipherable way.)~
EXIT

CHAIN
IF ~ Global("SanDrizzt","GLOBAL",7)~ THEN BSANDR SanDriMat
~ (Sandrah has sat down near Drizzt in her usual leasure dress that looks so innocent and so seductive at the same time.)~
DO ~ SetGlobal("SanDrizzt","GLOBAL",8) SetGlobal("SanDrizzt2","GLOBAL",8) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600)~
== F_DRIZTJ~ I have to admit, Sandrah, that you have quite advanced from the student I had the pleasure to educate. How time flies when the little kitten suddenly emerges into a graceful but dangerous felidae.~
== BSANDR~ (Smiles) You have known Pelligram since her early days...~
== F_DRIZTJ~ You know well I was not referring to THAT cat, Sandrah.~
== BSANDR~ And you know well that knowing you has forever shaped my standards for men. Maybe even it has set them a little bit too high.~
== F_DRIZTJ~ A dangerous cat...~
== BSANDR~ And now I am sitting here next to one of the few - if not the only one - to meet these standards.~
== F_DRIZTJ~ We have talked recently about your mother Khalindra and many have surely told you how much you resemble her. I see her in you as well but I also see someone else I have known a long time ago. Someone with your power and your will, someone from whom you maybe have inherited more than you know.~
== BSANDR~ You have known my grandmother Midnight, Drizzt?~
== F_DRIZTJ~ I see you are quite aware of her role for you.~
== BSANDR~ Her way is the guidance for my own, yes. Did you...~
== F_DRIZTJ~ Yes, I did. She was one who took what she wanted and she was quite irresistible, as if I would have wanted to resist.~
== BSANDR~ And would you want to resist one who has learned from her as well as from a teacher of your own kin in the other art the drow have perfected?~
== F_DRIZTJ~ You are a woman now, Sandrah, and you know quite well what you are doing. (Sandrah has already pulled the drow down to her lips...)~ DO ~  RestParty() ~ EXIT

CHAIN
IF ~ Global("SanDrizzt","GLOBAL",10)~ THEN BSANDR SanDriMid
~ Come and sit down by my side, Drizzt, I want to share some of your older memories with you.~
DO~ SetGlobal("SanDrizzt","GLOBAL",11) SetGlobal("SanDrizzt2","GLOBAL",11) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600) ~
== F_DRIZTJ~ (Again you observe how Drizzt's face lightens up as he willingly sits down beside Sandrah and takes her hand.) I imagine my knowledge of Midnight interests you some, my dear.~
== BSANDR~ You are the only one I know who can give me some insight into her more private aspects - I mean except my father, but his perspective is that of a son who rarely had his mother at home.~
== F_DRIZTJ~ She was independent and strong, following no one and listening only to her own judgement on things. She followed a righteous path of her own and therefore Ao chose her in the Time of Troubles to fight the renegade gods, as she was not tainted by religious conviction or bonding.~
=~ Love meant a lot for her, love for her fellowbeings, love for our animal companions, (smiles) and of course the physical aspects of love. Before she finally chose her companion Cyric, she had a number of lovers, which was easy for her with her charm and her beauty.~
== BSANDR~ And that included you, Drizzt, regardless of your race or your reputation.~
== F_DRIZTJ~ Yes, and we both enjoyed it while it lasted and never forgot what we had. Although it was clear for both of us that it was nothing to endure as we both were too restless to move on and to move things on Toril.~
== BSANDR~ She had a practical view on life and she never neglected the easier and joyful side even in the Time of Troubles.~
== F_DRIZTJ~ In all the long wandering years since then I have only once again met a woman like her...~
== BSANDR~ You did, you lucky man?~
== F_DRIZTJ~ Lucky indeed, Sandrah. (He leans over to her and kisses her.)~ DO ~  StartCutSceneMode()  SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0)  EndCutSceneMode() ~ EXIT

CHAIN
IF ~ Global("SanDrizzt","GLOBAL",12)~ THEN BSANDR SanDriCyr
~ Drizzt, as you have known Midnight in her time, and maybe even Cyric in his human form, you can surely help me solve a question that long has worried me. ~
DO~ SetGlobal("SanDrizzt","GLOBAL",13) SetGlobal("SanDrizzt2","GLOBAL",13) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",1600) ~
== F_DRIZTJ~ (Laughs) I am sure I can - Midnight and the half-mad Prince of Lies - that makes no sense, right Sandrah?~
== BSANDR~ It would not, if this were the story. Obviously our today's perception of past events lacks some details.~
== F_DRIZTJ~ You are a wise person, to judge thus, knowing your own limits. So here is the eye witnesses' report.~
= ~ Cyric was a competent and *honest* thief as every adventuring party needs to open locks and to find and disable traps. A cheerful man of many talents, intelligent and attractive. Not an odd choice for your grandmother. However what made him special and won him her heart was his sacrifice of the own self when the final battle neared.~
== BSANDR~ It was him, not Midnight that ended the God of Murder.~
== F_DRIZTJ~ Exactly. It was Cyric with the help of Mask in the form of the sword Godsbane that backstabbed the God of Murder as the pair had tracked him down and cornered with no means to escape. With all her power and weaponcraft, Midnight could not hit the final blow against him. Only the skilled noiseless assasin with the undefeatable sword could backstab and murder this god.~
= ~ But more important - just like Midnight took Mystra's mantle and sacrificed her humanity and her womanhood to take the duties of a goddess, Cyric did likewise. His burden was heavy as he had to become the new god of murder by Ao's verdict and the great schemer and plotter we recognise in him today.~
== BSANDR~ Understandable that a man of integrity who has to take on the duties of such deities will appear broken in his personality. A short step from the thief with his tricks and masquerades to the mad god of strive, lies and illusions, but a thin line easily overstepped.~
== F_DRIZTJ~ (Drizzt looks at Sandrah in deep thought.) You see what only she was able to see before. Another indication of your resemblance. May you be very careful for how far you will follow her way.~
== BSANDR~ Is this a warning for my choice of men, mh, it may just come too late. (She kisses him.)~
== F_DRIZTJ~ (Smiles) Keep in mind where Midnight's way finally led for herself.~
== BSANDR~ Do not worry, Drizzt, there are no vacancies caused by slain gods around these days.~ EXIT

CHAIN
IF ~Global("SanDriDrowAmb","GLOBAL",1)~ THEN BSANDR SAnDrwoAmb
~ Some friends you have acquired over time, Drizzt. The whole thing is a trap for you.~
DO ~ SetGlobal("SanDriDrowAmb","GLOBAL",2)~
== F_DRIZTJ~ I stepped on the toes of many evil creatures, including some of my own race even here on the surface. It will be interesting to find out who is behind it this time.~
== BSANDR~ You do not know it yet?~
== F_DRIZTJ~ This is a trap set up with great care and expertice and it involves drow and spiders. It looks like the handwriting of my *friend* Artemis.~
== BSANDR~ Artemis Entreri?~
== F_DRIZTJ~ You know him as well, Sandrah?~
== BSANDR~ No, I have just read something in my father's book about him.~
== BSANDR IF~ GlobalGT("SanDSOTSCUW","GLOBAL",10)~ THEN~We had an encounter with some Bregan D'aerthe on the Sword Coast. Is not Artemis involved with that organisation as well?~
== F_DRIZTJ IF~ GlobalGT("SanDSOTSCUW","GLOBAL",10)~THEN~ Sandrah! You have encountered the Bregan D'aerthe and are standing here alive in front of me!! You are truely someone to be counted on in these disturbing times.~
== F_DRIZTJ ~ Artemis is a high rank in the Bregan D'aerthe and very close to Jarlaxle himself. We have to prepare for an epic battle, my friends.~
== BSANDR~ You live a dangerous life, good Drizzt.~
== F_DRIZTJ ~ My Sandrah, if you have not encountered it yet, you have been lucky. With the way you and <CHARNAME> have chosen you are destined to make yourself dangerous enemies sooner or later. Forget about a peaceful time in a nice home surrounded by your children. Sandrah, your way will resemble Midnight's with every further step you take.~
END
++ ~ Don't worry, Drizzt, you have chosen your companions well. We stand by your side.~ EXIT

CHAIN
IF~ Global("SanDrByeBG1","LOCALS",1)~ THEN BSANDR SanDriByeBG1
~ You seem to be restless, love. What is on your mind?~
DO~ SetGlobal("SanDrByeBG1","LOCALS",2)~
== F_DRIZTJ ~ I assume you are quite aware of it, sweetheart. You are prepared that it would be like that.~
== BSANDR~ I thought I would be, but who can really be so cold at heart not to become weak when the moment really is there.~
== F_DRIZTJ ~ New duties are calling me already. Your place is at <CHARNAME>'s side for now. Let us not prolong this moment of pain for us unnessesarily. We both have accepted that our relation will be like that, we trade the moments of pure pleasure for the long dark times without the beloved.~
== BSANDR~ Your ways will be hard to track, but I know that you will always have a way to find us, if needed my father will help you surely. I await our next meeting anxiously, my love.~
== F_DRIZTJ ~ I will find you again and new moments of joy will lighten our lives, Sandrah, farewell.~
= ~ Farewell you all. It was a pleasure to travel and fight with companions such as you.~ DO ~ LeaveParty() EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_CATTI rescued
~Friends, the chaos has overcome us!~
==F_DRIZTJ IF~InParty("F_Drizzt")~THEN~Catti-Brie, at last we have found you! We had to battle our way through the Nine Hells and old foe. And not to mention all the drow that seem to be involved in whatever has fallen upon us here.~
==CVSandrJ IF~!InParty("F_Drizzt")~THEN~Catti-Brie, at last we have found you! We had to battle our way through the Nine Hells and Drizzt's old foe. And not to mention all the drow that seem to be involved in whatever has fallen upon us here.~
==F_Catti~And there is more to come, the darkness from the sky has been drained and used to open a portal to the Abyss with the intention to summon forth the Tanar´ri Balor known as Errtu. The one Drizzt banished to the Abyss for a hundred years. Artemis and Jarlaxe are the ones behind it all because of their hatred for Drizzt and their struggle to see him joining the fallen. The beast has awakened! ~
==CVSandrJ~The way out is clear for you.~
==F_Catti~Friends, the final fight is on!~DO~AddexperienceParty(3500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_Brueno Searchcatti
~By Moradin's hammer! Seems like the Nine Hells itself has placed itself in Icewind Dale and I fear that Catti-Brie, my fosterchild, is lost within it.~
==F_DRIZTJ IF~InParty("F_Drizzt")~THEN~The demonic content seems to appear as a common pattern...~
==CVSandrJ IF~!InParty("F_Drizzt")~THEN~ We are on her trail already.~
==F_Brueno~I found the dead bodies of the rangers Catti-Brie travelled with though no signs from her except for some small clues leading me to this location. But the tracks end here. You must proceed with haste, I suspect the worst.~DO~AddexperienceParty(3500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")InParty("F_Drizzt")~THEN F_Wulfga Searchcatti2
~You surely have some filthy foe eagerly minded to end your existence, Drizzt. Demons from the Nine Hells long for your blood. I see that you have a companion at your side.~
==F_DRIZTJ~Regis made it urgent for us to come and free you.~
==F_Wulfga~That is a common thing if one takes the adventuring road side by side with Drizzt. Combine your steel and bury it deep into the flesh of these demonic beings for me.~DO~AddexperienceParty(2500) EscapeArea()~EXIT

CHAIN
IF WEIGHT #-3~NumTimesTalkedTo(0)InParty("CVSandr")~THEN F_Regis2 Searchcatti3
~Greetings again. Good you found your way here. Urgent matters call because neither Bruenor nor Catti-Brie are to be found. You should check Bruenor's chest for clues.~ DO~AddexperienceParty(900) EscapeArea()~EXIT

//    Imoens Baby Interpretation

CHAIN
IF ~ Global("Formedcloth","GLOBAL",8) ~ THEN BSANDR ImoWinBabe
~ Gorion and Winthrop were the ones then, and that Orloth was hunting them.~
DO ~ SetGlobal("Formedcloth","GLOBAL",9)~
== Bimoen IF  ~ InParty("Imoen2")~ THEN ~Puffguts? That was my ol' Puffguts with that other little baby girl. My-o! Now I see... ~
==BSANDR IF  ~ InParty("Imoen2")~ THEN ~ See what, Imoen?~
== Bimoen IF  ~ InParty("Imoen2")~ THEN ~ Oh the poor man, the good man. ~
==BSANDR IF  ~ InParty("Imoen2")~ THEN ~ You mean that he adopted a Bhaalspawn? ~
== Bimoen IF  ~ InParty("Imoen2")~ THEN ~ Yes - no - I mean that he took me and was always so good to me after he had lost her. ~
==BSANDR IF  ~ InParty("Imoen2")~ THEN ~ Now I am lost, Imoen.~
== Bimoen IF  ~ InParty("Imoen2")~ THEN ~ Don't you see how it all fits. He was the clever disguised Harper. Ev'rybody goes through the shop and the inn when at Candlekeep. The shopkeeper sees and hears everything. He takes the poor Bhaalspawn girl and knows he can protect her as nobody can come near without his seeing.~
=~ Just remember, they told us we did not come together to Candlekeep, Puffguts 'n' me come later. It is true, later after he lost the baby in those raids or to that nasty Orloth. But with his good heart he found another orphan girl that needed his help. Poor lil' Imoen.~
==BSANDR IF  ~ InParty("Imoen2")~ THEN ~ That would explain some things, Imoen. Especially why there was no second Bhaalspawn at Candlekeep. Hm, and the Orloth's remark once about the cloth being some evidence. Maybe evidence that in the end he got one of the babies. But was it Khalindra's one? We do not know.~
END
IF ~ Global("SanRomPath","GLOBAL",1)~ THEN REPLY ~ So Winthrop carried a little baby girl at that time and Gorion the boy. We know who that boy is and what became of him. Maybe my dreams have told me already the truth. It was Khalindra's child. It was me! ~ EXIT
IF ~ Global("SanRomPath","GLOBAL",2)~ THEN REPLY ~ I am sure now, Sandrah. One of the two children was me. We could not see which one was with Gorion. Maybe my dreams have told me already the truth. It was Khalindra's child. It was me! ~ EXIT

CHAIN
IF ~ Global("Formedcloth","GLOBAL",23)~ THEN BSANDR ImoBhaalSp4
~ My besta friend, how do you feel after all these occurances? You spend a lot of time with thinking by yourself these days. Remember what friends are for, Imoen.~
DO~ SetGlobal("Formedcloth","GLOBAL",24)~ 
== Bimoen ~ Alright and yes. I cant keep it inside me for much longer or it starts eating me. Besta friend, let us sit down, you must and must listen to me and give your learned advice.~
== BSANDR ~ Sure, Imoen, let us sit right here. Looks like we have quite some time to talk at the moment.~
== Bimoen ~ Methinks, looka here, Sandrah, there was Puffguts, eah, I mean the wonderful Harper Winthrop, who took care of a little girl name Immi.~
== BSANDR ~ Right.~
== Bimoen ~ Immi is as innocent as any little baby can ever be and Puff...Winthrop knows that and his friends know, too. Gorion and Elminster.~
== BSANDR ~ Right. (Sandrah has taken Imoen's hand which is slightly trembling.)~
== Bimoen ~ Other people, bad people dont think of Immi like that - they think the little baby is really a monster and really bad 'cause of blood of an evil dead god in her veins.~
END
++ ~(You silently sit down beside Imoen and gently take her other hand in yours.)~ DO~ IncrementGlobal("Sanpoints","GLOBAL",1)~+ ImoBhaalSp5
++ ~(You step behind Sandrah and lay a hand on her shoulder while you continue to listen to their talk.) ~ + ImoBhaalSp5

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp5
~ Yes, Immi.~
== Bimoen ~ So Winthrop runs away with the girl and with him comes Gorion with a <PRO_GIRLBOY> with the same black blood in <PRO_HIMHER>.~
== BSANDR ~ They make a long journey criss and cross the Sword Coast to hide their trail from those who hunt them. They are attacked by bandits and spies from a mighty foreign mage. They tear apart the cloth in which the children were wrapped to trick their hunters into believing the children have been destroyed. ~
== Bimoen ~ Yeah, they are cleverest and more clever than the hunters. In the end they make it safely to Candlekeep. Vrooooom - years and years pass and the little babies become little children and they live happy and are friends and know nothing of what was before in the dark time.~
== BSANDR ~ They learned from their foster fathers and from the monks. They grew up and were to each other like <PRO_BROTHERSISTER> to sister. Nothing and no one could tear them apart.~
== Bimoen ~ Nothing and no one could tear them apart and nothing and no one ever will, I swear!~
== BSANDR ~ But their innocent life ended one dark day. Another child with the same blood in him had also grown up in another part of the Realms. This one, a boychild named Sarevok, had not the care of Winthrop or Gorion, but was raised and taught in the way to feed the evil power within him.~
END
++ ~ Sarevok and his teacher studied the lore and the prophecies of the seer Alaundo. They found that the rising of Sarevok to eventually follow his *father* would require to eliminate others of the same blood first.~ + ImoBhaalSp6

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp6
~ Only a Bhaalspawn can prevent Sarevok from rising to become Bhaal's successor. With divination and cunning they found out about <CHARNAME>.~
== Bimoen ~ But Elminster ever watchful over Faerun sensed their plan and sent a warning letter to Gorion.~
== BSANDR ~ A letter that was secretly read by the tricky and alway curious Immi even before Gorion laid his eyes on it.~
== Bimoen ~ Well, good she did, remember *Nothing and no one could tear them apart*.~
== BSANDR ~ At the same moment also Elminster's only daughter found out about a child of that heritage being at Candlekeep and in imminent danger.~
== Bimoen ~ Elminster's daughter was looking out for such children 'cause her mother had died from birthing one of them and died from it. Sandrah guessed that one of the babies that were brought to Candlekeep was her mother's one.~
== BSANDR ~ But she did not know who it was, and she did not know there were actually two of them.~
== Bimoen ~ So she stayed with those two she found at Gorion's corpse and helped them discover who they are and why they are being hunted.~
== BSANDR ~ And she became the besta friend with Immi and the lover of <CHARNAME>, which was not written down in any scroll or prophecy ever.~
END
++ ~ And this way and with some other friends they found along their path a force was forged on the Sword Coast to smite evil and to bring down Sarevok before he can finish his plan.~+ ImoBhaalSp7

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp7
~  But one question remains for Imoen.~
== Bimoen ~ I am not <CHARNAME>'s sister, Sandrah, I have understood that well, even if we are spawns of the same god that is not really a *Father*. If we think of a father ever, his name will be Winthrop or Gorion respectively.~
== BSANDR ~ Absolutely, Imoen.~
== Bimoen ~ Then, Sandrah, why is that blood recognised in <CHARNAME> and not in me. I have no such dreams and strange powers and all that mumbojumbo. No assassins, no fanatics. But it must be all like we said?~
END
++ ~ Sandrah, that is indeed the question I have considered as well ever since I had the first suspicion about Imoen. What makes us so different?~ + ImoBhaalSp8

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp8
~ The soil the seed of Bhaal needs to grow in. Like any flower seed, the seed of that god needs the right ground to nurish from. And Imoen in that respect is as dry as the Calimshan Desert for him. It is her lack of ambition to rule and to execute power.~
== Bimoen ~ Hey, I wanna rule Toril and make it all pink!~
== BSANDR ~ Exactly, Imoen. This is exactly your relation to power. With <CHARNAME>, this is different, <PRO_HESHE> has become our leader in a natural way, the makings of a strong ruler are visible in <PRO_HISHER> actions all the time. Even if contrary to the way Bhaal would need those abilities to develop.~
END
IF ~GlobalGT("OrcPrison","GLOBAL",8) ~ THEN REPLY ~ Thus my dreams, where two ways were offered to me and later two powers were fighting to gain control.~ + ImoBhaalSp9
IF ~GlobalLT("OrcPrison","GLOBAL",8) ~ THEN REPLY ~ Thus my dreams, where two ways were offered to me and later two powers were fighting to gain control.~ + ImoBhaalSp10

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp9
~  Yes, my love, and I am happy for which side has won.~
== Bimoen ~ But then once I turned into this nasty slayer creature without me wanting and having control, that was nightmarish, uuh.~
== BSANDR ~ I was thinking about that for a long time and I think I can explain it now. Only that once you have really had the desperate wish to have all the power in the world and to slay any foe that would stand in your way - to rescue the one you so dearly love and for whom you would give everything.~
== Bimoen ~ Sure 'n' yes, you bet. Sandrah, I will make sure this damned god will not get a drop of water in my desert garden. May his seed be eaten by the ants and the snails. Bhaal begone!~ EXIT

CHAIN
IF ~~ THEN BSANDR ImoBhaalSp10
~  Yes, my love, and I am happy for which side has won.~
== Bimoen ~ I will make sure this damned god will not get a drop of water in my desert garden. May his seed be eaten by the ants and the snails. Bhaal begone!~ 
=~Please, <CHARNAME>, Sandrah, can we go and see and talk to Elminster quickest, please.~EXIT

CHAIN
IF WEIGHT #-12~Global("SanPCIdiot","LOCALS",1) ~THEN Bimoen Idi1
~Idiotish Idiot...you are the mostest stupish idiot stumblin' through the Realms. I was asking and asking myself already again and again why my besta friend stayed with you still.~
=~If I had only been quickest enough to follow her (sigh)...now I'm here sticked like glue on the idiotishest Idiot you can find!~
DO~SetGlobal("SanPCIdiot","LOCALS",2) ReputationInc(-1)~EXIT


// Heal Xan

CHAIN
IF ~~ THEN  BSANDR SanHealXan
~ I am <CHARNAME>'s healer. I do what I am supposed to do. But I enjoy it when my skills are noticed by my friends.~
DO ~ SetGlobal("SanHealXan","GLOBAL",6)~
==BXANNN ~ As morbid as it may sound, but I wish I would be in need of a healer more often.~
== BSANDR~ (Laughs gently) Put your knife away, my elf, no need to cut yourself for that purpose. In case you have not discovered it yet, this healer can provide relief for many things you may need or that may depress you.~
= ~(Sandrah kisses Xan lightly at the region she has just healed.)~
==BXANNN ~ You are right, Sandrah, I have felt that more than once. Your physical healing always feels soothing to my suffering heart as well. Maybe I should disregard your advice and pick that knife once again.~
== BSANDR~ You lovely fool, how about just asking me for whatever you need. You may find I will be happy to give you whatever skill you require from me as a healer or otherwise.~
==BXANNN ~ (The smile on Xan's face is not as bitter as his usual one as he takes Sandrah's hand now.) One of your skills I could always make use of is your way to let me forget this doomed existence for a few happy moments in your presence. (He lifts Sandrah's hand to his lips and kisses is lightly.) I feel my optimism growing in me moment by moment.~
== BSANDR ~ (Sandrah keeps her hand in Xan's while they continue to walk side by side for a while.)~
EXIT

//Heal Viconia

CHAIN
IF ~~ THEN BSANDR SanHealVic
~ But you have healers in Menzoberranzan and you yourself are one of them.~
DO ~ SetGlobal("SanHealVic","GLOBAL",6)~
== BVicon ~ This is for the purpose of the battle only. To keep up the fighting power of the group you are in. Never would one use these skills to raise or heal those that were to weak to stand the battle's assault. Your selfless way is something else.~
== BSANDR ~ You are a valuable fighter and cleric in this group and I keep you going. You are sometimes neglecting your own health in a way.~
== BVicon ~ Ha, some ten-days ago I would have believed you. But now I get a notion of your surfacer's ideas of comraderie and - friendship. Even if they still seem strange to me.~
== BSANDR ~ But you no longer reject them right away, right.~
== BVicon ~ It feels different, but it somehow...yes, it feels good in some twisted way. I sense you do all that without some hidden intentions that I should be cautious about. Well, let us move on, Sandrah - - (whispers) my friend?~  EXIT

// Heal Khalid

CHAIN
IF ~~ THEN BSANDR SanHealkal
~ I act not differently from you, my friend. You do the same thing with your fighter skills. You would shield off any stray arrow you see coming my way without regards to your own safety.~
DO ~ SetGlobal("SanHealkal","GLOBAL",6) ~
== BKhali ~ Of course I would. If you see it that way then it is something I understand. But I admire it anyhow. All your willpower and strength - and, yes your beauty.~
== BSANDR ~ Do not let Jaheira hear you talk like this. She would reverse all my healer's deeds in a moment and tear you apart again.~
== BKhali ~ Yes, that is her temperament. But you must see the love that is expressed through this.~
== BSANDR ~ Or the defending of what she thinks is her sole possession. She guards you like a female dragon guards her eggs.~
== BKhali ~ You are a bit unfair, Sandrah. An angry dragon is a bit exaggerated for Jaheira.~
== BSANDR ~ Maybe, Khalid, but I see how hysterically nervous she gets just when she sees us two talking together as comrades always will.~
== BKhali ~ Maybe she has her reasons. She knows me and my weaknesses just too well - and she is surely not blind to your beauty and your charm, young lady.~
EXIT

// Bookhunters

CHAIN
IF ~~ THEN BSANDR SanHarbmap
~ (Sandrah retrieves the book pages and arranges them in the map pattern in front of the interested harbor master.)~
== HARBOR~ Mmmh, that river here...no, that coastline here is in the wrong place, mmh, that wood shouldn't be there but there, no...no.~
== BSANDR~ Some ideas, master?~
== HARBOR~ Some definite information, but you wouldn't like it, fair lady.~
== BSANDR~ There is nothing that could disappoint me as it would always be more  than I have now.~
== HARBOR~ Ha, lady, I like your attitude. So, this island is definitely not along any of the routes that the merchant fleet travels, which excludes most islands within the Sea of Swords. ~
== BSANDR~ So we need to find somebody who travels outside those accustomed routes, right?~
== HARBOR~ Most of them you wouldn't wanna meet, lady, I can tell you.~
== BSANDR~ You mean pirates, I assume. But there are also scientiests or explorers maybe that found islands that the merchants later were not interested in.~
== HARBOR~ As the only pirates I have encountered here in town were hanging from the end of a rope around their dirty necks, your options are thin. Wait - Holghorn!~
== BSANDR~ An explorer?~
== HARBOR~ An adventurous captain in his time, always looking for new routes and such, but not enough of a merchant to prosper with his skills.~
== BSANDR~ But he is still alive I hope.~
== HARBOR~ More or less, as I hear now and then. He frequents the taverns and sells his magnificent tales for drinks. Too sad, those who listen have fun with his yarn not even guessing that most of it is really true.~
== BSANDR~ Thank you, good man.~
== HARBOR~ A real pleasure for a lady like you, even if you're a bit tall and skinny for my liking.~
EXIT

// After Sarevok's Dead
CHAIN
IF ~ Global("SanEndBG1Plot","GLOBAL",1)~ THEN BSANDR SanEndBG1Plot1
~ And so ends the prelude to the Bhaalspawn war that was prophesized by the seer Aloundo. We have done our task quite well, <CHARNAME>.~
DO~ SetGlobal("SanEndBG1Plot","GLOBAL",2)~
END
++  ~ The prelude? Have we not defeated Sarevok and his followers and just prevented a war with Amn?~ + SanEndBG1Plot2

CHAIN
IF ~~ THEN BSANDR SanEndBG1Plot2
~ We have done this, and I am glad we did. Yet I think this was just the beginning of what the Seer has anounced. We have heard Sarevok's story from the various sources. He was just one spawn of Bhaal trying to succeed his father. There are many more out there, some like him and some like you, <CHARNAME>. Their awakening, just like yours has just begun.~
END
++ ~ But I will no longer be involved in their struggle, Sandrah. I am not aiming at the way Sarevok was following - and I have stopped him. It is time to find some peace for our own - you and me.~  + SanEndBG1Plot3

CHAIN
IF ~~ THEN BSANDR SanEndBG1Plot3
~ I hope we will be granted a short rest, before the next battle will come. I am afraid, <CHARNAME>, it is not for you to choose - and neither is it for me as I will always follow you in my love for you.~
=~ This event here has put you and your heritage out in the open. Any Bhaalspawn attempting to either re-evoke Bhaal or take his place like Sarevok will know about you sooner or later. You will become involved time and time again, like it or not. Either as their opponent or their victim.~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Mayhaps we have not changed the fate I saw for me, Sandrah. 'tis still to come in another battle for <CHARNAME>.~ 
== BSANDR IF~ InParty("Dynaheir") ~ THEN ~As is the fate for every Hathran to live and to die in duty for what is the dearest to her heart.~
== BDYNAH  IF~ InParty("Dynaheir") ~ THEN ~ Thou art wise once again, Sandrah. Then the vision I had was to tell me that my duty is not with Rashemen but to protect <CHARNAME>. And by this I will do my duty to my land and kin, as the forthcoming struggle of Bhaalspawns will threaten even countries as far away as mine.~
== Bimoen IF~ InParty("Imoen2") ~ THEN ~ Such should really be my *family*, gosh. I prefer my good old puffing daddy. And for a sibling, <CHARNAME> is all I ever would look for, if I should feel the need for it.~
== BSANDR IF~ InParty("Imoen2") ~ THEN ~ You are right Imoen, trying to apply the notion of family, brother, sister or father for those tainted with Bhaal's blood is one of the many errors Sarevok made. You are in no way related to him.~
== Bimoen IF~ InParty("Imoen2") ~ THEN ~ Pooh, more of them empty headed fools trying to become dead gods. As for idiocy I'm sure we haven't seen it all yet. Let's get it on and never forget to have some fun aside.~
== BSHART IF~ InParty("Sharteel") GlobalLT("SanSharInt","GLOBAL",21)~ THEN ~ Uh, once those pathetic men among the spawns will be eliminated, the real fun can begin. When his female siblings start the final battle that is. Good to know we will have a special invitation to that challenge. ~
== BSHART IF~ InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~ THEN ~ A pathetic male Bhaalspawn. Tell me Sandrah, is there a way we can avoid such a fate for our child. I don't want any of that kind to happen to it. We have all hands full with <CHARNAME> and his drive already. ~
== BSANDR IF ~InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~ THEN ~ You need not to worry, wildcat. The children of a Godchild inherit nothing of the seed that was given to one of their parents. Your child will be like any born to normal human parents, haha, normal in that sense at least. The seed of a God is given directly to his child, the demi-god, but not spread further - unless you were a godchild yourself.~
== BSHART IF~ InParty("Sharteel") GlobalGT("SanSharInt","GLOBAL",20)~ THEN ~ Good news, although I guess with parents like us, it is still asured that it will become a very special person.~
==IF_FILE_EXISTS ~B!GAVINJ~ IF ~InParty("B!GAVIN")~ THEN ~ You are an amazing person and I am proud to be at your side. Today I have seen what your heritage really means. You have not just overcome it, but you have turned the power it provides you with in one used against its own evil aspects. ~
== BSANDR IF ~InParty("B!GAVIN")~ THEN ~ These words mean a lot, Gavin. It is the support and presence of friends and loved ones that make us act this way and provide us with the confidence needed for it.~
== Bjenli  IF~ InParty("CVJenlig") ~ THEN ~ (Hiss) Try to become weak manling god must end like this. Commander wise not to choose such path, <CHARNAME> made to destroy gods rather than become useless one.~
== BVicon  IF~ InParty("Viconia") ~ THEN ~ It is Shar's will that I survive all these trials. I really have doubts if the drow in me would have rejected the offer of such powers so easily, still I must admit I feel relief that <CHARNAME> was able to do it.~
== BKIVAN  IF~ InParty("Kivan") ~ THEN ~ Sandrah, my fate is connected to this plane now through my love for you. I have paid my dues to <CHARNAME> and Shevarash by Tazok's death. You two take my vow today that I will follow your course whereever it will lead us. Khalreshaar be my witness. ~
==IF_FILE_EXISTS BSUFINCH  IF~ InParty("Sufinch") ~ THEN ~ It sounds like history will be written where you go <CHARNAME>. The need for a witness to document all this is inevitable. ~
== BAJANT  IF~ InParty("Ajantis") ~ THEN ~ There was no doubt to the righteousness of your path until now. You are the one to be followed to destroy any remaining threats from the evil god that has spawned you.~
==IF_FILE_EXISTS ACBreB IF~ InParty("ACBre") ~ THEN  ~ By Clannedin's axe, that was a magnificent fight and we were victorious because the gods smiled at us. It was right to follow you, silly <PRO_RACE>, and you will need my assistance in the future, it seems. ~
== BBRANW  IF~ InParty("Branwen") ~ THEN ~ Tempus has once more blessed our weapons against evil. ~
== BXANNN  IF~ InParty("Xan") ~ THEN ~ Do you see it now, <CHARNAME>? Your life will become and endless series of attempts to survive while everyone expects you to righten any wrongs in your path. Your way equals the way of a moonblade wielder, so let us continue to walk it together. ~
== BCORAN  IF~ InParty("Coran") ~ THEN  ~ Are we sure we have taken all the valuables to make this battle profitable. ~
== BJahei  IF~ InParty("Jaheira") ~ THEN ~ Gorion would be proud of you today, <CHARNAME>, as would Khalindra. (Jaheira embraces and kisses you with tears in her eyes.) ~
EXIT

//OoPah
CHAIN
IF~Global("Oopahfun","BG4900",1)~THEN BSandr OpTeas
~I bet you cannot await to see that spectacle once again, <CHARNAME>!~
DO~SetGlobal("Oopahfun","BG4900",2)~
END
++~You read my mind perfectly.~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~EXTERN Gazib 1
++~You know nothing about me, Sandrah.~ DO~IncrementGlobal("Sanpoints","GLOBAL",1)~EXIT

// Heal Branwen

CHAIN
IF ~~ THEN BSANDR BranHealed
~ I have been blessed by Mystra with my gifts to use them this way. Although I must confess you need them quite a bit with your fearless attacks against any oponent.~
DO ~ SetGlobal("SanHealBran","GLOBAL",6)~
== BBRANW ~ For me it is Tempus that guides me in this way. I tend to our wounds after the battle if need be, but with your approach it seems to me that we form a quite capable team in battle.~
== BSANDR ~ This is the essence of companionship, Branwen, to share the perils and the joy.~
== BBRANW ~ Your joy in the fight itself, it seems to me, is not equal to mine. You do it dutifully and competent but without lust.~
== BSANDR ~ But I like to celebrate our victories with <CHARNAME> and with you, my friend.~
== BBRANW IF ~ Global("SanRomPath","GLOBAL",1)~ THEN ~ As much as you enjoy our competent leader himself, seems to me.~
== BBRANW IF ~ !Global("SanRomPath","GLOBAL",1)~ THEN ~ As much as you enjoy our competent leader herself, seems to me.~
== BSANDR ~ I really do. Is that a problem for you, Branwen?~
== BBRANW ~ Not a problem, only a challenge.~
== BSANDR ~ (Laughs) You are right, I do not much enjoy the bloodshed on the battlefield. That does not mean I do not like competition and challenges in general. You northern women are known to take the pleasures you like without much ado.~
== BBRANW ~ (Grins) You understand me well, *my friend*.~
EXIT

//Heal Safana

CHAIN
IF ~~ THEN BSANDR SanHealsaf
~ Sure, commander, always at your service.~
DO ~ SetGlobal("SanHealsaf","GLOBAL",4)~
== BSAFAN ~ Eh...you are mocking me. Is it not your duty to heal, Sandrah?~
== BSANDR ~ My duty and my pleasure, for sure, and I do not need to be reminded of it. Be assured I know what to do and to whom.~
== BSAFAN ~ Sorry, yes, I have observed that much already. It is not often that one finds a companion that is skilled and confident enough to act out without the necessary tutorlage from a superior.~
== BSANDR ~ A superior such as you, mylady?~
== BSAFAN ~ If you were born and raised like me...Oh, no, I've got it all wrong, my apologies. Surely a girl of such noble birth and education like you knows the problem much better than anyone else around.~
== BSANDR ~ Do I, mylady?~
== BSAFAN ~ Oh, please, don't call me *mylady*, especially not with that tone of yours. I already apologised, didn't I. You deserve that title just as well. And thank you for your healing.~
== BSANDR ~ Yes, yes.~
EXIT

//Heal Edwin

CHAIN
IF~~ THEN  BSANDR SanHealEde
~ They are already trained well by a *real* man - trained to use a hammer in the most efficient way on anyone who dares to raise my anger.~
DO~ SetGlobal("SanHealEde","GLOBAL",6)~
== Bedwin_~ That training has been excellent, I have to admit that. I think a pupil talented to learn the one art may be suited as well to learn a far more subtle art as easily. (Oh, just to think of those fingers stimulating my very skin...) Know that I have quite a reputation as a teacher in the erotic arts, my beauty.~
== BSANDR~ Interesting, Edwin. So you are a masochist at heart.~
== Bedwin_~ Huh?~
== BSANDR~ Any treatment of yours other than for healing will only mean one thing for you, mageling. Pain.~
== Bedwin_~ If you only knew what pleasures you cast aside so foolishly. (Oh, she gets me so hot with her resistance...I will make you crawl and beg for my kisses, little bitch.)~
EXIT

//Heal Xzar
CHAIN
IF~~THEN BSANDR Sanhealxzar
~ You dare to compare the healing powers my goddess grants me through the Weave with the cursed necromantic practices of your trade, you bag of scum?~
==BXzar~ Hey, hey, calm down and don't raise your hammer in such a way...~
== BSANDR~ Know that the only reason I have healed you is that <CHARNAME> seems to see a reason to drag a bastard like you through the Realms. As <PRO_HESHE> is wasting part of our rations on you I will keep you in fighting conditions, that is all.~
==BXzar~ Why is a cheerful girl like you who seems to become friends so easily with everyone being so aggressive only towards me, he?~
== BSANDR~ Do you really have to ask? A necromancer and a Zentharim - there is not much difference between you and a mangy demon expelled from the Nine Hells.~
==BXzar~ Keep your voice low, girl, will you!~
EXIT

// Heal Coran
CHAIN
IF~~ THEN BSANDR Sanhealcor
~ I would not intentionally hurt a comrad that I care for, Coran.~
DO ~ SetGlobal("SanHealcor","GLOBAL",5)~
==BCORAN ~ It is surely not your intention, maiden of the Weave, but your sole presence is already hurting my poor suffering heart.~
== BSANDR~ Sneaky little thief, you know quite well that my healer's calling would never allow me to leave a suffering creature unattended. What else can I do than to help where my skills are required.~
==BCORAN ~ Then do not hesitate, kitten, each of your honey dripping words just increase my incurable disease.~
== BSANDR~ Hold on, Coran, trust my expert opinion here - your suffering is neither incurable (she kisses Coran's cheek lightly) nor is it really a disease (she kisses Coran's other cheek.)~
==BCORAN ~ Is it not? The fever has just risen to a new height. Ooh.~
EXIT

// Heal Dynaheir

CHAIN
IF ~~ THEN BSANDR Dynaheal
~ You are not blessed with that gift then, Dynaheir?~
DO ~ SetGlobal("SanHealDyna","GLOBAL",6) RealSetGlobalTimer("SanHealDynaB","LOCALS",1800)~ 
== BDYNAH ~ I hath a limited knowledge of the art, but to execute it like thou dost, one hath to inherit the gift for it. 'tis not to be gained by studying the scrolls.~
== BSANDR~ But there are others among the Hathran who possess the ability to heal, I know. In battle it is as much needed as a fireball is.~
== BDYNAH ~ Thou art right, Sandrah, it's just me who is amongst those without this blessing. If I call the Weave to restore, it takes back from me some of my powers and weakens me.~
== BSANDR~ I see. It is similar to my gift from Mystra to restore a fallen friend even when I have consumed my spells in the day already. I can access to the energy of the Weave, but I am drained significantly by the Weave in return. It is a balance that Mystra controls between giving and taking. I will only use my ability when all else fails and my comrad would be lost without the option of a temple to restore him in time.~
== BDYNAH ~ Thou arest a healer from thine heart and soul, Sandrah, willing to sacrifice part of thine ownself on behalf of thine friends.~
== BSANDR~ You do the same, Dynaheir, as a Hathran is destined to risk her own life for her people every time she is needed. You are always the first target for your enemy's worst attacks.~
== BDYNAH ~ 'tis good to hear such words from one who really knows what they mean from her own experience. (Dynaheir embraces Sandrah in deep friendship and understanding.) ~
EXIT

// Heal Minsc

CHAIN
IF ~~ THEN BSANDR SanHealboo
~ Dynaheir's fate is the fate of Rashemen. It is to defend her homeland and her kin in battle. She is not blessed with the skills to heal the outer wounds. But she can still heal your spirit, Minsc.~
DO~ SetGlobal("SanHealBoo","GLOBAL",6)~
== BMinsc_~ My spirit feels the healing you give the same as my body does. You are a very good friend to Boo - and to me.~
== BSANDR ~ Thank you for your gentle words, my friend.~
EXIT

//Heal Eldoth

CHAIN
IF~~ THEN BSANDR EldoHealed
~ (Laughs) And you should use your natural talents...oh, wait a second - your talents? What am I talking about here?~
DO~SetGlobal("SanHealeldo","GLOBAL",5) ~
== BELDOT~ Oh, yes, my manifold talents, a valid topic for a conversation, mylady.~
== BSANDR~ You cannot really call that a conversation when the topic itself is non-existent. As a bard you are a disaster, to say the least, and your thieving skills will get us nowhere but to jail. Your views on women are better kept to yourself. Even the perfume you use speaks one single word to a lady of distinction - *Cheap*.~
EXIT

// Heal DrizztBG1

CHAIN
IF~ Global("SanHealDriz","GLOBAL",3) ~ THEN BSANDR DrizhealBG1
~ Better, my friend?~
DO~ SetGlobal("SanHealDriz","GLOBAL",4) RealSetGlobalTimer("SanDrizztInterv","GLOBAL",900) ~
== F_DRIZTJ~ Not only your fighter skills have improved magnificently since you left your father's house, Sandrah.~
== BSANDR~ Fighting skills are a necessity to survive. Healing is the occupation that I have really chosen to be my goal in life.~
== F_DRIZTJ~ To repair rather than to destroy, my young friend. A good choice if I might say.~
== BSANDR ~ Not so remote from the one you have chosen for yourself, my elf.~
== F_DRIZTJ~ Your chances are better than mine to actually succeed. So far my reputation is more for my fighting skills than for my achievements for peace.~
== BSANDR ~ Your reputation is surely a bit overshadowed by the fact that most people first see the drow and the fighter, and only few see the ambassador of a peaceful Toril when it comes to you. But I assure you that the second aspect is most important to those who study you more closely.~
== F_DRIZTJ~ Like you, little heroine?~
== BSANDR ~ Yes, Drizzt. You, my father, my grandmother Midnight - those are the ones I want to be measured against when my own achievements will be finally judged.~
== F_DRIZTJ~ You are surely on the right path for that. I am proud to be able to call myself one of your teachers. You have come a long way already. (Drizzt's earnest face really shows a smile for Sandrah.)~
== BSANDR ~ (Sandrah lifts herself to her toes and quickly places a kiss on the drow's cheek. She is actually quick enough to escape Drizzt's impulsive reaction to defend himself against this *attack*)~
EXIT

//Heal Kivan BG1

CHAIN
IF~~THEN BSANDR SanhealkivSC
~ Maybe not by just calling down the powers of the Weave for a short instant like I do here on the battlefield. Some wounds need a prolonged attention, but hope is not in vain, my friend.~
DO ~ SetGlobal("SanHealkiv","GLOBAL",5)~
== BKIVAN~ Even wounds that appear to be healed often leave deep scars on a man.~
== BSANDR~ It is the scars and the experiences that differentiate the boy from the man. They make out a part of his character.~
== BKIVAN~ Either that or they destroy the soul of the victim.~
== BSANDR~ A skilled and caring healer will detect those ills and find the source beneath the well hidden scars, believe me. Sometimes a lot of time and love is required but more things can be repaired than may appear possible on first sight.~
== BKIVAN~ You are determined, my girl. But can you accept failure if you really are confronted with a hopeless case?~
== BSANDR~ Much will have to occur before I declare a case hopeless. Especially if my heart is in it.~
EXIT


//APPENDs

APPEND BERRUN

IF WEIGHT #-999 ~ Global("SanImoNashInt","GLOBAL",16) Global("SanHenMis","LOCALS",0) ~ THEN BEGIN SanHenMis1
SAY ~ Welcome back, <CHARNAME>, I was expecting you already. Bad news indeed in Nashkel once again.~
IF~~THEN REPLY ~ We just come from Henning's shop and found him missing. Evidence of fight and bloodshed is all over the place. What do you know, good man?~ DO ~ SetGlobal("SanHenMis","LOCALS",1)~ GOTO SanHenMis2
END

IF ~~ THEN BEGIN SanHenMis2
SAY ~ It was an orc bandit raid, and it was aimed directly at the shop, respectively its owner. The rest of us in all of the town remained unharmed. From what witnesses have reported to me, the bandits were send to capture just Henning and no one else.~
IF~~THEN REPLY ~ Is that not very unusual. What can orcs possibly want from him if not his wares and his gold? But the shop was not even robbed.~ GOTO SanHenMis3
IF~~THEN REPLY ~ The only explanation for that is that they knew about Henning's connection with us, especially with Imoen. ~ GOTO SanHenMis3
END

IF ~~ THEN BEGIN SanHenMis3
SAY ~ Those bandits that were down at the local mines seem to be part of a larger organisation. However much we appreciate your help with our problem, it seems you have made yourself some mighty enemy there. ~
= ~ Now, Henning was very proud of his *little red-headed heroine* as he called her everywhere, and so his connection with your group was not a secret. I am afraid his capture is more aimed to harm you and somehow to stop you from further persuing your investigations in this matter.~
IF~~THEN REPLY~ But the result is just the opposite. Now we will increase our efforts to find the people and the organisation that is behind this Iron Shortage. With this we will also find Henning. Imoen, you have my word, we will not stop until you have him safely back in your arms.~ GOTO SanHenMis4
END

IF ~~ THEN BEGIN SanHenMis4
SAY ~ Imoen, be assured that the sympathy of all the Nashkel people is with you in this hard time. All I can add for your help is to say, the bandits have left the town to the north, and the general direction according to a report from a caravan leader was to the Cloakwood Forest. They must be in a hurry, as they did not even stop to assault this rich caravan.~
IF~!PartyHasItem("MISC85") !PartyHasItem("SCRL2W")~THEN REPLY ~ Thank you for all, Gerrun. Next time you see us, you should have a shop operating at Nashkel again - and we should have a very happy cheerful companion once again.~ DO ~ SetGlobal("SanImoNashInt","GLOBAL",17) EraseJournalEntry(@932) AddJournalEntry(@186,QUEST) ActionOverride("Berrun",EscapeAreaDestroy(90)) ~ EXIT
IF~ OR(2) PartyHasItem("MISC85") PartyHasItem("SCRL2W")~THEN REPLY ~ Thank you for all, Gerrun. Next time you see us, you should have a shop operating at Nashkel again - and we should have a very happy cheerful companion once again.~ DO ~ SetGlobal("SanImoNashInt","GLOBAL",17) EraseJournalEntry(@932) AddJournalEntry(@186,QUEST)~ EXIT
END
END

APPEND DynahJ
IF ~ Global("SanNotCloth","GLOBAL",2) ~ THEN BEGIN DyCloPC1
SAY ~ I have come to possess an item I wanted to debate with your cleric girl. I ask you to take into your custody for the moment to give it to her in time.~
IF~~THEN REPLY ~ A strange item indeed, do you have reason to believe you will not see her again yourself to give it to her? ~ DO ~ GiveItemCreate("Sanwi2",Player1,0,0,0)~ GOTO
DyCloPC2
END

IF~~THEN BEGIN DyCloPC2
SAY ~ It eases my mind to know it with thou. I hope nonetheless I will be present when thee rejoin and I can counsel with her about it.~
IF~~THEN REPLY ~ And is there more you can tell me about it, where did you for example get it from?~ DO ~ SetGlobal("SanNotCloth","GLOBAL",3)~ GOTO DyCloPC3
END

IF~~THEN BEGIN DyCloPC3
SAY ~ I found it near a place thine folk call the Firewine. But it must have been lost in older times, me guesses at the end of the Time of Troubles...Thine priestess should know the lore, or so I hope. That is all to say for now. Keep it safe, I beg of thee.~
IF~~THEN EXIT
END
END

APPEND BXANNN
IF WEIGHT #-9 ~ Global("SanHealXan","GLOBAL",5)~ THEN BEGIN SanHealed
SAY ~ Once again you have drawn me back from the edge of death that was already reaching out its claws for me, Sandrah.~
IF~~ THEN EXTERN BSANDR SanHealXan
END
END

APPEND Bedwin_
IF WEIGHT #-9 ~ Global("SanHealEde","GLOBAL",5)~ THEN BEGIN SanHealede
SAY ~ These fragile healing hands could do so much to a man if trained in the right manner.~
IF~~ THEN EXTERN BSANDR SanHealEde
END
END

APPEND BSAFAN
IF WEIGHT #-9 ~ Global("SanHealsaf","GLOBAL",3)~ THEN BEGIN SanHealsaf
SAY ~ I'm hurt, stop what you're doing and help me now.~
IF~~ THEN EXTERN BSANDR SanHealsaf
END
END


APPEND BVicon

IF WEIGHT #-9 ~Global("SanHealVic","GLOBAL",5)~ THEN BEGIN VicHealed
SAY ~ Once again you have used your remarkable skills on me, Sandrah. Again this is something that puzzles me in the usual way, rivvil. Never would such be done in the Underdark.~
IF~~ THEN EXTERN BSANDR SanHealVic
END
END

APPEND BKHALI

IF WEIGHT #-9 ~Global("SanHealkal","GLOBAL",5) ~THEN BEGIN Kalhealed
SAY ~ Your healer skills are amazing, Sandrah, for someone so young as you. (As always with Sandrah you observe that Khalid does not stutter at all.) And the way you use them for the benefit of our group is outstanding.~
IF~~ THEN EXTERN BSANDR SanHealkal
END
END

APPEND BMinsc_
IF WEIGHT #-9 ~Global("SanHealBoo","GLOBAL",5) ~THEN BEGIN Boohealed
SAY ~ Thank you, Sandrah. Boo says thank you, too. You are beautiful like our witch but you can heal better.~
IF~~ THEN EXTERN BSANDR SanHealboo
END
END


APPEND BSHART

IF WEIGHT #-9 ~ Global("SanHealshar","GLOBAL",7) ~ THEN BEGIN SharhealIF
SAY ~ What's this hocus pocus on me, Pussycat, do you think I fall apart from these minor hurts. Our pathetic males are already crying for their cleric mammy's plasters.~
IF~~ THEN EXTERN BSANDR Sharheal2
END

IF WEIGHT #-9  ~ Global("SanHealshar","GLOBAL",6)~ THEN BEGIN SharhealNF
SAY ~ What's this hocus pocus on me, Pussycat, do you think I fall apart from these minor hurts, like you would probably do? ~
IF~~ THEN EXTERN BSANDR Sharheal1 
END
END

APPEND BDYNAH

IF WEIGHT #-9 ~ Global("SanHealDyna","GLOBAL",5)~ THEN BEGIN SanDyHeal
SAY ~ 'tis good to have a friend who can connect to the Weave. 'tis rare with Rashemi battle mages to be granted this ability.~
IF~~ THEN EXTERN BSANDR Dynaheal
END
END


APPEND SHARTJ

IF WEIGHT #-99 ~!Global("endofbg1","GLOBAL",2) Global("X#SharInterestTalk","GLOBAL",38) InParty("CVSandr") ~ THEN BEGIN San670
  SAY  ~You know what I really want?~
  IF ~~ THEN REPLY ~To kill every man in Faerun?~ DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~ GOTO San671
  IF ~~ THEN REPLY ~I have no clue. What is that you really want, Shar-Teel?~ DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~ GOTO San672
  IF ~~ THEN REPLY  ~Nope. What?~  DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~ GOTO San672
  IF ~~ THEN REPLY  ~To be alone with pussycat and me, in a place where we can have as much fun with each other as we want?~  DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) IncrementGlobal("X#SharKind","GLOBAL",2)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~ GOTO San684
  IF ~~ THEN REPLY ~I'm glad you've mentioned this. It's something we should have discussed a long time ago. You're a drifter, Shar-Teel, wandering aimlessly and killing passers-by. You need to set some goals, work for something in your life.~ DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1)
RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)
~ GOTO San685
END

IF ~~ THEN BEGIN San671
  SAY ~*She slaps you.* I hate it when people start putting words in your mouth! Especially when they pervert them. No one ever listens, they just enjoy the sound of their own voices!~
  IF ~~ THEN REPLY ~O, fine. Go ahead yell your throat out. But don't expect me to listen.~  DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY ~Alright, alright. I got the point. Please, tell me what is it that you really want, Shar-Teel?~  GOTO San672
  IF ~~ THEN REPLY ~You want a serious talk, do you? Alright, I'll give you one. You're a drifter, Shar-Teel... wandering aimlessly and killing passers-by. You need to set some goals, work for something in your life.~  GOTO San685
END

IF ~~ THEN BEGIN San672
  SAY  ~I want to get out from under Fist's reach. Go somewhere, perhaps down to Calimshan... I hear, a strong person can make a fortune there as a mercenary.~
  IF ~~ THEN GOTO San677
  IF ~InParty("viconia")~ THEN GOTO San673
  IF ~InParty("eldoth")~ THEN GOTO San674
  IF ~InParty("imoen2") ~ THEN GOTO San675
  IF ~InParty("kagain") ~ THEN GOTO San676
  IF ~!InParty("viconia") !InParty("eldoth") !InParty("imoen2") !InParty("kagain")~ THEN GOTO 677
END

IF ~~ THEN BEGIN San673
  SAY  ~So I was thinking... Let's take the kitty. Dump everyone, especially this drow slut, and travel together with pussycat for a time. Go someplace nice.~
  IF ~~ THEN GOTO San677
END

IF ~~ THEN BEGIN San674
  SAY  ~On the other hand, I'm growing frustrated with having to associate with scum, especially the slimy bard. Let's squish the slug, take the kitty, dump everyone else and travel together with pussycat for a time. Go someplace nice.~
  IF ~~ THEN GOTO San677
END

IF ~~ THEN BEGIN San675
  SAY ~I was looking at that stupid girl that trails after you as if she is glued to your cloak... and I just can't stand it any more. Let's snap her neck, or dump her with the rest, take the kitty and travel together with pussycat for a time. Go someplace nice.~
  IF ~~ THEN GOTO San677
END

IF ~~ THEN BEGIN San676
  SAY  ~I was thinking... that dwarf is a good fighter, but the rest... let's dump this pathetic squad, take the kitty and travel together with pussycat for a time. Go someplace nice.~
  IF ~~ THEN GOTO San677
END

IF ~~ THEN BEGIN San677
  SAY ~I figure you're not that pathetic, at least as far as men go. It could be a bloody, fun and profitable expedition, and we'll not be weighed by whiners and fools.~
  IF ~InParty("imoen2")~ THEN REPLY ~I do not feel comfortable about letting Imoen go. Yes, she is annoying as the Nine Hells itself, but she is useful.~  GOTO San678
  IF ~InParty("imoen2")~ THEN REPLY  ~Drop Imoen? Are you out of your bloody mind? She is my bestest friend!~ GOTO San679
  IF ~InParty("viconia")~ THEN REPLY ~I would not want to lose Viconia's divine spells. Shar is a powerful goddess, and she favors the drow.~  GOTO San680
  IF ~InParty("eldoth")~ THEN REPLY  ~Eldoth is a slug, but he sure knows how to sing... But so can you, if you would just do more often, I'd agree to let him go.~  GOTO San682
   IF ~~ THEN REPLY  ~Sounds like a good plan, Shar-Teel, but we can't do it just now. Let me sort out this mess with my father's murderer, and then - we will hit the road together.~  GOTO San686
  IF ~~ THEN REPLY  ~No, Shar-Teel, absolutely not. We have no need anymore to sell ourselves as mercenaries. Even you have a code of honor developped that I can respect. Think about it, my she-bear.~  GOTO San688
  END

IF ~~ THEN BEGIN San678
  SAY  ~Well, go kiss this little bitch, then.~
  IF ~~ THEN REPLY ~ *You grab her and silence her brawling with a passionate kiss.* If you don't know by now, it's me who chooses whom I kiss and when. ~ DO ~IncrementGlobal("X#SharKind","GLOBAL",1)
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN San679
  SAY  ~O, really? And I thought you were less pathetic than other men. Listen to yourself... 'beeeestest frieeend... *She spits.* Well, damn, and I'd say the same about pussycat. ~ 
  = ~ See where this love and friend thing got us. In the end we will fail 'cause it got us so weak. To hell, it still feels good, you bastard. *She grabs you by both ears and clenches your head to her warm bossom*. Loverboy.~
  IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN San680
  SAY  ~You are such a fool! I am such a fool! The drow *told* me that she could have you if she wanted... Well, go lick her boots, then.~
  IF ~~ THEN REPLY ~ Who's the fool here, wildcat? Do you believe what the dark one says despite your own better knowledge? I can't believe that. I will let pussycat give you a decent spanking before she delivers you to our bedroll tonight. *Wink at her* ~ DO ~IncrementGlobal("X#SharKind","GLOBAL",2) RestParty() ~ EXIT
END

IF ~~ THEN BEGIN San682
  SAY  ~*She spits.* Call this a deal. With pussycat providing the musical background we will make any bard redundant. If you get me in the right mood, loverboy, you may even be granted with a lovesong, let's see. ~
  IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",2)RestParty()~ EXIT
END

IF ~~ THEN BEGIN San684
  SAY  ~Well, it might be that we don't need to go further than our bedroll for that. See, that ripe fruit over there is already lusting for us to pick her. How I yearn for you two, c'mon.~
  IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",3)RestParty()~ EXIT
END

IF ~~ THEN BEGIN San685
  SAY ~As a matter of fact, I do have a goal. Listen up, <CHARNAME>...~
  IF ~~ THEN GOTO San672
END

IF ~~ THEN BEGIN San686
  SAY  ~Alright then. But move your ass swifter, <CHARNAME>. I'm growing restless in the company you keep. So many morons and weaklings.~
  IF ~~ THEN DO ~RestParty() ~ EXIT
END


IF ~~ THEN BEGIN San688
  SAY  ~Well, if it's no, then it's no, my master. Come on, pussycat, we can do a night without that loser, right? Give him some time to think.~
  IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)RestParty()~ EXIT
END
END


APPEND SHARTJ
IF WEIGHT #-19 ~ Global("SanSharInt","GLOBAL",20) ~ THEN BEGIN sharPreg1
SAY ~ (Shar-Teel grabs your arm pale faced in order not to stumble) Damn it, loverboy, hold me, I think I need to throw up again. Second time today already, aaargh!~
IF~~THEN REPLY ~ What's up, she-bear, are you love sick again?~ GOTO sharPreg2
IF~~THEN REPLY ~ Hey, hey, there is no other man around, and I thought we have grown a bit closer, she-bear, you no longer get sick seeing me.~ GOTO sharPreg2
IF~~THEN REPLY ~ You have eaten the same thing like everybody else last eve. Are you really sick, she-bear?~  GOTO sharPreg3
END

IF ~~ THEN BEGIN sharPreg2
SAY ~ Can't you think of anything else, bloody idiot. Men! Can't you see that something is really wrong with me?~
IF ~~ THEN REPLY ~ Sit down for a moment, dear, you really look pale.~ GOTO sharPreg3
END

IF ~~ THEN BEGIN sharPreg3
SAY ~ Shit, how I hate to be so...weak. I had even to grasp for your arm, <CHARNAME>.~
IF~~THEN REPLY ~ Yes, that proves your condition is really bad. Sandrah! Please come over and take a look at our wildcat. I am really concerned about her.~ EXTERN BSANDR SharPregT1
END
END

APPEND  BJahei

IF WEIGHT #-9  ~ Global("SanHealjah","GLOBAL",3)~ THEN BEGIN SanHealJah
SAY ~ Thank you, Sandrah, although I guess you are well aware of the fact that I have sufficient healing skills myself. But the care for your companions and the sense of duty that is expressed through your healing acts is admirable.~
IF~~THEN EXTERN BSANDR SanJAHHea1
END
END


APPEND BYESLI

IF WEIGHT #-9 ~ Global("SanHealyesl","GLOBAL",3)~ THEN BEGIN SanHealYesl
SAY ~ Why d'ya doin' it.~
IF~~THEN EXTERN BSANDR SanYeslHea1
END

IF WEIGHT #-9 ~ Global("SanYeslElmi","GLOBAL",2)~ THEN BEGIN SanElmYesl
SAY ~ Ye needa help me a bit, com'rad gal.~
IF~~THEN EXTERN BSANDR SanYeslElm
END
END


APPEND BAJANT

IF WEIGHT #-9 ~ Global("SanHealAjan","GLOBAL",5)~ THEN BEGIN AjanHeal
SAY ~ Thank you, la-- , I mean Sandrah. I have noticed your healing me without my need to ask you whenever I am hurt. May this be a special attention I receive from your side?~
IF~~THEN EXTERN BSANDR SanAjanHeal
END


IF WEIGHT #-9 ~Global("SanHelmDogmas","GLOBAL",18)Global("Sanleave","LOCALS",0)~ THEN BEGIN SanLeave1
SAY ~ May I have a word with you, <CHARNAME>, as soon as we have said good night to Sandrah. (He kisses Sandrah lightly on the cheek.) Sleep well, Sandrah.~
IF~ AreaCheck("BG4801") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([661.176])) ~ GOTO SanLeave2
IF~ AreaCheck("BG2616") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([314.319])) ~ GOTO SanLeave2
IF~ AreaCheck("BG3351") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([503.544])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG3304") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([673.454])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG2301") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([641.841])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG0105") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([344.144])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG0116") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([673.454])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG0119") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([645.419])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG0705") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([976.548])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG1001") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([358.723])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
IF~ AreaCheck("BG3357") ~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",MoveToPoint([286.247])) SetGlobal("Sanleave","LOCALS",1)~ EXIT
END

IF WEIGHT #-9 ~ Global("Sanleave","LOCALS",1) ~THEN BEGIN SanLeave2
SAY ~ Dear friend, you may know well the topic we need to talk about.~
IF~~THEN REPLY~ (Look to where Sandrah has just disappeared.) The sunshine of our lives.~ GOTO SanLeave3
IF~~THEN REPLY~ I am glad we find the time to clarify some things. Well?~ DO~ SetGlobal("Sanleave","LOCALS",2)~GOTO SanLeave3
END

IF~~THEN BEGIN SanLeave3
SAY ~ You know that my friendship and companionship for you is loyal and true - as is my love for Sandrah. Both cannot be at the same time, this is what I conclude today.~
IF~~THEN REPLY~ You took this moment without her, to reveal this to me. Are you so unsure of yourself that you cannot confront her with your decision? ~ GOTO SanLeave4
IF~~THEN REPLY ~ Have you talked to Sandrah already about that, my friend?~ GOTO SanLeave4
END

IF~~THEN BEGIN SanLeave4
SAY ~ If you call me a coward for that, <CHARNAME>, I cannot deny it. I think that you will understand it best - her overwhelming nature, the look from her brilliant eyes, the sound of her voice - all these things that let you forget any reason and restriction and makes you follow her like you would follow a siren. When she explains it to me, I am willing to believe everything. It is not that she ever is untrue, it is her belief that anything can come true if we just want it.~
IF~~THEN REPLY ~ And that is not so, paladin? You have lost your faith in that? She will do anything to make Toril a better place for all of us. A place to be happy together.~ GOTO SanLeave5
IF~~THEN REPLY ~ It sounds as if your decision stands on a weak foundation. At least too weak to face such a powerful woman as Sandrah.~ GOTO SanLeave5
END

IF~~THEN BEGIN SanLeave5
SAY ~ I have tried many times to see the things with such an open heart and open mind as Sandrah does. And as you yourself seem to be capable to do. But then other voices fill my head. Keldorn, my mentor in the order. My father and my mother. They are important to me just as our quest and companionship are. But they do not fit together.~
IF~~THEN REPLY ~ And the fearless paladin is afraid of what those people may think and say about the love he has found. I pity you for the loss you have to face. I see that Sandrah has seen more in you than you really have the courage to be.~ DO ~ SetGlobal("SanHelmDogmas","GLOBAL",19)~ GOTO SanLeave6
END

IF~~THEN BEGIN SanLeave6
SAY ~ You are right with everything you say and I hope you will be able to remember me as a friend. Please give this to Sandrah. I must go now. I will go to the temple of Helm in Nashkel and write to the order for a replacement here on the Sword Coast. May Helm watch and bless your every step - and Sandrah's.~
IF~~ THEN DO ~ GiveItemCreate("SanAjLet","CVSandr",0,0,0) LeaveParty() EscapeAreaMove("BG4802",561,317,0) RestParty()~ EXIT
END
END


APPEND Bimoen
IF WEIGHT #-9 ~ Global("SanHealImo","GLOBAL",5)~ THEN BEGIN SanHealImo
SAY ~ Heya, thanks for yours mumbojumbo on me. That injury did hurted quite a bit. You're kinda really good at that.~
IF~~ THEN EXTERN BSANDR ImoHealedProf
END
END

APPEND IF_FILE_EXISTS BSUFINCH
IF WEIGHT #-9 ~ Global("SanHealfink","GLOBAL",5) ~THEN BEGIN  SanHealfink
SAY ~ Oh, forgetful me! Sandrah you are always so practical and acting. I am a healer myself and see, I forgot to do the apparent thing again. It is all in my head and in my books - I know what and how to do it and then I forget to do it.~
IF~~ THEN EXTERN BSANDR FinchHealed
END

IF WEIGHT #-8 ~ Global("LeftSan","GLOBAL",2)~ THEN BEGIN SanFoundBook
SAY~ Hello, fellow bookworms, how did you fare?~
IF~~THEN EXTERN BSANDR  SanFuWDBook
END
END

APPEND BELDOT
IF WEIGHT #-9 ~ Global("SanHealeldo","GLOBAL",4) ~THEN BEGIN  SanHealeldo
SAY ~ That healing attitude suits a beautiful lady like you much better than all this fighting in heavy gear. Women should use their natural talents like that instead of trying to immitate men.~
IF~~ THEN EXTERN BSANDR EldoHealed
END
END

APPEND BBRANW                                           
IF WEIGHT #-9 ~ Global("SanHealBran","GLOBAL",5)~ THEN BEGIN Sanbranheal
SAY ~ I am already deeply in your depth for your rescue from my statuesque state. You never ceise in your care for your companions, Sandrah.~
IF~~ THEN EXTERN BSANDR BranHealed
END
END

APPEND BKIVAN
IF WEIGHT #-9 ~ Global("SanHealkiv","GLOBAL",4)~ THEN BEGIN SankivSCheal
SAY ~ Aah, my good healer. If only all wounds could be cured in that fashion, melamin.~
IF~~ THEN EXTERN BSANDR SanhealkivSC
END
END

APPEND BGARRI
IF WEIGHT #-19 ~Global("SanHealgar","GLOBAL",3)~ THEN BEGIN Sangarriheal
SAY ~ Another song of praise is due here, sweetest and most competent healer!~
IF~~ THEN EXTERN BSANDR Sanhealgarri
END
END

APPEND BCORAN
IF WEIGHT #-9 ~Global("SanHealcor","GLOBAL",4)~ THEN BEGIN Sancorheal
SAY ~ These delicate fingers calling the Weave's power for me! They heal and they hurt at the same time.~
IF~~ THEN EXTERN BSANDR Sanhealcor
END
END

APPEND BTIAX
IF WEIGHT #-9 ~Global("SanHealtiax","GLOBAL",4)~ THEN BEGIN Santiaxheal
SAY ~ Well done, sweetling, this is the way we will reach greatness, by supporting each other.~
IF~~ THEN EXTERN BSANDR Sanhealtiax
END
END

APPEND BXzar
IF WEIGHT #-9 ~Global("SanHealxzar","GLOBAL",3)~ THEN BEGIN Sanxzarheal
SAY ~ Aah, good, sweet healer!! Should things get even worse in battle your goddess will surely give her priestess the ability to restore me from the dead as well.~
IF~~ THEN DO~SetGlobal("SanHealxzar","GLOBAL",4)~ EXTERN BSANDR Sanhealxzar
END
END



APPEND HAIASS

IF WEIGHT #-9 ~ Global("HaiassJoinSan","GLOBAL",1)~ THEN BEGIN HaiSan
SAY~ (You recognise that this is Haiass, your wolf. It seems like he has followed you all the way from Candlekeep. He looks cautiously at you due to your rude behaviour lately and moves to Sandrah, rubbing his snout against her leg.) ~
IF~~THEN EXTERN BSANDR HaiassJoinSan
END
END

EXTEND_TOP KELDDA 0 #1
  IF ~Global("PirTresDon","GLOBAL",2)~ THEN REPLY ~ During our travels we have again come to possess a treasure that has been robbed from innocent victims. We do not know who the original owners might have been, so we want to donate it to the Orphanage.~ GOTO GivePirtres
  END

APPEND KELDDA
IF ~~ THEN BEGIN GivePirtres
SAY ~ A wise decision. This way a bloodstained treasure will be repaid to those who have suffered most from the evil proceedings on the Sword Coast.~
IF ~NumItemsParty("CVPirbag",1)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",2)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",2)~ THEN REPLY ~ I will donate these two bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~ EXIT
IF ~NumItemsParty("CVPirbag",3)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",3)~ THEN REPLY ~ I will donate these two bags of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~ EXIT
IF ~NumItemsParty("CVPirbag",3)~ THEN REPLY ~ I will donate these three bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~ EXIT
IF ~NumItemsParty("CVPirbag",4)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",4)~ THEN REPLY ~ I will donate these two bags of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",4)~ THEN REPLY ~ I will donate these three bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~ EXIT
IF ~NumItemsParty("CVPirbag",4)~ THEN REPLY ~ I will donate these four bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",4) AddexperienceParty(5000) ~ EXIT
IF ~NumItemsParty("CVPirbag",5)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",5)~ THEN REPLY ~ I will donate these two bags of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~ EXIT
IF ~NumItemsParty("CVPirbag",5)~ THEN REPLY ~ I will donate these three bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~ EXIT
IF ~NumItemsParty("CVPirbag",5)~ THEN REPLY ~ I will donate these four bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~ EXIT
IF ~NumItemsParty("CVPirbag",5)~ THEN REPLY ~ I will donate these five bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate these two bags of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate these three bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate these four bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate these five bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~ EXIT
IF ~NumItemsParty("CVPirbag",6)~ THEN REPLY ~ I will donate these six bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",6) AddexperienceParty(7000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate this bag of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",1) AddexperienceParty(2000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate these two bags of pirate treasure~ DO ~ TakePartyItemNum("CVPirbag",2) AddexperienceParty(3000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate these three bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",3) AddexperienceParty(4000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate these four bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(5000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate these five bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",5) AddexperienceParty(6000) ~ EXIT
IF ~NumItemsParty("CVPirbag",7)~ THEN REPLY ~ I will donate these six bags of pirate treasure~DO ~ TakePartyItemNum("CVPirbag",6) AddexperienceParty(7000) ~ EXIT
END
END

EXTEND_TOP CORANJ 70 #2
IF ~ InParty("CVSandr")~ THEN REPLY ~ Are you perhaps referring to a certain woman we both know and adore? ~ GOTO SanPCCor
END

APPEND CORANJ
IF~~THEN BEGIN  SanPCCor
SAY~ I... I sometimes had this odd, sweet feeling with her who is so close to both of us. I did not have to prove anything or conquer her. I simply enjoyed Sandrah's company and her grace. And I felt proud and sad that no 'what if' thoughts ever crossed my mind. And, alas, I get repaid like never before by her. What is it if not the noblest form of love? ~
IF~~THEN REPLY ~ Maybe you are capable of deeper feelings than I had thought.~ GOTO 74
END
END

EXTEND_TOP HARBOR 0 #3
IF~ GlobalGT("SanSuBH","GLOBAL",11) GlobalLT("SanSuBH","GLOBAL",26) ~ THEN REPLY ~ We are looking for information of an island of which we have come to possess a map but don't know the exact location.~ GOTO San22
END

APPEND HARBOR
IF ~~ THEN BEGIN San22
SAY ~ Well, let me take a look at that mysterious map then. See what we can do.~
IF ~~ THEN EXTERN BSANDR SanHarbmap
END
END

ADD_TRANS_ACTION Drizzt BEGIN 1 END BEGIN 0 1 2 3 4 5 6 7 8 9 END
 ~SetGlobal("SanBranSharDzt","GLOBAL",1)~

