**Hidden Costs Analysis**
import delimited "/Users/simoneherzberg/Desktop/Simone/Medical school/AAMC/hidden costs/UnexpectedCostsOfMed_DATA_LABELS_2022-07-06_1453.csv"

** table 1 **
tab schooltype
tab whatisyourclassyear
sum age
tab howwouldyoudescribeyourgender
tab howwouldyoudescribeyourrace
tab areyouofhispaniclatinoaorspanish
tab areyouafirstgenerationcollegestu
tab areyouafirstgenerationmedicalstu
tab areyoureceivingatuitionscholarsh

**table 2**
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="M1"
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="M2"
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="M3"
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="M4"
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="Graduate student, professional student years"
sum whatisyourestimateddebtaftergrad if whatisyourclassyear=="Research/Year out"
sum whatisyourestimateddebtaftergrad if areyoureceivingatuitionscholarsh == "Yes,full" 
sum whatisyourestimateddebtaftergrad if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum whatisyourestimateddebtaftergrad if areyouafirstgenerationcollegestu == "Yes"

gen otheryear=. 
replace otheryear= 0 if whatisyourclassyear=="Graduate student, professional student years"
replace otheryear= 0 if whatisyourclassyear=="Research/Year out"
sum whatisyourestimateddebtaftergrad if otheryear== 0

regress whatisyourestimateddebtaftergrad whatisyourclassyear

**table 3**
sum howmuchyouspentonsuppliesmateria
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="M1"
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="M2"
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="M3"
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="M4"
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="Graduate student, professional student years"
sum howmuchyouspentonsuppliesmateria if whatisyourclassyear=="Research/Year out"
sum howmuchyouspentonsuppliesmateria if otheryear== 0
sum howmuchyouspentonsuppliesmateria if areyoureceivingatuitionscholarsh == "Yes,full" 
sum howmuchyouspentonsuppliesmateria if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum howmuchyouspentonsuppliesmateria if areyouafirstgenerationcollegestu == "Yes"

sum howmuchyouspentonclothingandatti
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="M1"
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="M2"
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="M3"
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="M4"
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="Graduate student, professional student years"
sum howmuchyouspentonclothingandatti if whatisyourclassyear=="Research/Year out"
sum howmuchyouspentonclothingandatti if otheryear==0
sum howmuchyouspentonclothingandatti if areyoureceivingatuitionscholarsh == "Yes,full" 
sum howmuchyouspentonclothingandatti if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum howmuchyouspentonclothingandatti if areyouafirstgenerationcollegestu == "Yes"

sum howmuchyouspentontextbooksforpre if otheryear==0

sum howmuchyouspentonrequiredboardex
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="M1"
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="M2"
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="M3"
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="M4"
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="Graduate student, professional student years"
sum howmuchyouspentonrequiredboardex if whatisyourclassyear=="Research/Year out"
sum howmuchyouspentonrequiredboardex if otheryear== 0
sum howmuchyouspentonrequiredboardex if areyoureceivingatuitionscholarsh == "Yes,full" 
sum howmuchyouspentonrequiredboardex if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum howmuchyouspentonrequiredboardex if areyouafirstgenerationcollegestu == "Yes"


sum howmuchyouspentonsocialstudentfe
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="M1"
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="M2"
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="M3"
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="M4"
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="Graduate student, professional student years"
sum howmuchyouspentonsocialstudentfe if whatisyourclassyear=="Research/Year out"
sum howmuchyouspentonsocialstudentfe if otheryear==0
sum howmuchyouspentonsocialstudentfe if areyoureceivingatuitionscholarsh == "Yes,full" 
sum howmuchyouspentonsocialstudentfe if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum howmuchyouspentonsocialstudentfe if areyouafirstgenerationcollegestu == "Yes"

sum howmuchyouspentonresidencyfeestr
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="M1"
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="M2"
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="M3"
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="M4"
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="Graduate student, professional student years"
sum howmuchyouspentonresidencyfeestr if whatisyourclassyear=="Research/Year out"
sum howmuchyouspentonresidencyfeestr if otheryear== 0
sum howmuchyouspentonresidencyfeestr if areyoureceivingatuitionscholarsh == "Yes,full" 
sum howmuchyouspentonresidencyfeestr if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
sum howmuchyouspentonresidencyfeestr if areyouafirstgenerationcollegestu == "Yes"

** table 4**
gen agreepocketmoney=.
replace agreepocketmoney= 1 if ispentmoremoneyoutofpocketduring== "Agree"
replace agreepocketmoney= 1 if ispentmoremoneyoutofpocketduring== "Strogly Agree"
replace agreepocketmoney= 0 if ispentmoremoneyoutofpocketduring== "Disagree"
replace agreepocketmoney= 0 if ispentmoremoneyoutofpocketduring== "Strongly Disagree"

gen agreepredicted=.
replace agreepredicted= 1 if thetotalcostofattendancelistedby== "Agree"
replace agreepredicted= 1 if thetotalcostofattendancelistedby== "Strogly Agree"
replace agreepredicted= 0 if thetotalcostofattendancelistedby== "Disagree"
replace agreepredicted= 0 if thetotalcostofattendancelistedby== "Strongly Disagree"

gen agreeconstraint=. 
replace agreeconstraint= 1 if thecostofadditionalresourceshasb== "Agree"
replace agreeconstraint= 1 if thecostofadditionalresourceshasb== "Strogly Agree"
replace agreeconstraint= 0 if thecostofadditionalresourceshasb== "Disagree"
replace agreeconstraint= 0 if thecostofadditionalresourceshasb== "Strongly Disagree"

gen agreementalhelath=. 
replace agreementalhelath= 1 if financialconcernshaveimpactedmym== "Agree"
replace agreementalhelath= 1 if financialconcernshaveimpactedmym== "Strogly Agree"
replace agreementalhelath= 0 if financialconcernshaveimpactedmym== "Disagree"
replace agreementalhelath= 0 if financialconcernshaveimpactedmym== "Strongly Disagree"

tabulate agreepocketmoney whatisyourclassyear, cchi2 cell chi2 exact
tabulate agreepredicted whatisyourclassyear, cchi2 cell chi2 exact
tabulate agreeconstraint whatisyourclassyear, cchi2 cell chi2 exact
tabulate agreementalhelath whatisyourclassyear, cchi2 cell chi2 exact


tabulate agreepocketmoney howwouldyoudescribeyourrace, cchi2 cell chi2 exact
tabulate agreepredicted howwouldyoudescribeyourrace, cchi2 cell chi2 exact
tabulate agreeconstraint howwouldyoudescribeyourrace, cchi2 cell chi2 exact
tabulate agreementalhelath howwouldyoudescribeyourrace, cchi2 cell chi2 exact

tabulate agreepocketmoney schooltype, cchi2 cell chi2 exact
tabulate agreepredicted schooltype, cchi2 cell chi2 exact
tabulate agreeconstraint schooltype, cchi2 cell chi2 exact
tabulate agreementalhelath schooltype, cchi2 cell chi2 exact

tabulate agreepocketmoney areyouafirstgenerationcollegestu, cchi2 cell chi2 exact
tabulate agreepredicted areyouafirstgenerationcollegestu, cchi2 cell chi2 exact
tabulate agreeconstraint areyouafirstgenerationcollegestu, cchi2 cell chi2 exact
tabulate agreementalhelath areyouafirstgenerationcollegestu, cchi2 cell chi2 exact


**BMJ Updates

gen totalunexpectedcost=. 
replace totalunexpectedcost= (howmuchyouspentonsuppliesmateria+howmuchyouspentontextbooksforpre+ howmuchyouspentonclothingandatti + howmuchyouspentonrequiredboardex +howmuchyouspentonsocialstudentfe +howmuchyouspentonresidencyfeestr)

gen clinicalsupplies= howmuchyouspentonsuppliesmateria
replace clinicalsupplies=0 if howmuchyouspentonsuppliesmateria==.

gen testprep= howmuchyouspentontestprep3rdpart
replace testprep=0 if howmuchyouspentontestprep3rdpart==.

gen clothing= howmuchyouspentonclothingandatti
replace clothing=0 if howmuchyouspentonclothingandatti==.

gen textbook= howmuchyouspentontextbooksforpre
replace textbook=0 if howmuchyouspentontextbooksforpre==.

gen requiredboard= howmuchyouspentonrequiredboardex
replace requiredboard=0 if howmuchyouspentonrequiredboardex==.

gen social= howmuchyouspentonsocialstudentfe
replace social= 0 if howmuchyouspentonsocialstudentfe==.

gen residencyfee= howmuchyouspentonresidencyfeestr
replace residencyfee= howmuchyouspentonresidencyfeestr==. 


sum totalunexpectedcost
sum totalunexpectedcost if whatisyourclassyear=="M1"
sum totalunexpectedcost if whatisyourclassyear=="M2"
sum totalunexpectedcost if whatisyourclassyear=="M3"
sum totalunexpectedcost if whatisyourclassyear=="M4"
sum totalunexpectedcost if whatisyourclassyear=="Graduate student, professional student years"
sum totalunexpectedcost if whatisyourclassyear=="Research/Year out"
sum totalunexpectedcost if otheryear==0


ci means total totalunexpectedcost 
ci means total totalunexpectedcost  if whatisyourclassyear=="M1"
ci means total totalunexpectedcost  if whatisyourclassyear=="M2"
ci means total totalunexpectedcost  if whatisyourclassyear=="M3"
ci means total totalunexpectedcost  if whatisyourclassyear=="M4"
ci means total totalunexpectedcost  if whatisyourclassyear=="Graduate student, professional student years"
ci means total totalunexpectedcost  if whatisyourclassyear=="Research/Year out"
ci means total totalunexpectedcost  if otheryear==0

ci means  howmuchyouspentonsuppliesmateria 
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="M1"
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="M2"
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="M3"
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="M4"
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentonsuppliesmateria  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentonsuppliesmateria  if otheryear==0

ci means  howmuchyouspentontestprep3rdpart 
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="M1"
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="M2"
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="M3"
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="M4"
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentontestprep3rdpart   if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentontestprep3rdpart   if otheryear==0

ci means  howmuchyouspentonclothingandatti 
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="M1"
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="M2"
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="M3"
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="M4"
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentonclothingandatti  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentonclothingandatti  if otheryear==0

ci means  howmuchyouspentontextbooksforpre
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="M1"
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="M2"
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="M3"
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="M4"
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentontextbooksforpre  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentontextbooksforpre  if otheryear==0

ci means  howmuchyouspentonrequiredboardex
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="M1"
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="M2"
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="M3"
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="M4"
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentonrequiredboardex  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentonrequiredboardex  if otheryear==0

ci means  howmuchyouspentonsocialstudentfe
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="M1"
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="M2"
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="M3"
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="M4"
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentonsocialstudentfe  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentonsocialstudentfe  if otheryear==0

ci means  howmuchyouspentonresidencyfeestr
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="M1"
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="M2"
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="M3"
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="M4"
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="Graduate student, professional student years"
ci means  howmuchyouspentonresidencyfeestr  if whatisyourclassyear=="Research/Year out"
ci means  howmuchyouspentonresidencyfeestr  if otheryear==0


** table 2 CI
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="M1"
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="M2"
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="M3"
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="M4"
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="Graduate student, professional student years"
ci means whatisyourestimateddebtaftergrad if whatisyourclassyear=="Research/Year out"
ci means whatisyourestimateddebtaftergrad if areyoureceivingatuitionscholarsh == "Yes,full" 
ci means whatisyourestimateddebtaftergrad if areyoureceivingatuitionscholarsh == "Yes, MSTP or other PhD funded program"
ci means whatisyourestimateddebtaftergrad if areyouafirstgenerationcollegestu == "Yes"
