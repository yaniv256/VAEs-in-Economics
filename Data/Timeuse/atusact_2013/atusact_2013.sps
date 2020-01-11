 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\atusact_2013.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TUACTIVITY_N F8
TEWHERE F8
TRTCCTOT_LN F8
TRTCC_LN F8
TRTCOC_LN F8
TRTEC_LN F8
TRTHH_LN F8
TRTNOHH_LN F8
TRTOHH_LN F8
TRTONHH_LN F8
TRTO_LN F8
TRWBELIG F8
TUACTDUR F8
TUACTDUR24 F8
TUCC5 F8
TUCC5B F8
TUCC7 F8
TUCC8 F8
TUCUMDUR F8
TUCUMDUR24 F8
TUDURSTOP F8
TUEC24 F8
TUSTARTTIM A8
TUSTOPTIME A8
TUTIER1CODE A2
TUTIER2CODE A2
TUTIER3CODE A2
TRCODE A6
TRTIER2 A4
TXWHERE F8
.
VARIABLE LABELS
TEWHERE "Edited: where were you during the activity?" /
TRCODE "Six digit activity code" /
TRTCCTOT_LN "Total time spent during activity providing secondary childcare for all children < 13" /
TRTCC_LN "Total time spent during activity providing secondary child care for household and own non-household children < 13" /
TRTCOC_LN "Total time spent during activity providing secondary child care for non-own, non-household children <13" /
TRTEC_LN "Time (in minutes) spent providing eldercare by activity" /
TRTHH_LN "Total time spent during activity providing secondary childcare for household children < 13" /
TRTIER2 "First and second activity tiers" /
TRTNOHH_LN "Total time spent during activity providing secondary childcare for non-own household children < 13" /
TRTOHH_LN "Total time spent during activity providing secondary childcare for own household children < 13" /
TRTONHH_LN "Total time spent during activity providing secondary childcare for own non-household children < 13" /
TRTO_LN "Total time spent during activity providing secondary childcare for own children < 13" /
TRWBELIG "Flag identifying activities eligible for the Well-being Module" /
TUACTDUR "Duration of activity in minutes [last activity not truncated at 4:00 a.m.]" /
TUACTDUR24 "Duration of activity in minutes [last activity truncated at 4:00 a.m.]" /
TUACTIVITY_N "Activity line number" /
TUCASEID "ATUS Case ID [14-digit identifier]" /
TUCC5 "Was at least one of your own household children < 13 in your care during this activity?" /
TUCC5B "Was at least one of your non-own household children < 13 in your care during this activity?" /
TUCC7 "Was at least one of your own non-household children < 13 in your care during this activity?" /
TUCC8 "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?" /
TUCUMDUR "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00am or 1440 minutes [cumulative total of T" /
TUCUMDUR24 "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00am or 1440 minutes [cumulative total of TUACT" /
TUDURSTOP "Method for reporting activity duration" /
TUEC24 "At which times or during which activities did you provide that care or assistance yesterday?" /
TUSTARTTIM "Activity start time" /
TUSTOPTIME "Activity stop time" /
TUTIER1CODE "Lexicon Tier 1: 1st and 2nd digits of 6-digit activity code" /
TUTIER2CODE "Lexicon Tier 2: 3rd and 4th digits of 6-digit activity code" /
TUTIER3CODE "Lexicon Tier 3: 5th and 6th digits of 6-digit activity code" /
TXWHERE "TEWHERE: allocation flag" /
.
VALUE LABELS
TEWHERE
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Respondent's home or yard"
2 "Respondent's workplace"
3 "Someone else's home"
4 "Restaurant or bar"
5 "Place of worship"
6 "Grocery store"
7 "Other store-mall"
8 "School"
9 "Outdoors away from home"
10 "Library"
11 "Other place"
12 "Car, truck, or motorcycle [driver]"
13 "Car, truck, or motorcycle [passenger]"
14 "Walking"
15 "Bus"
16 "Subway-train"
17 "Bicycle"
18 "Boat-ferry"
19 "Taxi-limousine service"
20 "Airplane"
21 "Other mode of transportation"
30 "Bank"
31 "Gym-health club"
32 "Post Office"
89 "Unspecified place"
99 "Unspecified mode of transportation"
/
TRWBELIG
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Activity not eligible for selection in the Well-being Module"
1 "Activity eligible for selection in the Well-being Module"
/
TUCC5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC5B
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC7
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC8
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUEC24
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Activity identified as eldercare"
96 "All day"
97 "No more activities"
/
TXWHERE
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
/
.
 
CACHE.
EXECUTE.
