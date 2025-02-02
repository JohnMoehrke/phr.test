
///////////////////////////////////////////////////  1103030001  ////////////////////////////////////////


Instance:   ex-MHV-chSpecimen-1103030001
InstanceOf: JFM.PHR.chSpecimen
Usage: #inline
* status = #available
* type.coding[+].code = #PLAS
* type.coding[=].display = "Plasma"
* type.coding[=].system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* type.coding[+].code = #73
* type.coding[=].display = "PLASMA"
* type.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/61"
* type.text = "PLASMA"
* collection.collectedDateTime = 2020-10-29T13:28:45-05:00
* request = Reference(ex-MHV-chOrder-1103030001a)

Instance: ex-MHV-chOrder-1103030001a
InstanceOf: JFM.PHR.chOrder
Usage: #inline
* category[us-core] = SCT#108252007 "Laboratory procedure"
* code.coding[+].code = #84330.0000
* code.text = "Glucose Quant"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/64"
* code.coding[+].code = #175
* code.coding[=].display = "GLUCOSE"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/60"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-942104)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-59845-VA660)
* performer[+] = Reference(Organization/ex-MHV-organization-660)

Instance: ex-MHV-chTest-1103030001a
InstanceOf: JFM.PHR.chTest 
Usage: #inline
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* status = #final
* code.coding[+].code = #2345-7
* code.text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.coding[=].system = LOINC
* code.coding[=].version = "2.68"
* code.coding[+].code = #4665460
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/95.3"
* code.text = "GLUCOSE"
* effectiveDateTime = 2020-10-29T13:29:52-05:00
* referenceRange.text = "71-119"
* valueQuantity.value = 97
* valueQuantity.unit = "mg/dl"
* valueQuantity.system = UCUM
* performer = Reference(Organization/ex-MHV-organization-660)
* subject = Reference(Patient/ex-MHV-patient-942104)
* specimen = Reference(Specimen/ex-MHV-chSpecimen-1103030001)
* basedOn = Reference(ServiceRequest/ex-MHV-chOrder-1103030001a)




Instance: ex-MHV-chReport-1103030001
InstanceOf: JFM.PHR.chReport 
Title: "ChemHem 1103030001"
Usage: #example
Description: """
Example from a mock labTestPromises (1103030001)
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[Rid].value = "1103030001" 
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].use = #usual
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[ChSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#CH
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = 2020-10-29T13:29:52-05:00
* issued = 2020-10-29T13:29:52-05:00
* extension[note][+].valueString = "Lisa's test 10/29/20"
* contained[+] = ex-MHV-organization-552
* contained[+] = ex-MHV-practitioner-59845-VA660
* contained[+] = ex-MHV-organization-660
* performer[+] = Reference(Organization/ex-MHV-organization-552)

* contained[+] = ex-MHV-chOrder-1103030001a
* basedOn[+] = Reference(ex-MHV-chOrder-1103030001a)
* contained[+] = ex-MHV-chTest-1103030001a
* result[+] = Reference(ex-MHV-chTest-1103030001a)
* category[2].coding.code = #2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chSpecimen-1103030001
* specimen[+] = Reference(ex-MHV-chSpecimen-1103030001)
* effectiveDateTime = 2020-10-29T13:28:45-05:00
