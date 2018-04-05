APPEND ESXMH
END

INTERJECT_COPY_TRANS ESXMH 19 SanIntEllesInt1
== ESXMH IF ~InParty("CVSandr")~THEN~ May I ask for your name, priestess?~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ I am Sandrah, and as you correctly guess I am a priestess of Mystra, the goddess who has supported your Dark Lady in her self established exile.~
== ESXMH IF ~InParty("CVSandr")~THEN~ Sandrah, daughter of Khalindra...you know who we are even as you mention why Eilistraee dwells not with the other deities at this time.~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ Say, it is not often that I am greeted as the daughter of my mother - more people would mention my father first.~
== ESXMH IF ~InParty("CVSandr")~THEN~ With your high wisdom in the lore, Sandrah, you know that we are connected to your goddess through our first High Priestess Qilue Veladorn.~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ <CHARNAME>, as your counsellor I can only advise you with emphasis to value these new allies. They deserve our sympathy and help same as they give it to us.~
=~ Fall, I see you as a sister in the attempt to remove from Faerun the dark shadows that have been cast by the events of a time long ago.~
== ESXMH IF ~InParty("CVSandr")~THEN~ Granddaughter of Midnight herself, who could be a better ally in this task.~
END

INTERJECT_COPY_TRANS ESXMH 20 SanIntEllesInt2
== ESXMH IF ~InParty("CVSandr")~THEN~ May I ask for your name, priestess?~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ I am Sandrah, and as you correctly guess I am a priestess of Mystra who has supported your Dark Lady in her self established exile.~
== ESXMH IF ~InParty("CVSandr")~THEN~ Sandrah, daughter of Khalindra...you know who we are even as you mention why Eilistraee dwells not with the other deities at this time.~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ Say, it is not often that I am greeted as the daughter of my mother - more people would mention my father first.~
== ESXMH IF ~InParty("CVSandr")~THEN~ With your high wisdom in the lore, Sandrah, you know that we are connected to your goddess through our first High Priestess Qilue Veladorn.~
==CVSandrJ IF ~InParty("CVSandr")~THEN~ <CHARNAME>, as your counsellor I can only advise you with emphasis to value these new allies. They deserve our sympathy and help same as they give it to us.~
=~ Fall, I see you as a sister in the attempt to remove from Faerun the dark shadows that have been cast by the events of a time long ago.~
== ESXMH IF ~InParty("CVSandr")~THEN~ Granddaughter of Midnight herself, who could be a better ally in this task.?~
END

EXTEND_BOTTOM ESXJoi 16
IF~InParty("CVSandr") PartyHasItem("Sandoll")~THEN REPLY~ Maybe my wonderful friend Sandrah can part with her childhood doll she always carries around?~ EXTERN CVSandrJ EilToy1
IF~InParty("CVSandr") !PartyHasItem("Sandoll")~THEN REPLY~ Maybe my wonderful friend Sandrah can retrieve such a thing from her magic parcel?~ EXTERN CVSandrJ EilToy1
END

CHAIN
IF~~THEN CVSandrJ EilToy1
~I would gladly give Glariss to you, little girl. We had a lot of happy hours together when I was at your age.~
DO~ActionOverride("CVSandr",GiveItem("Sandoll","ESXJoi"))~
==ESXJoi~Wow! She's so cute! Thank you, thank you and again - thank you!~
=~Glariss is the name she knows, I will keep it for her. Hello, Glariss, I'm Joy.~
=~Hello, Joy, your skin looks wonderful, so ebony black...~
END
++~Let's leave them undisturbed, friends.~EXTERN ESXJoi 21

CHAIN
IF~~THEN CVSandrJ EilToy2
~I can retrieve my old companion Glariss from my childhood days. We had a lot of happy hours together when I was at your age.~
DO~ActionOverride("CVSandr",GiveItemCreate("Sandoll","CVSandr",1,0,0)) ActionOverride("CVSandr",GiveItem("Sandoll","ESXJoi"))~
==ESXJoi~Wow! She's so cute! Thank you, thank you and again - thank you!~
=~Glariss is the name she knows, I will keep it for her. Hello, Glariss, I'm Joy~
=~Hello, Joy, your skin looks wonderful, so ebony black...~
END
++~Let's leave them undisturbed, friends.~EXTERN ESXJoi 21