*.
*This program has variable names with length not greater than 8.
*Shortened variables.
 
*TESPEMPNOT (TESPEMNT).
*TRCHILDNUM (TRCHLDNM).
*TRYHHCHILD (TRYHHCHD).
*TUFINLWGT  (TUFINWGT).
*TUDIARYDAY (TUDIDAY).
*TRHOLIDAY  (TRHOLDAY).


* Edit the FILE statement to reference the data file on your computer.

GET DATA  /TYPE = TXT
 /FILE = 'C:\atussum_2013.dat'
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TUFINWGT F8
TRYHHCHD F8
TEAGE F8
TESEX F8
PEEDUCA F8
PTDTRACE F8
PEHSPNON F8
GTMETSTA F8
TELFS F8
TEMJOT F8
TRDPFTPT F8
TESCHENR F8
TESCHLVL F8
TRSPPRES F8
TESPEMNT F8
TRERNWA F8
TRCHLDNM F8
TRSPFTPT F8
TEHRUSLT F8
TUDIDAY F8
TRHOLDAY F8
TRTEC F8
TRTHH F8
t010101  F8
t010102  F8
t010201  F8
t010299  F8
t010301  F8
t010399  F8
t010401  F8
t020101  F8
t020102  F8
t020103  F8
t020104  F8
t020199  F8
t020201  F8
t020202  F8
t020203  F8
t020299  F8
t020301  F8
t020302  F8
t020303  F8
t020399  F8
t020401  F8
t020402  F8
t020499  F8
t020501  F8
t020502  F8
t020599  F8
t020601  F8
t020602  F8
t020699  F8
t020701  F8
t020799  F8
t020801  F8
t020899  F8
t020901  F8
t020902  F8
t020903  F8
t020904  F8
t020905  F8
t020999  F8
t029999  F8
t030101  F8
t030102  F8
t030103  F8
t030104  F8
t030105  F8
t030106  F8
t030108  F8
t030109  F8
t030110  F8
t030111  F8
t030112  F8
t030199  F8
t030201  F8
t030202  F8
t030203  F8
t030299  F8
t030301  F8
t030302  F8
t030303  F8
t030399  F8
t030401  F8
t030402  F8
t030403  F8
t030404  F8
t030405  F8
t030499  F8
t030501  F8
t030502  F8
t030503  F8
t030504  F8
t030599  F8
t039999  F8
t040101  F8
t040102  F8
t040103  F8
t040104  F8
t040105  F8
t040106  F8
t040108  F8
t040109  F8
t040110  F8
t040111  F8
t040112  F8
t040199  F8
t040201  F8
t040299  F8
t040301  F8
t040302  F8
t040401  F8
t040402  F8
t040403  F8
t040404  F8
t040405  F8
t040499  F8
t040501  F8
t040502  F8
t040503  F8
t040504  F8
t040505  F8
t040506  F8
t040507  F8
t040508  F8
t040599  F8
t050101  F8
t050102  F8
t050103  F8
t050104  F8
t050199  F8
t050201  F8
t050202  F8
t050205  F8
t050301  F8
t050302  F8
t050303  F8
t050304  F8
t050305  F8
t050399  F8
t050401  F8
t050403  F8
t050404  F8
t059999  F8
t060101  F8
t060102  F8
t060103  F8
t060199  F8
t060201  F8
t060202  F8
t060299  F8
t060301  F8
t060302  F8
t060303  F8
t060399  F8
t060401  F8
t060402  F8
t060403  F8
t060499  F8
t069999  F8
t070101  F8
t070102  F8
t070103  F8
t070104  F8
t070105  F8
t070201  F8
t080101  F8
t080201  F8
t080202  F8
t080203  F8
t080301  F8
t080401  F8
t080402  F8
t080403  F8
t080499  F8
t080501  F8
t080502  F8
t080601  F8
t080602  F8
t080701  F8
t080702  F8
t089999  F8
t090101  F8
t090103  F8
t090199  F8
t090201  F8
t090202  F8
t090301  F8
t090302  F8
t090399  F8
t090401  F8
t090499  F8
t090501  F8
t090502  F8
t090599  F8
t099999  F8
t100101  F8
t100102  F8
t100103  F8
t100199  F8
t100201  F8
t100304  F8
t100499  F8
t109999  F8
t110101  F8
t110201  F8
t120101  F8
t120201  F8
t120202  F8
t120299  F8
t120301  F8
t120302  F8
t120303  F8
t120304  F8
t120305  F8
t120306  F8
t120307  F8
t120308  F8
t120309  F8
t120310  F8
t120311  F8
t120312  F8
t120313  F8
t120399  F8
t120401  F8
t120402  F8
t120403  F8
t120404  F8
t120499  F8
t120501  F8
t120502  F8
t120503  F8
t120504  F8
t120599  F8
t129999  F8
t130101  F8
t130102  F8
t130103  F8
t130104  F8
t130105  F8
t130106  F8
t130107  F8
t130108  F8
t130109  F8
t130110  F8
t130112  F8
t130113  F8
t130114  F8
t130115  F8
t130116  F8
t130117  F8
t130118  F8
t130119  F8
t130120  F8
t130122  F8
t130123  F8
t130124  F8
t130125  F8
t130126  F8
t130127  F8
t130128  F8
t130129  F8
t130130  F8
t130131  F8
t130132  F8
t130133  F8
t130134  F8
t130135  F8
t130136  F8
t130199  F8
t130202  F8
t130203  F8
t130205  F8
t130206  F8
t130207  F8
t130210  F8
t130213  F8
t130215  F8
t130216  F8
t130218  F8
t130219  F8
t130220  F8
t130221  F8
t130222  F8
t130223  F8
t130224  F8
t130225  F8
t130226  F8
t130227  F8
t130229  F8
t130232  F8
t130299  F8
t130301  F8
t130302  F8
t139999  F8
t140101  F8
t140102  F8
t140103  F8
t140105  F8
t149999  F8
t150101  F8
t150102  F8
t150103  F8
t150104  F8
t150105  F8
t150106  F8
t150199  F8
t150201  F8
t150202  F8
t150203  F8
t150204  F8
t150299  F8
t150301  F8
t150302  F8
t150399  F8
t150401  F8
t150402  F8
t150499  F8
t150501  F8
t150599  F8
t150601  F8
t150602  F8
t150699  F8
t150701  F8
t150801  F8
t159999  F8
t160101  F8
t160102  F8
t160103  F8
t160104  F8
t160105  F8
t160106  F8
t160107  F8
t160108  F8
t160199  F8
t160201  F8
t169999  F8
t180101  F8
t180199  F8
t180201  F8
t180202  F8
t180203  F8
t180204  F8
t180205  F8
t180206  F8
t180207  F8
t180208  F8
t180209  F8
t180299  F8
t180301  F8
t180302  F8
t180303  F8
t180304  F8
t180305  F8
t180401  F8
t180402  F8
t180403  F8
t180404  F8
t180405  F8
t180501  F8
t180502  F8
t180503  F8
t180504  F8
t180599  F8
t180601  F8
t180602  F8
t180603  F8
t180604  F8
t180699  F8
t180701  F8
t180702  F8
t180703  F8
t180704  F8
t180799  F8
t180801  F8
t180802  F8
t180803  F8
t180804  F8
t180805  F8
t180806  F8
t180807  F8
t180899  F8
t180901  F8
t180902  F8
t180903  F8
t180904  F8
t180905  F8
t180999  F8
t181001  F8
t181002  F8
t181099  F8
t181101  F8
t181201  F8
t181202  F8
t181203  F8
t181204  F8
t181205  F8
t181299  F8
t181301  F8
t181302  F8
t181401  F8
t181499  F8
t181501  F8
t181599  F8
t181601  F8
t181801  F8
t189999  F8
t500101  F8
t500103  F8
t500105  F8
t500106  F8
t500107  F8
.
VARIABLE LABELS
TUCASEID   "ATUS Case ID (14-digit identifier)" /
GTMETSTA   "Metropolitan status (2000 definitions)" /
PEEDUCA    "Edited: what is the highest level of school you have completed or the highest degree you have received?" /
PEHSPNON   "Edited: are you Spanish, Hispanic, or Latino?" /
PTDTRACE   "Race (topcoded)" /
TEAGE      "Edited: age" /
TEHRUSLT   "Edited: total hours usually worked per week (sum of TEHRUSL1 and TEHRUSL2)" /
TELFS      "Edited: labor force status" /
TEMJOT     "Edited: in the last seven days did you have more than one job?" /
TESCHENR   "Edited: are you enrolled in high school, college, or university?" /
TESCHLVL   "Edited: would that be high school, college, or university?" /
TESEX      "Edited: sex" /
TESPEMNT   "Edited: employment status of spouse or unmarried partner" /
TRCHLDNM   "Number of household children < 18" /
TRDPFTPT   "Full time or part time employment status of respondent" /
TRERNWA    "Weekly earnings (2 implied decimals)" /
TRSPFTPT   "Full time or part time employment status of spouse or unmarried partner" /
TRSPPRES   "Presence of the respondent's spouse or unmarried partner in the household" /
TRYHHCHD   "Age of youngest household child < 18" /
TUCASEID   "ATUS Case ID (14-digit identifier)" /
TUFINWGT   "ATUS final weight" /
TUDIDAY    "Day of the week of diary day [day of the week about which the respondent was interviewed]" /
TRHOLDAY   "Flag to indicate if diary day was a holiday" /
TRTEC      "Total time spent providing eldercare (in minutes)" /
TRTHH      "Total time spent during diary day providing secondary childcare for household children < 13 (in minutes)" /
t010101 "Sleeping" /
t010102 "Sleeplessness" /
t010201 "Washing, dressing and grooming oneself" /
t010299 "Grooming, n.e.c.*" /
t010301 "Health-related self care" /
t010399 "Self care, n.e.c.*" /
t010401 "Personal/Private activities" /
t020101 "Interior cleaning" /
t020102 "Laundry" /
t020103 "Sewing, repairing, and maintaining textiles" /
t020104 "Storing interior hh items, inc. food" /
t020199 "Housework, n.e.c.*" /
t020201 "Food and drink preparation" /
t020202 "Food presentation" /
t020203 "Kitchen and food clean-up" /
t020299 "Food and drink prep, presentation, and clean-up, n.e.c.*" /
t020301 "Interior arrangement, decoration, and repairs" /
t020302 "Building and repairing furniture" /
t020303 "Heating and cooling" /
t020399 "Interior maintenance, repair, and decoration, n.e.c.*" /
t020401 "Exterior cleaning" /
t020402 "Exterior repair, improvements, and decoration" /
t020499 "Exterior maintenance, repair and decoration, n.e.c.*" /
t020501 "Lawn, garden, and houseplant care" /
t020502 "Ponds, pools, and hot tubs" /
t020599 "Lawn and garden, n.e.c.*" /
t020601 "Care for animals and pets (not veterinary care)" /
t020602 "Walking / exercising / playing with animals" /
t020699 "Pet and animal care, n.e.c.*" /
t020701 "Vehicle repair and maintenance (by self)" /
t020799 "Vehicles, n.e.c.*" /
t020801 "Appliance, tool, and toy set-up, repair, and maintenance (by self)" /
t020899 "Appliances and tools, n.e.c.*" /
t020901 "Financial management" /
t020902 "Household and personal organization and planning" /
t020903 "HH and personal mail and messages (except e-mail)" /
t020904 "HH and personal e-mail and messages" /
t020905 "Home security" /
t020999 "Household management, n.e.c.*" /
t029999 "Household activities, n.e.c.*" /
t030101 "Physical care for hh children" /
t030102 "Reading to/with hh children" /
t030103 "Playing with hh children, not sports" /
t030104 "Arts and crafts with hh children" /
t030105 "Playing sports with hh children" /
t030106 "Talking with/listening to hh children" /
t030108 "Organization and planning for hh children" /
t030109 "Looking after hh children (as a primary activity)" /
t030110 "Attending hh children's events" /
t030111 "Waiting for/with hh children" /
t030112 "Picking up/dropping off hh children" /
t030199 "Caring for and helping hh children, n.e.c.*" /
t030201 "Homework (hh children)" /
t030202 "Meetings and school conferences (hh children)" /
t030203 "Home schooling of hh children" /
t030299 "Activities related to hh child's education, n.e.c.*" /
t030301 "Providing medical care to hh children" /
t030302 "Obtaining medical care for hh children" /
t030303 "Waiting associated with hh children's health" /
t030399 "Activities related to hh child's health, n.e.c.*" /
t030401 "Physical care for hh adults" /
t030402 "Looking after hh adult (as a primary activity)" /
t030403 "Providing medical care to hh adult" /
t030404 "Obtaining medical and care services for hh adult" /
t030405 "Waiting associated with caring for household adults" /
t030499 "Caring for household adults, n.e.c.*" /
t030501 "Helping hh adults" /
t030502 "Organization and planning for hh adults" /
t030503 "Picking up/dropping off hh adult" /
t030504 "Waiting associated with helping hh adults" /
t030599 "Helping household adults, n.e.c.*" /
t039999 "Caring for and helping hh members, n.e.c.*" /
t040101 "Physical care for nonhh children" /
t040102 "Reading to/with nonhh children" /
t040103 "Playing with nonhh children, not sports" /
t040104 "Arts and crafts with nonhh children" /
t040105 "Playing sports with nonhh children" /
t040106 "Talking with/listening to nonhh children" /
t040108 "Organization and planning for nonhh children" /
t040109 "Looking after nonhh children (as primary activity)" /
t040110 "Attending nonhh children's events" /
t040111 "Waiting for/with nonhh children" /
t040112 "Dropping off/picking up nonhh children" /
t040199 "Caring for and helping nonhh children, n.e.c.*" /
t040201 "Homework (nonhh children)" /
t040299 "Activities related to nonhh child's educ., n.e.c.*" /
t040301 "Providing medical care to nonhh children" /
t040302 "Obtaining medical care for nonhh children" /
t040401 "Physical care for nonhh adults" /
t040402 "Looking after nonhh adult (as a primary activity)" /
t040403 "Providing medical care to nonhh adult" /
t040404 "Obtaining medical and care services for nonhh adult" /
t040405 "Waiting associated with caring for nonhh adults" /
t040499 "Caring for nonhh adults, n.e.c.*" /
t040501 "Housework, cooking, and shopping assistance for nonhh adults" /
t040502 "House and lawn maintenance and repair assistance for nonhh adults" /
t040503 "Animal and pet care assistance for nonhh adults" /
t040504 "Vehicle and appliance maintenance/repair assistance for nonhh adults" /
t040505 "Financial management assistance for nonhh adults" /
t040506 "Household management and paperwork assistance for nonhh adults" /
t040507 "Picking up/dropping off nonhh adult" /
t040508 "Waiting associated with helping nonhh adults" /
t040599 "Helping nonhh adults, n.e.c.*" /
t050101 "Work, main job" /
t050102 "Work, other job(s)" /
t050103 "Security procedures related to work" /
t050104 "Waiting associated with working" /
t050199 "Working, n.e.c.*" /
t050201 "Socializing, relaxing, and leisure as part of job" /
t050202 "Eating and drinking as part of job" /
t050205 "Waiting associated with work-related activities" /
t050301 "Income-generating hobbies, crafts, and food" /
t050302 "Income-generating performances" /
t050303 "Income-generating services" /
t050304 "Income-generating rental property activities" /
t050305 "Waiting associated with other income-generating activities" /
t050399 "Other income-generating activities, n.e.c.*" /
t050401 "Job search activities" /
t050403 "Job interviewing" /
t050404 "Waiting associated with job search or interview" /
t059999 "Work and work-related activities, n.e.c.*" /
t060101 "Taking class for degree, certification, or licensure" /
t060102 "Taking class for personal interest" /
t060103 "Waiting associated with taking classes" /
t060199 "Taking class, n.e.c.*" /
t060201 "Extracurricular club activities" /
t060202 "Extracurricular music and performance activities" /
t060299 "Education-related extracurricular activities, n.e.c.*" /
t060301 "Research/homework for class for degree, certification, or licensure" /
t060302 "Research/homework for class for pers. interest" /
t060303 "Waiting associated with research/homework" /
t060399 "Research/homework n.e.c.*" /
t060401 "Administrative activities: class for degree, certification, or licensure" /
t060402 "Administrative activities: class for personal interest" /
t060403 "Waiting associated w/admin. activities (education)" /
t060499 "Administrative for education, n.e.c.*" /
t069999 "Education, n.e.c.*" /
t070101 "Grocery shopping" /
t070102 "Purchasing gas" /
t070103 "Purchasing food (not groceries)" /
t070104 "Shopping, except groceries, food and gas" /
t070105 "Waiting associated with shopping" /
t070201 "Comparison shopping" /
t080101 "Using paid childcare services" /
t080201 "Banking" /
t080202 "Using other financial services" /
t080203 "Waiting associated w/banking/financial services" /
t080301 "Using legal services" /
t080401 "Using health and care services outside the home" /
t080402 "Using in-home health and care services" /
t080403 "Waiting associated with medical services" /
t080499 "Using medical services, n.e.c.*" /
t080501 "Using personal care services" /
t080502 "Waiting associated w/personal care services" /
t080601 "Activities rel. to purchasing/selling real estate" /
t080602 "Waiting associated w/purchasing/selling real estate" /
t080701 "Using veterinary services" /
t080702 "Waiting associated with veterinary services" /
t089999 "Professional and personal services, n.e.c.*" /
t090101 "Using interior cleaning services" /
t090103 "Using clothing repair and cleaning services" /
t090199 "Using household services, n.e.c.*" /
t090201 "Using home maint/repair/décor/construction svcs" /
t090202 "Waiting associated w/ home main/repair/décor/constr" /
t090301 "Using pet services" /
t090302 "Waiting associated with pet services" /
t090399 "Using pet services, n.e.c.*" /
t090401 "Using lawn and garden services" /
t090499 "Using lawn and garden services, n.e.c.*" /
t090501 "Using vehicle maintenance or repair services" /
t090502 "Waiting associated with vehicle main. or repair svcs" /
t090599 "Using vehicle maint. and repair svcs, n.e.c.*" /
t099999 "Using household services, n.e.c.*" /
t100101 "Using police and fire services" /
t100102 "Using social services" /
t100103 "Obtaining licenses and paying fines, fees, taxes" /
t100199 "Using government services, n.e.c.*" /
t100201 "Civic obligations and participation" /
t100304 "Waiting associated with using government services" /
t100499 "Security procedures rel. to govt svcs/civic obligations, n.e.c.*" /
t109999 "Government services, n.e.c.*" /
t110101 "Eating and drinking" /
t110201 "Waiting associated w/eating and drinking" /
t120101 "Socializing and communicating with others" /
t120201 "Attending or hosting parties/receptions/ceremonies" /
t120202 "Attending meetings for personal interest (not volunteering)" /
t120299 "Attending/hosting social events, n.e.c.*" /
t120301 "Relaxing, thinking" /
t120302 "Tobacco and drug use" /
t120303 "Television and movies (not religious)" /
t120304 "Television (religious)" /
t120305 "Listening to the radio" /
t120306 "Listening to/playing music (not radio)" /
t120307 "Playing games" /
t120308 "Computer use for leisure (exc. Games)" /
t120309 "Arts and crafts as a hobby" /
t120310 "Collecting as a hobby" /
t120311 "Hobbies, except arts and crafts and collecting" /
t120312 "Reading for personal interest" /
t120313 "Writing for personal interest" /
t120399 "Relaxing and leisure, n.e.c.*" /
t120401 "Attending performing arts" /
t120402 "Attending museums" /
t120403 "Attending movies/film" /
t120404 "Attending gambling establishments" /
t120499 "Arts and entertainment, n.e.c.*" /
t120501 "Waiting assoc. w/socializing and communicating" /
t120502 "Waiting assoc. w/attending/hosting social events" /
t120503 "Waiting associated with relaxing/leisure" /
t120504 "Waiting associated with arts and entertainment" /
t120599 "Waiting associated with socializing, n.e.c.*" /
t129999 "Socializing, relaxing, and leisure, n.e.c.*" /
t130101 "Doing aerobics" /
t130102 "Playing baseball" /
t130103 "Playing basketball" /
t130104 "Biking" /
t130105 "Playing billiards" /
t130106 "Boating" /
t130107 "Bowling" /
t130108 "Climbing, spelunking, caving" /
t130109 "Dancing" /
t130110 "Participating in equestrian sports" /
t130112 "Fishing" /
t130113 "Playing football" /
t130114 "Golfing" /
t130115 "Doing gymnastics" /
t130116 "Hiking" /
t130117 "Playing hockey" /
t130118 "Hunting" /
t130119 "Participating in martial arts" /
t130120 "Playing racquet sports" /
t130122 "Rollerblading" /
t130123 "Playing rugby" /
t130124 "Running" /
t130125 "Skiing, ice skating, snowboarding" /
t130126 "Playing soccer" /
t130127 "Softball" /
t130128 "Using cardiovascular equipment" /
t130129 "Vehicle touring/racing" /
t130130 "Playing volleyball" /
t130131 "Walking" /
t130132 "Participating in water sports" /
t130133 "Weightlifting/strength training" /
t130134 "Working out, unspecified" /
t130135 "Wrestling" /
t130136 "Doing yoga" /
t130199 "Playing sports n.e.c.*" /
t130202 "Watching baseball" /
t130203 "Watching basketball" /
t130205 "Watching billiards" /
t130206 "Watching boating" /
t130207 "Watching bowling" /
t130210 "Watching equestrian sports" /
t130213 "Watching football" /
t130215 "Watching gymnastics" /
t130216 "Watching hockey" /
t130218 "Watching racquet sports" /
t130219 "Watching rodeo competitions" /
t130220 "Watching rollerblading" /
t130221 "Watching rugby" /
t130222 "Watching running" /
t130223 "Watching skiing, ice skating, snowboarding" /
t130224 "Watching soccer" /
t130225 "Watching softball" /
t130226 "Watching vehicle touring/racing" /
t130227 "Watching volleyball" /
t130229 "Watching water sports" /
t130232 "Watching wrestling" /
t130299 "Attending sporting events, n.e.c.*" /
t130301 "Waiting related to playing sports or exercising" /
t130302 "Waiting related to attending sporting events" /
t139999 "Sports, exercise, and recreation, n.e.c.*" /
t140101 "Attending religious services" /
t140102 "Participation in religious practices" /
t140103 "Waiting associated w/religious and spiritual activities" /
t140105 "Religious education activities" /
t149999 "Religious and spiritual activities, n.e.c.*" /
t150101 "Computer use" /
t150102 "Organizing and preparing" /
t150103 "Reading" /
t150104 "Telephone calls (except hotline counseling)" /
t150105 "Writing" /
t150106 "Fundraising" /
t150199 "Administrative and support activities, n.e.c.*" /
t150201 "Food preparation, presentation, clean-up" /
t150202 "Collecting and delivering clothing and other goods" /
t150203 "Providing care" /
t150204 "Teaching, leading, counseling, mentoring" /
t150299 "Social service and care activities, n.e.c.*" /
t150301 "Building houses, wildlife sites, and other structures" /
t150302 "Indoor and outdoor maintenance, repair, and clean-up" /
t150399 "Indoor and outdoor maintenance, building and clean-up activities, n.e.c.*" /
t150401 "Performing" /
t150402 "Serving at volunteer events and cultural activities" /
t150499 "Participating in performance and cultural activities, n.e.c.*" /
t150501 "Attending meetings, conferences, and training" /
t150599 "Attending meetings, conferences, and training, n.e.c.*" /
t150601 "Public health activities" /
t150602 "Public safety activities" /
t150699 "Public health and safety activities, n.e.c.*" /
t150701 "Waiting associated with volunteer activities" /
t150801 "Security procedures related to volunteer activities" /
t159999 "Volunteer activities, n.e.c.*" /
t160101 "Telephone calls to/from family members" /
t160102 "Telephone calls to/from friends, neighbors, or acquaintances" /
t160103 "Telephone calls to/from education services providers" /
t160104 "Telephone calls to/from salespeople" /
t160105 "Telephone calls to/from professional or personal care svcs providers" /
t160106 "Telephone calls to/from household services providers" /
t160107 "Telephone calls to/from paid child or adult care providers" /
t160108 "Telephone calls to/from government officials" /
t160199 "Telephone calls (to or from), n.e.c.*" /
t160201 "Waiting associated with telephone calls" /
t169999 "Telephone calls, n.e.c.*" /
t180101 "Travel related to personal care" /
t180199 "Travel related to personal care, n.e.c.*" /
t180201 "Travel related to housework" /
t180202 "Travel related to food and drink prep., clean-up, and presentation" /
t180203 "Travel related to interior maintenance, repair, and decoration" /
t180204 "Travel related to exterior maintenance, repair, and decoration" /
t180205 "Travel related to lawn, garden, and houseplant care" /
t180206 "Travel related to care for animals and pets (not vet care)" /
t180207 "Travel related to vehicle care and maintenance (by self)" /
t180208 "Travel related to appliance, tool, and toy set-up, repair, and maintenance (by self)" /
t180209 "Travel related to household management" /
t180299 "Travel related to household activities, n.e.c.*" /
t180301 "Travel related to caring for and helping hh children" /
t180302 "Travel related to hh children's education" /
t180303 "Travel related to hh children's health" /
t180304 "Travel related to caring for hh adults" /
t180305 "Travel related to helping hh adults" /
t180401 "Travel related to caring for and helping nonhh children" /
t180402 "Travel related to nonhh children's education" /
t180403 "Travel related to nonhh children's health" /
t180404 "Travel related to caring for nonhh adults" /
t180405 "Travel related to helping nonhh adults" /
t180501 "Travel related to working" /
t180502 "Travel related to work-related activities" /
t180503 "Travel related to income-generating activities" /
t180504 "Travel related to job search and interviewing" /
t180599 "Travel related to work, n.e.c.*" /
t180601 "Travel related to taking class" /
t180602 "Travel related to extracurricular activities (ex. Sports)" /
t180603 "Travel related to research/homework" /
t180604 "Travel related to registration/administrative activities" /
t180699 "Travel related to education, n.e.c.*" /
t180701 "Travel related to grocery shopping" /
t180702 "Travel related to purchasing gas" /
t180703 "Travel related to purchasing food (not groceries)" /
t180704 "Travel related to shopping, ex groceries, food, and gas" /
t180799 "Travel related to consumer purchases, n.e.c.*" /
t180801 "Travel related to using childcare services" /
t180802 "Travel related to using financial services and banking" /
t180803 "Travel related to using legal services" /
t180804 "Travel related to using medical services" /
t180805 "Travel related to using personal care services" /
t180806 "Travel related to using real estate services" /
t180807 "Travel related to using veterinary services" /
t180899 "Travel rel. to using prof. and personal care services, n.e.c.*" /
t180901 "Travel related to using household services" /
t180902 "Travel related to using home main./repair/décor./construction svcs" /
t180903 "Travel related to using pet services (not vet)" /
t180904 "Travel related to using lawn and garden services" /
t180905 "Travel related to using vehicle maintenance and repair services" /
t180999 "Travel related to using household services, n.e.c.*" /
t181001 "Travel related to using government services" /
t181002 "Travel related to civic obligations and participation" /
t181099 "Travel rel. to govt svcs and civic obligations, n.e.c.*" /
t181101 "Travel related to eating and drinking" /
t181201 "Travel related to socializing and communicating" /
t181202 "Travel related to attending or hosting social events" /
t181203 "Travel related to relaxing and leisure" /
t181204 "Travel related to arts and entertainment" /
t181205 "Travel as a form of entertainment" /
t181299 "Travel rel. to socializing, relaxing, and leisure, n.e.c.*" /
t181301 "Travel related to participating in sports/exercise/recreation" /
t181302 "Travel related to attending sporting/recreational events" /
t181401 "Travel related to religious/spiritual practices" /
t181499 "Travel rel. to religious/spiritual activities, n.e.c.*" /
t181501 "Travel related to volunteering" /
t181599 "Travel related to volunteer activities, n.e.c.*" /
t181601 "Travel related to phone calls" /
t181801 "Security procedures related to traveling" /
t189999 "Traveling, n.e.c.*" /
t500101 "Insufficient detail in verbatim" /
t500103 "Missing travel or destination" /
t500105 "Respondent refused to provide information/'none of your business'" /
t500106 "Gap/can't remember" /
t500107 "Unable to code activity at 1st tier" /
.

VALUE LABELS
GTMETSTA
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Metropolitan"
2 = "Non-metropolitan"
3 = "Not identified"
/
PEEDUCA
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
31 = "Less than 1st grade"
32 = "1st, 2nd, 3rd, or 4th grade"
33 = "5th or 6th grade"
34 = "7th or 8th grade"
35 = "9th grade"
36 = "10th grade"
37 = "11th grade"
38 = "12th grade - no diploma"
39 = "High school graduate - diploma or equivalent [GED]"
40 = "Some college but no degree"
41 = "Associate degree - occupational-vocational"
42 = "Associate degree - academic program"
43 = "Bachelor's degree [BA, AB, BS, etc.]"
44 = "Master's degree [MA, MS, MEng, MEd, MSW, etc.]"
45 = "Professional school degree [MD, DDS, DVM, etc.]"
46 = "Doctoral degree [PhD, EdD, etc.]"
/
PEHSPNON
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Hispanic"
2 = "Non-Hispanic"
/
PTDTRACE
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "White only"
10 = "Black-American Indian"
11 = "Black-Asian"
12 = "Black-Hawaiian"
13 = "American Indian-Asian"
14 = "Asian-Hawaiian"
15 = "White-Black-American Indian"
16 = "White-Black-Asian"
17 = "White-American Indian-Asian"
18 = "White-Asian-Hawaiian"
19 = "White-Black-American Indian-Asian"
2 = "Black only"
20 = "2 or 3 races"
21 = "4 or 5 races"
3 = "American Indian, Alaskan Native only"
4 = "Asian only"
5 = "Hawaiian-Pacific Islander only"
6 = "White-Black"
7 = "White-American Indian"
8 = "White-Asian"
9 = "White-Hawaiian"
/
TELFS
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Employed - at work"
2 = "Employed - absent"
3 = "Unemployed - on layoff"
4 = "Unemployed - looking"
5 = "Not in labor force"
/
TEMJOT
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
/
TESCHENR
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
/
TESCHLVL
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "High school"
2 = "College or university"
/
TESEX
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Male"
2 = "Female"
/
TESPEMNT
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Employed"
2 = "Not employed"
/
TRDPFTPT
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Full time"
2 = "Part time"
/
TRSPFTPT
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Full time"
2 = "Part time"
3 = "Hours vary"
/
TRSPPRES
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Spouse present"
2 = "Unmarried partner present"
3 = "No spouse or unmarried partner present"
/
TRHOLDAY
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Diary day was not a holiday"
1 "Diary day was a holiday"
/
TUDIDAY
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Sunday"
2 "Monday"
3 "Tuesday"
4 "Wednesday"
5 "Thursday"
6 "Friday"
7 "Saturday"
/
.
CACHE.
EXECUTE.
