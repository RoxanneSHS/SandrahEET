
CHAIN
IF~Global("SanHealTamok","LOCALS",1)~THEN TamokoJ SanHeal
~By Bane's black hand! I need none of your Mystra spells for healing, priestess!~
DO~SetGlobal("SanHealTamok","LOCALS",2)~
==BSandr~Well, dead Bane cannot give you the power for your spells any more. Who is it, Iyachtu Xvim, Bane's son?~
==TamokoJ~That's not your concern, I won't talk to a slave of (spit) Mystra about this.~
==BSandr~Had Sarevok succeeded and become God of Murder, that might have provided you with a new deity to follow.~
==TamokoJ~Shall I kill you or ignore you, girl. I have not decided yet, maybe <CHARNAME> gets us rid of you soon enough. It will not take long for <PRO_HIMHER> to realise that <PRO_HESHE> can't advance with you standing in the path to the Throne of Bhaal.~
==BSandr~Ha, so that is what you expect to gain from following <CHARNAME>. I was suspecting something like that.~EXIT

CHAIN
IF~Global("SanHealTamok","LOCALS",3)~THEN TamokoJ SanXvim
~So,I heard that your Midnight turned goddess Mystra was involved in eliminating the Dead Three.~
DO~SetGlobal("SanHealTamok","LOCALS",4)~
==BSandr~She defeated Myrkul herself. She was with Cyric and Adon when Bhaal was slain. She was also involved when her party sided with Torm to kill Bane.~
==TamokoJ~Nothing is permanent, priestess, victories and defeats are temporary events in history's flow.~
==BSandr~You may hope that Bhaal will return and if not by the name of Sarevok then by the name of <CHARNAME>. I assure you that it will not happen.~
==TamokoJ~Bhaal was not the only god to foresee his end. What about Mystra, executed by Helm during the Time of Troubles? Did she not prepare Midnight for a long time to take her cloak one day?~
==BSandr~You do not fool me, Tamoko. It is your contingency plan that is far more interesting. Iyachtu Xvim, Bane's son...~
==TamokoJ~Shut up, you know nothing!~
==BSandr~Do I not? Is he not just a cocoon that preserves some of Bane's essence. Do not some of his former servants hold such essence that it may one day return to Xvim until enough is gathered for Bane's return.~
==TamokoJ~Heretic dilettante, don't speak of things your tiny brain cannot comprehend.~
==BSandr~Whether is is Bhaal or it is Bane, you want to be on the winning side. Your ambitions will be your downfall, Tamoko, since none of the two will happen.~
==TamokoJ~Bah! You try to sound as if you or your Mystra would be able to prevent it. Mystra failed before and will fail again.~EXIT
