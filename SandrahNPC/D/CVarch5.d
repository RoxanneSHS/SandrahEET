BEGIN CVARCH5

CHAIN
IF~GlobalGT("SanKhalBlood","GLOBAL",9)~ THEN CVARCH5 Repeat
~(Sigh) You can only access the entries one time.~ EXIT

CHAIN
IF~Global("SanKhalBlood","GLOBAL",9)~ THEN CVARCH5 Bloodline1
~ (Cantankerous) Which one is yours, ha?~
DO~ SetGlobal("SanKhalBlood","GLOBAL",10)~
==CVSANDRJ~ Sandrah, daughter of Khalindra...~
==CVARCH5 ~ Oh, my, I have Simyaz if not Salinithyl...but Sandrah (sigh).~
==CVSANDRJ~Is something wrong with my record, good registrar?~
==CVARCH5 ~(Sighs again) Well, it had to come one day. Nothing is wrong - nothing is ever wrong in the Book. (He takes a deep breath.)~
=~ (Tries a forced smile.) You are pretty small and young for one whose record in the Book is one of the longest of them all. Make yourself comfortable and listen, it will take some time.~
==CVSANDRJ~Well, we are ready whenever you are.~
==CVARCH5 ~Sandrah, daughter of Khalindra, herself daughter of Collinea, who was daughter of Cathreina....~
=~(The voice continues to recite name after name in a monotone sing-song that seems to have no end. You comrades and you doze away slowly...)~
=~ (Only Sandrah listens intensely and it seems as if she learns the endless sermon by heart.)~
=~...daughter of Cerameon.~
==CVSANDRJ~Wait! Cerameon is in my mother's bloodline?~
==CVARCH5 ~I cannot repeat a name I once have issued, such is the rule - but yes, I just said that name.~
END
++~(Slowly you come out of your half-slumber.) Is that the answer you were looking for, Sandrah?~+  Bloodline2

CHAIN
IF~~THEN CVARCH5 Bloodline2
~Sure a heritage to be proud of...~
==CVSANDRJ~Yes, an unexpected find, even if not what I was looking for. <CHARNAME>, do you not remember her name from your history lessons?~
END
++~Now I recall...Cerameon, the famous defender of Westgate! Centuries ago she held the town against the eastern hordes that had marched across the Shining Plains against the Realms. Just herself and a handful of her friends against thousands.~+ Bloodline3

CHAIN
IF~~THEN CVARCH5 Bloodline3
~ Her favourite weapon was her war hammer, not the most ladylike weapon.~
==CVSANDRJ~(Smiling she strokes her own weapon.) Seems to run in the family, as the saying goes.~
==CVARCH5 ~Well, let me continue, we have still a long line to go until we come to the source. So before the great heroine came Mandrigoma, daughter of....~
=~ ...(the flow of name after name continues and lulls you to near sleep once again.)~
=~ ...name after name like a tinkling creek...~
=~.......~
==CVSANDRJ~ WHAT? SAY THAT AGAIN!!!~
END
++~ (You have jumped to your feet as Sandrah's outburst has alarmed you out of your slumber.) What...what has happened?~+ Bloodline4

CHAIN
IF~~THEN CVARCH5 Bloodline4
~ I cannot repeat a name I have once delivered, such is the rule, but your reaction shows well enough you know whose name I gave.~
==CVSANDRJ~ Quilue Veladorn is among my mother's ancestors?~
==CVARCH5 ~The Book contains no errors, so she is in your pedigree as well.~
==CVSANDRJ~(Takes a deep breath.) We can skip the rest then as we know to which source it will lead.~
==CVARCH5 ~(Cheerful) I am most happy to hear that and was happy to have served you...~
==CVSANDRJ~Wait a minute, good archivist. I have spared you the rest of your recital but I ask you for another bit that is in your record.~
==CVARCH5 ~Well, I will do if the rules allow it.~
==CVSANDRJ~Say...taking a reverse glance from the root we now know - how many branches are there?~
==CVARCH5 ~(Almost panicking.) F-f-forty seven - you do not insist of hearing them all?~
==CVSANDRJ~Oh, no, but how many of these branches have still a leave persistent on Faerun this very day?~
==CVARCH5 ~The rule does not allow to repeat names already given.~
==CVSANDRJ~Fine - just omit the ones we heard already.~
==CVARCH5 ~The record is empty.~
==CVSANDRJ~Empty? I thought the infallible book cannot forget anything. Has someone erased parts of it somehow?~
==CVARCH5 ~Lady, none of that is possible. If there is no entry now there has never been one before.~
==CVSANDRJ~ Let me try another attempt. How many entries are there if we take the generation that was before the current?~
==CVARCH5 ~Two leaves had the tree, but I cannot give the names...~
==CVSANDRJ~Yes, yes, because you already gave them.~
=~(Sighs) Thank you, good book keeper, you have done all for me you probably could. Farewell.~ DO~ AddXPObject("CVSandr",60000)~
EXIT