* NOTE: format names are the same as variable names, except for
        variable names that end in a number.  For these a 1 is replaced
        by an A, a 2 is replaced by a B, and so on.
  Edit the infile statement to reference the data file on your computer.
*;
data atusact_2013;
infile "c:\atusact_2013.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
 TUCASEID $14
 TUACTIVITY_N 8
 TEWHERE 8
 TRTCCTOT_LN 8
 TRTCC_LN 8
 TRTCOC_LN 8
 TRTEC_LN 8
 TRTHH_LN 8
 TRTNOHH_LN 8
 TRTOHH_LN 8
 TRTONHH_LN 8
 TRTO_LN 8
 TRWBELIG 8
 TUACTDUR 8
 TUACTDUR24 8
 TUCC5 8
 TUCC5B 8
 TUCC7 8
 TUCC8 8
 TUCUMDUR 8
 TUCUMDUR24 8
 TUDURSTOP 8
 TUEC24 8
 TUSTARTTIM $8
 TUSTOPTIME $8
 TUTIER1CODE $2
 TUTIER2CODE $2
 TUTIER3CODE $2
 TRCODE $6
 TRTIER2 $4
 TXWHERE 8
;
input
 TUCASEID
 TUACTIVITY_N
 TEWHERE
 TRTCCTOT_LN
 TRTCC_LN
 TRTCOC_LN
 TRTEC_LN
 TRTHH_LN
 TRTNOHH_LN
 TRTOHH_LN
 TRTONHH_LN
 TRTO_LN
 TRWBELIG
 TUACTDUR
 TUACTDUR24
 TUCC5
 TUCC5B
 TUCC7
 TUCC8
 TUCUMDUR
 TUCUMDUR24
 TUDURSTOP
 TUEC24
 TUSTARTTIM
 TUSTOPTIME
 TUTIER1CODE
 TUTIER2CODE
 TUTIER3CODE
 TRCODE
 TRTIER2
 TXWHERE
;
label TEWHERE = "Edited: where were you during the activity?";
label TRCODE = "Six digit activity code";
label TRTCCTOT_LN = "Total time spent during activity providing secondary childcare for all children < 13";
label TRTCC_LN = "Total time spent during activity providing secondary child care for household and own non-household children < 13";
label TRTCOC_LN = "Total time spent during activity providing secondary child care for non-own, non-household children <13";
label TRTEC_LN = "Time (in minutes) spent providing eldercare by activity";
label TRTHH_LN = "Total time spent during activity providing secondary childcare for household children < 13";
label TRTIER2 = "First and second activity tiers";
label TRTNOHH_LN = "Total time spent during activity providing secondary childcare for non-own household children < 13";
label TRTOHH_LN = "Total time spent during activity providing secondary childcare for own household children < 13";
label TRTONHH_LN = "Total time spent during activity providing secondary childcare for own non-household children < 13";
label TRTO_LN = "Total time spent during activity providing secondary childcare for own children < 13";
label TRWBELIG = "Flag identifying activities eligible for the Well-being Module";
label TUACTDUR = "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)";
label TUACTDUR24 = "Duration of activity in minutes (last activity truncated at 4:00 a.m.)";
label TUACTIVITY_N = "Activity line number";
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUCC5 = "Was at least one of your own household children < 13 in your care during this activity?";
label TUCC5B = "Was at least one of your non-own household children < 13 in your care during this activity?";
label TUCC7 = "Was at least one of your own non-household children < 13 in your care during this activity?";
label TUCC8 = "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?";
label TUCUMDUR = "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00am or 1440 minutes (cumulative total of T";
label TUCUMDUR24 = "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00am or 1440 minutes (cumulative total of TUACT";
label TUDURSTOP = "Method for reporting activity duration";
label TUEC24 = "At which times or during which activities did you provide that care or assistance yesterday?";
label TUSTARTTIM = "Activity start time";
label TUSTOPTIME = "Activity stop time";
label TUTIER1CODE = "Lexicon Tier 1: 1st and 2nd digits of 6-digit activity code";
label TUTIER2CODE = "Lexicon Tier 2: 3rd and 4th digits of 6-digit activity code";
label TUTIER3CODE = "Lexicon Tier 3: 5th and 6th digits of 6-digit activity code";
label TXWHERE = "TEWHERE: allocation flag";
run;
 
proc format;
value TEWHERE /*TEWHERE*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Respondent's home or yard"
2 = "Respondent's workplace"
3 = "Someone else's home"
4 = "Restaurant or bar"
5 = "Place of worship"
6 = "Grocery store"
7 = "Other store/mall"
8 = "School"
9 = "Outdoors away from home"
10 = "Library"
11 = "Other place"
12 = "Car, truck, or motorcycle (driver)"
13 = "Car, truck, or motorcycle (passenger)"
14 = "Walking"
15 = "Bus"
16 = "Subway/train"
17 = "Bicycle"
18 = "Boat/ferry"
19 = "Taxi/limousine service"
20 = "Airplane"
21 = "Other mode of transportation"
30 = "Bank"
31 = "Gym/health club"
32 = "Post Office"
89 = "Unspecified place"
99 = "Unspecified mode of transportation"
;
value TRWBELIG /* TRWBELIG */
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Activity not eligible for selection in the Well-being Module"
1 = "Activity eligible for selection in the Well-being Module"
;
value TUCCE /*altered: TUCC5*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCC5B /*TUCC5B*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCCG /*altered: TUCC7*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCCH /*altered: TUCC8*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUEC2D /*altered: TUEC24*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Activity identified as eldercare"
96 = "All day"
97 = "No more activities"
;
value TXWHERE /*TXWHERE*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Value - No Change"
1 = "Blank - No Change"
2 = "Don`t Know - No Change"
3 = "Refused - No Change"
10 = "Value To Value"
11 = "Blank To Value"
12 = "Don`t Know To Value"
13 = "Refused To Value"
20 = "Value To Longitudinal Value"
21 = "Blank To Longitudinal Value"
22 = "Don`t Know To Longitudinal Value"
23 = "Refused To Longitudinal Value"
30 = "Value To Allocated Value Long."
31 = "Blank To Allocated Value Long."
32 = "Don`t Know To Allocated Value Long."
33 = "Refused To Allocated Value Long."
40 = "Value To Allocated Value"
41 = "Blank To Allocated Value"
42 = "Don`t Know To Allocated Value"
43 = "Refused To Allocated Value"
50 = "Value To Blank"
52 = "Don`t Know To Blank"
53 = "Refused To Blank"
;
proc contents data=atusact_2013; run;
