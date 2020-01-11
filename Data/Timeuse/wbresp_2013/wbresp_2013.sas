*
  Edit the infile statement to reference the data file on your computer.
*;
data wbresp_2013;
infile "c:\wbresp_2013.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
TUCASEID $14
TULINENO 8
WECANTRIL 8
WEGENHTH 8
WEHBP 8
WEPAINMD 8
WEREST 8
WETYPICAL 8
WRTELIG 8
WUFINLWGT 8
WXCANTRIL 8
WXGENHTH 8
WXHBP 8
WXPAINMD 8
WXREST 8
WXTYPICAL 8
;
input
TUCASEID
TULINENO
WECANTRIL
WEGENHTH
WEHBP
WEPAINMD
WEREST
WETYPICAL
WRTELIG
WUFINLWGT
WXCANTRIL
WXGENHTH
WXHBP
WXPAINMD
WXREST
WXTYPICAL
;
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TULINENO = "ATUS person line number";
label WECANTRIL = "Edited: Please imagine a ladder with steps numbered from 0 at the bottom to 10 at the top. The top of the ladder represents the best possible life for you and the bottom of the ladder represents the worst possible life for you. If the top step is 10 and the bottom step is 0, on which step of the ladder do you feel you personally stand at the present time?";
label WEGENHTH = "Edited: Would you say your health in general is excellent, very good, good, fair, or poor?";
label WEHBP = "Edited: In the last five years, were you ever told by a doctor or other health professional that you have hypertension, also called high blood pressure, or borderline hypertension?";
label WEPAINMD = "Edited: Did you take any pain medication yesterday, such as Aspirin, Ibuprofen or prescription pain medication?";
label WEREST = "Edited: When you woke up yesterday, how well-rested did you feel? Did you feel very rested, somewhat rested, a little rested, or not at all rested?";
label WETYPICAL = "Edited: Thinking about yesterday as a whole, how would you say your feelings, both good and bad, compared to a typical [FILL= DAY]? Were they better than a typical [FILL=DAY], the same as a typical [FILL=DAY], or worse than a typical [FILL=DAY]?";
label WRTELIG = "Total time spent in all activities eligible to be selected for Well-being module";
label WUFINLWGT = "Well-being module respondent weight";
label WXCANTRIL = "WECANTRIL: allocation flag";
label WXGENHTH = "WEGENHTH: allocation flag";
label WXHBP = "WEHBP: allocation flag";
label WXPAINMD = "WEPAINMD: allocation flag";
label WXREST = "WEREST: allocation flag";
label WXTYPICAL = "WETYPICAL: allocation flag";
run;

proc format;
value WEGENHTH /*WEGENHTH*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Excellent"
2 = "Very Good"
3 = "Good"
4 = "Fair"
5 = "Poor"
;
value WEHBP /*WEHBP*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;
value WEPAINMD /*WEPAINMD*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;
value WEREST /*WEREST*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Very"
2 = "Somewhat"
3 = "A little"
4 = "Not at all"
;
value WETYPICAL /*WETYPICAL*/
-1="Blank"
-2="Don't Know"
-3="Refused"
1 = "Better"
2 = "The same"
3 = "Worse"
;
value WX /*WXGENHTH WXHBP WXPAINMD WXREST WXTYPICAL WXCANTRIL*/
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

proc contents data=wbresp_2013; run;
