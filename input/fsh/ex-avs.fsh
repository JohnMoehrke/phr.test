

Instance: ex-MHV-avs-0
InstanceOf: JFM.PHR.avs
Title: "AVS 0"
Usage: #example
Description: """
Derived from the a mock CVIX AVS Study
"""
* status = #current
* category[us-core] = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category#clinical-note
* type.text = "After Visit Summary"
* type.coding[LO] = LOINC#56446-8
* subject =  Reference(Patient/ex-MHV-patient-1)
* identifier[image].value = "urn:vaimage:605-111111111-111111111-1000000000V000000" 
* identifier[image].system = "urn:oid:2.16.840.1.113883.4.349.4.605"
* identifier[image].use = #secondary
* identifier[study].value = "urn:vastudy:605-111111111-1000000000V000000" 
* identifier[study].system = "urn:oid:2.16.840.1.113883.4.349.4.605"
* identifier[study].use = #usual
* date = 2021-12-01T04:34:00-06:00
* content.attachment.creation = 2021-12-01T04:34:00-06:00
* content.attachment.title = "AFTER VISIT SUMMARY NOTE"
* contained[+] = ex-MHV-location-605
* context.related[+] = Reference(Location/ex-MHV-location-605)
* content.attachment.contentType = #application/pdf
* content.attachment.url = "urn:vaimage:605-111111111-111111111-1000000000V000000&amp;imageQuality=100&amp;contentType=application/pdf,*/*"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* custodian.display = "VA"

Instance: ex-MHV-location-605
InstanceOf: JFMlocation
Title: "Location Loma Linda, CA"
Description: "This example derived off of a mock AVS Study"
Usage: #inline
* name = "Loma Linda, CA"
* alias = "LOM"
* identifier[TOid].use = #usual
* identifier[TOid].value = "HospitalLocationTO.605"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.605"
