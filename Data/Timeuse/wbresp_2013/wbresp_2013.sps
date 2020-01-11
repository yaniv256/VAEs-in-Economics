 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\wbresp_2013.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TULINENO F8
WECANTRIL F8
WEGENHTH F8
WEHBP F8
WEPAINMD F8
WEREST F8
WETYPICAL F8
WRTELIG F8
WUFINLWGT F8
WXCANTRIL F8
WXGENHTH F8
WXHBP F8
WXPAINMD F8
WXREST F8
WXTYPICAL F8
.
VARIABLE LABELS
TUCASEID "ATUS Case ID (14-digit identifier)" /
TULINENO "ATUS person line number" /
WECANTRIL "Edited: Please imagine a ladder with steps numbered from 0 at the bottom to 10 at the top. The top of the ladder represents the best possible life for you and the bottom of the ladder represents the worst possible life for you. If the top step is 10 and the bottom step is 0, on which step of the ladder do you feel you personally stand at the present time?" /
WEGENHTH "Edited: Would you say your health in general is excellent, very good, good, fair, or poor?" /
WEHBP "Edited: In the last five years, were you ever told by a doctor or other health professional that you have hypertension, also called high blood pressure, or borderline hypertension?" /
WEPAINMD "Edited: Did you take any pain medication yesterday, such as Aspirin, Ibuprofen or prescription pain medication?" /
WEREST "Edited: When you woke up yesterday, how well-rested did you feel? Did you feel very rested, somewhat rested, a little rested, or not at all rested?" /
WETYPICAL "Edited: Thinking about yesterday as a whole, how would you say your feelings, both good and bad, compared to a typical [FILLDAY]? Were they better than a typical [FILL=DAY], the same as a typical [FILL=DAY], or worse than a typical [FILL=DAY]?" /
WRTELIG "Total time spent in all activities eligible to be selected for Well-being module" /
WUFINLWGT "Well-being module respondent weight" /
WXCANTRIL "WECANTRIL: allocation flag" /
WXGENHTH "WEGENHTH: allocation flag" /
WXHBP "WEHBP: allocation flag" /
WXPAINMD "WEPAINMD: allocation flag" /
WXREST "WEREST: allocation flag" /
WXTYPICAL "WETYPICAL: allocation flag" /
.
VALUE LABELS
WEGENHTH
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Excellent"
2 "Very Good"
3 "Good"
4 "Fair"
5 "Poor"
/
WEHBP
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
/
WEPAINMD
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
/
WEREST
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Very"
2 "Somewhat"
3 "A little"
4 "Not at all"
/
WETYPICAL
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Better"
2 "The same"
3 "Worse"
/
WXGENHTH
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
WXHBP
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
WXPAINMD
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
WXREST
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
WXTYPICAL
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
WXCANTRIL
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
