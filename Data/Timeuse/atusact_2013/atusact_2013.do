#delimit ;
 
* Edit the insheet statement to reference the data file on your computer.;
 
insheet
tucaseid
tuactivity_n
tewhere
trtcctot_ln
trtcc_ln
trtcoc_ln
trtec_ln
trthh_ln
trtnohh_ln
trtohh_ln
trtonhh_ln
trto_ln
trwbelig
tuactdur
tuactdur24
tucc5
tucc5b
tucc7
tucc8
tucumdur
tucumdur24
tudurstop
tuec24
tustarttim
tustoptime
tutier1code
tutier2code
tutier3code
trcode
trtier2
txwhere
 using c:\atusact_2013.dat, names comma ;
 
label variable tewhere "Edited: where were you during the activity?";
label variable trcode "Six digit activity code";
label variable trtcctot_ln "Total time spent during activity providing secondary childcare for all children < 13";
label variable trtcc_ln "Total time spent during activity providing secondary child care for household and own non-household children < 13";
label variable trtcoc_ln "Total time spent during activity providing secondary child care for non-own, non-household children <13";
label variable trtec_ln "Time (in minutes) spent providing eldercare by activity";
label variable trthh_ln "Total time spent during activity providing secondary childcare for household children < 13";
label variable trtier2 "First and second activity tiers";
label variable trtnohh_ln "Total time spent during activity providing secondary childcare for non-own household children < 13";
label variable trtohh_ln "Total time spent during activity providing secondary childcare for own household children < 13";
label variable trtonhh_ln "Total time spent during activity providing secondary childcare for own non-household children < 13";
label variable trto_ln "Total time spent during activity providing secondary childcare for own children < 13";
label variable trwbelig "Flag identifying activities eligible for the Well-being Module";
label variable tuactdur "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)";
label variable tuactdur24 "Duration of activity in minutes (last activity truncated at 4:00 a.m.)";
label variable tuactivity_n "Activity line number";
label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tucc5 "Was at least one of your own household children < 13 in your care during this activity?";
label variable tucc5b "Was at least one of your non-own household children < 13 in your care during this activity?";
label variable tucc7 "Was at least one of your own non-household children < 13 in your care during this activity?";
label variable tucc8 "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?";
label variable tucumdur "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00am or 1440 minutes (cumulative total of T";
label variable tucumdur24 "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00am or 1440 minutes (cumulative total of TUACT";
label variable tudurstop "Method for reporting activity duration";
label variable tuec24 "At which times or during which activities did you provide that care or assistance yesterday?";
label variable tustarttim "Activity start time";
label variable tustoptime "Activity stop time";
label variable tutier1code "Lexicon Tier 1: 1st and 2nd digits of 6-digit activity code";
label variable tutier2code "Lexicon Tier 2: 3rd and 4th digits of 6-digit activity code";
label variable tutier3code "Lexicon Tier 3: 5th and 6th digits of 6-digit activity code";
label variable txwhere "TEWHERE: allocation flag";
 
label define labeltewhere
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Respondent's home or yard"
2 "Respondent's workplace"
3 "Someone else's home"
4 "Restaurant or bar"
5 "Place of worship"
6 "Grocery store"
7 "Other store/mall"
8 "School"
9 "Outdoors away from home"
10 "Library"
11 "Other place"
12 "Car, truck, or motorcycle (driver)"
13 "Car, truck, or motorcycle (passenger)"
14 "Walking"
15 "Bus"
16 "Subway/train"
17 "Bicycle"
18 "Boat/ferry"
19 "Taxi/limousine service"
20 "Airplane"
21 "Other mode of transportation"
30 "Bank"
31 "Gym/health club"
32 "Post Office"
89 "Unspecified place"
99 "Unspecified mode of transportation"
;
label define labeltrwbelig
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Activity not eligible for selection in the Well-being Module"
1 "Activity eligible for selection in the Well-being Module"
;
label define labeltucc5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
;
label define labeltucc5b
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
;
label define labeltucc7
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
;
label define labeltucc8
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
;
label define labeltuec24
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Activity identified as eldercare"
96 "All day"
97 "No more activities"
;
label define labeltxwhere
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Value - No Change"
1 "Blank - No Change"
2 "Don`t Know - No Change"
3 "Refused - No Change"
10 "Value To Value"
11 "Blank To Value"
12 "Don`t Know To Value"
13 "Refused To Value"
20 "Value To Longitudinal Value"
21 "Blank To Longitudinal Value"
22 "Don`t Know To Longitudinal Value"
23 "Refused To Longitudinal Value"
30 "Value To Allocated Value Long."
31 "Blank To Allocated Value Long."
32 "Don`t Know To Allocated Value Long."
33 "Refused To Allocated Value Long."
40 "Value To Allocated Value"
41 "Blank To Allocated Value"
42 "Don`t Know To Allocated Value"
43 "Refused To Allocated Value"
50 "Value To Blank"
52 "Don`t Know To Blank"
53 "Refused To Blank"
;
 
label values tewhere  labeltewhere;
label values trwbelig labeltrwbelig;
label values tucc5    labeltucc5;
label values tucc5b   labeltucc5b;
label values tucc7    labeltucc7;
label values tucc8    labeltucc8;
label values tuec24   labeltuec24;
label values txwhere  labeltxwhere;
 
describe, short;
