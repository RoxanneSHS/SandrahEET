BEGIN CVJenHu1
BEGIN CVJENHU2
BEGIN CVJen25J

IF ~IsGabber(Player1) Global("Melissanjob","GLOBAL",1) ~THEN BEGIN JenPCInit25
SAY ~(Jen'lig's emotionless reptile-like face awaits her *commander's* words.)~
IF~Global("Badtiming","LOCALS",0)~THEN REPLY~It looks like you traded the turmoil of your home plane for a similar situation on the Prime.~DO~SetGlobal("Badtiming","LOCALS",1)~GOTO TwoOdds1
IF~~THEN REPLY~It's good you found your way back to us, Jen'lig.~GOTO Bestplace
IF~Global("SanJenship","GLOBAL",7)~THEN REPLY~I wonder why none of the githyanki sent after you carried a silver sword even though they must have been high ranked enforcers.~GOTO Nosword1
IF~Global("SanJenship","GLOBAL",8) PartyHasItem("CVJenglo") InParty("CVSandr")~THEN REPLY~Are you willing to tell me something of that globe we found on the githyanki ship?~GOTO Minglo1
IF~Global("CVJenTOBRet","GLOBAL",13) Global("Mindglo2","LOCALS",0)~THEN REPLY~Sandrah has told me about your plan to assimilate and replace Vlaakith with the help of your device.~DO~SetGlobal("Mindglo2","LOCALS",1)~GOTO Minglo6
END

IF~~THEN BEGIN Minglo1
SAY~Githyanki Mind Cage. Was to capture Jen'lig's mind power from her for Queen - when enforcers had killed Jen'lig on prime.~
IF~~THEN REPLY~I already learned your race never gives up when they hunt. Why did you keep it?~GOTO Minglo2
IF~~THEN REPLY~A devilish device. Why do you carry it instead of destroying it?~GOTO Minglo2
END

IF~~THEN BEGIN Minglo6
SAY~(Hiss) First Jen'lig will help commander to end Bhaal spook on Prime.~
IF~~THEN REPLY~I appreciate your loyalty, even if now I see you have an additional motif to make our success necessary.~GOTO Minglo7
IF~~THEN REPLY~You help us at the Throne of Bhaal and we will help you afterwards, for sure.~GOTO Minglo7
END

IF~~THEN BEGIN Minglo7
SAY~When Bhaal true end has come, Jen'lig must act quickly. Not time for manlings many words of goodbye and such. Cadre not of help as cannot go to Astral Plane. Mission is for Planewalker who can fight alone if must.~
=~(Hiss) You make Jen'lig task success by making Bhaal dead god forever.~
IF~~THEN REPLY~I understand - in a way these were YOUR goodbye *many manlings words* then.~DO~AddexperienceParty(60000)~EXIT
END

IF~~THEN BEGIN Nosword1
SAY~(Hiss) Queen secured their swords to make sure they return. Also to make sure that Jen'lig not gains one if defeats the hunters.~
IF~~THEN REPLY~Is that usual to do under such circumstances?~GOTO Nosword2
IF~~THEN REPLY~Did she mistrust the own hunters that much?~ GOTO Nosword2
IF~~THEN REPLY~Why is that?~GOTO Nosword2
END

IF~~THEN BEGIN Nosword2
SAY~(Hiss) Not usual procedure. Queen must have taken into account possibility of failure of mission.~
=~...~
=~Queen much afraid of Jen'lig. Also much afraid of influence Jen'lig may have on other Githyanki with ability for own thoughts.~
IF~~THEN REPLY~Time may work on your behalf, my friend. The encounter we successfully mastered has shown us - and also her - that you are beyond her reach.~DO~SetGlobal("SanJenship","GLOBAL",8)~EXIT
END

IF~~THEN BEGIN Bestplace
SAY~(Hiss) Cadre of <CHARNAME> is best place for Jen'lig to be, now that gates of Tu'narath are closed for her.~
IF~~THEN EXIT
END

IF~~THEN BEGIN TwoOdds1
SAY~(Hiss) Githyanki not run from fight. Jen'lig at side of commander in these days make more sense than run and fight own kin as long as there is no chance to change godqueen's mind at home.~
IF~~THEN REPLY~Maybe I can pay back your loyalty for me one day. Who knows what may come out of this Bhaalwar for us. You help me and I will try to help you- if I can.~GOTO TwoOdds2
IF~~THEN REPLY~A logical reasoning and I am not blind to the advantages of your presence in my *cadre*.~EXIT
IF~~THEN REPLY~Your abilities more than compensate for the shelter that our group provides for a hunted githyanki.~EXIT
END

IF~~THEN BEGIN TwoOdds2
SAY~Loyalty of commander for those who follow is just as important as loyalty of disciples to leader. Githyanki never forget that.~
IF~~THEN EXIT
END

CHAIN
IF~~THEN CVJen25J Minglo2
~Jen'lig want to secure it so it not be used against her again. ~
DO~SetGlobal("SanJenship","GLOBAL",9)~
==CVSan25J~You know how to use it, is that right?~
==CVJen25J~Hard to hide from Sandrah anything.~
=~Yes, globe would work on other Githyanki as well.~
==CVSan25J~Even on Vlaakith?~
==CVJen25J~Even on Queen Vlaakith.~
END
++~I doubt you could get close enought to her to use it.~EXIT
++~This is not a plan, this is suicide.~EXIT
++~No one can stop a Githyanki who is on a hunt, so much I have learned about your kind until now.~EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",2)~THEN CVJen25J Ship1
~A githyanki spelljammer! Wrecked.~
DO~SetGlobal("SanJenship","GLOBAL",3)~
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN~An impressive vessel even in its current state.~
==BSandr25 IF~!InParty("Sarevok")~THEN~An impressive vessel even in its current state.~
==BSandr25~It is still smouldering from the crash. The accident cannot be long in the past. There may be survivors nearby.~
==CVJen25J~(Hiss) Is remains of Enforcer Spelljammer. Is mighty ship to fight against Githzerai.~
END
++~About the last thing we need at this moment (sigh). Especially if it was full of angry githyanki fighters. Angry and grounded.~+ Ship2
++~You have nothing to fear, Jen'lig, even if some have survived. We are in this together.~+ Ship2
++~That was to be expected sooner or later. Your kin is not one to give up ever.~+ Ship2

CHAIN
IF~~THEN CVJen25J Ship2
~Enforcer ship is to battle the mightiest foe of githyanki, the renegade Githzerai.~
==BSandr25~It is no coincidence that it appears on our plane right now, right Jen'lig?~
==CVJen25J~There is no single Githzerai on the Prime. Planewalker commander would know. (Hiss) Is force send after other *foe*.~
==BSandr25~They chase another renegade this time - you.~
==CVJen25J~Exists not concept of renegade Githyanki. All kin are one cadre. Is error to think otherwise.~
END
++~Philosophical questions aside, Jen'lig, your godqueen has another point of view on that. She sent this force after you. Even after the crash some may have survived and are nearby. We need to move forward in our quest. Be ready for an assault.~EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",6)~THEN CVJen25J Ship3
~(Hiss) Valuable cadre misused in vain.~
DO~SetGlobal("SanJenship","GLOBAL",7)~
==BSandr25 ~You knew them, is that so, Jen'lig?~
==CVJen25J ~Best crew Vlaakith could send, was trained by Kastya and Jen'lig in old days. (Hiss)~
==IF_FILE_EXISTS BSAREV25 IF~InParty("Sarevok")~THEN~Deadly beasts...sorry...great warriors in deed. They did their teacher honor in dead.~
==CVJen25J ~Queen must learn from that. There must be hope for Githyanki after that.~
==CVJen25J IF~PartyHasItem("CVJenglo")~THEN~Give Jen'lig item found at ship...please...may be of later use.~
==CVJen25J IF~!PartyHasItem("CVJenglo")~THEN~Let us search remains of ship...please...may find something to be of later use.~
EXIT

CHAIN
IF~Global("SendaiCutScene3","ar6106",1)~THEN CVJen25J SEndMiFl1
~Jen'lig hear tentacles slobbering, (Hiss) wait for meal next door - meal be commander's cadre.~
DO~SetGlobal("SendaiCutScene3","ar6106",2) AddSpecialAbility("spin727") ActionOverride("CVSandr",AddSpecialAbility("spin727"))~
==BSandr25 ~Mind Flayers?~
==CVJen25J~Jen'lig sense they near, many and mighty ones.~
=~One Bhaalchild ally with brain eaters - one Bhaalchild ally with Githyanki Planewalker...(Hiss) Commander made better choice in allies and will defeat Sendai.~EXIT

CHAIN
IF~Global("SanJenship","GLOBAL",4)~THEN CVJenHu1 Found
~Queen Vlaakith demands essence of Commander Jen'lig.~
DO~SetGlobal("SanJenship","GLOBAL",5)~
==CVJENHU2~Resistance is futile.~
==CVJenHu1~Manling cadre to hide fugitive will perish.~
==CVJENHU2~Order of Astral Plane will be restored.~
==CVJen25J~The order of our plane will not be restored as long as it is disrupted by a lich to rule our race. Vlaakith no longer githyanki in nature.~
EXIT


INTERJECT_COPY_TRANS Bazdra03 9 CVJenGloUpgr
==CVJen25J IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN~Child of Tiamat, listen to Jen'lig of Tother-Ka from Tu'narath who asks for service.~
==Bazdra03 IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN~I read your insignia, Jen'lig, Planewalker commander, true daughter of Gith. What do you demand out of the old pact of Tiamat and Gith?~
==CVJen25J IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN~Jen'lig has a powerful item of the Githyanki but not powerful enough for the purpose it is needed for.~
==Bazdra03 IF~InParty("CVJenlig")PartyHasItem("CvJenGlo")~THEN~I see the globe. I will enhance it with my breath. Now go with the peace between your kin and mine.~DO~TakePartyItem("CvJenGlo") GiveItemCreate("CVJenGl2","CVJenlig",1,0,0)~END

ADD_TRANS_TRIGGER Finmel01 6
~!InParty("CVJenlig")~

EXTEND_BOTTOM Finmel01 6
IF ~InParty("CVJenlig")~THEN DO ~SetGlobal("CVJenTOBRet","GLOBAL",14) SetGlobal("ShesInIt","LOCALS",1) ActionOverride("cutspy",DestroySelf()) Enemy()
~EXIT
END