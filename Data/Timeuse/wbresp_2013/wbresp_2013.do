#delimit ;
 
* Edit the insheet statement to reference the data file on your computer.;
 
insheet
tucaseid
tulineno
wecantril
wegenhth
wehbp
wepainmd
werest
wetypical
wrtelig
wufinlwgt
wxcantril
wxgenhth
wxhbp
wxpainmd
wxrest
wxtypical
 using c:\wbresp_2013.dat, names comma ;

label variable tucaseid "ATUS Case ID (14-digit identifier)";
label variable tulineno "ATUS person line number";
label variable wecantril "Edited: Please imagine a ladder with steps numbered from 0 at the bottom to 10 at the top. The top of the ladder represents the best possible life for you and the bottom of the ladder represents the worst possible life for you. If the top step is 10 and the bottom step is 0, on which step of the ladder do you feel you personally stand at the present time?";
label variable wegenhth "Edited: Would you say your health in general is excellent, very good, good, fair, or poor?";
label variable wehbp "Edited: In the last five years, were you ever told by a doctor or other health professional that you have hypertension, also called high blood pressure, or borderline hypertension?";
label variable wepainmd "Edited: Did you take any pain medication yesterday, such as Aspirin, Ibuprofen or prescription pain medication?";
label variable werest "Edited: When you woke up yesterday, how well-rested did you feel? Did you feel very rested, somewhat rested, a little rested, or not at all rested?";
label variable wetypical "Edited: Thinking about yesterday as a whole, how would you say your feelings, both good and bad, compared to a typical [FILL= DAY]? Were they better than a typical [FILL=DAY], the same as a typical [FILL=DAY], or worse than a typical [FILL=DAY]?";
label variable wrtelig "Total time spent in all activities eligible to be selected for Well-being module";
label variable wufinlwgt "Well-being module respondent weight";
label variable wxcantril "WECANTRIL: allocation flag";
label variable wxgenhth "WEGENHTH: allocation flag";
label variable wxhbp "WEHBP: allocation flag";
label variable wxpainmd "WEPAINMD: allocation flag";
label variable wxrest "WEREST: allocation flag";
label variable wxtypical "WETYPICAL: allocation flag";


label define labelwegenhth
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Excellent"
2 "Very Good"
3 "Good"
4 "Fair"
5 "Poor"
;
label define labelwehbp
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
label define labelwepainmd
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
;
label define labelwerest
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Very"
2 "Somewhat"
3 "A little"
4 "Not at all"
;
label define labelwetypical
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Better"
2 "The same"
3 "Worse"
;

label define labelwx
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

label values wegenhth  labelwegenhth;
label values wehbp     labelwehbp;
label values wepainmd  labelwepainmd;
label values werest    labelwerest;
label values wetypical labelwetypical;
label values wxgenhth  labelwx;
label values wxhbp     labelwx;
label values wxpainmd  labelwx;
label values wxrest    labelwx;
label values wxtypical labelwx;
label values wxcantril labelwx;

describe, short;
