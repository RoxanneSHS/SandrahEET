EXTEND_TOP Lothan 1 #1
IF~Global("CVLotPlot","GLOBAL",0)InParty("CVSandr")~THEN REPLY ~I have the Sword Coast's most experienced healer in my party, scum. Your little intrigues cannot threaten me.~GOTO 3
END

CHAIN
IF WEIGHT #-7~Global("CVLotPlot","GLOBAL",1)~THEN BSandr CVLotwy1
~(While you still recover from your sickness, you observe that Sandrah has moved up to <PLAYER4> and with gloved fingers collects some of the vomit into a satchel while holding her nose shut with her other hand.)~
=~(She only starts breathing again after she has sealed the satchel into another layer of cloth and stowed it away in her backpack.)~
DO~SetGlobal("CVLotPlot","GLOBAL",2)~
END
++~Uuurgh, disgusting...~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ CVLotwy2
++~What was that for? Some mad healer's interest?~DO~IncrementGlobal("Sanpoints","GLOBAL",-1)~+ CVLotwy2
++~Are you trying to find a cure for our state by this, counsellor?~DO~IncrementGlobal("Sanpoints","GLOBAL",1)~+ CVLotwy2

CHAIN
IF~~THEN BSandr CVLotwy2
~I dislike this as much as you do - but it is absolutely necessary.~
=~This stuff needs to be analysed in order to find a cure for the poison that obviously was manipulated into our food.~
END
++~Do you think you can find a cure for it, Sandrah?~+ CVLotwy3
++~Forget it, Sandrah. I have erred in those Iron Throne bastards. I should have taken Lothander seriously and not endangered our party. We will hear them out now and not risk anything.~+ CVLotwy3

CHAIN
IF~~THEN BSandr CVLotwy3
~It may be the best for us to cooperate with Lothander and Marek - as much as I hate to be blackmailed by such people. Still, I *may* be able to find us a cure but I am not sure if we have enough time for it. Lothander spoke of a tenday until the poison will kill us.~
END
++~As long as there is a reasonable chance to avoid giving in to those scoundrels I am willing to follow your advice.~+ CVLotwy4
++~I hear the doubt between your words. I think it is best to accept the unavoidable and return to Lothander for the deal.~+ CVLotwy4

CHAIN
IF~~THEN BSandr CVLotwy4
~I need outside help anyway to identify the nature of the poison. The only person around here with the equipment to analyse my sample would be Thalantyr at the High Hedge. ~
=~Once he has identified what has been given to us, I can counsel you on a possible cure. We may then decide to persue that possibility or to return to Lothander.~
END
++~I agree, we still have enough time for this consultation and we will make a decision when we know the facts.~DO~SetGlobal("CVLotPlot","GLOBAL",3)~ EXIT
++~No, I will risk nothing. There are too many *if* and *when* in your strategy. Let's face the sad truth and cooperate with Lothander.~EXIT
++~As long as there is a solid chance to avoid the blackmail we should take it. Let's consult Thalantyr immediately.~DO~SetGlobal("CVLotPlot","GLOBAL",3)~ EXIT

EXTEND_TOP Thalan 35 #3
IF~Global("CVLotPlot","GLOBAL",3)InParty("CVSandr") !Global("PartyCured","GLOBAL",1)~THEN REPLY ~We have been poisoned, Thalantyr! My counselor and healer Sandrah has proposed to seek your advice.~GOTO CVLotwy5
END

EXTEND_TOP Thalan 1 #3
IF~Global("CVLotPlot","GLOBAL",3)InParty("CVSandr") !Global("PartyCured","GLOBAL",1)~THEN REPLY ~We have been poisoned, Thalantyr! My counselor and healer Sandrah has proposed to seek your advice.~GOTO CVLotwy5
END

CHAIN
IF~~THEN Thalan CVLotwy5
~Bad news...but Sandrah knows well I am not a healer. If she cannot help you how could I?~
DO~SetGlobal("CVLotPlot","GLOBAL",4)~
==CVSandrJ~What we need from you is an alchemist's analysis of the poison we have been subjected to. I first need to know its nature before I can design a cure.~
==Thalan~Ah, that makes sense...but how can I do it while it's still inside you...without, eh, doing any of you serious harm?~
==CVSandrJ~Oh, I have a sample of it right here...~
==Thalan~(Without any hesitation or sign of disgust the old mage opens Sandrah's satchel and starts his investigation. Applying several substances to the sample and examining it change colour to ever new nuances in the spectrum he utters a series of) Aah...Ooooh...~
=~Uuu?....I see, I see...~
=~Well, Sandrah, someone dislikes you and <CHARNAME> enough to make your death absolutely painful and - certain.~
==CVSandrJ~You know what it is then?~
==Thalan~Yes, it's the extract of a Wyvern sting - not the common one, but the Great Poisonous Wyvern.~
==CVSandrJ~Good!~
==Thalan~Good?~
END
++~Good?~+ CVLotwy6

CHAIN
IF~~THEN Thalan CVLotwy6
~If your healer says so, I propose to trust her. Sandrah?~
==CVSandrJ~Now that we know what it is, I know how to cure it. We need a *simple* antidote to be healed.~
==Thalan~I don't like the way you pronounced the word *simple* here.~
==CVSandrJ~The production of it is indeed simple and then we just have to sip a mouthful of it - once we have the ingrediences.~
==Thalan~Ah - that's the issue then. The ingredients.~
==CVSandrJ~Two of them are easy to gather...Holy Water and Aescalus Herb. Those two are needed to compensate the main ingredience and turn the poison against itself and into a cure.~
==Thalan~That main ingredient being what?~
==CVSandrJ~A pure sample of the poison itself, the extract of a Great Poisonous Wyvern's sting.~
==Thalan~Not something you can buy in any store along the Sword Coast, as far as I know.~
==CVSandrJ~The only one to provide us with it that I can think of is the beast itself.~
END
++~Do I get that right, Sandrah, we need Holy Water and Aescalus Herb - and then we need to find and defeat a Great Poisonous Wyvern? That's all?~+ CVLotwy7

CHAIN
IF~~THEN Thalan CVLotwy7
~That's what she said. ~
==CVSandrJ~We need the water and herb before we can go hunting, <CHARNAME>. I can only prepare the antidote within some minutes after we have killed the beast, otherwise the essence will lose its power inside the dead body.~
==Thalan~You seem to mean what you say, my girl. Only - I have never seen one of those beasts you seek all my lifetime.~
==CVSandrJ~(Laughs) You have probably never been too deep into the Cloakwood, my friend.~
=~I am sure we can find one there sooner or later. My only concern is the time pressure we are under.~
END
++~If this is the case, let us make haste to get those things and kill that beast!~DO~SetGlobal("CVLotPlot","GLOBAL",5)~EXIT
++~We know where to buy those things and we know our way through the Cloakwood by now. Let's go.~DO~SetGlobal("CVLotPlot","GLOBAL",5)~EXIT
++~It was a valid attempt, Sandrah, but our time is nearly up. We will not achieve this goal in time. Let us take the Lothander offer.~EXIT

CHAIN
IF WEIGHT #-7~Global("CVLotPlot","GLOBAL",9)~THEN BSandr CVLotwy9
~(Sandrah expertly mixes the other ingredients to the poison and shakes the corked bottle a few times. You see the liquid change its colour from the poisonous green to transparent.)~
=~The only way to convince you all that this is medicine is by doing this...~
DO~SetGlobal("CVLotPlot","GLOBAL",10) SetGlobal("PartyCured","GLOBAL",1)~
=~(She takes and swallows a mouthful of the liquid.)~
=~Aah...good.~
=~(She hands you the bottle.)~
END
++~(You follow her example and then hand the bottle to <PLAYER5> next to you who sips and hands it to the next until everone has taken their share.)~EXIT
++~(You hand the bottle to <PLAYER6> next to you who drinks and hands it on to the next. Finally the bottle with the last sip in it ends up with you again.)~+ CVLotwy10

CHAIN
IF ~~THEN BSandr CVLotwy10
~(Sandrah laughs) We are all alive and feeling well, little coward.~
END
++~Well...(You swallow the stuff.)~EXIT


