*
  Edit the infile statement to reference the data file on your computer.
*;
data wbact_2013;
infile "c:\wbact_2013.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
TUCASEID $14
TUACTIVITY_N 8
WUFNACTWT 8
WUFNACTWTC 8
WUHAPORD 8
WUHAPPY 8
WUINTERACT 8
WUMEANING 8
WUPAIN 8
WUPNORD 8
WUSAD 8
WUSADORD 8
WUSTRESS 8
WUSTRORD 8
WUTIRED 8
WUTRDORD 8
;
input
TUCASEID
TUACTIVITY_N
WUFNACTWT
WUFNACTWTC
WUHAPORD
WUHAPPY
WUINTERACT
WUMEANING
WUPAIN
WUPNORD
WUSAD
WUSADORD
WUSTRESS
WUSTRORD
WUTIRED
WUTRDORD
;
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUACTIVITY_N = "Activity line number";
label WUFNACTWT = "Well-being module original activity weight";
label WUFNACTWTC = "Well-being module adjusted annual activity weight";
label WUHAPORD = "Order of WUHAPPY";
label WUHAPPY = "From 0 to 6, where a 0 means you were not happy at all and a 6 means you were very happy, how happy did you feel during this time?";
label WUINTERACT = "Were you interacting with anyone during this time, including over the phone?";
label WUMEANING = "From 0 to 6, how meaningful did you consider what you were doing?";
label WUPAIN = "From 0 to 6, where a 0 means you did not feel any pain at all and a 6 means you were in severe pain, how much pain did you feel during this time if any?";
label WUPNORD = "Order of WUPAIN";
label WUSAD = "From 0 to 6, where a 0 means you were not sad at all and a 6 means you were very sad, how sad did you feel during this time?";
label WUSADORD = "Order of WUSAD";
label WUSTRESS = "From 0 to 6, where a 0 means you were not stressed at all and a 6 means you were very stressed, how stressed did you feel during this time?";
label WUSTRORD = "Order of WUSTRESS";
label WUTIRED = "From 0 to 6, where a 0 means you were not tired at all and a 6 means you were very tired, how tired did you feel during this time?";
label WUTRDORD = "Order of WUTIRED";
run;

proc format;
value WUINTERACT /*WUINTERACT*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;

proc contents data=wbact_2013; run;
