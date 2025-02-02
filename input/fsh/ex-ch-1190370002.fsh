
///////////////////////////////////////////////////  1190370002  ////////////////////////////////////////


Instance:   ex-MHV-chSpecimen-1190370002
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
* collection.collectedDateTime = 2019-02-06T11:13:48-05:00
* request = Reference(ex-MHV-chOrder-1190370002a)


Instance: ex-MHV-chOrder-1190370002a
InstanceOf: JFM.PHR.chOrder
Usage: #inline
* category[us-core] = SCT#108252007 "Laboratory procedure"
* code.coding[+].code = #82830.0000
* code.text = "Carbon Dioxide Content"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/64"
* code.coding[+].code = #179
* code.coding[=].display = "CO2"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/60"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-942104)
* performer[+] = Reference(Organization/ex-MHV-organization-660)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-59845-VA660)

Instance: ex-MHV-chTest-1190370002a
InstanceOf: JFM.PHR.chTest 
Usage: #inline
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* interpretation.text = "L"
* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L
* status = #final
* code.coding[+].code = #2028-9
* code.text = "CARBON DIOXIDE:SCNC:PT:SER/PLAS:QN:"
* code.coding[=].system = LOINC
* code.coding[=].version = "2.64"
* code.coding[+].code = #4662085
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/95.3"
* code.text = "CO2"
* effectiveDateTime = 2019-02-06T11:14:52-05:00
* referenceRange.text = "22-32"
* valueQuantity.value = 21
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = UCUM
* performer = Reference(Organization/ex-MHV-organization-660)
* subject = Reference(Patient/ex-MHV-patient-942104)
* basedOn = Reference(ex-MHV-chOrder-1190370002a)
* specimen = Reference(ex-MHV-chSpecimen-1190370002)





Instance: ex-MHV-chReport-1190370002
InstanceOf: JFM.PHR.chReport 
Title: "ChemHem 1190370002"
Usage: #example
Description: """
Example from a mock labTestPromises (1190370002)
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[Rid].value = "1190370002" 
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].use = #usual
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[ChSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#CH
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = 2019-02-06T11:14:52-05:00
* issued = 2019-02-06T11:14:52-05:00
* extension[note][+].valueString = "Lisa's Test 10/29/20"
* contained[+] = ex-MHV-organization-979
* contained[+] = ex-MHV-practitioner-59845-VA660
* contained[+] = ex-MHV-organization-660
* performer[+] = Reference(Organization/ex-MHV-organization-979)

* contained[+] = ex-MHV-chOrder-1190370002a
* basedOn[+] = Reference(ex-MHV-chOrder-1190370002a)
* contained[+] = ex-MHV-chTest-1190370002a
* result[+] = Reference(ex-MHV-chTest-1190370002a)
* category[2].coding.code = #4548-4
* category[=].text = "HEMOGLOBIN A1C/HEMOGLOBIN.TOTAL:MFR:PT:BLD:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chSpecimen-1190370002
* specimen[+] = Reference(ex-MHV-chSpecimen-1190370002)
* effectiveDateTime = 2019-02-06T11:13:48-05:00

