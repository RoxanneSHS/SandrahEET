BEGIN CVSHPRI

IF~AreaCheck("CVSh12")~THEN BEGIN showdown1
SAY~She wants to be the Clan Leader but she sends her outsiders only. When will that slave girl come herself if she has to make any demands?~
=~You will soon be material for the factory, bah.~
IF~~THEN DO~ ReallyForceSpell(Myself,DRYAD_TELEPORT)~EXIT
END

CHAIN
IF ~Global("SanGothSwFound","GLOBAL",5)~ THEN  CVSHPRI NorWoo1
~ Give me the sword, intruders! This here is none of your business.~
DO ~ SetGlobal("SanGothSwFound","GLOBAL",6)~
== BSANDR ~ And who might you be?~
== CVSHPRI~ Again none of your business - none of you is orc?~
== BSANDR ~ You expected that? Are you not in league with those who tried to enter this tomb? Hm, I have the feeling you are rather not interested in General Ghotal's return.~
== CVSHPRI~ Mingle not with orc business that is not your concern. Give me the sword and leave these woods and fields. This is not of any interest to the Sword Coast people.~
END
++ ~ Can you convince us that the resurrection of your mighty leader will not again be a threat to our lands?~ +  NorWoo3
IF ~ Dead("NTGGHOT1")~ THEN REPLY~ We have killed Ghotal's revived corpse already, your sword will not help you in your task.~ + NorWoo2

CHAIN 
IF ~~ THEN  CVSHPRI NorWoo2
~ You may be fools but you are useful fools. If you have killed him, the sword is of no use to anyone but the godchild. Do with it what you want as she will never get it in her hands anyway. As you are not orc it matters little that you are a godchild yourself. You will never meet her and ally with her.~
== BSANDR ~ You have mentioned *her* several times now. Is *she* the new leader to take Ghotal's heritage? Someone you fear more than your former leader himself? ~
== CVSHPRI~ You are an obstrusive and cunning little witch, human-girl. You will hear no more. Make sure those orcs around here do not get Ghotal's weapon to possibly get it to her.~
EXIT

CHAIN
IF ~~ THEN  CVSHPRI NorWoo3
~ You fail to understand, <PRO_RACE>, I am to prevent the return of Ghotal.~
== BSANDR ~ Surely not in the interest of peace with the Sword Coast. Were you among the ones who deceived Ghotal in his final battle? Is that why you fear his return?~
== CVSHPRI~ Again you try to intrude into business that is not yours. Is it not enough that our common goal is to prevent Ghotal's return? I am not interested in your motives and I will not reveal mine.~
== BSANDR ~ This answer was as good as a *yes*. And it means we do not trust you. You have deceived Ghotal in the crucial moment and you will deceive us if it suits you.~
END
++ ~ You have heard her words. You will not get the sword from us. Your case is safe with us, as it should be clear that we will not use the sword to revive your former leader.~ + NorWoo4

CHAIN
IF ~~ THEN  CVSHPRI NorWoo4
~ A valid point. As you are not orc it matters little that you are a godchild yourself. You will never meet her and ally with her.~
== BSANDR ~ You have mentioned *her* several times now. Is *she* the new leader to take Ghotal's heritage? Someone you fear more than your former leader himself? ~
== CVSHPRI~ You are an obstrusive and cunning little witch, human-girl. You will hear no more. Make sure those orcs around here do not get Ghotal's weapon to possibly get it to her.~
EXIT



CHAIN 
IF ~ Global("SanShauOrcStaff","GLOBAL",4)~ THEN  CVSHPRI ShRet
~ The escaped slave girl! You were our champion but now you face a foe too large for your ambitions. You are fool to return.~
DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",5)~
== CVSHAUJ ~ I am not homesick, and I have not come to fight unless I am forced to. I just need the staff to unseal the Hornswamp exit.~
== BSANDR ~ Just give it to us and we will go. We will leave the staff in the caves for you, we have no need for it other than to leave with Shauhana. We can avoid bloodshed.~
== CVSHPRI~ The foolish old teacher taught the godchild too much. You are not to know Clan's secrets. You will not leave alive with Clan's secret.~
== BSANDR ~ Godchild? Are you talking of Shauhana, old man?~
== CVSHPRI~ None of you will leave with Clan's secrets.~
== CVSHAUJ ~ You are the fool, Vennegrat, I do not care for your secrets at all. Give us the staff and we do as Sandrah said. You will not see me ever again.~
== CVSHPRI~ Half-breed words - half-breed lies. Clan's secrets will be sealed, sealed in your dead bodies. ~
EXIT

CHAIN
IF ~ Global("SanShauOrcStaff","GLOBAL",8)~ THEN  CVSHPRI ShRet2
~ I told you you will not escape. This is your end now, Shauhana. Murderer and thief, enemy of the Clan. Your execution will be long and painful.~
DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",9)~
== CVSHAUJ ~ I have paid many years for a crime that was none, but only self-defense. Any orc would be granted that right, even against the own father.~
== CVSHPRI~ You have put crime over crime on you. The outsiders are shown Clan secrets. You steal the holy staff. Your escape ends here.~
== CVSHAUJ ~ I am not alone, Vennegrat, my friends are mighty warriors ready to defend me.~
== CVSHPRI~ Fool. Hundreds of orc arrows are pointed at your hearts. Look round. Your friends can go. You stay for prison and death.~
END
++ ~ We are surrounded. He is right, if they shoot all these arrows, we will all die in vain.~ + ShRet3

CHAIN
IF~~ THEN  CVSHPRI ShRet3
~ You show at least some insight, girl.~
== CVSHAUJ ~ No, they only want me. Do not sacrifice yourself senselessly, <CHARNAME>. It cannot be.~
== BSANDR ~ Psst. Do not worry. <CHARNAME>, you heard Vennegrat's words. They do not intend to kill her very soon, if they get her.~
== CVSHAUJ ~ They will torture me for days, until death will come as a gift for me in the end. But I am ork!! I fear not the pain. I will laugh at them.~
== BSANDR ~ Yes, you will laugh. Listen, this is my plan. Take this. (She slips a small bottle into Shauhana's hands.) Drink it. It makes you invulnerable and immune to any pain and injuries for a half day.~
END
++ ~ This will give us enough time for your rescue. Right, Sandrah?~ + ShRet4

CHAIN
IF~~ THEN  CVSHPRI ShRet4
~ I will not wait longer. Deliver the traitor!~
== CVSHAUJ ~ They will watch you leaving, <CHARNAME>, but I think you will be able to overwhelm the escort they give you.~
== BSANDR ~ Do you have an idea where they will take you?~
== CVSHAUJ ~ Most likely to the prison and torture chamber. It is in a cave in the east of the area we visited. The jailor is a monstreous orc. He will rejoyce when he gets his claws on me.~
== BSANDR ~ Oh, my poor friend. Be sure we will be there before he can do you any harm. The potion will help you until then.~
== CVSHAUJ ~ I am orc! I have no fear. But I have something that these orcs cannot imagine in their little minds - I have friends.~
END
++ ~ Right! They cannot imagine that friends do not run away to save their own skin. They will not be prepared for us to return and free you. The surprise is our most effective weapon.~ + ShRet5

CHAIN
IF~~ THEN  CVSHPRI ShRet5
~ Make up your mind, <PRO_RACE>! The girl or death?~
== BSANDR ~ We will be there in time.~
== CVSHAUJ ~ I know.~
END
++ ~ Take her and let us go. So be it.~
EXIT

CHAIN
IF ~ Global("SanShauOrcStaff","GLOBAL",12)~ THEN  CVSHPRI ShRet20
~ Impertinent fools. You had your chance but your <PRO_RACE>'s friendship nonsense tricked you. The godchild is doomed and so are you. ~ 
DO ~ SetGlobal("SanShauOrcStaff","GLOBAL",13)~ EXIT