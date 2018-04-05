BEGIN Sanpre2

CHAIN
IF ~ Global("SanPCGoodMys","GLOBAL",3)~ THEN Sanpre2 MystrHelp
~ Mystra, you have never seen or heard me pray to you before.~
= ~ I have no other way today than to ask for your favour. I have failed. Failed completely.~
= ~ I put all my trust in one person. I love this person. I try not to, because <PRO_HESHE> is following the wrong path time and time again. I have done all I can to prevent the evil in your name, Mystra.~
= ~ I have lost this fight. There is nothing more for me to do then to ask for your help.~
= ~ You know the deeds I have done in your name and the path I have followed. I cannot give <CHARNAME> up. My love is too strong - still. You are the only one who can help me now.~
= ~ Your grandchild is asking you for a second chance today. Only now and only for this purpose. I will never do this again.~
= ~ (Sandrah is remaining on her knees for a long time, her body shaken by her unstoppable weeping over you.)~
DO ~  SetGlobal("SanPCGoodMys","GLOBAL",4) ReputationSet(11) EscapeArea()~
EXIT

CHAIN
IF~ Global("SanNewArm","GLOBAL",1)~ THEN  Sanpre2 Mystranewarmour
~ Mystra! A visit in my dream this time?~
DO~ SetGlobal("SanNewArm","GLOBAL",2)~
== SanMyst ~ Sandrah, you are growing dearer to my heart almost daily as I watch your progress. See me as the grandmother you never had - but I am.~
== Sanpre2 ~ I will do so, now that I vaguely begin to understand the path you have taken and the decisions you have made, including the sacrifice of a mortal family and...a granddaughter.~
== SanMyst ~ Still you are just that for me - to see and to care for. It is on a different level than we would communicate if we were both mortals, but still we talk and we start to understand each other.~
== Sanpre2 ~ Have you come just for the reason of this relationship or is something special drawing your attention to me this time?~  DO~ EscapeArea() ~
== SanMyst ~Both, Sandrah, my child. It warms my heart - yes...do not look puzzled - your goddess has the ability to *feel* - it warms my heart to see you from time to time. And secondly it is time to aid you with a bit of my power again to arm you against the upcoming dangers awaiting you. You know it yourself, being <CHARNAME>'s counsellor, your enemies will be more and more powerful from day to day.~ 
= ~ Take my blessing and fare well on your road - it will take you closer to me and closer to your own self.~ DO~ CreateVisualEffectObject("SPCLOUD1","SanPre4") EscapeArea()~
EXIT



