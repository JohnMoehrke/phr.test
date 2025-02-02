
Instance:   ex-MHV-allergy-1
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 1"
Usage: #example
Description:      """
IntoleranceCondition record identity 53495 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "53495" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2002-06-03T09:44:00Z
* code.text = "CONTRAST MEDIA, OTHER"
//* code.coding[+].display = "CONTRAST MEDIA, OTHER"
* category = #medication
* reaction[+].manifestation.text = "RESPIRATORY DISTRESS"
* reaction[=].manifestation.coding = VUID#4637183
* note.text = "Updated using clean up process.  Changed reactant from IVP DYE (free text) to CONTRAST MEDIA, OTHER(file - PS(50.605,)"
* note.time = 2004-07-24T18:29:07Z
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"


Instance:   ex-MHV-allergy-1-deleted
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 1 of an MHV allergy or intolerance - deleted"
Usage: #example
Description:      """
IntoleranceCondition record identity 53495 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "53495" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
//* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error
* recordedDate = 2002-06-03T09:44:00Z
* code.text = "CONTRAST MEDIA, OTHER"
//* code.coding[+].display = "CONTRAST MEDIA, OTHER"
* category = #medication
* reaction[+].manifestation.text = "RESPIRATORY DISTRESS"
* reaction[=].manifestation.coding = VUID#4637183
* note.text = "Updated using clean up process.  Changed reactant from IVP DYE (free text) to CONTRAST MEDIA, OTHER(file - PS(50.605,)"
* note.time = 2004-07-24T18:29:07Z
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"

Instance:   ex-MHV-allergy-2
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 2"
Usage: #example
Description:      """
IntoleranceCondition record identity 67933 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "67933" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2006-02-01T13:57:00Z
* code.text = "TYLENOL"
//* code.coding[+].display = "NON-OPIOID ANALGESICS"
//* code.coding[+].display = "PHARMACEUTICAL AIDS/REAGENTS"
* category = #medication
* reaction[+].manifestation.text = "NAUSEA AND VOMITING"
* reaction[=].manifestation.coding = VUID#4691091
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"




Instance:   ex-MHV-allergy-3
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 3"
Usage: #example
Description:      """
IntoleranceCondition record identity 67934 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "67934" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2006-02-01T13:58:00Z
* code.text = "LORTAB"
//* code.coding[+].display = "OPIOID ANALGESICS"
* category = #medication
* reaction[+].manifestation.text = "NAUSEA AND VOMITING"
* reaction[=].manifestation.coding = VUID#4691091
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-4
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 4"
Usage: #example
Description:      """
IntoleranceCondition record identity 69066 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69066" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-16T14:32:00Z
* code.text = "ASPIRIN"
//* code.coding[+].display = "SALICYLATES,ANTIRHEUMATIC"
* category[+] = #medication
* category[+] = #food
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* note.text = "test comments for 11.2 release testing "
* note.time = 2011-02-16T14:33:26Z
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-5
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 5"
Usage: #example
Description:      """
IntoleranceCondition record identity 69067 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69067" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-16T14:33:00Z
* code.text = "BALSALAZIDE"
//* code.coding[+].display = "GASTRIC MEDICATIONS,OTHER"
* category[+] = #medication
* reaction[+].manifestation.text = "DELIRIUM"
* reaction[=].manifestation.coding = VUID#4637015
* note.text = "new comments would go here, thanks "
* note.time = 2011-02-16T14:34:18Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-6
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 6"
Usage: #example
Description:      """
IntoleranceCondition record identity 69071 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69071" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-21T08:08:00Z
* code.text = "BANANAS"
* category[+] = #food
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* note.text = "test comments"
* note.time = 2011-02-21T08:09:01Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-7
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 7"
Usage: #example
Description:      """
IntoleranceCondition record identity 69072 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69072" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-21T08:09:00Z
* code.text = "PENICILLIN"
//* code.coding[+].display = "(INACTIVE) PENICILLINS"
//* code.coding[+].display = "PENICILLIN-G RELATED PENICILLINS"
//* code.coding[+].display = "PENICILLINS,AMINO DERIVATIVES"
//* code.coding[+].display = "PENICILLINASE-RESISTANT PENICILLINS"
//* code.coding[+].display = "EXTENDED SPECTRUM PENICILLINS"
* category[+] = #medication
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* note.text = "test"
* note.time = 2011-02-21T08:09:43Z
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-8
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 8"
Usage: #example
Description:      """
IntoleranceCondition record identity 69073 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69073" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-21T08:11:00Z
* code.text = "GRAPEFRUIT"
* category[+] = #medication
* category[+] = #food
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* reaction[+].manifestation.text = "SEDATED"
* reaction[=].manifestation.coding = VUID#4637177
* note.text = "test data"
* note.time = 2011-02-21T08:11:42Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-9
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 9"
Usage: #example
Description:      """
IntoleranceCondition record identity 69074 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69074" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-21T08:16:00Z
* code.text = "CARROTS"
* category[+] = #food
* reaction[+].manifestation.text = "SEDATED"
* reaction[=].manifestation.coding = VUID#4637177
* reaction[+].manifestation.text = "PRURITUS"
* reaction[=].manifestation.coding = VUID#4637191
* reaction[+].manifestation.text = "DELIRIUM"
* reaction[=].manifestation.coding = VUID#4637015
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* note.text = "none "
* note.time = 2011-02-21T08:16:49Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-10
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 10"
Usage: #example
Description:      """
IntoleranceCondition record identity 69075 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69075" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-21T08:57:00Z
* code.text = "NAMENDA"
//* code.coding[+].display = "CNS MEDICATIONS,OTHER"
* category[+] = #medication
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* note.text = "test"
* note.time = 2011-02-21T08:57:54Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-11
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 11"
Usage: #example
Description:      """
IntoleranceCondition record identity 69092 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69092" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-28T18:11:00Z
* code.text = "MALTOSE"
//* code.coding[+].display = "CNS MEDICATIONS,OTHER"
* category[+] = #food
* category[+] = #medication
* reaction[+].manifestation.text = "SEDATED"
* reaction[=].manifestation.coding = VUID#4637177
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* note.text = "test 123456 "
* note.time = 2011-02-28T18:11:47Z
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-12
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 12"
Usage: #example
Description:      """
IntoleranceCondition record identity 69093 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69093" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2011-02-28T18:12:00Z
* code.text = "QUINOLINE"
* category[+] = #environment
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* reaction[+].manifestation.text = "PRURITUS"
* reaction[=].manifestation.coding = VUID#4637191
* reaction[+].manifestation.text = "RENAL IMPAIRMENT"
* reaction[=].manifestation.coding = VUID#4637184
* note.text = "new entry "
* note.time = 2011-02-28T18:12:40Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-13
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 13"
Usage: #example
Description:      """
IntoleranceCondition record identity 69123 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69123" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2012-08-24T15:47:00Z
* code.text = "BEE STINGS"
* category[+] = #environment
* reaction[+].manifestation.text = "RESPIRATORY DISTRESS"
* reaction[=].manifestation.coding = VUID#4637183
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* extension[observedHistoric].valueCode = #h
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-14
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 14"
Usage: #example
Description:      """
IntoleranceCondition record identity 69124 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69124" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2013-05-13T17:36:00Z
* code.text = "PEANUTS"
* category[+] = #food
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* reaction[+].manifestation.text = "RESPIRATORY DISTRESSELLING"
* reaction[=].manifestation.coding = VUID#4637183
* reaction[+].manifestation.text = "NAUSEA AND VOMITING"
* reaction[=].manifestation.coding = VUID#4691091
* note.text = "TEST SSC 5/13/2013 "
* note.time = 2013-05-13T17:38:22Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"



Instance:   ex-MHV-allergy-15
InstanceOf: JFM.PHR.allergyIntolerance
Title: "Allergy 15"
Usage: #example
Description:      """
IntoleranceCondition record identity 69129 from a mock ProblemTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* patient = Reference(Patient/ex-MHV-patient-89486)
* identifier[recordIdentifier].value = "69129" 
* identifier[recordIdentifier].system = "http://va.gov/systems/979_120.8"
* identifier[recordIdentifier].use = #official
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* recordedDate = 2014-08-25T17:12:00Z
* code.text = "RUBBER"
* category[+] = #environment
* reaction[+].manifestation.text = "RASH"
* reaction[=].manifestation.coding = VUID#4538635
* reaction[+].manifestation.text = "SWELLING"
* reaction[=].manifestation.coding = VUID#4637164
* reaction[+].manifestation.text = "LOW BLOOD PRESSURE"
* reaction[=].manifestation.coding = VUID#4637093
* reaction[+].manifestation.text = "ANXIETY"
* reaction[=].manifestation.coding = VUID#4637050
* reaction[+].manifestation.text = "NASAL CONGESTION"
* reaction[=].manifestation.coding = VUID#4637212
* reaction[+].manifestation.text = "COUGH"
* reaction[=].manifestation.coding = VUID#4637020
* note.text = "Patient has a Moderate allergy to Rubber. This is a test to

see if it shows up on the Report. SSC TEST 8/25/2014 "
* note.time = 2014-08-25T17:13:24Z
* extension[observedHistoric].valueCode = #o
* contained[+] = ex-MHV-organization-979
* recorder[+].extension[visn].valueReference = Reference(ex-MHV-organization-979)
* recorder[=].display = "Organization 979"


