#delimit ;
 
* Edit the insheet statement to reference the data file on your computer.;
 
insheet
tucaseid
tuactivity_n
wufnactwt
wufnactwtc
wuhapord
wuhappy
wuinteract
wumeaning
wupain
wupnord
wusad
wusadord
wustress
wustrord
wutired
wutrdord
 using c:\wbact_2013.dat, names comma ;

label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tuactivity_n "Activity line number";
label variable wufnactwt "Well-being module original activity weight";
label variable wufnactwtc "Well-being module adjusted annual activity weight";
label variable wuhapord "Order of WUHAPPY";
label variable wuhappy "From 0 to 6, where a 0 means you were not happy at all and a 6 means you were very happy, how happy did you feel during this time?";
label variable wuinteract "Were you interacting with anyone during this time, including over the phone?";
label variable wumeaning "From 0 to 6, how meaningful did you consider what you were doing?";
label variable wupain "From 0 to 6, where a 0 means you did not feel any pain at all and a 6 means you were in severe pain, how much pain did you feel during this time if any?";
label variable wupnord "Order of WUPAIN";
label variable wusad "From 0 to 6, where a 0 means you were not sad at all and a 6 means you were very sad, how sad did you feel during this time?";
label variable wusadord "Order of WUSAD";
label variable wustress "From 0 to 6, where a 0 means you were not stressed at all and a 6 means you were very stressed, how stressed did you feel during this time?";
label variable wustrord "Order of WUSTRESS";
label variable wutired "From 0 to 6, where a 0 means you were not tired at all and a 6 means you were very tired, how tired did you feel during this time?";
label variable wutrdord "Order of WUTIRED";

label define labelwuinteract
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;

label values wuinteract   labelwuinteract;

describe, short;
