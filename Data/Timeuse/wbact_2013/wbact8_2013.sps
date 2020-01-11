*.
*This program has variable names with length not greater than 8.
*Shortened variables.
 
*TUACTIVITY_N    (TUACT_N) .
*WUMEANING       (WUMEAN) .
*WUINTERACT      (WUINTACT) .
*WUFNACTWT       (WUFNAWT) .
*WUFNACTWTC      (WUFNAWTC) .
 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\wbact_2013.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TUACT_N F8
WUFNAWT F8
WUFNAWTC F8
WUHAPORD F8
WUHAPPY F8
WUINTACT F8
WUMEAN F8
WUPAIN F8
WUPNORD F8
WUSAD F8
WUSADORD F8
WUSTRESS F8
WUSTRORD F8
WUTIRED F8
WUTRDORD F8
.
VARIABLE LABELS
TUCASEID "ATUS Case ID (14-digit identifier)" /
TUACT_N "Activity line number" /
WUFNAWT "Well-being module original activity weight" /
WUFNAWTC "Well-being module adjusted annual activity weight" /
WUHAPORD "Order of WUHAPPY" /
WUHAPPY "From 0 to 6, where a 0 means you were not happy at all and a 6 means you were very happy, how happy did you feel during this time?" /
WUINTACT "Were you interacting with anyone during this time, including over the phone?" /
WUMEAN "From 0 to 6, how meaningful did you consider what you were doing?" /
WUPAIN "From 0 to 6, where a 0 means you did not feel any pain at all and a 6 means you were in severe pain, how much pain did you feel during this time if any?" /
WUPNORD "Order of WUPAIN" /
WUSAD "From 0 to 6, where a 0 means you were not sad at all and a 6 means you were very sad, how sad did you feel during this time?" /
WUSADORD "Order of WUSAD" /
WUSTRESS "From 0 to 6, where a 0 means you were not stressed at all and a 6 means you were very stressed, how stressed did you feel during this time?" /
WUSTRORD "Order of WUSTRESS" /
WUTIRED "From 0 to 6, where a 0 means you were not tired at all and a 6 means you were very tired, how tired did you feel during this time?" /
WUTRDORD "Order of WUTIRED" /
.
VALUE LABELS
WUINTACT
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Yes"
2 "No"
/
.
 
CACHE.
EXECUTE.
