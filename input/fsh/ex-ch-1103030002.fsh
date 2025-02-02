
///////////////////////////////////////////////////  1103030002  ////////////////////////////////////////


Instance:   ex-MHV-chSpecimen-1103030002
InstanceOf: JFM.PHR.chSpecimen
Usage: #inline
* status = #available
* type.coding[+].code = #BLD
* type.coding[=].display = "Whole blood"
* type.coding[=].system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* type.coding[+].code = #70
* type.coding[=].display = "BLOOD"
* type.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/61"
* type.text = "BLOOD"
* collection.collectedDateTime = 2020-10-29T13:30:03-05:00
* request = Reference(ex-MHV-chOrder-1103030002a)


Instance: ex-MHV-chOrder-1103030002a
InstanceOf: JFM.PHR.chOrder
Usage: #inline
* category[us-core] = SCT#108252007 "Laboratory procedure"
* code.coding[+].code = #85052.0000
* code.text = "Glycohemoglobin A(1) C"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/64"
* code.coding[+].code = #1893
* code.coding[=].display = "A1C HEMOGLOBIN {Pnl}"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/60"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-942104)
* performer[+] = Reference(Organization/ex-MHV-organization-660)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-59845-VA660)

Instance: ex-MHV-chTest-1103030002a
InstanceOf: JFM.PHR.chTest 
Usage: #inline
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* interpretation.text = "L"
* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L
* status = #final
* code.coding[+].code = #4548-4
* code.text = "HEMOGLOBIN A1C/HEMOGLOBIN.TOTAL:MFR:PT:BLD:QN:"
* code.coding[=].system = LOINC
* code.coding[=].version = "2.68"
* code.coding[+].code = #4682837
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/95.3"
* code.text = "HEMOGLOBIN A1C"
* effectiveDateTime = 2020-10-29T13:32:46-05:00
* referenceRange.text = "4.4-6.0"
* valueQuantity.value = 3.9
* valueQuantity.unit = "%"
* valueQuantity.system = UCUM
* performer = Reference(Organization/ex-MHV-organization-660)
* subject = Reference(Patient/ex-MHV-patient-942104)
* basedOn = Reference(ex-MHV-chOrder-1103030002a)
* specimen = Reference(ex-MHV-chSpecimen-1103030002)





Instance: ex-MHV-chReport-1103030002
InstanceOf: JFM.PHR.chReport 
Title: "ChemHem 1103030002"
Usage: #example
Description: """
Example from a mock labTestPromises (1103030002)
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[Rid].value = "1103030002" 
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].use = #usual
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[ChSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#CH
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = 2020-10-29T13:32:46-05:00
* issued = 2020-10-29T13:32:46-05:00
* extension[note][+].valueString = "Lisa's Test 10/29/20"
* contained[+] = ex-MHV-organization-979
* contained[+] = ex-MHV-practitioner-59845-VA660
* contained[+] = ex-MHV-organization-660
* performer[+] = Reference(Organization/ex-MHV-organization-979)

* contained[+] = ex-MHV-chOrder-1103030002a
* basedOn[+] = Reference(ex-MHV-chOrder-1103030002a)
* contained[+] = ex-MHV-chTest-1103030002a
* result[+] = Reference(ex-MHV-chTest-1103030002a)
* category[2].coding.code = #4548-4
* category[=].text = "HEMOGLOBIN A1C/HEMOGLOBIN.TOTAL:MFR:PT:BLD:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chSpecimen-1103030002
* specimen[+] = Reference(ex-MHV-chSpecimen-1103030002)
* effectiveDateTime = 2020-10-29T13:30:03-05:00

