data atussum_2013;
length TUCASEID $14;
infile 'c:\atussum_2013.dat' lrecl=8192 dlm=',' missover dsd firstobs=2;
input
TUCASEID
TUFINLWGT
TRYHHCHILD
TEAGE
TESEX
PEEDUCA
PTDTRACE
PEHSPNON
GTMETSTA
TELFS
TEMJOT
TRDPFTPT
TESCHENR
TESCHLVL
TRSPPRES
TESPEMPNOT
TRERNWA
TRCHILDNUM
TRSPFTPT
TEHRUSLT
TUDIARYDAY
TRHOLIDAY
TRTEC
TRTHH
t010101
t010102
t010201
t010299
t010301
t010399
t010401
t020101
t020102
t020103
t020104
t020199
t020201
t020202
t020203
t020299
t020301
t020302
t020303
t020399
t020401
t020402
t020499
t020501
t020502
t020599
t020601
t020602
t020699
t020701
t020799
t020801
t020899
t020901
t020902
t020903
t020904
t020905
t020999
t029999
t030101
t030102
t030103
t030104
t030105
t030106
t030108
t030109
t030110
t030111
t030112
t030199
t030201
t030202
t030203
t030299
t030301
t030302
t030303
t030399
t030401
t030402
t030403
t030404
t030405
t030499
t030501
t030502
t030503
t030504
t030599
t039999
t040101
t040102
t040103
t040104
t040105
t040106
t040108
t040109
t040110
t040111
t040112
t040199
t040201
t040299
t040301
t040302
t040401
t040402
t040403
t040404
t040405
t040499
t040501
t040502
t040503
t040504
t040505
t040506
t040507
t040508
t040599
t050101
t050102
t050103
t050104
t050199
t050201
t050202
t050205
t050301
t050302
t050303
t050304
t050305
t050399
t050401
t050403
t050404
t059999
t060101
t060102
t060103
t060199
t060201
t060202
t060299
t060301
t060302
t060303
t060399
t060401
t060402
t060403
t060499
t069999
t070101
t070102
t070103
t070104
t070105
t070201
t080101
t080201
t080202
t080203
t080301
t080401
t080402
t080403
t080499
t080501
t080502
t080601
t080602
t080701
t080702
t089999
t090101
t090103
t090199
t090201
t090202
t090301
t090302
t090399
t090401
t090499
t090501
t090502
t090599
t099999
t100101
t100102
t100103
t100199
t100201
t100304
t100499
t109999
t110101
t110201
t120101
t120201
t120202
t120299
t120301
t120302
t120303
t120304
t120305
t120306
t120307
t120308
t120309
t120310
t120311
t120312
t120313
t120399
t120401
t120402
t120403
t120404
t120499
t120501
t120502
t120503
t120504
t120599
t129999
t130101
t130102
t130103
t130104
t130105
t130106
t130107
t130108
t130109
t130110
t130112
t130113
t130114
t130115
t130116
t130117
t130118
t130119
t130120
t130122
t130123
t130124
t130125
t130126
t130127
t130128
t130129
t130130
t130131
t130132
t130133
t130134
t130135
t130136
t130199
t130202
t130203
t130205
t130206
t130207
t130210
t130213
t130215
t130216
t130218
t130219
t130220
t130221
t130222
t130223
t130224
t130225
t130226
t130227
t130229
t130232
t130299
t130301
t130302
t139999
t140101
t140102
t140103
t140105
t149999
t150101
t150102
t150103
t150104
t150105
t150106
t150199
t150201
t150202
t150203
t150204
t150299
t150301
t150302
t150399
t150401
t150402
t150499
t150501
t150599
t150601
t150602
t150699
t150701
t150801
t159999
t160101
t160102
t160103
t160104
t160105
t160106
t160107
t160108
t160199
t160201
t169999
t180101
t180199
t180201
t180202
t180203
t180204
t180205
t180206
t180207
t180208
t180209
t180299
t180301
t180302
t180303
t180304
t180305
t180401
t180402
t180403
t180404
t180405
t180501
t180502
t180503
t180504
t180599
t180601
t180602
t180603
t180604
t180699
t180701
t180702
t180703
t180704
t180799
t180801
t180802
t180803
t180804
t180805
t180806
t180807
t180899
t180901
t180902
t180903
t180904
t180905
t180999
t181001
t181002
t181099
t181101
t181201
t181202
t181203
t181204
t181205
t181299
t181301
t181302
t181401
t181499
t181501
t181599
t181601
t181801
t189999
t500101
t500103
t500105
t500106
t500107
;

label TUCASEID = "ATUS Case ID (14-digit identifier)";
label GTMETSTA = "Metropolitan status (2000 definitions)";
label PEEDUCA = "Edited: what is the highest level of school you have completed or the highest degree you have received?";
label PEHSPNON = "Edited: are you Spanish, Hispanic, or Latino?";
label PTDTRACE = "Race (topcoded)";
label TEAGE = "Edited: age";
label TEHRUSLT = "Edited: total hours usually worked per week (sum of TEHRUSL1 and TEHRUSL2)";
label TELFS = "Edited: labor force status";
label TEMJOT = "Edited: in the last seven days did you have more than one job?";
label TESCHENR = "Edited: are you enrolled in high school, college, or university?";
label TESCHLVL = "Edited: would that be high school, college, or university?";
label TESEX = "Edited: sex";
label TESPEMPNOT = "Edited: employment status of spouse or unmarried partner";
label TRCHILDNUM = "Number of household children < 18";
label TRDPFTPT = "Full time or part time employment status of respondent";
label TRERNWA = "Weekly earnings (2 implied decimals)";
label TRSPFTPT = "Full time or part time employment status of spouse or unmarried partner";
label TRSPPRES = "Presence of the respondent's spouse or unmarried partner in the household";
label TRYHHCHILD = "Age of youngest household child < 18";
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUFINLWGT = "ATUS final weight";
label TUDIARYDAY = "Day of the week of diary day (day of the week about which the respondent was interviewed)";
label TRHOLIDAY = "Flag to indicate if diary day was a holiday";
label TRTEC = "Total time spent providing eldercare (in minutes)";
label TRTHH = "Total time spent during diary day providing secondary childcare for household children < 13 (in minutes)";

label t010101 = "Sleeping";
label t010102 = "Sleeplessness";
label t010201 = "Washing, dressing and grooming oneself";
label t010299 = "Grooming, n.e.c.*";
label t010301 = "Health-related self care";
label t010399 = "Self care, n.e.c.*";
label t010401 = "Personal/Private activities";
label t020101 = "Interior cleaning";
label t020102 = "Laundry";
label t020103 = "Sewing, repairing, and maintaining textiles";
label t020104 = "Storing interior hh items, inc. food";
label t020199 = "Housework, n.e.c.*";
label t020201 = "Food and drink preparation";
label t020202 = "Food presentation";
label t020203 = "Kitchen and food clean-up";
label t020299 = "Food and drink prep, presentation, and clean-up, n.e.c.*";
label t020301 = "Interior arrangement, decoration, and repairs";
label t020302 = "Building and repairing furniture";
label t020303 = "Heating and cooling";
label t020399 = "Interior maintenance, repair, and decoration, n.e.c.*";
label t020401 = "Exterior cleaning";
label t020402 = "Exterior repair, improvements, and decoration";
label t020499 = "Exterior maintenance, repair and decoration, n.e.c.*";
label t020501 = "Lawn, garden, and houseplant care";
label t020502 = "Ponds, pools, and hot tubs";
label t020599 = "Lawn and garden, n.e.c.*";
label t020601 = "Care for animals and pets (not veterinary care)";
label t020602 = "Walking / exercising / playing with animals";
label t020699 = "Pet and animal care, n.e.c.*";
label t020701 = "Vehicle repair and maintenance (by self)";
label t020799 = "Vehicles, n.e.c.*";
label t020801 = "Appliance, tool, and toy set-up, repair, and maintenance (by self)";
label t020899 = "Appliances and tools, n.e.c.*";
label t020901 = "Financial management";
label t020902 = "Household and personal organization and planning";
label t020903 = "HH and personal mail and messages (except e-mail)";
label t020904 = "HH and personal e-mail and messages";
label t020905 = "Home security";
label t020999 = "Household management, n.e.c.*";
label t029999 = "Household activities, n.e.c.*";
label t030101 = "Physical care for hh children";
label t030102 = "Reading to/with hh children";
label t030103 = "Playing with hh children, not sports";
label t030104 = "Arts and crafts with hh children";
label t030105 = "Playing sports with hh children";
label t030106 = "Talking with/listening to hh children";
label t030108 = "Organization and planning for hh children";
label t030109 = "Looking after hh children (as a primary activity)";
label t030110 = "Attending hh children's events";
label t030111 = "Waiting for/with hh children";
label t030112 = "Picking up/dropping off hh children";
label t030199 = "Caring for and helping hh children, n.e.c.*";
label t030201 = "Homework (hh children)";
label t030202 = "Meetings and school conferences (hh children)";
label t030203 = "Home schooling of hh children";
label t030299 = "Activities related to hh child's education, n.e.c.*";
label t030301 = "Providing medical care to hh children";
label t030302 = "Obtaining medical care for hh children";
label t030303 = "Waiting associated with hh children's health";
label t030399 = "Activities related to hh child's health, n.e.c.*";
label t030401 = "Physical care for hh adults";
label t030402 = "Looking after hh adult (as a primary activity)";
label t030403 = "Providing medical care to hh adult";
label t030404 = "Obtaining medical and care services for hh adult";
label t030405 = "Waiting associated with caring for household adults";
label t030499 = "Caring for household adults, n.e.c.*";
label t030501 = "Helping hh adults";
label t030502 = "Organization and planning for hh adults";
label t030503 = "Picking up/dropping off hh adult";
label t030504 = "Waiting associated with helping hh adults";
label t030599 = "Helping household adults, n.e.c.*";
label t039999 = "Caring for and helping hh members, n.e.c.*";
label t040101 = "Physical care for nonhh children";
label t040102 = "Reading to/with nonhh children";
label t040103 = "Playing with nonhh children, not sports";
label t040104 = "Arts and crafts with nonhh children";
label t040105 = "Playing sports with nonhh children";
label t040106 = "Talking with/listening to nonhh children";
label t040108 = "Organization and planning for nonhh children";
label t040109 = "Looking after nonhh children (as primary activity)";
label t040110 = "Attending nonhh children's events";
label t040111 = "Waiting for/with nonhh children";
label t040112 = "Dropping off/picking up nonhh children";
label t040199 = "Caring for and helping nonhh children, n.e.c.*";
label t040201 = "Homework (nonhh children)";
label t040299 = "Activities related to nonhh child's educ., n.e.c.*";
label t040301 = "Providing medical care to nonhh children";
label t040302 = "Obtaining medical care for nonhh children";
label t040401 = "Physical care for nonhh adults";
label t040402 = "Looking after nonhh adult (as a primary activity)";
label t040403 = "Providing medical care to nonhh adult";
label t040404 = "Obtaining medical and care services for nonhh adult";
label t040405 = "Waiting associated with caring for nonhh adults";
label t040499 = "Caring for nonhh adults, n.e.c.*";
label t040501 = "Housework, cooking, and shopping assistance for nonhh adults";
label t040502 = "House and lawn maintenance and repair assistance for nonhh adults";
label t040503 = "Animal and pet care assistance for nonhh adults";
label t040504 = "Vehicle and appliance maintenance/repair assistance for nonhh adults";
label t040505 = "Financial management assistance for nonhh adults";
label t040506 = "Household management and paperwork assistance for nonhh adults";
label t040507 = "Picking up/dropping off nonhh adult";
label t040508 = "Waiting associated with helping nonhh adults";
label t040599 = "Helping nonhh adults, n.e.c.*";
label t050101 = "Work, main job";
label t050102 = "Work, other job(s)";
label t050103 = "Security procedures related to work";
label t050104 = "Waiting associated with working";
label t050199 = "Working, n.e.c.*";
label t050201 = "Socializing, relaxing, and leisure as part of job";
label t050202 = "Eating and drinking as part of job";
label t050205 = "Waiting associated with work-related activities";
label t050301 = "Income-generating hobbies, crafts, and food";
label t050302 = "Income-generating performances";
label t050303 = "Income-generating services";
label t050304 = "Income-generating rental property activities";
label t050305 = "Waiting associated with other income-generating activities";
label t050399 = "Other income-generating activities, n.e.c.*";
label t050401 = "Job search activities";
label t050403 = "Job interviewing";
label t050404 = "Waiting associated with job search or interview";
label t059999 = "Work and work-related activities, n.e.c.*";
label t060101 = "Taking class for degree, certification, or licensure";
label t060102 = "Taking class for personal interest";
label t060103 = "Waiting associated with taking classes";
label t060199 = "Taking class, n.e.c.*";
label t060201 = "Extracurricular club activities";
label t060202 = "Extracurricular music and performance activities";
label t060299 = "Education-related extracurricular activities, n.e.c.*";
label t060301 = "Research/homework for class for degree, certification, or licensure";
label t060302 = "Research/homework for class for pers. interest";
label t060303 = "Waiting associated with research/homework";
label t060399 = "Research/homework n.e.c.*";
label t060401 = "Administrative activities: class for degree, certification, or licensure";
label t060402 = "Administrative activities: class for personal interest";
label t060403 = "Waiting associated w/admin. activities (education)";
label t060499 = "Administrative for education, n.e.c.*";
label t069999 = "Education, n.e.c.*";
label t070101 = "Grocery shopping";
label t070102 = "Purchasing gas";
label t070103 = "Purchasing food (not groceries)";
label t070104 = "Shopping, except groceries, food and gas";
label t070105 = "Waiting associated with shopping";
label t070201 = "Comparison shopping";
label t080101 = "Using paid childcare services";
label t080201 = "Banking";
label t080202 = "Using other financial services";
label t080203 = "Waiting associated w/banking/financial services";
label t080301 = "Using legal services";
label t080401 = "Using health and care services outside the home";
label t080402 = "Using in-home health and care services";
label t080403 = "Waiting associated with medical services";
label t080499 = "Using medical services, n.e.c.*";
label t080501 = "Using personal care services";
label t080502 = "Waiting associated w/personal care services";
label t080601 = "Activities rel. to purchasing/selling real estate";
label t080602 = "Waiting associated w/purchasing/selling real estate";
label t080701 = "Using veterinary services";
label t080702 = "Waiting associated with veterinary services";
label t089999 = "Professional and personal services, n.e.c.*";
label t090101 = "Using interior cleaning services";
label t090103 = "Using clothing repair and cleaning services";
label t090199 = "Using household services, n.e.c.*";
label t090201 = "Using home maint/repair/décor/construction svcs";
label t090202 = "Waiting associated w/ home main/repair/décor/constr";
label t090301 = "Using pet services";
label t090302 = "Waiting associated with pet services";
label t090399 = "Using pet services, n.e.c.*";
label t090401 = "Using lawn and garden services";
label t090499 = "Using lawn and garden services, n.e.c.*";
label t090501 = "Using vehicle maintenance or repair services";
label t090502 = "Waiting associated with vehicle main. or repair svcs";
label t090599 = "Using vehicle maint. and repair svcs, n.e.c.*";
label t099999 = "Using household services, n.e.c.*";
label t100101 = "Using police and fire services";
label t100102 = "Using social services";
label t100103 = "Obtaining licenses and paying fines, fees, taxes";
label t100199 = "Using government services, n.e.c.*";
label t100201 = "Civic obligations and participation";
label t100304 = "Waiting associated with using government services";
label t100499 = "Security procedures rel. to govt svcs/civic obligations, n.e.c.*";
label t109999 = "Government services, n.e.c.*";
label t110101 = "Eating and drinking";
label t110201 = "Waiting associated w/eating and drinking";
label t120101 = "Socializing and communicating with others";
label t120201 = "Attending or hosting parties/receptions/ceremonies";
label t120202 = "Attending meetings for personal interest (not volunteering)";
label t120299 = "Attending/hosting social events, n.e.c.*";
label t120301 = "Relaxing, thinking";
label t120302 = "Tobacco and drug use";
label t120303 = "Television and movies (not religious)";
label t120304 = "Television (religious)";
label t120305 = "Listening to the radio";
label t120306 = "Listening to/playing music (not radio)";
label t120307 = "Playing games";
label t120308 = "Computer use for leisure (exc. Games)";
label t120309 = "Arts and crafts as a hobby";
label t120310 = "Collecting as a hobby";
label t120311 = "Hobbies, except arts and crafts and collecting";
label t120312 = "Reading for personal interest";
label t120313 = "Writing for personal interest";
label t120399 = "Relaxing and leisure, n.e.c.*";
label t120401 = "Attending performing arts";
label t120402 = "Attending museums";
label t120403 = "Attending movies/film";
label t120404 = "Attending gambling establishments";
label t120499 = "Arts and entertainment, n.e.c.*";
label t120501 = "Waiting assoc. w/socializing and communicating";
label t120502 = "Waiting assoc. w/attending/hosting social events";
label t120503 = "Waiting associated with relaxing/leisure";
label t120504 = "Waiting associated with arts and entertainment";
label t120599 = "Waiting associated with socializing, n.e.c.*";
label t129999 = "Socializing, relaxing, and leisure, n.e.c.*";
label t130101 = "Doing aerobics";
label t130102 = "Playing baseball";
label t130103 = "Playing basketball";
label t130104 = "Biking";
label t130105 = "Playing billiards";
label t130106 = "Boating";
label t130107 = "Bowling";
label t130108 = "Climbing, spelunking, caving";
label t130109 = "Dancing";
label t130110 = "Participating in equestrian sports";
label t130112 = "Fishing";
label t130113 = "Playing football";
label t130114 = "Golfing";
label t130115 = "Doing gymnastics";
label t130116 = "Hiking";
label t130117 = "Playing hockey";
label t130118 = "Hunting";
label t130119 = "Participating in martial arts";
label t130120 = "Playing racquet sports";
label t130122 = "Rollerblading";
label t130123 = "Playing rugby";
label t130124 = "Running";
label t130125 = "Skiing, ice skating, snowboarding";
label t130126 = "Playing soccer";
label t130127 = "Softball";
label t130128 = "Using cardiovascular equipment";
label t130129 = "Vehicle touring/racing";
label t130130 = "Playing volleyball";
label t130131 = "Walking";
label t130132 = "Participating in water sports";
label t130133 = "Weightlifting/strength training";
label t130134 = "Working out, unspecified";
label t130135 = "Wrestling";
label t130136 = "Doing yoga";
label t130199 = "Playing sports n.e.c.*";
label t130202 = "Watching baseball";
label t130203 = "Watching basketball";
label t130205 = "Watching billiards";
label t130206 = "Watching boating";
label t130207 = "Watching bowling";
label t130210 = "Watching equestrian sports";
label t130213 = "Watching football";
label t130215 = "Watching gymnastics";
label t130216 = "Watching hockey";
label t130218 = "Watching racquet sports";
label t130219 = "Watching rodeo competitions";
label t130220 = "Watching rollerblading";
label t130221 = "Watching rugby";
label t130222 = "Watching running";
label t130223 = "Watching skiing, ice skating, snowboarding";
label t130224 = "Watching soccer";
label t130225 = "Watching softball";
label t130226 = "Watching vehicle touring/racing";
label t130227 = "Watching volleyball";
label t130229 = "Watching water sports";
label t130232 = "Watching wrestling";
label t130299 = "Attending sporting events, n.e.c.*";
label t130301 = "Waiting related to playing sports or exercising";
label t130302 = "Waiting related to attending sporting events";
label t139999 = "Sports, exercise, and recreation, n.e.c.*";
label t140101 = "Attending religious services";
label t140102 = "Participation in religious practices";
label t140103 = "Waiting associated w/religious and spiritual activities";
label t140105 = "Religious education activities";
label t149999 = "Religious and spiritual activities, n.e.c.*";
label t150101 = "Computer use";
label t150102 = "Organizing and preparing";
label t150103 = "Reading";
label t150104 = "Telephone calls (except hotline counseling)";
label t150105 = "Writing";
label t150106 = "Fundraising";
label t150199 = "Administrative and support activities, n.e.c.*";
label t150201 = "Food preparation, presentation, clean-up";
label t150202 = "Collecting and delivering clothing and other goods";
label t150203 = "Providing care";
label t150204 = "Teaching, leading, counseling, mentoring";
label t150299 = "Social service and care activities, n.e.c.*";
label t150301 = "Building houses, wildlife sites, and other structures";
label t150302 = "Indoor and outdoor maintenance, repair, and clean-up";
label t150399 = "Indoor and outdoor maintenance, building and clean-up activities, n.e.c.*";
label t150401 = "Performing";
label t150402 = "Serving at volunteer events and cultural activities";
label t150499 = "Participating in performance and cultural activities, n.e.c.*";
label t150501 = "Attending meetings, conferences, and training";
label t150599 = "Attending meetings, conferences, and training, n.e.c.*";
label t150601 = "Public health activities";
label t150602 = "Public safety activities";
label t150699 = "Public health and safety activities, n.e.c.*";
label t150701 = "Waiting associated with volunteer activities";
label t150801 = "Security procedures related to volunteer activities";
label t159999 = "Volunteer activities, n.e.c.*";
label t160101 = "Telephone calls to/from family members";
label t160102 = "Telephone calls to/from friends, neighbors, or acquaintances";
label t160103 = "Telephone calls to/from education services providers";
label t160104 = "Telephone calls to/from salespeople";
label t160105 = "Telephone calls to/from professional or personal care svcs providers";
label t160106 = "Telephone calls to/from household services providers";
label t160107 = "Telephone calls to/from paid child or adult care providers";
label t160108 = "Telephone calls to/from government officials";
label t160199 = "Telephone calls (to or from), n.e.c.*";
label t160201 = "Waiting associated with telephone calls";
label t169999 = "Telephone calls, n.e.c.*";
label t180101 = "Travel related to personal care";
label t180199 = "Travel related to personal care, n.e.c.*";
label t180201 = "Travel related to housework";
label t180202 = "Travel related to food and drink prep., clean-up, and presentation";
label t180203 = "Travel related to interior maintenance, repair, and decoration";
label t180204 = "Travel related to exterior maintenance, repair, and decoration";
label t180205 = "Travel related to lawn, garden, and houseplant care";
label t180206 = "Travel related to care for animals and pets (not vet care)";
label t180207 = "Travel related to vehicle care and maintenance (by self)";
label t180208 = "Travel related to appliance, tool, and toy set-up, repair, and maintenance (by self)";
label t180209 = "Travel related to household management";
label t180299 = "Travel related to household activities, n.e.c.*";
label t180301 = "Travel related to caring for and helping hh children";
label t180302 = "Travel related to hh children's education";
label t180303 = "Travel related to hh children's health";
label t180304 = "Travel related to caring for hh adults";
label t180305 = "Travel related to helping hh adults";
label t180401 = "Travel related to caring for and helping nonhh children";
label t180402 = "Travel related to nonhh children's education";
label t180403 = "Travel related to nonhh children's health";
label t180404 = "Travel related to caring for nonhh adults";
label t180405 = "Travel related to helping nonhh adults";
label t180501 = "Travel related to working";
label t180502 = "Travel related to work-related activities";
label t180503 = "Travel related to income-generating activities";
label t180504 = "Travel related to job search and interviewing";
label t180599 = "Travel related to work, n.e.c.*";
label t180601 = "Travel related to taking class";
label t180602 = "Travel related to extracurricular activities (ex. Sports)";
label t180603 = "Travel related to research/homework";
label t180604 = "Travel related to registration/administrative activities";
label t180699 = "Travel related to education, n.e.c.*";
label t180701 = "Travel related to grocery shopping";
label t180702 = "Travel related to purchasing gas";
label t180703 = "Travel related to purchasing food (not groceries)";
label t180704 = "Travel related to shopping, ex groceries, food, and gas";
label t180799 = "Travel related to consumer purchases, n.e.c.*";
label t180801 = "Travel related to using childcare services";
label t180802 = "Travel related to using financial services and banking";
label t180803 = "Travel related to using legal services";
label t180804 = "Travel related to using medical services";
label t180805 = "Travel related to using personal care services";
label t180806 = "Travel related to using real estate services";
label t180807 = "Travel related to using veterinary services";
label t180899 = "Travel rel. to using prof. and personal care services, n.e.c.*";
label t180901 = "Travel related to using household services";
label t180902 = "Travel related to using home main./repair/décor./construction svcs";
label t180903 = "Travel related to using pet services (not vet)";
label t180904 = "Travel related to using lawn and garden services";
label t180905 = "Travel related to using vehicle maintenance and repair services";
label t180999 = "Travel related to using household services, n.e.c.*";
label t181001 = "Travel related to using government services";
label t181002 = "Travel related to civic obligations and participation";
label t181099 = "Travel rel. to govt svcs and civic obligations, n.e.c.*";
label t181101 = "Travel related to eating and drinking";
label t181201 = "Travel related to socializing and communicating";
label t181202 = "Travel related to attending or hosting social events";
label t181203 = "Travel related to relaxing and leisure";
label t181204 = "Travel related to arts and entertainment";
label t181205 = "Travel as a form of entertainment";
label t181299 = "Travel rel. to socializing, relaxing, and leisure, n.e.c.*";
label t181301 = "Travel related to participating in sports/exercise/recreation";
label t181302 = "Travel related to attending sporting/recreational events";
label t181401 = "Travel related to religious/spiritual practices";
label t181499 = "Travel rel. to religious/spiritual activities, n.e.c.*";
label t181501 = "Travel related to volunteering";
label t181599 = "Travel related to volunteer activities, n.e.c.*";
label t181601 = "Travel related to phone calls";
label t181801 = "Security procedures related to traveling";
label t189999 = "Traveling, n.e.c.*";
label t500101 = "Insufficient detail in verbatim";
label t500103 = "Missing travel or destination";
label t500105 = "Respondent refused to provide information/'none of your business'";
label t500106 = "Gap/can't remember";
label t500107 = "Unable to code activity at 1st tier";

run;

proc format;
value GTMETSTA /*GTMETSTA*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Metropolitan"
2 = "Non-metropolitan"
3 = "Not identified"
;
value PEEDUCA /*PEEDUCA*/
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
39 = "High school graduate - diploma or equivalent (GED)"
40 = "Some college but no degree"
41 = "Associate degree - occupational/vocational"
42 = "Associate degree - academic program"
43 = "Bachelor's degree (BA, AB, BS, etc.)"
44 = "Master's degree (MA, MS, MEng, MEd, MSW, etc.)"
45 = "Professional school degree (MD, DDS, DVM, etc.)"
46 = "Doctoral degree (PhD, EdD, etc.)"
;
value PEHSPNON /*PEHSPNON*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Hispanic"
2 = "Non-Hispanic"
;
value PTDTRACE /*PTDTRACE*/
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
5 = "Hawaiian/Pacific Islander only"
6 = "White-Black"
7 = "White-American Indian"
8 = "White-Asian"
9 = "White-Hawaiian"
;
value TELFS /*TELFS*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Employed - at work"
2 = "Employed - absent"
3 = "Unemployed - on layoff"
4 = "Unemployed - looking"
5 = "Not in labor force"
;
value TEMJOT /*TEMJOT*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;
value TESCHENR /*TESCHENR*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Yes"
2 = "No"
;
value TESCHLVL /*TESCHLVL*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "High school"
2 = "College or university"
;
value TESEX /*TESEX*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Male"
2 = "Female"
;
value TESPEMPN /*altered: TESPEMPNOT**/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Employed"
2 = "Not employed"
;
value TRDPFTPT /*TRDPFTPT*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Full time"
2 = "Part time"
;
value TRSPFTPT /*TRSPFTPT*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Full time"
2 = "Part time"
3 = "Hours vary"
;
value TRSPPRES /*TRSPPRES*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Spouse present"
2 = "Unmarried partner present"
3 = "No spouse or unmarried partner present"
;
value TUDIRYDY /*altered: TUDIARYDAY**/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Sunday"
2 = "Monday"
3 = "Tuesday"
4 = "Wednesday"
5 = "Thursday"
6 = "Friday"
7 = "Saturday"
;
value TRHOLIDY /*altered: TRHOLIDAY**/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Diary day was not a holiday"
1 = "Diary day was a holiday"
;
run;
proc contents data=atussum_2013; run;
