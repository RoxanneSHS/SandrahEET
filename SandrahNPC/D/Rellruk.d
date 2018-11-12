BEGIN Rellruk

CHAIN 
IF ~NumTimesTalkedTo(0) ~THEN RELLRUK Rell1
~Rellruk has knowed. Red Head would come and find!~
== Bimoen ~Red Head comes and finds and kills nasty orc boss, ha! Gotcha! If you were a cleverest orc and you knowed I was coming, you'd better had my Henning here to give me.~
== RELLRUK ~Boss Knowlod boss for more orcs. He keep man. Bring to Davaeorn.~
== Bimoen ~Good of boss Knowlod  'cause you wanted to kill my sweetheart. But I am gonna slice you up now, slowly and slowlier, so you can feel any tiny bit of pain, you..you..you ORC!~
END
++ ~(Bluff) Hold on for a second, Imoen, let us torture this orc a bit, so he can give us information about this Devern or Daeworn guy. I promise, Imoen you can do all you want with him, just do not kill him too early. ~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Rell2
++ ~So Davaeorn is the one behind this kidnapping. What else do you know? Speak and we may hold back Red Head for a minute so you can run.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+Rell2

CHAIN
IF ~~THEN RELLRUK Rell2
~Ha, idiots. You torture orc. Be orc is one torture all life. Scare me nothing. If Rellruk or Knowlod know where Davaeorn we all go there and no fight. ~
== BSANDR ~But you were to deliver the man to Davaeorn, right, so you must know where to find him? ~
==RELLRUK ~Knowlod think he clever, can find Cloakwood Mine without Tazok. But only Tazok know way. Knowlod too much greedy, want not share.~
END
++ ~At least we have a name now, we already know. The row of man behind man seems to be endless.~+ Rell3

CHAIN
IF ~~THEN RELLRUK Rell3
~Ha,ha, you need Rellruk. Must find Tazok to find Cloakwood Mine and young man. But only Rellruk know where find Tazok.~
== Bimoen ~Ha, ha, yourself, you orc clown, we do not need you to find the bandit camp, we already know.~
==RELLRUK ~Never find - never find inside - you need Rellruk.~
== BSANDR ~In this chain of command everyone only knows the next one above. Clever in some way, but it also gives us a chance to destroy them one by one. Our enemy may be too slow in reacting to us, and once he finds how far we have come, he will also be lacking his basis.~
== Bimoen ~Good! In the end we have him alone. He will pay for every bit and bit. And then he will pay for Henning one more time everything again.~
END
++ ~What do we do with this useless orc now? We cannot let him go to warn the whole camp of bandits. We must go about more secretly.~+ Rell4
++~First we must prevent Rellruk from sounding the alert in the bandit camp. We will probably not be strong enough for a frontal assault. We must slowly infiltrate Tazok and his men without their being warned.~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ Rell4

CHAIN
IF ~~THEN RELLRUK Rell4
~You not decide. Rellruk be gone~
DO ~ChangeEnemyAlly("Rellruk",ENEMY) MoveToPointNoInterrupt([1300.1760]) ~
EXIT

