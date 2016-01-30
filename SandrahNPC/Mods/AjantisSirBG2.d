BEGIN CVWedGi

APPEND BSandr

IF~Global("SanMissAjan","ar0903",1)~THEN BEGIN SanMissAjan1
SAY~The very idea that Ajantis could be still alive... I can scarcely believe it, for I thought him lost forever! Of course we will do whatever we can to find him! <CHARNAME>?~
IF~PartyHasItem("C#AJGK")~THEN REPLY~You seem to feel more for the tin headed paladin than I ever thought possible. Let's see what we can do.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanMissAjan2
IF~PartyHasItem("C#AJGK")~THEN REPLY~ You don't expect me to run to rescue each and every of your could-be lovers for you, my dear. I'm glad we got rid of the tin head.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanMissAjan2
IF~PartyHasItem("C#AJGK")~THEN REPLY~Whatever your motivation may be, Sandrah, I never leave an old comrad in peril if I see a chance to do anything about it.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanMissAjan2
IF~!PartyHasItem("C#AJGK")~THEN REPLY~You seem to feel more for the tin headed paladin than I ever thought possible. Let's see what we can do.~ DO~IncrementGlobal("Sanpoints","GLOBAL",2)~GOTO SanMissAjan3
IF~!PartyHasItem("C#AJGK")~THEN REPLY~ You don't expect me to run to rescue each and every of your could-be lovers for you, my dear. I'm glad we got rid of the tin head.~DO~IncrementGlobal("Sanpoints","GLOBAL",-2)~GOTO SanMissAjan3
IF~!PartyHasItem("C#AJGK")~THEN REPLY~Whatever your motivation may be, Sandrah, I never leave an old comrad in peril if I see a chance to do anything about it.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~GOTO SanMissAjan3
END

IF~~THEN BEGIN SanMissAjan3
SAY~Firkraag was the key to this intrigue - the mysterious globe we were offered...we need to investigate it again, it is the only trace we have in this matter.~
IF~~THEN REPLY~Mh...and what if we find it?~GOTO SanMissAjan4
END

IF~~THEN BEGIN SanMissAjan4
SAY~Please give me a minute to clear my thoughts, my dear. Ajantis alive!~
=~I have to think a bit now, ask me later, <CHARNAME>, and I may have an idea about how to proceed.~
IF~~THEN DO~SetGlobal("SanMissAjan","ar0903",2) ~EXIT
END

IF~~THEN BEGIN SanMissAjan2
SAY~It will not hurt us to investigate the globe we have received. It is our only clue at the moment. The best source of information here in town would be Oghma's temple I think.~
IF~~THEN DO~SetGlobal("SanMissAjan","ar0903",2) ~EXIT
END
END

APPEND C#AjanB

IF WEIGHT #-9 ~Global("SanHelmDogmas","GLOBAL",18)Global("Sanleave","LOCALS",0)~ THEN BEGIN SanLeave1
SAY ~ May I have a word with you, <CHARNAME>, as soon as we have said good night to Sandrah. (He kisses Sandrah lightly on the cheek.) Sleep well, Sandrah.~
IF~~ THEN REPLY ~ Good night, Sandrah. (Kiss her on the other cheek.)~ DO ~ ActionOverride("CVSandr",RunAwayFrom(Player1,50) SetGlobal("Sanleave","LOCALS",1)~ EXIT
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
SAY ~ You are right with everything you say and I hope you will be able to remember me as a friend. Please give this to Sandrah. I must go now. I will return to Radiant Heart Temple and ask them for a replacement mission. May Helm watch and bless your every step - and Sandrah's.~
IF~~ THEN DO ~ GiveItemCreate("SanAjLet","CVSandr",0,0,0) LeaveParty() EscapeAreaMove("AR0903",1730,400,0) RestParty()~ EXIT
END
END

CHAIN
IF WEIGHT #-9 ~ Global("SanHealSAjan","GLOBAL",5)~ THEN C#AjanB SAjanHeal
~ Thank you, la-- , I mean Sandrah. I have noticed your healing me without my need to ask you whenever I am hurt. May this be a special attention I receive from your side?~
DO ~ SetGlobal("SanHealSAjan","GLOBAL",6) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",600)~
==BSANDR ~ If you are so observant, Ajantis, then you should have noticed that my healing skills are applied to all party members in need. *THAT* is not an indication of some special interest in you.~
== C#AjanB ~ Well, yes, you are right. You are taking care for us all in an exemplary way. Now, did your answer mean, that there is another kind of interest you may have in me?~
== BSANDR ~ Oh, sweet paladin, do not try to appear so innocent. We both know what could once have been developped between us if things had not gone otherwise...~
== C#AjanB ~ You mean if you would have decided to change your ways to something more...ladylike...oh, no, that is not the right expression - I mean, you are a lady through and through - just not like...~
== BSANDR ~ ..not like the average empty headed giggling young debutante from the Waterdeep noblesse, with nothing on her mind than finding the *representative and adequate* husband like her mother and her grandmother before her.~
== C#AjanB ~ You have a way to express things, Sandrah, that leaves me speechless, you know that well. But probably you learned these outspoken ways from your father who is known to astound people by his directness that sometimes can hurt as well.~
== BSANDR ~ And which is the truth nevertheless. Ajantis, you have become a man of the road now yourself. Admit that often the situations we face require this directness and this resolute actions. If you really wanted to spend your life with smalltalk and courtesy, the order would surely have some adequate missions for you.~
== BSANDR IF~Global("SanRomPath","GLOBAL",2)~THEN~ I really think you know yourself too little. Be honest, Ajantis, do you not sometimes admire <CHARNAME> or me for the way we directly deal with the heart of the matter?~
== BSANDR IF~Global("SanRomPath","GLOBAL",1)~THEN~ I really think you know yourself too little. You  would not be happy with a woman who is just decoration to a nice home - where you would not stay that long anyway...~
== C#AjanB ~ Mylady, what I admire in you, is that you seem to be capable of both. You are a noblewoman at heart and by your actions but without the empty facade those ladies in Waterdeep show the world while there is nothing behind it in reality. And you are as well capable to outshine any of them with your beauty and your manners - whenever you choose it.~
== BSANDR ~ Thank you, paladin. There is still hope for you. Your words really show you get the notion of a world that is not so orderly and black and white as you once thought. Open your eyes, Ajantis, your eyes, your mind and your heart to see what life really means.~
== C#AjanB ~ Is there a chance, Sandrah, that I can hope for some guidance from your side in this?~
== BSANDR ~ (Laughs) You are already receiving it, sweet paladin, at this very moment. (Gives Ajantis a kiss on the cheek before she whirls away to her next task.)~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",2)~ THEN C#AjanB AjanHelm
~(Ajantis glances questioningly at Sandrah~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",5)RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",2100)~
== BSANDR~ Have I disturbed you with my actions once again, my paladin hero?~
== C#AjanB ~ Not so much disturbed as rather puzzled I would say.~
== BSANDR ~ My friend, let me help you to *unpuzzle* you. Just tell me what the matter is.~
== C#AjanB ~ It is about your really lax relation to your goddess and the relation to Helm.~
== BSANDR ~ Ajantis, let us stay friends and not talk about religion, please.~
== C#AjanB ~ Sandrah, we cannot be friends if we continously avoid such a crucial issue between us, do you not think so?~
== BSANDR ~ (Sigh) I think you are right, even though we may never resolve our different views. Nevertheless you have my interest awakened.~
== C#AjanB ~ I will leave your dealing with Mystra aside as we both know well the family relations that lie behind that. Now what I have come to observe is rather, that your actions and opinions would suit a follower of Helm quite well. Actually I think you do more that would please the Vigilant One than many of his self-appointed followers.~
== BSANDR ~ Ajantis, that is so absurd, that it starts to become really interesting. Please continue with your *analysis*.~
== C#AjanB ~ Maybe in a moment you will not think of it as so absurd anymore. This is what I see, mylady, when I compare your actions to Helm's rules.~
= ~ Helm says: *Never betray those who trust you.* You see, Sandrah, you fully comply with that.~
= ~ *Be fair and diligent in the conduct of your orders.* You never fail to act this way.~
= ~ *Protect the weak, poor, injured, and young; do not sacrifice them for others or for yourself.* Do I need to name the examples for your acting exactly this way. Would you not rather sacrifice yourself than to see anyone suffer for you?~
= ~ *Demonstrate excellence and loyalty in your role as a guardian and protector.* If that is not what you do to <CHARNAME>, then I am the blindest fool on Toril.~
== BSANDR ~ Now before I am accused of being a Helmite, please tell me where I fail, my paladin.~
== C#AjanB ~ (Laughs) Sandrah, is that not obvious. Helm requires his follower's strict obedience to his rules. (Laughs again) Despite all your virtues, Sandrah, two words are surely not existing in your dictionary, *obedience* and *rule*.~
== BSANDR ~ So what is the result of this? Duty to one's cause does not require Helm or any other god at all. Do not let your vigilant one get notice of such blasphemic thoughts, I really fear for you, sweet paladin.~
== C#AjanB ~ (Ajantis shakes his head but seems to be far from angry) Sandrah, I knew you would find a way out of my trap for convincing you of your calling to Helm. (He becomes very stern for a moment.) Not everybody has such a strong and unbendable character as you, Elminster's daughter. There are many who need the help and supervision of Helm to act like you act out of your own strength.~
== BSANDR ~ (As all conversations between Sandrah and Ajantis this one ends with Sandrah putting her arm around the paladin's neck to bend him down to her before he kisses him on the forehead.)~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",6)~ THEN C#AjanB AjanMyst
~Ehem, eh, Sandrah?~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",8) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",2600) ~
== BSANDR~ If you look at me like that, Ajantis, it is again something that has to do with religion. Fine. I agree that the topic is unavoidable between a paladin and a priestess of different gods.~
== C#AjanB ~ Sandrah? I am relieved that you do not reject the topic anymore. I would really ask you about your current relation to Mystra. When we last saw each other in Waterdeep, I had the impression that you were fighting hard not to follow the way that everybody was expecting of you. I mean to become Mystra's priestess alongside  your father.~
== BSANDR ~ Mystra is among all the gods of Toril the goddess that allows their followers the most freedom in their own decisions. I am not obliged to follow strict rules like those of Helm. Actually, there is nothing that Mystra could demand from me, that I would not do anyway.~
== C#AjanB ~ I already pointed out last time, that you do as much good as many followers of Helm would wish to do. Now you say, that Mystra does not directly provide you with the motives to do so as well. So what guides you then, Sandrah?~
== BSANDR ~ I have not confirmed that Mystra is not a guidance to me. All I said is that her rules and instructions are not expressed in clear commands, but are something that you find in your own heart and mind.~
= ~ Remember what you learned about Mystra, or rather about Midnight. She was an adventurer and cleric of pure heart. Due to her own interpretation of what was right and good, she was chosen by Ao at the Times of Trouble to help him destroy the renegade gods. Ao, the Lord of Lords, chose her, the human adventurer, instead of other gods.~
== C#AjanB ~ Except for Helm. Ao put Helm beside the adventurers on the holy task.~
== BSANDR ~ (Smiles at Ajantis) You see how Midnight and Helm have worked hand in hand and succeeded to bring back peace to the troubled Toril. (She takes his hand.) And here are we, hand in hand, following their example to bring peace once again to these troubled times.~
== C#AjanB ~ (Ajantis keeps Sandrah's hand in his own and smiles back.) I like this view on our mission, even if we do not deal with fallen gods this time.~
== BSANDR ~ (Sandrah stops their walk abruptly.) Who says we do not?~
== C#AjanB ~ What do you mean, Sandrah?~
== BSANDR ~ What? Oh, I am sorry, Ajantis, forget my words, I got carried away by my thoughts somehow. (She silences any possible response in her usual way - with a kiss on the perplexed paladin's mouth.)~
EXIT

CHAIN
IF ~ Global("SanAjantWDEntry","LOCALS",1)~ THEN C#AjanB AjanWDentry
~Please, on a word, Sandrah~
DO ~ SetGlobal("SanAjantWDEntry","LOCALS",2) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",1200)~
== BSANDR~ Does it make you nervous to enter our hometown so unexpectedly today, Ajantis?~
== C#AjanB ~ Nervous?...mmh,..no...yes. Oh, mylady, you read me like an open book, Sandrah!~
== BSANDR ~ Well, maybe nervous is not the right word, sweet paladin. I know how you like to return to Waterdeep - you do not want to be seen with me in public however.~
== C#AjanB ~ Oh, no, that is a bit harsh, Sandrah. Your presence is nothing to be hidden or to be ashamed of - really the opposite. I truely adore you. It is only...well...you are so spontanious and overhwelming sometimes.~
== BSANDR ~ And you want me to behave and keep my feelings hidden while in our hometown?~
== C#AjanB ~ Please do not misunderstand me, sweet priestess...it may be a bit early to let get people here get the wrong impression - about us...I thought you would understand, Sandrah.~
== BSANDR ~ I understand very well, Ajantis. I will be the epitome of a lady while in Waterdeep, I swear it.~
== C#AjanB ~ I had not intended to hurt your feelings with my request.~
== BSANDR ~ (Instead of an answer Sandrah kisses the perplexed paladin passionately.) So - we have a deal. I will not do such things while in Waterdeep. This priestess of Mystra has a reputation to loose here as well. (Laughs and kisses Ajantis again.)~
== C#AjanB ~ ...will I ever understand this quicksilver girl?~
EXIT

CHAIN
IF~ Global("SanHelmDogmas","GLOBAL",9) ~ THEN C#AjanB AjanExpla
~(Sandrah walks beside Ajantis and has taken his hand in hers in a totally natural way.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",11) ~
== BSANDR~ You are very silent recently, my paladin hero. ~
== C#AjanB ~ (The paladin does not reject Sandrah's nearness and seems quite relaxed by it.)~
=~ I have many confusing feelings in a kind of internal war going on, Sandrah. I think you know best of all the reasons for that.~
== BSANDR ~ Yes, Ajantis. And I am afraid it will not be resolved very soon.~
== C#AjanB ~ You have feelings for me too, Sandrah, am I right.~
== BSANDR ~ Is that not obvious, my sweet hero. And they disturb me not less than they disturb you. It is not what I expected our relationship to be. I had a clear picture of you when I left Waterdeep and initially you confirmed it, when we met again. But is has changed bit by bit.~
== C#AjanB ~ As often, Sandrah, you describe my feelings better than I could. As much as I admired you back then, you were not the woman that would ever fit in my expectations of the woman at my side. Back then.~
== BSANDR ~ I know very well. You mean that docile little housewife, the decorative pride of the mighty hero, the keeper of his house and mother of his children. A weak damsel to be protected and fondled. You do not intend to tell me you have changed your views on that.~
== C#AjanB ~ (Laughs nervously) Strangely enough that almost describes it, even if I really hear your sarcasm well. And you are probably the woman that is farthest away from that expectation.~
== BSANDR ~ (Smiles at the paladin) As far as a paladin with such a view on womanhood is from the expectation I have for the man at my side.~
== C#AjanB ~ But still...~
== BSANDR ~ Yes, but still...~
== C#AjanB ~ The heart is a strange thing indeed. Nothing is as it should be, but...~
=~ (He stops abruptly and takes Sandrah in his strong arms.) I cannot help it...~
=~ (He kisses Sandrah almost violently and she responds with a hungry passion. A moment later Ajantis has turned and leaves out of sight in a hurry. He hovers in deep contemplation at the edge of the group for the rest of the day, avoiding to even glance at Sandrah.)~
EXIT

CHAIN
IF ~ Global("SanAjkilBant","GLOBAL",1)~ THEN C#AjanB AjKilInt
~M'lady Sandrah?~
DO ~ SetGlobal("SanAjkilBant","GLOBAL",2) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",1200)~
==BSANDR ~ Sandrah, Ajantis, just plainly Sandrah. We are comrades in arms, friends. So what is bothering you at this moment?~
== C#AjanB ~Your perception of the fighting we do, of all this killing. I have observed you - I mean as far as the heat of a battle allows such a thing. You are quite different from all other fighters I have observed, apart from the fact of course that you are better as any I have seen before.~
= ~ I know you will not take it as a compliment of course. You do not seem proud of what you do in battle, not like others of our party.~
==BSANDR ~ Philosophy for philosophy's sake, my friend, or real interest in the one you want to discuss it with?~
== C#AjanB ~Yes. - I mean, yes, both. I want to learn about your motivation. ~
==BSANDR ~ I do what needs to be done. Too easy? Well, it would sum it up quite well nevertheless. But to satisfy you, I must add more detail, right?~
= ~ Fighting itself is an art. Do not look at me so sceptical, my friend. I really mean what I say. It is an art involving both the body and the mind. It includes force and power, but also tactics, and a bit of reading your enemy's mind in the blinking of an eye. All of that is challenging and arousing. But we both know, it does not end with that.~
= ~ You could say, the arena would be the place for me. It is not. It is a show and a carnival at best, or a bloody exploit at worst. It has no worthwhile motivation. ~
== C#AjanB ~You hate the killing, right Sandrah. Somebody looses his one and only life at the end of the challenge and that overshadows everything else.~
==BSANDR ~ You understand it well. We can congratulate ourselves in the end, saying that we once again have crushed evil. And that is true most of the time, and it may be satisfactory for some of us.~
== C#AjanB ~Not enough for you? Is that not the most worthy goal, Sandrah?~
==BSANDR ~ It would be, if our definition of evil is true and it would be, if there would exist no other means to stop evil. But you know as well as I know it is not so, there is not only black and white in this world - even for the view of a helmit.~
== C#AjanB ~You were right. You do what needs to be done. But many questions are left open. It soothes me that I am not the only one that is seeking for answers where many people stop at the first idea that pleases their mind. ~
==BSANDR ~ You are right, my friend. I am a seeker. I am the daughter of the most famous seeker of the Realms. I can assure you that even he still has a lot of questions. But one great thing I have learned from him is that we nevertheless can do a lot of things and be sure that they are at least not wrong.~
== C#AjanB ~ Thank you for that, Sandrah.~
EXIT

CHAIN
IF ~ Global("SanHelmDogmas","GLOBAL",13) ~ THEN C#AjanB AjanAfKi
~(Ajantis seems to be lost in deep thoughts as Sandrah approaches him.)~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",14) RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",2200)~
== BSANDR~ As you are trying to avoid me, Ajantis, it seems to be up to me to take up our thread. (Her smile would melt the Ice on the Spine of the World.)~
== C#AjanB ~ I have already broken so many principles and oaths I had made to myself because of you, Sandrah. It cannot get any more worse.~
== BSANDR ~ Where is the galant paladin? I feel almost like I were an uncurable disease. If only I would not understand you so well...~
== C#AjanB ~ Forgive me, Sandrah, yes, the galant paladin is all in tatters. Uncurable indeed. But I see how selfish I am. I think only of my own dilemma and forget all about how you must feel.~
== BSANDR ~(Sandrah has sat down close to the paladin. Her hand lies gently on his knee.) I am not feeling that bad, my poor sweetheart. Confused and unsure of how we will go from here, yes, but see, I am open to anything that might happen between us. It is more your peace of soul that is currently on my mind.~
== C#AjanB ~Always the gentle healer, Sandrah, but like you said, there may be no cure for this.~
== BSANDR ~And maybe none is needed. You have already learned to open yourself to new possibilities that were unthinkable for you just two moons past. I am not expecting you to propose to me just because you have kissed me. As you know quite well, I am none of those Waterdeep girls you have known. Let us just learn and explore this together.~
== C#AjanB ~But there is responsibility, Sandrah, we cannot just...~
== BSANDR ~Yes, we can! I am responsible for whatever happens just like you. I am not the little kitten that needs your protection.~
== C#AjanB ~ Persuader, sweet devilish persuader...(He has already leaned over to her for a passionate kiss.)~ DO ~ StartCutSceneMode() SmallWait(4) FadeToColor([20.0],0) Wait(4) FadeFromColor([20.0],0) EndCutSceneMode() ~ EXIT

CHAIN 
IF ~ Global("SanHelmDogmas","GLOBAL",15) ~THEN BSANDR AjaNTM
~  Such a peaceful night and such a mild weather, so rare at the Sword Coast back home.~
DO ~ SetGlobal("SanHelmDogmas","GLOBAL",17)RealSetGlobalTimer("SanHelmDogmasdel","LOCALS",ONE_DAY)~
== BSANDR ~Tell me your thoughts, dear.~
== C#AjanB ~ Would you mind to take a little walk with me, Sandrah, and enjoy the beauty that ends this day?~
== BSANDR ~ Eagerly. I will not put on my armour again, Ajantis, with my paladin by my side I fear nothing from the night.~
== C#AjanB ~ Unless perhaps the paladin himself.~
== BSANDR ~ There are some dangers in life and there are some others. Sometimes you just have to take some risk or you will win nothing.~
== C#AjanB ~ Are you talking about something other than goblins or wolves, sweet Sandrah? The dangers that come from inside of us, perhaps?~
== BSANDR ~ Can they be really dangers if they come from our hearts, Ajantis. Provided, of course that heart is not a black one - which I would exclude in our cases. ~
== C#AjanB ~ Do you mean to say that anything that our heart dictates cannot be dangerous?~
== BSANDR ~ Disturbing maybe - sometimes foolish - light hearted, if we talk of me - but dangerous? I would deny that.~
== C#AjanB ~ I have followed your counsil, Sandrah, I have listened to my heart. I am not sure there is not some danger in what it tells me.~
== BSANDR ~ Still talking of danger, not of risk, darling?~
== C#AjanB ~ Tell me truely, Sandrah, do you love <CHARNAME>?~
== BSANDR ~ Yes, I do.~
== C#AjanB ~ But - but you stand here with me, holding my hand, wearing nothing but this teasing, eh, nothing, and encourage me in any way to think you love - me.~
== BSANDR ~ Yes, I do.~
= ~ You see, you took the risk and you have won. The danger is gone. The night is getting a bit chilly, my galant paladin, I need your embrace to keep me warm now. (She slings her arms around Ajantis and hugs him tightly.)~
== C#AjanB ~ (He follows Sandrah to the starlit groove where they embrace each other long and passionately. You can hear them murmur between their kisses for a long time. But you still hear her words resounding in your ears - she loves you.)~ DO~RestParty()~
EXIT

CHAIN
IF~Global("Throwflowers","LOCALS",1)~THEN C#AjanB Aftwed1
~(Sigh) A happy day but still not one to celebrate as we should.~
DO~SetGlobal("Throwflowers","LOCALS",2)~
== BSANDR ~Congratulations from all my heart to both of you.~
=~ (She kisses you and then moves to Ajantis and kisses him.)~
=~ You have my word, <CHARNAME>, that was the last time I kissed your husband.~
== C#AjanB ~We have understood that well, Sandrah. I have not forgotten all the things you did for us - and just let me add, you are not fully innocent that we can celebrate this happy occasion today.~
== BSANDR ~It is customs in Waterdeep that the bride will throw her Bridal Wreath over her shoulder for all the unwedded girls to catch it. The one who grabs it will be the next bride, so they say.~
== C#AjanB ~Are you hoping for it yourself, Sandrah? I can't believe it actually...~
END
++~(You throw the flowers over your shoulder without taking care who might have the best chance to catch them.)~ + Aftwed2
++~ (You throw the flowers over your shoulder trying to target at the position you remembered Sandrah to stand.)~ + Aftwed2
++~ (You throw the flowers over your shoulder trying to target farthest from the position you remembered Sandrah to stand.)~+ Aftwed2

CHAIN
IF~~THEN C#AjanB Aftwed2
~Let's see who is the lucky one...~
==BIMOEN2 IF~InParty("Imoen2")~THEN~Ouch, thorny bastards, coulda have warned us of that. Means I'll be the next bride? Ah, who believes in such mumbojumbo ol' folk's customs anyway, he?~DO~TakePartyItem("c#kranz")~
==BViconi IF~!InParty("Imoen2")InParty("Viconia")~THEN~ Pfuh!! Why did you throw these flowers at me? Surfacers are more silly than I'd ever thought. Marriage idiocy proves it better than anything. Bah...nevertheless, get happy, you two. You deserve each other in your mediocrity.~DO~TakePartyItem("c#kranz")~
==BAerie IF~InParty("Aerie")!InParty("Imoen2")!InParty("Viconia")~THEN~ Me? - who would ever swear an oath with a wingless creature like me?~ DO~TakePartyItem("c#kranz")~
==IF_FILE_EXISTS MWBarn IF ~!InParty("Imoen2")!InParty("Viconia")!InParty("Aerie")InParty("MWAriena")~THEN~Useless salad, not good eating. (She rumples the Wreath into a ball and throws it into a nearby fountain.)~DO~TakePartyItem("c#kranz")DestroyItem("c#kranz")~
==BNalia IF~ !InParty("Imoen2")!InParty("Viconia")!InParty("Aerie")!InParty("MWAriena")InParty("Nalia")~ THEN~ Bah, the groom's name will definitely not be Roenall!~ DO~TakePartyItem("c#kranz")~
==IF_FILE_EXISTS BYASRAEN IF~!InParty("Imoen2")!InParty("Viconia")!InParty("Aerie")!InParty("MWAriena")!InParty("Nalia")InParty("YASRAENA")~THEN~(She mumbles dreamily) Divalir, yes, I swear.~ DO~TakePartyItem("c#kranz")~
==CVWedGi IF~!InParty("Imoen2")!InParty("Viconia")!InParty("Aerie")!InParty("MWAriena")!InParty("Nalia")!InParty("YASRAENA")~THEN~Hurray, I knew it...Samsden will propose to me any day now. And I'll say yes and yes for sure!~ DO~TakePartyItem("c#kranz")~
==BSandr~(You see Sandrah standing right next to the girl with the flowers. With her fast reactions she could easily have caught the flowers herself. She just gives you one of her inpenetrable smiles.) ~EXIT

INTERJECT_COPY_TRANS c#ajan 0 SanMeetAjanBG2
== CVSANDRJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",10)~THEN~ Ajantis!!!
(Sandrah has embraced the perplexed paladin and kissed him on the mouth.)~
==C#Ajan IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",10)~THEN~(Blushes to an almost purple colour.) Eh, ehem, eh, myl..Sandrah, my dear...~
== CVSANDRJ IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",10)~THEN~I am sorry if I have embarassed you - oh, no, I am not - and I have no reason to apologize for my behaviour. I am just happy you are here and well.~
==C#Ajan IF~ InParty("CVSandr") GlobalGT("SanHelmDogmas","GLOBAL",10)~THEN~Well, yes, ehem, I am glad as well to see you in <CHARNAME>'s party, Sandrah. Eh, yes, eh, really, really glad. It is just so confusing - like everything that involves you, my dear.~ END

EXTEND_BOTTOM C#AjanJ 36
IF~InParty("CVSandr")~THEN REPLY~ I will use the guild as a way to effect the proceedings of this town, not for my own personal benefit. I have even Sandrah's support in this matter, just in case you doubt our honesty!~ GOTO SanThieOp1
END

EXTEND_BOTTOM C#AjanJ 37
IF~InParty("CVSandr")~THEN REPLY~ I will use the guild as a way to effect the proceedings of this town, not for my own personal benefit. I have even Sandrah's support in this matter, just in case you doubt our honesty!~ GOTO SanThieOp1
END

EXTEND_BOTTOM C#AjanJ 38
IF~InParty("CVSandr")~THEN REPLY~ I will use the guild as a way to effect the proceedings of this town, not for my own personal benefit. I have even Sandrah's support in this matter, just in case you doubt our honesty!~ GOTO SanThieOp1
END

EXTEND_BOTTOM C#AjanJ 39
IF~InParty("CVSandr")~THEN REPLY~ I will use the guild as a way to effect the proceedings of this town, not for my own personal benefit. I have even Sandrah's support in this matter, just in case you doubt our honesty!~ GOTO SanThieOp1
END

CHAIN
IF~~THEN C#AjanJ SanThieOp1
~Sandrah, is that really true...do I miss some aspect of your common behaviour?~
DO~SetGlobal("C#AjantisThiefStronghold","GLOBAL",5)~
==CVSandrJ~Be assured that this company destroys evil where we find it. But often things are different from what they appear to be at first glance.~
==C#AjanJ~ I trust you very much, Sandrah, and if you follow <CHARNAME> in <PRO_HISHER> action then there might be a cause I do not see. You are <PRO_HISHER>'s counsellor and wouldst deny loyalty to an unjust act. So how come <CHARNAME> leads a thieves guild?~
==BSandr ~ We have destroyed this guild that was led by the evil Mae'Var. <CHARNAME> has taken control of the activities now as the group itself cannot be completely destroyed. Instead of letting another criminal murderer gather these thieves it is now us who lead the activities and thus control them. Admitted, it is not the clear righteous road we are taking, but since we cannot destroy the evil it is the second best solution to control it and minimise the harm done to innocents.~
==C#AjanJ~ Life in these times is more complicated than it appears in Helm's view. I am used to think in good or bad only - so where is this behaviour to be classified?~
== BSandr ~ Sometimes here it is the only way to fight a fire with fire.~
==C#AjanJ~ Or to control the criminals by enforcing your reign over them? I will contemplate on your words, Sandrah, and I thank you for them as I was about to judge <CHARNAME> prematurely.~
=~So shall it be then, <CHARNAME>. You should know, however, that I will keep a close watch on your Shadow Thieves activities in Helm's name.~EXIT
