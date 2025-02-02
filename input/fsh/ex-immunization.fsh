
Instance:   ex-MHV-immunization-1
InstanceOf: JFM.PHR.immunization
Description: "ImmunizationTO.124684"
Usage: #example
Title: "Immunization 1"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* vaccineCode.text = "COVID-19 (MODERNA), MRNA, LNP-S, PF, 100 MCG/0.5ML DOSE OR 50 MCG/0.25ML DOSE"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = 2022-08-08T11:15:28Z
* recorded = 2022-08-08T11:15:28Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.124684" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note[0].text = "test"
* contained[+] = in-location-1
* location = Reference(in-location-1)
//* encounter.identifier.value = "6433274"
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)


Instance: in-location-1
InstanceOf: JFMlocation
Usage: #inline
* name =  "23 HOUR OBSERVATION"


Instance:   ex-MHV-immunization-deleted-1
InstanceOf: JFM.PHR.immunization
Description: "This is derived from ImmunizationTO.124684, with a diffent identifier (ImmunizationTO.1), and marked as entered-in-error"
Usage: #example
Title: "Immunization 1 deleted"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #entered-in-error
* vaccineCode.text = "COVID-19 (MODERNA), MRNA, LNP-S, PF, 100 MCG/0.5ML DOSE OR 50 MCG/0.25ML DOSE"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = 2022-08-08T11:15:28Z
* recorded = 2022-08-08T11:15:28Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.1" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note[0].text = "test"
* contained[+] = in-location-1
* location = Reference(in-location-1)
//* encounter.identifier.value = "6433274"
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)


Instance:   ex-MHV-immunization-2
InstanceOf: JFM.PHR.immunization
Description: "ImmunizationTO.124685"
Usage: #example
Title: "Immunization 2"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* vaccineCode.text = "INFLUENZA, INJECTABLE, QUADRIVALENT"
* vaccineCode.coding[0] = CPT#90688 "IIV4 VACCINE SPLT 0.5 ML IM"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = 2022-08-05T16:56:38Z
* recorded = 2022-08-05T16:56:38Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.2" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note.text = "test comment"
* contained[+] = in-location-2
* location = Reference(in-location-2)
//* encounter.identifier.value = "6433261"
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"
* reaction.detail.display = "FEVER"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)



Instance: in-location-2
InstanceOf: JFMlocation
Usage: #inline
* name =  "ADTP BURNETT"


Instance:   ex-MHV-immunization-2-none
InstanceOf: JFM.PHR.immunization
Description: "ImmunizationTO.124685"
Usage: #example
Title: "Immunization 2 - but with a reaction explicitly indicated as NONE, this is different than no reaction indicated."
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* vaccineCode.text = "INFLUENZA, INJECTABLE, QUADRIVALENT"
* vaccineCode.coding[0] = CPT#90688 "IIV4 VACCINE SPLT 0.5 ML IM"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = 2022-08-05T16:56:38Z
* recorded = 2022-08-05T16:56:38Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.2" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note.text = "test comment"
* contained[+] = in-location-2
* location = Reference(in-location-2)
//* encounter.identifier.value = "6433261"
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"
* reaction.detail.display = "NONE"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)



Instance:   ex-MHV-immunization-3
InstanceOf: JFM.PHR.immunization
Description: "Immunization given in 1980"
Usage: #example
Title: "Immunization 3"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* vaccineCode.text = "ZOSTER"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = "1980"
* recorded = 2022-08-08T11:15:28Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.3" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note[0].text = "test of immunization with just a year"
* contained[+] = in-location-1
* location = Reference(in-location-1)
//* encounter.identifier.value = "6433274"
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)


Instance:   ex-MHV-immunization-4
InstanceOf: JFM.PHR.immunization
Description: "Immunization given in 2012-01-02"
Usage: #example
Title: "Immunization 4"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* vaccineCode.text = "ZOSTER Booster"
* patient = Reference(Patient/ex-MHV-patient-1)
* occurrenceDateTime = "2012-01-02"
* recorded = 2022-08-08T11:15:28Z
* primarySource.extension[dar].valueCode = #unknown
* identifier[TOid].value = "ImmunizationTO.4" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* note[0].text = "test of immunization with just a year/month/date"
* contained[+] = in-location-1
* location = Reference(in-location-1)
//* encounter.identifier.value = "6433274"
* protocolApplied.series = "BOOSTER"
* protocolApplied.doseNumberString = "B"
* contained[+] = ex-MHV-organization-552
* performer[@default].actor = Reference(ex-MHV-organization-552)




Instance: 27654
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.125285"
Title: "Immunication 27654"
* contained[0] = Location-0
* contained[+] = Organization-0
* contained[+] = Provider-0
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.125285"
* status = #completed
* vaccineCode = $cpt#90717 "YELLOW FEVER VACCINE SUBQ"
* vaccineCode.text = "YELLOW FEVER"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2023-10-13T10:49:00-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-0)
* performer[@default].actor = Reference(Organization-0)
* performer[AP].function = $v2-0443#AP
* performer[AP].actor = Reference(Provider-0)
* note.text = "Yellow "
* protocolApplied.series = "COMPLETE"
* protocolApplied.doseNumberString = "C"

Instance: Location-0
InstanceOf: Location
Usage: #inline
* name = "ADULT DAY HEALTH CARE"

Instance: Organization-0
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* identifier.use = #usual
* identifier.type.text = "L"
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.value = "984"
* active = true
* name = "DAYTSHR TEST LAB"

Instance: Provider-0
InstanceOf: Practitioner
Usage: #inline
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.value = "0"
* name.text = "KHAN,MUAZZAM"




Instance: 27657
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.124696"
Title: "Immunication 27657"
* contained[0] = Location-1
* contained[+] = ex-MHV-organization-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.124696"
* status = #completed
* vaccineCode = $cpt#90707 "MMR VACCINE SC"
* vaccineCode.text = "MMR"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2022-08-18T16:29:23-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-1)
* performer[@default].actor = Reference(ex-MHV-organization-552)

Instance: Location-1
InstanceOf: Location
Usage: #inline
* name = "ADMISSIONS (LOC)"


Instance: 27656
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.124695"
Title: "Immunication 27656"
* contained[0] = Location-1
* contained[+] = ex-MHV-organization-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.124695"
* status = #completed
* vaccineCode.text = "DENGUE FEVER TETRAVALENT"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2022-08-18T16:29:23-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-1)
* performer[@default].actor = Reference(ex-MHV-organization-552)



Instance: 27658
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.124697"
Title: "Immunication 27658"
* contained[0] = Location-1
* contained[+] = ex-MHV-organization-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.124697"
* status = #completed
* vaccineCode.text = "HEP B, ADULT"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2022-08-18T16:29:23-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-1)
* performer[@default].actor = Reference(ex-MHV-organization-552)

Instance: 27655
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.124694"
Title: "Immunication 27655"
* contained[0] = Location-1
* contained[+] = ex-MHV-organization-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.124694"
* status = #completed
* vaccineCode.text = "COVID-19 (MODERNA), MRNA, LNP-S, PF, 100 MCG/0.5ML DOSE OR 50 MCG/0.25ML DOSE"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2022-08-18T16:29:23-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-1)
* performer[@default].actor = Reference(ex-MHV-organization-552)

Instance: 27653
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.125286"
Title: "Immunication 27653"
* contained[0] = Organization-0
* contained[+] = Provider-0
* contained[+] = Location-2
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.125286"
* status = #completed
* vaccineCode = $cpt#90750 "HZV VACC RECOMBINANT IM"
* vaccineCode.text = "ZOSTER RECOMBINANT"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2023-10-13T11:15:00-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(Location-2)
* performer[@default].actor = Reference(Organization-0)
* performer[AP].function = $v2-0443#AP
* performer[AP].actor = Reference(Provider-0)
* note.text = "test series 1"
* protocolApplied.series = "SERIES 1"
* protocolApplied.doseNumberString = "1"

Instance: Location-2
InstanceOf: Location
Usage: #inline
* name = "AUDIOLOGY FELLOW (PM)"


Instance: 28652
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.125307"
Title: "Immunication 28652"
* contained[0] = Organization-0
* contained[+] = Provider-1
* contained[+] = in-location-2
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.125307"
* status = #completed
* vaccineCode = $cpt#90732 "PPSV23 VACC 2 YRS+ SUBQ/IM"
* vaccineCode.text = "PNEUMOCOCCAL POLYSACCHARIDE PPV23"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2023-10-27T10:00:00-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(in-location-2)
* performer[@default].actor = Reference(Organization-0)
* performer[AP].function = $v2-0443#AP
* performer[AP].actor = Reference(Provider-1)
* note.text = "Immunization test with Muazzam Khan"
* protocolApplied.series = "SERIES 4"
* protocolApplied.doseNumberString = "4"


Instance: Provider-1
InstanceOf: Practitioner
Usage: #inline
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.value = "0"
* name.text = "AHMED,MARUF"



Instance: 28653
InstanceOf: JFM.PHR.immunization
Usage: #example
Description: "ImmunizationTO.125308"
Title: "Immunication 28653"
* contained[0] = Organization-0
* contained[+] = Provider-0
* contained[+] = in-location-1
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ImmunizationTO.125308"
* status = #completed
* vaccineCode = $cpt#90651 "9VHPV VACCINE 2/3 DOSE IM"
* vaccineCode.text = "HPV9"
* patient = Reference(Patient/27659)
* occurrenceDateTime = "2023-10-31T13:16:00-04:00"
* primarySource.extension[dar].valueCode = #unknown
* location = Reference(in-location-1)
* performer[@default].actor = Reference(Organization-0)
* performer[AP].function = $v2-0443#AP
* performer[AP].actor = Reference(Provider-0)
* note.text = "Entered Booster as series "
* protocolApplied.series = "BOOSTER"
* protocolApplied.doseNumberString = "B"
