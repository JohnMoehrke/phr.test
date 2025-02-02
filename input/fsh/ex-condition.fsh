

Instance:   ex-MHV-condition-deleted-487
InstanceOf: JFM.PHR.condition
Title: "Condition: 487 - deleted"
Description: "Hypertension (ICD-9-CM 401.9)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.487"
//* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#entered-in-error
* category = $condition-category#problem-list-item
* code = $icd-9-cm#401.9
* code.text = "Hypertension (ICD-9-CM 401.9)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1995-09-27"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)