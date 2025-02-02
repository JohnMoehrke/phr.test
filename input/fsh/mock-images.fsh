Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $loinc = http://loinc.org
Alias: $cpt = http://www.ama-assn.org/go/cpt
Alias: $us-core-documentreference-category = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category

/*

The mock images bundle is nice, but it does not allow the user of the IG to see examples. So in addition to having the bundle in the build, we also want examples. So we explode out the examples using the follow manual process. 

Note that Grahame has said he has a backlog to do this automatically in the IG publisher, but it is not priortized. So this might not be needed in the future.

These examples come from 
1. mocks/images.xml
2. transformed with mocks/imagessxslt.xslt (with extensions populating an instance-name and instance-description extension)
3. that bundle built into the IG so that the IG build creates the json equivilant
3. Put the json equvilant bundle into "FSH Online" to convert to FSH - https://fshschool.org/FSHOnline/#/
5. put the result into this FSH file
6. Remove the bundle
7. change inline to example
8. convert extension for description and title 
9. move meta.profile into InstanceOf:
10. use slices on identifier - TOid, accessionNumber, casenum
13. use slice on category - VSCat
14. remove the extensions from the transform
15. build the bundle the normal way to show a transaction Bundle in the IG
12. change contained (author, approvedBy, and location) references to .reference = "#author-0" -- https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/FSHOnline.20contained.20resources

13. convert the title and description extensions to sushi title and description
14. Move the Title and Description to the top

search:
Usage: #example\n([\s\S]*?)(?=\nTitle:)
Title: (.*)
Description: (.*)

replace:
Title: $2
Description: $3
Usage: #example 
$1

*/


Instance: 17a6982d-9890-43aa-98fe-603fbe11cf8a
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6959075.8874-1"
Description: "SPINE LUMBOSACRAL MIN 2 VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "GARFUNKEL,FELIX"
* contained[=].name.family = "GARFUNKEL,FELIX"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.12248947"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "5886199"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6959075.8874-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.092404-1582"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1582"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#72100 "RADIOLOGIC EXAMINATION, SPINE, LUMBOSACRAL; 2 OR 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "5886199"
* effectiveDateTime = "2004-09-24T11:25:00Z"
* issued = "2004-09-24T11:25:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "U1BJTkUgTFVNQk9TQUNSQUwgTUlOIDIgVklFV1MKICAgCkV4bSBEYXRlOiBTRVAgMjQsIDIwMDRAMTE6MjUKUmVxIFBoeXM6IEZFTEtMRVksS0VOTkVUSCBFICAgICAgICAgICAgICBQYXQgTG9jOiBQQ1RfTyBQQVRJTCAoRi9VKSAoUmVxJ2cgTG9jKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IFJBRElPTE9HWQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDE1ODIgQ09NUExFVEUpIFNQSU5FIExVTUJPU0FDUkFMIE1JTiAyIFZJRVdTICAgIChSQUQgIERldGFpbGVkKSBDUFQ6NzIxMDAKICAgICBQcm9jIE1vZGlmaWVycyA6IEJJTEFURVJBTCBFWEFNCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgaGF2aW5nIDMgd2Vla3Mgb2YgYmFjayBwYWlucyBuZWVkIHRvIHJlLWV2YWwgZm9yIGFyaHJpdGlzIG9yIGFueSAKICAgICAgd29yc25laW5nIGRpc2Mgc3BhY2VzIGV0Yy4gCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogU0VQIDI3LCAyMDA0CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBTRVAgMjgsIDIwMDQKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9UaG9uZyBELiBOZ3V5ZW4sIE0uRC4KCiAgICBSZXBvcnQ6CiAgICAgIFRocmVlIHZpZXdzIG9mIHRoZSBsdW1ib3NhY3JhbCBzcGluZSBhcmUgY29tcGFyZWQgd2l0aCBhIHByZXZpb3VzIAogICAgICBleGFtaW5hdGlvbiBvZiA5LzIzLzAyLiAgCiAgICAgICAKICAgICAgVGhlcmUgaGFzIGJlZW4gYSBwYXJ0aWFsIGNvbGxhcHNlIG9mIEwyIHdoaWNoIGlzIHNpbWlsYXIgaW4KICAgICAgYXBwZWFyYW5jZSBhbmQgZGVncmVlIHRvIHRoZSBwcmV2aW91cyBleGFtaW5hdGlvbiBvZiBTZXB0ZW1iZXIKICAgICAgMjAwMi4gIFRoZXJlIGlzIGFsc28gY29sbGFwc2Ugb2YgdGhlIGJvZHkgb2YgVDEyIHdoaWNoIGFwcGFyZW50bHkKICAgICAgaXMgbmV3IHNpbmNlIHRoZSBwcmV2aW91cyBleGFtIGFuZCB0aGUgY29sbGFwc2UgaGFzIGJlZW4KICAgICAgZXN0aW1hdGVkIGFib3ZlIDc1IHRvIDgwJSBvZiB0aGUgaGVpZ2h0IG9mIHRoZSB2ZXJ0ZWJyYWwgYm9keS4gIAogICAgICAgCiAgICAgIFRoZXJlIGlzIG1pbGQgbWFyZ2luYWwgc3B1cnJpbmcgb2YgdGhlIHVwcGVyIGFudGVyaW9yIGFzcGVjdCBvZgogICAgICBMNC4gIFRoZXJlIGFyZSBhcnRlcmlvc2NsZXJvdGljIGNhbGNpZmljYXRpb25zIGluIHRoZSBhYmRvbWluYWwKICAgICAgYW9ydGEgYW5kIGJyYW5jaGVzLiAgCiAgICAgICAKICAgICAgVGhlIGludGVydmVydGVicmFsIGRpc2Mgc3BhY2VzIGFyZSBwcmVzZXJ2ZWQuICAKCiAgICBJbXByZXNzaW9uOgogICAgICAxLiAgT2xkIGNvbXByZXNzaW9uIGZyYWN0dXJlIG9mIEwyIHdpdGggYW50ZXJpb3IgbWFyZ2luYWwKICAgICAgc3B1cnJpbmcgYW5kIGFwcGFyZW50IGFua3lsb3NpcyBMMS1MMi4gIAogICAgICAgCiAgICAgIDIuICBDb2xsYXBzZSBvciBjb21wcmVzc2lvbiBmcmFjdHVyZSBvZiB0aGUgYm9keSBvZiBUMTIgd2hpY2ggaXMKICAgICAgbmV3IHNpbmNlIHRoZSBwcmV2aW91cyBleGFtaW5hdGlvbiBpbiAyMDAyIGFuZCBpbnZvbHZlcyBsb3NzIG9mCiAgICAgIGhlaWdodCBvZiB0aGF0IHZlcnRlYnJhbCBib2R5IGJ5IGFib3V0IDcwJS4gIEFydGVyaW9zY2xlcm90aWMKICAgICAgY2FsY2lmaWNhdGlvbnMgb2YgdGhlIGFvcnRhLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgRkVMSVggR0FSRlVOS0VMLCBTdGFmZiBQaHlzaWNpYW4KVkVSSUZJRUQgQlk6CiAgVEhPTkcgTkdVWUVOLCBSYWRpb2xvZ2lzdC9DaGllZgoKL0dFRw=="
* presentedForm.title = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* presentedForm.creation = "2004-09-24T11:25:00Z"

Instance: 28fbd313-2087-46c9-9581-66cf1f70c973
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6979076.8862-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.9343144"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "CHEST 2 VIEWS PA&LAT"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "4183065"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6979076.8862-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.092302-360"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.360"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "4183065"
* effectiveDateTime = "2002-09-23T11:37:00Z"
* issued = "2002-09-23T11:37:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgCkV4bSBEYXRlOiBTRVAgMjMsIDIwMDJAMTE6MzcKUmVxIFBoeXM6IFBBVElMLFNBUkFTV0FUSSAgICAgICAgICAgICAgICBQYXQgTG9jOiBQQ1RfTyBQQVRJTCAoRi9VKSAoUmVxJ2cgTG9jKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IFJBRElPTE9HWQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDM2MCBDT01QTEVURSkgIENIRVNUIDIgVklFV1MgUEEmTEFUICAgICAgICAgICAgIChSQUQgIERldGFpbGVkKSBDUFQ6NzEwMjAKCiAgICBDbGluaWNhbCBIaXN0b3J5OgogICAgICBwdCBjL28gY291Z2ggZm9yIHdrcyAsbm90IGNsZWFyaW5nLiAgci9vIGluZmlsdHJhdGUuICAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBTRVAgMjUsIDIwMDIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IFNFUCAyNiwgMjAwMgogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS4gU3V0dG9uLCBNLkQuCgogICAgUmVwb3J0OgogICAgICBQQSBhbmQgbGF0ZXJhbCBvZiB0aGUgY2hlc3QgYXJlIGNvbXBhcmVkIHRvIGFuIGVhcmxpZXIKICAgICAgZXhhbWluYXRpb24gZGF0ZWQgMTIvNC8wMC4gIE9uY2UgYWdhaW4sIHdlIHNlZSBjaHJvbmljCiAgICAgIG9ic3RydWN0aXZlIHB1bG1vbmFyeSBkaXNlYXNlLiAgVGhlIGFwaWNlcyBvZiBib3RoIGx1bmdzIHNob3cKICAgICAgZmlicm9jYWxjaWZpYyBjaGFuZ2VzIGNvbXBhdGlibGUgd2l0aCBvbGQgZ3JhbnVsb21hdG91cyBkaXNlYXNlLiAKICAgICAgVGhlIGhpbGFyIHJlZ2lvbnMgaGF2ZSBiZWVuIHJldHJhY3RlZCBjZXBoYWxhZC4gIFNldmVyYWwKICAgICAgZGVmb3JtaXRpZXMgZnJvbSBvbGQgaGVhbGVkIHJpYiBmcmFjdHVyZXMgYXJlIHNlZW4gb24gdGhlIHJpZ2h0LiAgCiAgICAgICAKICAgICAgQSBjb21wYXJpc29uIHdpdGggdGhlIGVhcmxpZXIgZXhhbWluYXRpb24gc2hvd3Mgbm8gaW50ZXJ2YWwKICAgICAgY2hhbmdlLiAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgMS4gIENPUEQuICBPbGQgZ3JhbnVsb21hdG91cyBkaXNlYXNlLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgSk9TRVBIIFNVVFRPTiwgUmFkaW9sb2dpc3QgKFZlcmlmaWVyKQovR0VH"
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "2002-09-23T11:37:00Z"

Instance: 45b08f3a-50c7-4832-bf85-167efc4c9e5d
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6979076.8862-2"
Description: "SPINE LUMBOSACRAL MIN 2 VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.9343153"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "4183065"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6979076.8862-2"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.092302-363"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.363"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#72100 "RADIOLOGIC EXAMINATION, SPINE, LUMBOSACRAL; 2 OR 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "4183065"
* effectiveDateTime = "2002-09-23T11:37:00Z"
* issued = "2002-09-23T11:37:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "U1BJTkUgTFVNQk9TQUNSQUwgTUlOIDIgVklFV1MKICAgCkV4bSBEYXRlOiBTRVAgMjMsIDIwMDJAMTE6MzcKUmVxIFBoeXM6IFBBVElMLFNBUkFTV0FUSSAgICAgICAgICAgICAgICBQYXQgTG9jOiBQQ1RfTyBQQVRJTCAoRi9VKSAoUmVxJ2cgTG9jKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IFJBRElPTE9HWQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDM2MyBDT01QTEVURSkgIFNQSU5FIExVTUJPU0FDUkFMIE1JTiAyIFZJRVdTICAgIChSQUQgIERldGFpbGVkKSBDUFQ6NzIxMDAKCiAgICBDbGluaWNhbCBIaXN0b3J5OgogICAgICBwdCBjL28gcGFpbiBpbiBsb3dlciBiYWNrID8gcHVsbGVkIG11c2NsZS4gIHIvbyBkaXNjIGRpc2Vhc2UuICAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBTRVAgMjUsIDIwMDIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IFNFUCAyNiwgMjAwMgogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS4gU3V0dG9uLCBNLkQuCgogICAgUmVwb3J0OgogICAgICBBbiBvbGQgY29tcHJlc3Npb24gZnJhY3R1cmUgb2YgTDIgaXMgb2JzZXJ2ZWQuICBUaGUgcGVkaWNsZXMgYXJlCiAgICAgIGludGFjdCBhbmQgZGlzYyBzcGFjZXMgYXJlIHdlbGwgbWFpbnRhaW5lZC4gIENoYW5nZXMgb2YKICAgICAgc3BvbmR5bG9zaXMgYXJlIHNlZW4gYXQgTDMsIEw0IGFuZCBMNS4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIDEuICBMdW1iYXIgc3BvbmR5bG9zaXMgaXMgc2VlbiBhbmQgdGhlcmUgaXMgYW4gb2xkIGNvbXByZXNzaW9uCiAgICAgIGZyYWN0dXJlIG9mIEwyLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgSk9TRVBIIFNVVFRPTiwgUmFkaW9sb2dpc3QgKFZlcmlmaWVyKQovR0VH"
* presentedForm.title = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* presentedForm.creation = "2002-09-23T11:37:00Z"

Instance: 845ebc9d-fab1-4646-9198-4fc128aa79a6
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-1"
Description: "MYOCARDIAL PERFUSION (SPECT), EX/REDIST, W/ W/O PHARM INTER"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1516"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1516"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#78465 "MYOCARDIAL PERFUSION IMAGING; TOMOGRAPHIC (SPECT), MULTIPLE STUDIES (INCLUDING ATTENUATION CORRECTION WHEN PERFORMED), AT REST AND/OR STRESS (EXERCISE AND/OR PHARMACOLOGIC) AND REDISTRIBUTION AND/OR REST INJECTION, WITH OR WITHOUT QUANTIFICATION"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "TVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvUkVESVNULCBXLyBXL08gUEhBUk0gSU5URVIKICAgClByb2MgT3JkOiBNWU9DQVJESUFMIFBFUkZVU0lPTiwgUEhBUk1BQ09MT0dJQ0FMIFNUUkVTUyBQL0QKRXhtIERhdGU6IEFQUiAyNiwgMjAwMUAxMTowNwpSZXEgUGh5czogUEFUSUwsU0FSQVNXQVRJICAgICAgICAgICAgICAgIFBhdCBMb2M6IFBDVF9PIFBBVElMIChGL1UpIChSZXEnZyBMb2MpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSW1nIExvYzogTlVDTEVBUiBNRURJQ0lORQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDE1MTYgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIChTUEVDVCksIEVYLyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg0NjUKCihDYXNlIDE1MTkgQ09NUExFVEUpICNQUk9WSVNJT04gT0YgRElBR05PU1RJQyBSQURJT05VQyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg5OTAKCihDYXNlIDE1MjAgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIFNUVURZIFdJVEggRShOTSAgIERldGFpbGVkKSBDUFQ6Nzg0ODAKCiggICAgICAgNHggICAgICAgICApIEoxMjQ1IERJUFlSSURBTU9MRSBJTkpFQ1RJT04gICAgIChOTSAgIERldGFpbGVkKSBDUFQ6SjEyNDUKCiggICAgICAgM3ggICAgICAgICApIEE5NTA1IFRIQUxMT1VTIENITE9SSURFIFRMIDIwMS9NQyhOTSAgIERldGFpbGVkKSBDUFQ6QTk1MDUKCihDYXNlIDE1MzYgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIFNUVURZIFdJVEggVyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg0NzgKCihDYXNlIDE1NDQgQ09NUExFVEUpIENBUkRJT1ZBU0NVTEFSIFNUUkVTUyBURVNUIChURUNIKShOTSAgIERldGFpbGVkKSBDUFQ6OTMwMTUKCiAgICBDbGluaWNhbCBIaXN0b3J5OgogICAgICBQVCBDL08gQy5QIE9OICYgT0ZGLE9MRCBNSSwgRkFNSUxZIEgvTyBIRUFSVCBBVFRBQ0suICBSL08gQ0FEIAoKICAgIFJlcG9ydCBTdGF0dXM6IFZlcmlmaWVkICAgICAgICAgICAgICAgICAgIERhdGUgUmVwb3J0ZWQ6IEFQUiAyNiwgMjAwMQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGF0ZSBWZXJpZmllZDogQVBSIDI3LCAyMDAxCiAgICBWZXJpZmllciBFLVNpZzovRVMvTkVJTCBLQVRaLCBNRAoKICAgIFJlcG9ydDoKICAgICAgUkVQT1JUOiAgNC8yNi8wMSAgQU5UUkFTLCBKLiAjNjI2NyAgNDEuNCBtZyBEaXB5cmlkYW1vbGUgSVYKICAgICAgaW5qZWN0ZWQgaW4gcmlnaHQgYXJtIGF0IDA5NTgtMTAwMiBob3VycyBieSBEci4gS2F0ei4gIDMuMTYgbUNpCiAgICAgIFRsLjIwMSBDaGxvcmlkZSBpbmplY3RlZCBJViBpbiByaWdodCBhcm0gYXQgMTAwNSBob3VycyBieSBBLgogICAgICBCZW5kZXIuICAKICAgICAgIAogICAgICAgCiAgICAgIElOVFJBVkVOT1VTIERJUFlSSURBTU9MRSBTVFJFU1MgVEhBTExJVU0gTVlPQ0FSRElBTCBTQ0FOLVNQRUNUOiAKICAgICAgIAogICAgICBUaGUgZGlweXJpZGFtb2xlIHN0cmVzcyB0ZXN0IHdhcyBwZXJmb3JtZWQgaW4gdGhlIE5NUy4gCiAgICAgICAKICAgICAgQm90aCBzdHJlc3MgYW5kIHJlc3QgaW1hZ2VzIHJldmVhbCBtaWxkIGRlY3JlYXNlZCBhY3Rpdml0eSBpbiB0aGUKICAgICAgaW5mZXJpb3Igd2FsbC4gIEhvd2V2ZXIsIGdhdGVkIGltYWdlcyByZXZlYWwgbm9ybWFsIHdhbGwgbW90aW9uCiAgICAgIGluIHRoaXMgYXJlYS4gIAogICAgICAgCiAgICAgIFRoZXJlIGlzIGEgcG9zdC1EaXB5cmlkYW1vbGUgdGhhbGxpdW0gbGVmdCB2ZW50cmljdWxhciBlamVjdGlvbgogICAgICBmcmFjdGlvbiBvZiA3MyUuICAgICAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgTm8gZXZpZGVuY2UgZm9yIHJldmVyc2libGUgaXNjaGVtaWEuICBUaGUgbWlsZCBwZXJzaXN0ZW50CiAgICAgIGRlY3JlYXNlZCBhY3Rpdml0eSBpbiB0aGUgaW5mZXJpb3Igd2FsbCBtYXkgYmUgc2Vjb25kYXJ5IHRvIHNvZnQKICAgICAgdGlzc3VlIGF0dGVudWF0aW9uLCBlc3BlY2lhbGx5IHNpbmNlIHRoZSB3YWxsIG1vdGlvbiBpcyBub3JtYWwgaW4KICAgICAgdGhpcyBhcmVhLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgTkVJTCBLQVRaLCBDSElFRiwgTk1TIChWZXJpZmllcikKL01BQw=="
* presentedForm.title = "MYOCARDIAL PERFUSION (SPECT), EX/REDIST, W/ W/O PHARM INTER"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: e8429618-da5d-4e9f-9041-c16614b1c4f9
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-10"
Description: "J1245 DIPYRIDAMOLE INJECTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-10"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1539"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1539"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "SjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "J1245 DIPYRIDAMOLE INJECTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: d2503a4a-690e-4fd4-92e1-fcd73941719e
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-11"
Description: "J1245 DIPYRIDAMOLE INJECTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-11"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1540"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1540"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "SjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "J1245 DIPYRIDAMOLE INJECTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: 120fb1ef-d0b3-4c87-b1da-2e4da713be56
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-12"
Description: "CARDIOVASCULAR STRESS TEST (TECH)"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-12"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1544"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1544"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#93015 "CARDIOVASCULAR STRESS TEST USING MAXIMAL OR SUBMAXIMAL TREADMILL OR BICYCLE EXERCISE, CONTINUOUS ELECTROCARDIOGRAPHIC MONITORING, AND/OR PHARMACOLOGICAL STRESS; WITH SUPERVISION, INTERPRETATION AND REPORT"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpCiAgIApQcm9jIE9yZDogTVlPQ0FSRElBTCBQRVJGVVNJT04sIFBIQVJNQUNPTE9HSUNBTCBTVFJFU1MgUC9ECkV4bSBEYXRlOiBBUFIgMjYsIDIwMDFAMTE6MDcKUmVxIFBoeXM6IFBBVElMLFNBUkFTV0FUSSAgICAgICAgICAgICAgICBQYXQgTG9jOiBQQ1RfTyBQQVRJTCAoRi9VKSAoUmVxJ2cgTG9jKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IE5VQ0xFQVIgTUVESUNJTkUKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxNTE2IENPTVBMRVRFKSBNWU9DQVJESUFMIFBFUkZVU0lPTiAoU1BFQ1QpLCBFWC8oTk0gICBEZXRhaWxlZCkgQ1BUOjc4NDY1CgooQ2FzZSAxNTE5IENPTVBMRVRFKSAjUFJPVklTSU9OIE9GIERJQUdOT1NUSUMgUkFESU9OVUMoTk0gICBEZXRhaWxlZCkgQ1BUOjc4OTkwCgooQ2FzZSAxNTIwIENPTVBMRVRFKSBNWU9DQVJESUFMIFBFUkZVU0lPTiBTVFVEWSBXSVRIIEUoTk0gICBEZXRhaWxlZCkgQ1BUOjc4NDgwCgooICAgICAgIDR4ICAgICAgICAgKSBKMTI0NSBESVBZUklEQU1PTEUgSU5KRUNUSU9OICAgICAoTk0gICBEZXRhaWxlZCkgQ1BUOkoxMjQ1CgooICAgICAgIDN4ICAgICAgICAgKSBBOTUwNSBUSEFMTE9VUyBDSExPUklERSBUTCAyMDEvTUMoTk0gICBEZXRhaWxlZCkgQ1BUOkE5NTA1CgooQ2FzZSAxNTM2IENPTVBMRVRFKSBNWU9DQVJESUFMIFBFUkZVU0lPTiBTVFVEWSBXSVRIIFcoTk0gICBEZXRhaWxlZCkgQ1BUOjc4NDc4CgooQ2FzZSAxNTQ0IENPTVBMRVRFKSBDQVJESU9WQVNDVUxBUiBTVFJFU1MgVEVTVCAoVEVDSCkoTk0gICBEZXRhaWxlZCkgQ1BUOjkzMDE1CgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgUFQgQy9PIEMuUCBPTiAmIE9GRixPTEQgTUksIEZBTUlMWSBIL08gSEVBUlQgQVRUQUNLLiAgUi9PIENBRCAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBBUFIgMjYsIDIwMDEKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IEFQUiAyNywgMjAwMQogICAgVmVyaWZpZXIgRS1TaWc6L0VTL05FSUwgS0FUWiwgTUQKCiAgICBSZXBvcnQ6CiAgICAgIFJFUE9SVDogIDQvMjYvMDEgIEFOVFJBUywgSi4gIzYyNjcgIDQxLjQgbWcgRGlweXJpZGFtb2xlIElWCiAgICAgIGluamVjdGVkIGluIHJpZ2h0IGFybSBhdCAwOTU4LTEwMDIgaG91cnMgYnkgRHIuIEthdHouICAzLjE2IG1DaQogICAgICBUbC4yMDEgQ2hsb3JpZGUgaW5qZWN0ZWQgSVYgaW4gcmlnaHQgYXJtIGF0IDEwMDUgaG91cnMgYnkgQS4KICAgICAgQmVuZGVyLiAgCiAgICAgICAKICAgICAgIAogICAgICBJTlRSQVZFTk9VUyBESVBZUklEQU1PTEUgU1RSRVNTIFRIQUxMSVVNIE1ZT0NBUkRJQUwgU0NBTi1TUEVDVDogCiAgICAgICAKICAgICAgVGhlIGRpcHlyaWRhbW9sZSBzdHJlc3MgdGVzdCB3YXMgcGVyZm9ybWVkIGluIHRoZSBOTVMuIAogICAgICAgCiAgICAgIEJvdGggc3RyZXNzIGFuZCByZXN0IGltYWdlcyByZXZlYWwgbWlsZCBkZWNyZWFzZWQgYWN0aXZpdHkgaW4gdGhlCiAgICAgIGluZmVyaW9yIHdhbGwuICBIb3dldmVyLCBnYXRlZCBpbWFnZXMgcmV2ZWFsIG5vcm1hbCB3YWxsIG1vdGlvbgogICAgICBpbiB0aGlzIGFyZWEuICAKICAgICAgIAogICAgICBUaGVyZSBpcyBhIHBvc3QtRGlweXJpZGFtb2xlIHRoYWxsaXVtIGxlZnQgdmVudHJpY3VsYXIgZWplY3Rpb24KICAgICAgZnJhY3Rpb24gb2YgNzMlLiAgICAgIAoKICAgIEltcHJlc3Npb246CiAgICAgIE5vIGV2aWRlbmNlIGZvciByZXZlcnNpYmxlIGlzY2hlbWlhLiAgVGhlIG1pbGQgcGVyc2lzdGVudAogICAgICBkZWNyZWFzZWQgYWN0aXZpdHkgaW4gdGhlIGluZmVyaW9yIHdhbGwgbWF5IGJlIHNlY29uZGFyeSB0byBzb2Z0CiAgICAgIHRpc3N1ZSBhdHRlbnVhdGlvbiwgZXNwZWNpYWxseSBzaW5jZSB0aGUgd2FsbCBtb3Rpb24gaXMgbm9ybWFsIGluCiAgICAgIHRoaXMgYXJlYS4gIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIE5FSUwgS0FUWiwgQ0hJRUYsIE5NUyAoVmVyaWZpZXIpCi9NQUM="
* presentedForm.title = "CARDIOVASCULAR STRESS TEST (TECH)"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: 4cbed92e-233e-4783-8d4d-d0fc578f3e68
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-2"
Description: "#PROVISION OF DIAGNOSTIC RADIONUCLIDES"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-2"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1519"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1519"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#78990 "PROVISION OF DIAGNOSTIC RADIOPHARMACEUTICAL(S)"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "I1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDTElERVMKICAgClByb2MgT3JkOiBNWU9DQVJESUFMIFBFUkZVU0lPTiwgUEhBUk1BQ09MT0dJQ0FMIFNUUkVTUyBQL0QKRXhtIERhdGU6IEFQUiAyNiwgMjAwMUAxMTowNwpSZXEgUGh5czogUEFUSUwsU0FSQVNXQVRJICAgICAgICAgICAgICAgIFBhdCBMb2M6IFBDVF9PIFBBVElMIChGL1UpIChSZXEnZyBMb2MpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSW1nIExvYzogTlVDTEVBUiBNRURJQ0lORQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDE1MTYgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIChTUEVDVCksIEVYLyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg0NjUKCihDYXNlIDE1MTkgQ09NUExFVEUpICNQUk9WSVNJT04gT0YgRElBR05PU1RJQyBSQURJT05VQyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg5OTAKCihDYXNlIDE1MjAgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIFNUVURZIFdJVEggRShOTSAgIERldGFpbGVkKSBDUFQ6Nzg0ODAKCiggICAgICAgNHggICAgICAgICApIEoxMjQ1IERJUFlSSURBTU9MRSBJTkpFQ1RJT04gICAgIChOTSAgIERldGFpbGVkKSBDUFQ6SjEyNDUKCiggICAgICAgM3ggICAgICAgICApIEE5NTA1IFRIQUxMT1VTIENITE9SSURFIFRMIDIwMS9NQyhOTSAgIERldGFpbGVkKSBDUFQ6QTk1MDUKCihDYXNlIDE1MzYgQ09NUExFVEUpIE1ZT0NBUkRJQUwgUEVSRlVTSU9OIFNUVURZIFdJVEggVyhOTSAgIERldGFpbGVkKSBDUFQ6Nzg0NzgKCihDYXNlIDE1NDQgQ09NUExFVEUpIENBUkRJT1ZBU0NVTEFSIFNUUkVTUyBURVNUIChURUNIKShOTSAgIERldGFpbGVkKSBDUFQ6OTMwMTUKCiAgICBDbGluaWNhbCBIaXN0b3J5OgogICAgICBQVCBDL08gQy5QIE9OICYgT0ZGLE9MRCBNSSwgRkFNSUxZIEgvTyBIRUFSVCBBVFRBQ0suICBSL08gQ0FEIAoKICAgIFJlcG9ydCBTdGF0dXM6IFZlcmlmaWVkICAgICAgICAgICAgICAgICAgIERhdGUgUmVwb3J0ZWQ6IEFQUiAyNiwgMjAwMQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGF0ZSBWZXJpZmllZDogQVBSIDI3LCAyMDAxCiAgICBWZXJpZmllciBFLVNpZzovRVMvTkVJTCBLQVRaLCBNRAoKICAgIFJlcG9ydDoKICAgICAgUkVQT1JUOiAgNC8yNi8wMSAgQU5UUkFTLCBKLiAjNjI2NyAgNDEuNCBtZyBEaXB5cmlkYW1vbGUgSVYKICAgICAgaW5qZWN0ZWQgaW4gcmlnaHQgYXJtIGF0IDA5NTgtMTAwMiBob3VycyBieSBEci4gS2F0ei4gIDMuMTYgbUNpCiAgICAgIFRsLjIwMSBDaGxvcmlkZSBpbmplY3RlZCBJViBpbiByaWdodCBhcm0gYXQgMTAwNSBob3VycyBieSBBLgogICAgICBCZW5kZXIuICAKICAgICAgIAogICAgICAgCiAgICAgIElOVFJBVkVOT1VTIERJUFlSSURBTU9MRSBTVFJFU1MgVEhBTExJVU0gTVlPQ0FSRElBTCBTQ0FOLVNQRUNUOiAKICAgICAgIAogICAgICBUaGUgZGlweXJpZGFtb2xlIHN0cmVzcyB0ZXN0IHdhcyBwZXJmb3JtZWQgaW4gdGhlIE5NUy4gCiAgICAgICAKICAgICAgQm90aCBzdHJlc3MgYW5kIHJlc3QgaW1hZ2VzIHJldmVhbCBtaWxkIGRlY3JlYXNlZCBhY3Rpdml0eSBpbiB0aGUKICAgICAgaW5mZXJpb3Igd2FsbC4gIEhvd2V2ZXIsIGdhdGVkIGltYWdlcyByZXZlYWwgbm9ybWFsIHdhbGwgbW90aW9uCiAgICAgIGluIHRoaXMgYXJlYS4gIAogICAgICAgCiAgICAgIFRoZXJlIGlzIGEgcG9zdC1EaXB5cmlkYW1vbGUgdGhhbGxpdW0gbGVmdCB2ZW50cmljdWxhciBlamVjdGlvbgogICAgICBmcmFjdGlvbiBvZiA3MyUuICAgICAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgTm8gZXZpZGVuY2UgZm9yIHJldmVyc2libGUgaXNjaGVtaWEuICBUaGUgbWlsZCBwZXJzaXN0ZW50CiAgICAgIGRlY3JlYXNlZCBhY3Rpdml0eSBpbiB0aGUgaW5mZXJpb3Igd2FsbCBtYXkgYmUgc2Vjb25kYXJ5IHRvIHNvZnQKICAgICAgdGlzc3VlIGF0dGVudWF0aW9uLCBlc3BlY2lhbGx5IHNpbmNlIHRoZSB3YWxsIG1vdGlvbiBpcyBub3JtYWwgaW4KICAgICAgdGhpcyBhcmVhLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgTkVJTCBLQVRaLCBDSElFRiwgTk1TIChWZXJpZmllcikKL01BQw=="
* presentedForm.title = "#PROVISION OF DIAGNOSTIC RADIONUCLIDES"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: b47e0e4a-7bbd-4d6b-8ca9-a5ce31489429
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-3"
Description: "MYOCARDIAL PERFUSION STUDY WITH EJECTION FRACTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-3"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1520"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1520"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#78480 "MYOCARDIAL PERFUSION STUDY WITH EJECTION FRACTION (LIST SEPARATELY IN ADDITION TO CODE FOR PRIMARY PROCEDURE)"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "TVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFSkVDVElPTiBGUkFDVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "MYOCARDIAL PERFUSION STUDY WITH EJECTION FRACTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: 4644ab95-a028-47f9-a47f-dd0d1e6f88bc
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-4"
Description: "J1245 DIPYRIDAMOLE INJECTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-4"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1530"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1530"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "SjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "J1245 DIPYRIDAMOLE INJECTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: a41c31ae-f5e2-48a2-90fe-e3e25bb0fc98
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-5"
Description: "A9505 THALLOUS CHLORIDE TL 201/MCI"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-5"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1531"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1531"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "QTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DSQogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "A9505 THALLOUS CHLORIDE TL 201/MCI"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: 87e778a9-aa89-4834-b536-fd76ed712d73
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-6"
Description: "A9505 THALLOUS CHLORIDE TL 201/MCI"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-6"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1533"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1533"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "QTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DSQogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "A9505 THALLOUS CHLORIDE TL 201/MCI"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: 6a4ec7b7-30ce-495b-bc8c-05056f7cd2b5
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-7"
Description: "A9505 THALLOUS CHLORIDE TL 201/MCI"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-7"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1535"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1535"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "QTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DSQogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "A9505 THALLOUS CHLORIDE TL 201/MCI"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: db557446-899f-401e-aa5f-7958a210b115
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-8"
Description: "MYOCARDIAL PERFUSION STUDY WITH WALL MOTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-8"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1536"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1536"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#78478 "MYOCARDIAL PERFUSION STUDY WITH WALL MOTION, QUALITATIVE OR QUANTITATIVE STUDY (LIST SEPARATELY IN ADDITION TO CODE FOR PRIMARY PROCEDURE)"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "TVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXQUxMIE1PVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "MYOCARDIAL PERFUSION STUDY WITH WALL MOTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: aeb8d42e-6689-4946-a6a6-e17d055984ec
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6989573.8892-9"
Description: "J1245 DIPYRIDAMOLE INJECTION"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "KATZ,NEIL"
* contained[=].name.family = "KATZ,NEIL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.273"
* contained[=].active = true
* contained[=].name = "NUCLEAR MEDICINE"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.7379950"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "MYOCARDIAL PERFUSION, PHARMACOLOGICAL STRESS P/D"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3278625"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6989573.8892-9"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042601-1538"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1538"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code.text = "NUCLEAR MEDICINE"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3278625"
* effectiveDateTime = "2001-04-26T11:07:00Z"
* issued = "2001-04-26T11:07:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "SjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTgogICAKUHJvYyBPcmQ6IE1ZT0NBUkRJQUwgUEVSRlVTSU9OLCBQSEFSTUFDT0xPR0lDQUwgU1RSRVNTIFAvRApFeG0gRGF0ZTogQVBSIDI2LCAyMDAxQDExOjA3ClJlcSBQaHlzOiBQQVRJTCxTQVJBU1dBVEkgICAgICAgICAgICAgICAgUGF0IExvYzogUENUX08gUEFUSUwgKEYvVSkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBOVUNMRUFSIE1FRElDSU5FCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMTUxNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gKFNQRUNUKSwgRVgvKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ2NQoKKENhc2UgMTUxOSBDT01QTEVURSkgI1BST1ZJU0lPTiBPRiBESUFHTk9TVElDIFJBRElPTlVDKE5NICAgRGV0YWlsZWQpIENQVDo3ODk5MAoKKENhc2UgMTUyMCBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBFKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ4MAoKKCAgICAgICA0eCAgICAgICAgICkgSjEyNDUgRElQWVJJREFNT0xFIElOSkVDVElPTiAgICAgKE5NICAgRGV0YWlsZWQpIENQVDpKMTI0NQoKKCAgICAgICAzeCAgICAgICAgICkgQTk1MDUgVEhBTExPVVMgQ0hMT1JJREUgVEwgMjAxL01DKE5NICAgRGV0YWlsZWQpIENQVDpBOTUwNQoKKENhc2UgMTUzNiBDT01QTEVURSkgTVlPQ0FSRElBTCBQRVJGVVNJT04gU1RVRFkgV0lUSCBXKE5NICAgRGV0YWlsZWQpIENQVDo3ODQ3OAoKKENhc2UgMTU0NCBDT01QTEVURSkgQ0FSRElPVkFTQ1VMQVIgU1RSRVNTIFRFU1QgKFRFQ0gpKE5NICAgRGV0YWlsZWQpIENQVDo5MzAxNQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBUIEMvTyBDLlAgT04gJiBPRkYsT0xEIE1JLCBGQU1JTFkgSC9PIEhFQVJUIEFUVEFDSy4gIFIvTyBDQUQgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDI2LCAyMDAxCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMjcsIDIwMDEKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9ORUlMIEtBVFosIE1ECgogICAgUmVwb3J0OgogICAgICBSRVBPUlQ6ICA0LzI2LzAxICBBTlRSQVMsIEouICM2MjY3ICA0MS40IG1nIERpcHlyaWRhbW9sZSBJVgogICAgICBpbmplY3RlZCBpbiByaWdodCBhcm0gYXQgMDk1OC0xMDAyIGhvdXJzIGJ5IERyLiBLYXR6LiAgMy4xNiBtQ2kKICAgICAgVGwuMjAxIENobG9yaWRlIGluamVjdGVkIElWIGluIHJpZ2h0IGFybSBhdCAxMDA1IGhvdXJzIGJ5IEEuCiAgICAgIEJlbmRlci4gIAogICAgICAgCiAgICAgICAKICAgICAgSU5UUkFWRU5PVVMgRElQWVJJREFNT0xFIFNUUkVTUyBUSEFMTElVTSBNWU9DQVJESUFMIFNDQU4tU1BFQ1Q6IAogICAgICAgCiAgICAgIFRoZSBkaXB5cmlkYW1vbGUgc3RyZXNzIHRlc3Qgd2FzIHBlcmZvcm1lZCBpbiB0aGUgTk1TLiAKICAgICAgIAogICAgICBCb3RoIHN0cmVzcyBhbmQgcmVzdCBpbWFnZXMgcmV2ZWFsIG1pbGQgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZQogICAgICBpbmZlcmlvciB3YWxsLiAgSG93ZXZlciwgZ2F0ZWQgaW1hZ2VzIHJldmVhbCBub3JtYWwgd2FsbCBtb3Rpb24KICAgICAgaW4gdGhpcyBhcmVhLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgYSBwb3N0LURpcHlyaWRhbW9sZSB0aGFsbGl1bSBsZWZ0IHZlbnRyaWN1bGFyIGVqZWN0aW9uCiAgICAgIGZyYWN0aW9uIG9mIDczJS4gICAgICAKCiAgICBJbXByZXNzaW9uOgogICAgICBObyBldmlkZW5jZSBmb3IgcmV2ZXJzaWJsZSBpc2NoZW1pYS4gIFRoZSBtaWxkIHBlcnNpc3RlbnQKICAgICAgZGVjcmVhc2VkIGFjdGl2aXR5IGluIHRoZSBpbmZlcmlvciB3YWxsIG1heSBiZSBzZWNvbmRhcnkgdG8gc29mdAogICAgICB0aXNzdWUgYXR0ZW51YXRpb24sIGVzcGVjaWFsbHkgc2luY2UgdGhlIHdhbGwgbW90aW9uIGlzIG5vcm1hbCBpbgogICAgICB0aGlzIGFyZWEuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBORUlMIEtBVFosIENISUVGLCBOTVMgKFZlcmlmaWVyKQovTUFD"
* presentedForm.title = "J1245 DIPYRIDAMOLE INJECTION"
* presentedForm.creation = "2001-04-26T11:07:00Z"

Instance: e597c961-9cd3-4930-b3af-234493d497e7
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6998785.915-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "MCVEIGH,MICHAEL"
* contained[=].name.family = "MCVEIGH,MICHAEL"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.6749838"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "CHEST 2 VIEWS PA&LAT"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "3067104"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6998785.915-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.121400-767"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.767"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "3067104"
* effectiveDateTime = "2000-12-14T08:49:00Z"
* issued = "2000-12-14T08:49:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgCkV4bSBEYXRlOiBERUMgMTQsIDIwMDBAMDg6NDkKUmVxIFBoeXM6IFBBQ0hFQ08sSkFJTUUgICAgICAgICAgICAgICAgICBQYXQgTG9jOiBaWlpIRU1BVE9MT0dZIElJIChSZXEnZyBMb2MpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSW1nIExvYzogUkFESU9MT0dZCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgNzY3IENPTVBMRVRFKSAgQ0hFU1QgMiBWSUVXUyBQQSZMQVQgICAgICAgICAgICAgKFJBRCAgRGV0YWlsZWQpIENQVDo3MTAyMAogICAgIFByb2MgTW9kaWZpZXJzIDogTEVGVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIGdyYW51bG9tYXRhPyAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBERUMgMTQsIDIwMDAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IERFQyAxOCwgMjAwMAogICAgVmVyaWZpZXIgRS1TaWc6L0VTL01pY2hhZWwgTWNWZWlnaCBNRAoKICAgIFJlcG9ydDoKICAgICAgUEEgQU5EIExBVEVSQUwgQ0hFU1Q6ICAxMi0xNC0wMDogIAogICAgICAgCiAgICAgIFRoZSBzdHVkeSB3YXMgY29tcGFyZWQgdG8gdGhhdCBvZiA3LTMxLTAwLiAgCiAgICAgICAKICAgICAgRXhhbWluYXRpb24gcmV2ZWFscyByZXRyYWN0aW9uIG9mIGJvdGggaGlsYSBzdXBlcmlvcmx5IHdpdGggCiAgICAgIHBsZXVyb3BhcmVuY2h5bWFsIHNjYXJyaW5nLiAgVGhlcmUgYXJlIHNjYXR0ZXJlZCBmaWJyb25vZHVsYXIKICAgICAgY2hhbmdlcyBpbiB0aGUgbGVmdCB1cHBlciBsb2JlIHBhcnRpY3VsYXJseSBidXQgYWxzbyBpbiB0aGUgcmlnaHQKICAgICAgdXBwZXIgbG9iZSBidXQgdGhlcmUgaXMgYWdhaW4gbm8gc2lnbmlmaWNhbnQgaW50ZXJ2YWwgY2hhbmdlIGZyb20KICAgICAgdGhlIHByZXZpb3VzIHN0dWR5LiAgU2V2ZXJhbCBvbGQgcmliIGZyYWN0dXJlcyBhcmUgbm90ZWQgb24gdGhlCiAgICAgIHJpZ2h0IGFuZCB0aGVyZSBpcyBhIGdlbmVyYWxpemVkIGJvbnkgZGVtaW5lcmFsaXphdGlvbiBjb25zaXN0ZW50CiAgICAgIHdpdGggb3N0ZW9wb3Jvc2lzLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgbWlsZCBjb21wcmVzc2lvbiBvZiBzZXZlcmFsIG1pZCB0aG9yYWNpYyB2ZXJ0ZWJyYWwKICAgICAgYm9kaWVzIGVzc2VudGlhbGx5IHVuY2hhbmdlZCBmcm9tIHRoYXQgb2YgdGhlIHByZXZpb3VzIHN0dWR5LiAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgVGhlcmUgaXMgZXZpZGVuY2UgZm9yIENPUEQgYW5kIHJldHJhY3Rpb24gb2YgdGhlIGhpbGEgYmlsYXRlcmFsbHkKICAgICAgd2hpY2ggbW9zdCBsaWtlbHkgcmVwcmVzZW50cyBvbGQgaGVhbGVkIGdyYW51bG9tYXRvdXMgaW5mZWN0aW9uLiAKICAgICAgVGhlc2UgZmluZGluZ3MgYXJlIHVuY2hhbmdlZCBmcm9tIHRoZSBwcmV2aW91cyBzdHVkeS4gIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIE1JQ0hBRUwgTUNWRUlHSCwgQ0hJRUYsUkFESU9MT0dZIFNFUlZJQ0UgKFZlcmlmaWVyKQovUlND"
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "2000-12-14T08:49:00Z"

Instance: 3153b831-5ae4-4f07-b73d-4d26151675de
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6999170.9165-1"
Description: "CT THORAX W/CONT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BAUMANN,BERTA H"
* contained[=].name.family = "BAUMANN,BERTA H"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.718"
* contained[=].active = true
* contained[=].name = "CT RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.6659371"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "CT THORAX W/CONT"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "2896312"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6999170.9165-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.082900-372"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.372"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71260 "COMPUTED TOMOGRAPHY, THORAX, DIAGNOSTIC; WITH CONTRAST MATERIAL(S)"
* code.text = "CT SCAN"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "2896312"
* effectiveDateTime = "2000-08-29T08:34:00Z"
* issued = "2000-08-29T08:34:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* conclusion = "ABNORMAL"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q1QgVEhPUkFYIFcvQ09OVAogICAKRXhtIERhdGU6IEFVRyAyOSwgMjAwMEAwODozNApSZXEgUGh5czogTE9ESEksQUJEVUwgICAgICAgICAgICAgICAgICAgIFBhdCBMb2M6IFpaWkhFTUFUT0xPR1kgSUkgKFJlcSdnIExvYykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBDVCBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAzNzIgQ09NUExFVEUpICBDVCBUSE9SQVggVy9DT05UICAgICAgICAgICAgICAgICAoQ1QgICBEZXRhaWxlZCkgQ1BUOjcxMjYwCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgSC9PIE9GIE1BU1MgT04gVEhFIENYUiBXSElDSCBXQVMgRE9ORSBBUyBBIFBSRS1PUCBTVFVEWSBGT1IgRk9PVAogICAgICBTVVJHRVJZLiAgCiAgICAgICBIL08gVEIgLTYwIFlSUyBCQUNLLiAgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVVHIDI5LCAyMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBVUcgMzAsIDIwMDAKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9CLkguQmF1bWFubixNRC4KCiAgICBSZXBvcnQ6CiAgICAgIENUIE9GIFRIRSBDSEVTVDogCiAgICAgICAKICAgICAgSW5mb3JtZWQgY29uc2VudCB3aGljaCBhY2NvbXBhbmllZCB0aGUgcGF0aWVudCB0byB0aGUgQ1Qgc2NhbgogICAgICBzdWl0ZSBpcyBhcmNoaXZlZCBpbiBSYWRpb2xvZ3kgc2VydmljZSBhbmQgYXZhaWxhYmxlIGZvciByZXZpZXcKICAgICAgYXMgZGVzaXJlZC4gIAogICAgICAgCiAgICAgIEFsdGhvdWdoIHRoZXJlIGFyZSBubyBwcmlvciBDVCBzY2FucywgcGxhaW4gZmlsbXMgb2YgdGhlIHRob3JheAogICAgICBkaWQgaW4gMTk5NCwgMTk5NywgYW5kIDE5OTggYW5kIG1vc3QgcmVjZW50bHkgNy8zMS8wMCBhcmUKICAgICAgcmV2aWV3ZWQuICBBbGwgcHJpb3IgZmlsbXMgZGVtb25zdHJhdGUgYmloaWxhciBldmFsYXRpb24gYW5kCiAgICAgIHBhdGNoeSBjZW50cmFsIGFwaWNhbCBpbmZpbHRyYXRlcyB3aXRoIHByZWRvbWluYXRlbHkgbm9kdWxhcgogICAgICBwYXR0ZXJuIGFzIHdlbGwgYXMgdmFyaWFibGUgZXh0ZW5zaW9ucyBvZiB0aGUgY2x1c3RlcmVkIHNvZnQKICAgICAgdGlzc3VlcyB0b3dhcmQgdGhlIHRoaWNrZW5lZCBhcGljYWwgcGxldXJhLiAKICAgICAgIAogICAgICBTbWFsbCBub2R1bGFyIGRlbnNpdGllIGFyZSBzdWdnZXN0ZWQgZWxzZXdoZXJlIHRocm91Z2hvdXQgdGhlCiAgICAgIGx1bmdzIGFsdGhvdWdoIGxlc3MgcHJvbWluZW50IHRoYW4gaW4gdGhlIGFwaWNlcy4gIEludGVyc3RpdGl1bQogICAgICBpcyBkaWZmdXNlbHkgdGhpY2tlbmVkLiAKICAgICAgIAogICAgICBDVCBzY2FuIGRlbW9uc3RyYXRlcyBmaW5kaW5ncyBjb25zaXN0ZW50IHdpdGggdGhlIHBsYWluIGZpbG0gCiAgICAgIGFibm9ybWFsaXRpZXMuICBUaGVyZSBhcmUgaXJyZWd1bGFybHkgc2hhcGVkIGNlbnRyYWwgdXBwZXIKICAgICAgdGhvcmFjaWMvYXBpY2FsIHNvZnQgdGlzc3VlIGRlbnNpdGllcyBzZWVuIGNlbnRyYWxseSBleHRlbmRpbmcKICAgICAgdmFyaWFibHkgdG8gdGhlIHBlcmlwaGVyYWwgcGxldXJhLiAgVGhlIGNlcGhhbGFkIGhpbGFyIG1hcmdpbnMKICAgICAgYXJlIGVsZXZhdGVkIHRvd2FyZCB0aGUgYXBpY2VzIGFuZCB0aGVyZSBhcmUgc29mdCB0aXN1ZSBkZW5zaXRpZXMKICAgICAgd2l0aGluIHRoZSBtZWRpYXN0aW51bSBhbmQgdGhlIGhpbGEgYmlsYXRlcmFsbHkgY29uc2lzdGVudCBieQogICAgICBzaXplIGFuZCBjb25maWd1cmF0aW9uIHdpdGggbHltcGggbm9kZXMtLXNvbWUgd2l0aCBhc3NvY2lhdGVkCiAgICAgIGNhbGNpZmljYXRpb25zLiAgVGhlIGxhcmdlc3QgbWVkaWFzdGluYWwvaGlsYXIgc3VzcGVjdCBub2R1bGFyCiAgICAgIG1hc3MgaXMgaW4gdGhlIHJpZ2h0IGhpbHVtIGFuZCBtZWFzdXJlcyAxLjUgYnkgMmNtLiBhbG9uZyB0aGUgCiAgICAgIHZlbnRyYWwgbGF0ZXJhbCBtYXJnaW4gb2YgdGhlIHJpZ2h0IG1haW4gc3RlbSBicm9uY2h1cy4gIAogICAgICAgCiAgICAgIFNtYWxsIG5vZHVsYXIgZGVuc2l0aWVzIGFyZSBzZWVuIHdpdGhpbiB0aGUgbHVuZyBhcGljZXMgYXMgd2VsbAogICAgICBhcyBleHRlbmRpbmcgdG8gdGhlIGxvd2VyIGx1bmdzLiAgT2NjYXNpb25pYWwgZGVuc2UgY2FsY2lmaWNhdGlvbgogICAgICBpcyBwcmVzZW50IHdpdGhpbiB0aGUgbm9kdWxlcyBhbHRob3VnaCBtb3N0IGFyZSBub25jYWxjaWZpZWQuIAogICAgICAgCiAgICAgIE5vIGRvbWluYW50IG5vZHVsZXMgYXJlIGlkZW50aWZpZWQgbW9zdCBtZWF1c3VybmlnIDVtbS4gb3IgbGVzcy4gCiAgICAgICAKICAgICAgSW1hZ2luZyBpbnRvIHRoZSB1cHBlciBhYmRvbWVuIGRlbW9uc3RyYXRlcyBubyBmb2NhbCBsZXNpb25zIG9mCiAgICAgIGVpdGhlciBsaXZlciBvciBzcGxlZW4gaW4gdGhlaXIgY2VwaGFsYWQgZXh0ZW50LiAgVGhlIGNlbnRyYWwKICAgICAgcmVuYWwgY3lzdHMgYXJlIG5vdGVkIHNwbGF5aW5nIHRoZSB1cHBlciBjb2xsZWN0aW5nIHN5c3RlbXMgb2YKICAgICAgdGhlIGtpZG5leXMgc3ltbWV0cmljYWxseS4gIFJlbmFsIGZ1bmN0aW9uIGFwcGVhcnMKICAgICAgc3ltbWV0cmljL2dvb2QuICAKCiAgICBJbXByZXNzaW9uOgogICAgICBDVCBzY2FuIGZpbmRpbmdzIGNvcnJlbGF0ZSB3ZWxsIHdpdGggdGhlIGFuYXRvbWljIGFibm9ybWFsaXRpZXMKICAgICAgb2YgcHJpb3IgY2hlc3QgcmFkaW9ncmFwaHMuICBGaXJzdCByYWRpb2dyYXBoaWMgZGlmZmVyZW50aWFsCiAgICAgIGRpYWdub3NpcyBpcyBncmFudWxvbWF0b3VzIGRpc2Vhc2UgYWx0aG91Z2ggYWN0aXZlIGRpc2Vhc2UgY2FuCiAgICAgIG5vdCBiZSBhYnNvbHV0ZWx5IGV4Y2x1ZGVkLiAgCiAgICAgICAKICAgICAgQ2FuIG5vdCBleGNsdWRlIHRoZSBwb3NzaWJpbGl0eSBvZiBpbnRlcnZhbCBkZXZlbG9wbWVudCBvZiBhCiAgICAgIHNtYWxsIG5vbmNhbGNpZmllZCBub2R1bGFyIGRlbnNpdHkgY29uY29taXRhbnRseTsgaWYgdGhlcmUgaXMKICAgICAgc3Ryb25nIGNsaW5pY2FsIGNvbmNlcm4tIGFkZGl0aW9uYWwgY2hhcmFjdGVyaXphdGlvbiBtYXkgYmUKICAgICAgd2FycmFudGVkLiAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogQUJOT1JNQUxJVFksIEFUVE4uIE5FRURFRAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgQkVSVEEgSCBCQVVNQU5OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9KR0I="
* presentedForm.title = "CT THORAX W/CONT"
* presentedForm.creation = "2000-08-29T08:34:00Z"

Instance: d1440e44-95b0-40d8-9533-1c92cc122f69
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6999190.8674-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "VARMA,HEMANK"
* contained[=].name.family = "VARMA,HEMANK"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.6631233"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "FOOT 3 OR MORE VIEWS"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "2878642"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6999190.8674-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.080900-922"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.922"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "2878642"
* effectiveDateTime = "2000-08-09T13:25:00Z"
* issued = "2000-08-09T13:25:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgCkV4bSBEYXRlOiBBVUcgMDksIDIwMDBAMTM6MjUKUmVxIFBoeXM6IE5HVVlFTixIT0FORyBLICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPVVRQVC9TVVJHIChSZXEnZyBMb2MpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSW1nIExvYzogUkFESU9MT0dZCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgOTIyIENPTVBMRVRFKSAgRk9PVCAzIE9SIE1PUkUgVklFV1MgICAgICAgICAgICAgKFJBRCAgRGV0YWlsZWQpIENQVDo3MzYzMAogICAgIFByb2MgTW9kaWZpZXJzIDogUE9SVEFCTEUgRVhBTSwgTEVGVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIERvIHBvcnRhYmxlIGluIFBBQ1UuICBQdCBpcyBzL3AgcGluIHJlbW92YWwgeCAyIHByb3hpbWFsIHBoYWxhbngKICAgICAgbGVmdCBoYWxsdXguICBwbGVhc2UgZXZhbHVhdGUgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVVHIDExLCAyMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBVUcgMTgsIDIwMDAKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9IRU1BTksgVkFSTUEKCiAgICBSZXBvcnQ6CiAgICAgIFBPUlRBQkxFIEZJTE1TIE9GIFRIRSBMRUZUIEZPT1Q6ICA4LTktMDA6ICAxMzowNSBob3VyczogIAogICAgICAgCiAgICAgIHRoZSBjb21wYXJpc29uIGV4YW0gaXMgZnJvbSA3LTE4LTAwLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgb3N0ZW9wZW5pYS4gIAogICAgICAgCiAgICAgIE5vIHBsYW50YXIgc3B1ciBpcyBub3RpY2VkLiAgCiAgICAgICAKICAgICAgVHdvIHBpbnMgZnJvbSB0aGUgcHJveGltYWwgcGhhbGFueCBvZiB0aGUgZ3JlYXQgdG9lIGhhdmUgYmVlbgogICAgICByZW1vdmVkIGluIGNvbXBhcmlzb24gdG8gcHJldmlvdXMgZXhhbWluYXRpb24uICAKICAgICAgIAogICAgICBUaGVyZSBpcyByZWRlbW9uc3RyYXRpb24gb2YgYXQgbGVhc3QgdGhyZWUgc2NyZXdzIGFuZCBvbmUgY3VydmVkCiAgICAgIHJvZCBpbiB0aGUgZmlyc3QgbWV0YXRhcnNhbCBib25lIHdoaWNoIGhhcyBub3QgY2hhbmdlZAogICAgICBzaWduaWZpY2FudGx5IHNpbmNlIHByZXZpb3VzIGV4YW0uICBUaGVyZSBpcyBzb21lIGhhbGx1eCB2YWxndXMKICAgICAgZGVmb3JtaXR5LiAgCiAgICAgICAKICAgICAgdGhpcmQgYW5kIGZvdXJ0aCBoYW1tZXIgdG9lcyBhcmUgbm90aWNlZC4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIFJlbW92YWwgb2YgdHdvIHBpbnMgZnJvbSB0aGUgcHJveGltYWwgcGhhbGFueCBvZiB0aGUgbGVmdCBncmVhdAogICAgICB0b2Ugc2luY2UgcHJldmlvdXMgZXhhbWluYXRpb24uICAKICAgICAgIAogICAgICBObyBzaWduaWZpY2FudCBjaGFuZ2UgaW4gdGhlIGFwcGVhcmFuY2Ugb2YgdGhlIGZpcnN0IG1ldGF0YXJzYWwKICAgICAgYm9uZSB3aXRoIHNjcmV3cyBhbmQgd2lyZS4gIFBsZWFzZSBzZWUgYWJvdmUgZm9yIGNvbW1lbnRzLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgSEVNQU5LIFZBUk1BLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9SU0M="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "2000-08-09T13:25:00Z"

Instance: f66cfaf6-b014-469b-9499-16ccae420d1e
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6999268.8371-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "VARMA,HEMANK"
* contained[=].name.family = "VARMA,HEMANK"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.6600282"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "CHEST 2 VIEWS PA&LAT"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "2853075"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6999268.8371-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.073100-312"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.312"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "2853075"
* effectiveDateTime = "2000-07-31T16:28:00Z"
* issued = "2000-07-31T16:28:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgCkV4bSBEYXRlOiBKVUwgMzEsIDIwMDBAMTY6MjgKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPVVRQVC8gUFJFLU9QIFRFU1RJTkcgKFJlcSdnIEwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAzMTIgQ09NUExFVEUpICBDSEVTVCAyIFZJRVdTIFBBJkxBVCAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjcxMDIwCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgc2NoZWR1bGVkIGZvciBsdC4gZm9vdCBzdXJnZXJ5IG9uIDgtOS0wMCBuZWVkcyBwcmUgb3AgY3hyIAoKICAgIFJlcG9ydCBTdGF0dXM6IFZlcmlmaWVkICAgICAgICAgICAgICAgICAgIERhdGUgUmVwb3J0ZWQ6IEFVRyAwMSwgMjAwMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGF0ZSBWZXJpZmllZDogQVVHIDAyLCAyMDAwCiAgICBWZXJpZmllciBFLVNpZzovRVMvSEVNQU5LIFZBUk1BCgogICAgUmVwb3J0OgogICAgICBDSEVTVCwgUEEgQU5EIExBVEVSQUw6ICA3LTMxLTAwOiAgCiAgICAgICAKICAgICAgVGhlIGNvbXBhcmlzb24gZXhhbSBpcyBmcm9tIDQtOC05OC4gIAogICAgICAgCiAgICAgIFRoZSBjaGVzdCBhcHBlYXJhbmNlIGlzIGNvbnNpc3RlbnQgd2l0aCBDT1BEIGFuZCBvbGQgaGVhbGVkCiAgICAgIGdyYW51bG9tYXRvdXMgZGlzZWFzZS4gIAogICAgICAgCiAgICAgIFRoZXJlIGlzIHZvbHVtZSBsb3NzIGluIGJvdGggbG93ZXIgbG9iZXMuICBTb21lIGRpbGF0ZWQKICAgICAgYnJvbmNoaW9sZXMgYXJlIG5vdGljZWQgaW4gdGhlIHVwcGVyIGxvYmVzIGJpbGF0ZXJhbGx5LiAgVGhlc2UKICAgICAgZmluZGluZ3Mgd2VyZSBzZWVuIGluIHRoZSBwcmV2aW91cyBleGFtaW5hdGlvbi4gIEkgY2Fubm90IHNlZSB0aGUKICAgICAgc29mdCB0aXNzdWUgbm9kdWxhciBkZW5zaXR5IHdoaWNoIHdhcyBzZWVuIGluIHRoZSBsZWZ0IHVwcGVyIGxvYmUKICAgICAgaW4gdGhlIHByZXZpb3VzIGV4YW1pbmF0aW9uLiAgVGhpcyBjb3VsZCBiZSBkdWUgdG8gZGlmZmVyZW5jZSBpbgogICAgICBwb3NpdGlvbmluZy4gIFRoZXJlIGlzIHNvbWUgaWxsLWRlZmluZWQgZGVuc2l0eSBwcm9qZWN0ZWQgb3ZlcgogICAgICB0aGUgbGVmdCBhbnRlcmlvciBzZWNvbmQgcmliIGJ1dCBpdCBtYXkgcmVwcmVzZW50IG9sZCBoIGVhbGVkCiAgICAgIGdyYW51bG9tYXRvdXMgZGlzZWFzZSBhbmQgZGlsYXRlZCBicm9uY2hpb2xlcy4gIEhvd2V2ZXIsCiAgICAgIGZvbGxvdy11cCBleGFtaW5hdGlvbiBhbmQsIGlmIG5lZWRlZCwgZnVydGhlciB0ZXN0aW5nIG1heSBiZSBkb25lCiAgICAgIGZvciBldmFsdWF0aW9uIG9mIGFueSBuZW9wbGFzdGljIHByb2Nlc3MgYXMgdGhlIHNvZnQgdGlzc3VlCiAgICAgIG5vZHVsYXIgZGVuc2l0eSB3YXMgbm90aWNlZCBpbiB0aGUgcHJldmlvdXMgZXhhbWluYXRpb24uIAogICAgICBPdGhlcndpc2UsIEkgd291bGQgdGhpbmsgdGhhdCBwcm9iYWJseSB0aGVzZSBjaGFuZ2VzIG1heSBiZQogICAgICByZWxhdGVkIHRvIG9sZCBoZWFsZWQgZ3JhbnVsb21hdG91cyBkaXNlYXNlLiAgVGhlcmUgaXMgYmlsYXRlcmFsCiAgICAgIGFwaWNhbCBwbGV1cmFsIHRoaWNrZW5pbmcuICAKICAgICAgIAogICAgICBJbnRlcnN0aXRpYWwgY2hhbmdlcyBhcmUgbm90aWNlZCBpbiB0aGUgbHVuZ3MuICAKICAgICAgIAogICAgICBOb2R1bGFyIGRlbnNpdGllcyBhcmUgbm90aWNlZCBpbiBib3RoIGx1bmcgZmllbGRzIHdoaWNoIEkgdGhpbmsKICAgICAgd291bGQgcmVwcmVzZW50IG9sZCBoZWFsZWQgZ3JhbnVsb21hdG91cyBkaXNlYXNlLiAgCiAgICAgICAKICAgICAgT2xkIGhlYWxlZCBmcmFjdHVyZXMgb2YgbXVsdGlwbGUgcmlnaHQgcmlicyBhcmUgbm90aWNlZC4gIAogICAgICAgCiAgICAgIFNsaWdodCBjZW50cmFsIGNvbXByZXNzaW9uIG9mIHNvbWUgb2YgdGhlIG1pZCB0aG9yYWNpYyB2ZXJ0ZWJyYWwKICAgICAgYm9kaWVzIGlzIG5vdGljZWQuICAKICAgICAgIAogICAgICBUaGUgQ1AgYW5nbGVzIGFyZSBjbGVhci4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIFZvbHVtZSBsb3NzIGluIGJvdGggdXBwZXIgbG9iZXMgd2l0aCBkaWxhdGVkIGJyb25jaGlvbGVzIGFuZAogICAgICBwZXJpYnJvbmNoaWFsIHRoaWNrZW5pbmcuICAKICAgICAgIAogICAgICBDT1BEIGFuZCBub2R1bGFyIGRlbnNpdGllcyBpbiB0aGUgbHVuZ3Mgd2l0aCBiaWxhdGVyYWwgYXBpY2FsCiAgICAgIHBsZXVyYWwgdGhpY2tlbmluZy4gIAogICAgICAgCiAgICAgIFJpZ2h0IHVwcGVyIGxvYmUgc29mdCB0aXNzdWUgbm9kdWxhciBkZW5zaXR5IGlzIGFnYWluIG5vdGljZWQKICAgICAgcHJvamVjdGVkIGJldHdlZW4gdGhlIHJpZ2h0IHBvc3RlcmlvciB0aGlyZCBhbmQgZm91cnRoIHJpYnMgYnV0IEkKICAgICAgY2Fubm90IHNlZSB0aGUgbGVmdCB1cHBlciBsb2JlIGRlbnNpdHkgd2hpY2ggd2FzIHNlZW4gaW4gdGhlCiAgICAgIHByZXZpb3VzIGV4YW1pbmF0aW9uLiAgCiAgICAgICAKICAgICAgVGhlIG9sZCBleGFtIG9mIDE5OTQgYWxzbyBzaG93ZWQgY2hhbmdlcyBpbiBib3RoIHVwcGVyIGxvYmVzLAogICAgICB0aGVyZWZvcmUsIEkgdGhpbmsgbW9zdCBsaWtlbHkgdGhleSByZXByZXNlbnQgb2xkIGhlYWxlZAogICAgICBncmFudWxvbWF0b3VzIGRpc2Vhc2UuICBUaGVyZSBtYXkgYmUgc29tZSBlbGVtZW50IG9mCiAgICAgIGJyb25jaGllY3Rhc2lzLiAgRm9sbG93LXVwIGV4YW1pbmF0aW9uIG1heSBiZSBoZWxwZnVsLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgSEVNQU5LIFZBUk1BLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9SU0M="
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "2000-07-31T16:28:00Z"

Instance: 7a0a7ed2-d090-4337-b662-fce031194b8e
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 6999281.8373-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "NGUYEN,THONG"
* contained[=].name.family = "NGUYEN,THONG"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "order-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.irOrder"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrderTO.6561011"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#363679005 "Imaging"
* contained[=].code.text = "FOOT 3 OR MORE VIEWS"
* contained[=].subject.reference = "Patient/ex-MHV-patient-0"
* contained[=].encounter.identifier.value = "2836334"
* contained[=].requester.reference = "#provider-0"
* contained[=].performer.reference = "#organization-0"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.6999281.8373-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.071800-616"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.616"
* basedOn.reference = "#order-0"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "2836334"
* effectiveDateTime = "2000-07-18T16:26:00Z"
* issued = "2000-07-18T16:26:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgCkV4bSBEYXRlOiBKVUwgMTgsIDIwMDBAMTY6MjYKUmVxIFBoeXM6IEhZREUsVEFMSUEgICAgICAgICAgICAgICAgICAgICBQYXQgTG9jOiBaWlpQT0RJQVRSWSBDQVNUSU5HIChSZXEnZyBMb2MKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSA2MTYgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgNzEgeWVhciBvbGQgcHJpb3IgaGlzdG9yeSBvZiByIDFzdCBtZXRhdGFyc2FsIG9wZXJhdGlvbi4gIAogICAgICBDb21wbGFpbmluZyBvZiBwcm9taW5lbnQgaGFyZHdhcmUuICBQbGVhc2UgZXZhbHVhdGUuICBUaGFuayB5b3UgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogSlVMIDE5LCAyMDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBKVUwgMjQsIDIwMDAKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9USE9ORyBOR1VZRU4KCiAgICBSZXBvcnQ6CiAgICAgIExFRlQgRk9PVDogCiAgICAgICAKICAgICAgRXhhbWluYXRpb24gb2YgdGhlIGxlZnQgZm9vdCBieSBtdWx0aXBsZSB2aWV3cyBzaG93ZWQgdGhyZWUKICAgICAgbWV0YWxsaWMgc2NyZXdzIGFuZCB0d28gZml4YXRpb24gcGlucyBhdCB0aGUgbGVmdCBmaXJzdAogICAgICBtZXRhdGFyc2FsLiAgVHdvIGludHJhbWVkdWxsYXJ5IGZpeGF0aW9uIHBpbiBzZWVuIGF0IHRoZSBwcm94aW1hbAogICAgICBwaGFsYW54IG9mIHRoZSBsZWZ0IGdyZWF0IHRvZS4gIFRoZSBoYXJkd2FyZSBzZWVuIGF0IHRoZSBsZXZlbCBvZgogICAgICB0aGUgbGVmdCBmaXJzdCBtZXRhdGFyc2FsIGFyZSBhbHNvIHByZXZpb3VzIHNlZW4gYXQgdGhlIHN0dWR5CiAgICAgIGRhdGVkIDYvMjMvOTcuICBUaGUgdHdvIG5ldyBmaXhhdGlvbiBwaW5zIGF0IHRoZSBwcm94aW1hbCBwaGFsYW54CiAgICAgIG9mIHRoZSBsZWZ0IGdyZWF0IHRvZSBhcmUgbmV3LiAgVGhlIGhhcmR3YXJlIGF0IHRoZSBsZWZ0IGZpcnN0CiAgICAgIG1ldGF0YXJzYWwgcHJvYmFibHkgYXJlIHVzZWQgZm9yIHRyYW5zZml4aW5nIHRoZSBmcmFjdHVyZSBhdCB0aGUKICAgICAgYmFzZSBvZiB0aGUgbWV0YXJ0YXJzYWwuICBUaGUgcHVycG9zZSBvZiB0aGUgdHdvIG5ldyBwaW4gYXQgdGhlIAogICAgICBwcm94aW1hbCBwaGFsYW54IG9mIHRoZSBsZWZ0IGdyZWF0IHRvZSB3ZXJlIG5vdCBnaXZlbi4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIE1ldGFsbGljIHNjcmV3IGFuZCBmaXhhdGlvbiBwaW4gYXQgdGhlIGxlZnQgZmlyc3QgbWV0YXRhcnNhbCBhbmQKICAgICAgcHJveGltYWwgcGhhbGFueCBub3RlZC4gCiAgICAgICAKICAgICAgUGVyc29uYWwgZXZhbHVhdGlvbiBvZiB0aGUgcmFkaW9ncmFwaCBieSB0aGUgY2xpbmljaWFuIGlzCiAgICAgIGFkdmlzZWQuIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIFRIT05HIE5HVVlFTiwgUmFkaW9sb2dpc3QvQ2hpZWYgKFZlcmlmaWVyKQovUlND"
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "2000-07-18T16:26:00Z"

Instance: 9695631c-3fd4-4435-ac03-dea9f065a42f
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7019591.848-1"
Description: "RIBS BILAT+CHEST 4 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BAUMANN,BERTA H"
* contained[=].name.family = "BAUMANN,BERTA H"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7019591.848-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.040898-1235"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1235"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71111 "RADIOLOGIC EXAMINATION, RIBS, BILATERAL; INCLUDING POSTEROANTERIOR CHEST, MINIMUM OF 4 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "1298095"
* effectiveDateTime = "1998-04-08T15:19:00Z"
* issued = "1998-04-08T15:19:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "UklCUyBCSUxBVCtDSEVTVCA0IE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBBUFIgMDgsIDE5OThAMTU6MTkKUmVxIFBoeXM6IEFMTEVOLE1BUklMWU4gICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxMjM1IENPTVBMRVRFKSBSSUJTIEJJTEFUK0NIRVNUIDQgT1IgTU9SRSBWSUVXUyAoUkFEICBTZXJpZXMgICkgQ1BUOjcxMTExCiAgICAgUHJvYyBNb2RpZmllcnMgOiBCSUxBVEVSQUwgRVhBTQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFZFVCBGRUxMIEZMQVQgT04gQkFDSyBPTiA0LTUtOTgsIFRSSVBQRUQgT1ZFUiBET0csIFNQRUNJQUwgQVRUTgogICAgICBUTyBSVCBQT1NUIFJJQlMgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogQVBSIDA5LCAxOTk4CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBBUFIgMTAsIDE5OTgKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9CLkguQmF1bWFubixNRC4KCiAgICBSZXBvcnQ6CiAgICAgIENIRVNUIEFORCBSSUJTOiAgMDQvMDgvOTg6IAogICAgICAgCiAgICAgIE5vIGNvbnZpbmNpbmdseSBzdXNwZWN0IGFjdXRlIHJpYiBmcmFjdHVyZXMgYXJlIHNlZW4uICBUaGVyZSBpcwogICAgICBkZWZvcm1pdHkgb2YgdGhlIHBvc3RlcmlvciBsYXRlcmFsIGFzcGVjdCB0byB0aGUgcmlnaHQgNnRoIHJpYgogICAgICBhbmQgdGhlIHBvc3RlcmlvciBsYXRlcmFsIGxlZnQgNHRoIGFuZCA2dGggcmlicyBjb25zaXN0ZW50IHdpdGgKICAgICAgcmVtb3RlbHkgaGVhbGVkIGZyYWN0dXJlcy4gCiAgICAgICAKICAgICAgSWYgdGhlcmUgaXMgc3Ryb25nIGNsaW5pY2FsIGNvbmNlcm4gb2YgcG90ZW50aWFsbHkgdW5kZXRlY3RlZCAKICAgICAgbm9uLWRpc3BsYWNlZCBmcmFjdHVyZS0tYWRkaXRpb25hbCBpbWFnaW5nIG1heSBiZSBkZXNpcmVkLiAgCiAgICAgICAKICAgICAgVGhlcmUgaXMgbm8gY2hhbmdlIHdpdGhpbiB0aGUgdGhvcmF4IHRvIHN1Z2dlc3QgcG90ZW50aWFsCiAgICAgIHVuZGV0ZWN0ZWQgcmliIGZyYWN0dXJlLiAgCiAgICAgICAKICAgICAgVGhlcmUgY29udGludWUgdG8gYmUgY29hcnNlIHRyYWJlY3VsYXIgbm9kdWxlIGFjY2VudHVhdGlvbiBvZiB0aGUgCiAgICAgIGludGVyc3RpdGl1bSBkaWZmdXNlbHkgd2l0aCBjb25zb2xpZGF0aW9uIG9mIG5vZHVsYXIgaW50ZXJzdGl0aWFsIAogICAgICBpbmZpbHRyYXRlIGluIGJvdGggbHVuZyBhcGljZXMgYXMgYmVmb3JlLiAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgbm8gYWN1dGUgZnJhY3R1cmUgaWRlbnRpZmllZCAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBCRVJUQSBIIEJBVU1BTk4sIFJhZGlvbG9naXN0IChWZXJpZmllcikKL0dFRw=="
* presentedForm.title = "RIBS BILAT+CHEST 4 OR MORE VIEWS"
* presentedForm.creation = "1998-04-08T15:19:00Z"

Instance: 246bb52c-09be-4db1-9324-c293e5c3d514
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7028984.8645-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BELLAS,RICHARD C"
* contained[=].name.family = "BELLAS,RICHARD C"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7028984.8645-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.101597-1019"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1019"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "983040"
* effectiveDateTime = "1997-10-15T13:54:00Z"
* issued = "1997-10-15T13:54:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBPQ1QgMTUsIDE5OTdAMTM6NTQKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxMDE5IENPTVBMRVRFKSBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBSSUdIVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIDMgVklFV1MgUklHSFQgRk9PVCBTL1AgNiBXS1MgUExFQVNFIFNUQVRFIFBST0dSRVNTSU9OIE9GIEhFQUxJTkcKICAgICAgT0YgMVNUIE1FVEFUQVJTQUwgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogT0NUIDE2LCAxOTk3CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBPQ1QgMTgsIDE5OTcKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9SSUNIQVJEIEMuIEJFTExBUywgTS5ELgoKICAgIFJlcG9ydDoKICAgICAgUklHSFQgRk9PVDogIDEwLTE1LTk3OiAgCiAgICAgICAKICAgICAgUm91dGluZSB2aWV3cyBvZiB0aGUgcmlnaHQgZm9vdCBzaG93IHRoZSBwcmVzZW5jZSBvZiBhIHNtYWxsCiAgICAgIGNhbGliZXIgc2NyZXcgcHJvamVjdGluZyBmcm9tIHRoZSBkb3JzYWwgdG8gdGhlIHZlbnRyYWwgc3VyZmFjZQogICAgICBvZiB0aGUgZGlzdGFsIG1ldGFwaHlzaXMgb2YgdGhlIGZpcnN0IG1ldGF0YXJzYWwgYm9uZS4gIFRoZXJlIGlzCiAgICAgIGFic2VuY2Ugb2YgdGhlIG1lZGlhbCBzdXJmYWNlIG9mIHRoZSBkaXN0YWwgZXBpcGh5c2lzIGFuZAogICAgICBtZXRhcGh5c2lzIG9mIHRoZSBmaXJzdCBtZXRhdGFyc2FsIGNvbXBhdGlibGUgd2l0aCBwcmV2aW91cwogICAgICBidW5pb25lY3RvbXkuICBUaGUgc2Vjb25kIHRocm91Z2ggdGhlIGZpZnRoIG1ldGF0YXJzYWxzIGFwcGVhcgogICAgICBub3JtYWwuICAKCiAgICBJbXByZXNzaW9uOgogICAgICBFdmlkZW5jZSBvZiBwcmV2aW91cyBidW5pb25lY3RvbXkgaW52b2x2aW5nIHRoZSBmaXJzdCBtZXRhdGFyc2FsLiAKICAgICAgIAogICAgICBGaXhhdGlvbiBzY3JldyBkZXZpY2UgcHJvamVjdGluZyBmcm9tIHRoZSBkb3JzYWwgdG8gdGhlIHZlbnRyYWwKICAgICAgc3VyZmFjZXMgb2YgdGhlIGRpc3RhbCBlbmQgb2YgdGhlIHNoYWZ0IG9mIHRoZSBmaXJzdCBtZXRhdGFyc2FsLiAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogTUlOT1IgQUJOT1JNQUxJVFkKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIFJJQ0hBUkQgQyBCRUxMQVMsIFNUQUZGIFJBRElPTE9HSVNUIChWZXJpZmllcikKL1JTQw=="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-10-15T13:54:00Z"

Instance: 2a768135-d516-4329-8f14-fb7158d2a26f
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029077.8866-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BAUMANN,BERTA H"
* contained[=].name.family = "BAUMANN,BERTA H"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029077.8866-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.092297-269"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.269"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "650040"
* effectiveDateTime = "1997-09-22T11:33:00Z"
* issued = "1997-09-22T11:33:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBTRVAgMjIsIDE5OTdAMTE6MzMKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAyNjkgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBSSUdIVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBPU1QtT1AgMyBGT09UIFZJRVdTIFIgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogU0VQIDIzLCAxOTk3CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBTRVAgMjMsIDE5OTcKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9CLkguQmF1bWFubixNRC4KCiAgICBSZXBvcnQ6CiAgICAgIFJJR0hUIEZPT1Q6ICA5LzIyLzk3OiAKICAgICAgIAogICAgICBPc3Nlb3VzIHN0cnVjdHVyZXMgcmVtYWluIG1vZGVyYXRlbHkgdG8gc2V2ZXJlbHkgZGVtaW5lcmFsaXplZCAKICAgICAgcmFkaW9ncmFwaGljIHBhdHRlcm4gbm90IG9mIG9zdGVvcG9yb3Npcy4gIAogICAgICAgCiAgICAgIFRoZXJlIGhhcyBiZWVuIHByaW9yIHN1cmdlcnkgZm9yIGJ1bmlvbi0td2l0aCBvcnRob3BlZGljIGhhcmR3YXJlIAogICAgICB1bmNoYW5nZWQgZnJvbSBGZWJ1cmFyeSBvZiAxOTk3LiAgRHVyaW5nIGN1cnJlbnQgZXZhbHVhdGlvbiwgc29mdAogICAgICB0aXNzdWUgZHJlc3NpbmcgaXMgYXBwbGllZCBhYm91dCB0aGUgZm9vdC4gIERldGFpbHMgb2YgY3VycmVudAogICAgICBzaXRlZCBzdXJnaWNhbCBwcm9jZWR1cmUgbm90IGlkZW50aWZpZWQuICAKCiAgICBJbXByZXNzaW9uOgogICAgICAxLiAgTm8gc2lnbmlmaWNhbnQgY2hhbmdlLS1ldmlkZW5jZSBwcmlvciBidW5pb25lY3RvbXkuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBCRVJUQSBIIEJBVU1BTk4sIFJhZGlvbG9naXN0IChWZXJpZmllcikKL0dFRw=="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-09-22T11:33:00Z"

Instance: e8bf99a7-39cc-40d6-9444-3b663e5f11b6
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029091.8957-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029091.8957-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.090897-207"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.207"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "631158"
* effectiveDateTime = "1997-09-08T10:42:00Z"
* issued = "1997-09-08T10:42:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBTRVAgMDgsIDE5OTdAMTA6NDIKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAyMDcgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBQT1JUQUJMRSBFWEFNLCBSSUdIVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFMvUCBSSUdIVCBCVU5JT05FQ1RPTVkgKioqKioqKioqKioqKiBQVCBJTiBQQUNVLCBXSUxMIFBBR0UgV0hFTgogICAgICBQVCBBUlJJVkVTICAqKioqKioqKioqKioqODggCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogU0VQIDEwLCAxOTk3CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBTRVAgMTEsIDE5OTcKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9KLkUuU1VUVE9OLE0uRC4KCiAgICBSZXBvcnQ6CiAgICAgIFJJR0hUIEZPT1Q6IAogICAgICAgCiAgICAgIFRocmVlIHZpZXdzIG9mIHRoZSByaWdodCBmb290IHNob3cgcG9zdCBzdXJnaWNhbCBjaGFuZ2VzCiAgICAgIGludm9sdmluZyB0aGUgZGlzdGFsIGZpcnN0IG1ldGF0YXJzYWwgaW4gaXRzIG1lZGlhbCBhc3BlY3QuICBBCiAgICAgIGJvbmUgc2NyZXcgaXMgaW4gcGxhY2UuICBUaGUgdmFsZ3VzIGRldmlhdGlvbiBoYXMgYmVlbiBjb3JyZWN0ZWQuICAKCiAgICBJbXByZXNzaW9uOgogICAgICBQb3N0IHN1cmdpY2FsIGNoYW5nZXMuIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIEpPU0VQSCBTVVRUT04sIFJhZGlvbG9naXN0IChWZXJpZmllcikKL0pHQg=="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-09-08T10:42:00Z"

Instance: 0994d06f-7817-4c02-acf4-3564bb82636a
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029096.8499-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029096.8499-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.090397-827"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.827"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "622090"
* effectiveDateTime = "1997-09-03T15:00:00Z"
* issued = "1997-09-03T15:00:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBTRVAgMDMsIDE5OTdAMTU6MDAKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSA4MjcgQ09NUExFVEUpICBDSEVTVCAyIFZJRVdTIFBBJkxBVCAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjcxMDIwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgUFJFLU9QIEZPUiBTVVJHRVJZIChCVU5JT04gUiBGT09UKSAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBTRVAgMDQsIDE5OTcKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IFNFUCAwNSwgMTk5NwogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS5TVVRUT04sTS5ELgoKICAgIFJlcG9ydDoKICAgICAgQ0hFU1Q6ICA5LzMvOTc6IAogICAgICAgCiAgICAgIFBBIGFuZCBsYXRlcmFsIG9mIHRoZSBjaGVzdCBzaG93IGNoYW5nZXMgb2YgY2hyb25pYyBvYnN0cnVjdGl2ZQogICAgICBwdWxtb25hcnkgZGlzZWFzZS4gIFRoZXJlIGFyZSBhbHNvIGV2aWRlbmNlcyBvZiBvbGQgZ3JhbnVsb21hdG91cwogICAgICBkaXNlYXNlIHdpdGggZmlicm9jYWxjaWZpYyBjaGFuZ2VzIHNlZW4gaW4gdGhlIGFwaWNlcyBhbmQKICAgICAgcmV0cmFjdGlvbiBvZiB0aGUgaGlsYXIgcmVnaW9ucyBpbiBhIGNlcGhhbGFkIGRpcmVjdGlvbi4gIFRoZQogICAgICBjYXJkaWFjIHNpbGhvdWV0dGUgaXMgbm9ybWFsIGFuZCBubyBldmlkZW5jZSBvZiBjb25nZXN0aXZlIGhlYXJ0CiAgICAgIGZhaWx1cmUgaXMgc2Vlbi4gIE5vIGFjdXRlIGNoYW5nZXMgYXJlIG5vdGVkIGluIGVpdGhlciBsdW5nCiAgICAgIGZpZWxkLiAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgMS4gIENPUEQgYW5kIG9sZCBncmFudWxvbWF0b3VzIGRpc2Vhc2UuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT1NFUEggU1VUVE9OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9HRUc="
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "1997-09-03T15:00:00Z"

Instance: 4439b27f-d11a-4676-9483-9004c38d0e07
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029096.8499-2"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029096.8499-2"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.090397-833"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.833"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "622090"
* effectiveDateTime = "1997-09-03T15:00:00Z"
* issued = "1997-09-03T15:00:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBTRVAgMDMsIDE5OTdAMTU6MDAKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSA4MzMgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBSSUdIVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBSRS1PUCBGTyBSU1VSR0VSWSAoQlVOSU9OIFIgRk9PVCkgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogU0VQIDA0LCAxOTk3CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBTRVAgMDUsIDE5OTcKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9KLkUuU1VUVE9OLE0uRC4KCiAgICBSZXBvcnQ6CiAgICAgIFJJR0hUIEZPT1Q6ICA5LzMvOTc6IAogICAgICAgCiAgICAgIFRocmVlIHZpZXdzIG9mIHRoZSByaWdodCBmb290IHNob3cgbW9kZXJhdGUgaGFsbHV4IHZhbGd1cyB3aXRoIAogICAgICBkZWdlbmVyYXRpdmUgY2hhbmdlcyBhdCB0aGUgMXN0IE1QIGpvaW50LiAgVGhlIHJlbWFpbmRlciBvZiB0aGUKICAgICAgc3R1ZHkgaXMgdW5yZW1hcmthYmxlLiAgCgogICAgSW1wcmVzc2lvbjoKICAgICAgMS4gIEhhbGx1eCB2YWxndXMuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT1NFUEggU1VUVE9OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9HRUc="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-09-03T15:00:00Z"

Instance: fdfb3f04-44f2-450d-9b75-01515c0c0625
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029188.8771-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029188.8771-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.081197-354"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.354"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "600682"
* effectiveDateTime = "1997-08-11T12:28:00Z"
* issued = "1997-08-11T12:28:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBBVUcgMTEsIDE5OTdAMTI6MjgKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAzNTQgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgTEVGVCAzIFZJRVdTIExFRlQgRk9PVCxBS0lOIE9TQUNPVE9NWSAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBBVUcgMjEsIDE5OTcKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IEFVRyAyMSwgMTk5NwogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS5TVVRUT04sTS5ELgoKICAgIFJlcG9ydDoKICAgICAgTEVGVCBGT09UOiAgOC8xMS85NzogCiAgICAgICAKICAgICAgQSByZXBlYXQgZXhhbWluYXRpb24gb2YgdGhlIGxlZnQgZm9vdCBpcyBtYWRlIGFmdGVyIGFuIGludGVydmFsCiAgICAgIG9mIDcgd2Vla3MuICBPbiB0b2RheSdzIGV4YW1pbmF0aW9uLCB0aGUgcHJlc2VuY2Ugb2YgYSB3YWxraW5nCiAgICAgIGNhc3QgaXMgb2JzZXJ2ZWQuICBJbiBhZGRpdGlvbiB0byB0aGUgc2NyZXdzIGFuZCB3aXJlcyBpbiB0aGUgMXN0CiAgICAgIG1ldGF0YXJzYWwgd2hpY2ggd2VyZSBwcmVzZW50IHByZXZpb3VzbHksIHRoZXJlIGFyZSBub3cgMiB3aXJlcwogICAgICBpbiB0aGUgcHJveGltYWwgcGhhbGFueCBvZiB0aGUgZ3JlYXQgdG9lLCBwcmVzdW1hYmx5IHRyYW5zZml4aW5nCiAgICAgIGFuIG9zdGVvdG9teS4gIEZpbG1zIGFyZSBhdmFpbGFibGUgZm9yIHJldmlldyBieSBwb2RpYXRyeS4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIDEuICBJbnRlcnZhbCBzdXJnZXJ5IG9uIHRoZSBwcm94aW1hbCBwaGFsYW54IG9mIHRoZSBncmVhdCB0b2UgYW5kIAogICAgICBhcHBsaWNhdGlvbiBvZiBhIHdhbGtpbmcgY2FzdC4gIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIEpPU0VQSCBTVVRUT04sIFJhZGlvbG9naXN0IChWZXJpZmllcikKL0dFRw=="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-08-11T12:28:00Z"

Instance: da3474c3-ed7b-4fb5-882c-a01ebb450b91
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029283.914-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BAUMANN,BERTA H"
* contained[=].name.family = "BAUMANN,BERTA H"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029283.914-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.071697-1446"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1446"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "555776"
* effectiveDateTime = "1997-07-16T08:59:00Z"
* issued = "1997-07-16T08:59:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBKVUwgMTYsIDE5OTdAMDg6NTkKUmVxIFBoeXM6IExBVFRBLERFQlJBIEsgICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxNDQ2IENPTVBMRVRFKSBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBQT1JUQUJMRSBFWEFNCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgUE9TVCBPUCBFWEFNLCBCVU5JT05FQ1RPTVkgTEVGVCBGT09ULiAgUEFUSUVOVCBXSUxMIEJFIElOIFBBQ1UuIAogICAgICBXRSBXSUxMIENBTEwuICBUSEFOS1MhIAoKICAgIFJlcG9ydCBTdGF0dXM6IFZlcmlmaWVkICAgICAgICAgICAgICAgICAgIERhdGUgUmVwb3J0ZWQ6IEpVTCAxNywgMTk5NwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGF0ZSBWZXJpZmllZDogSlVMIDIyLCAxOTk3CiAgICBWZXJpZmllciBFLVNpZzovRVMvQi5ILkJhdW1hbm4sTUQuCgogICAgUmVwb3J0OgogICAgICBMRUZUIEZPT1Q6ICA3LzE2Lzk3OiAKICAgICAgIAogICAgICBUaHJlZSBwb3J0YWJsZSBmaWxtcyBhcmUgYWNoaWV2ZWQgb2YgdGhlIGxlZnQgZm9vdCBpbiBwbGFzdGVyCiAgICAgIHdhbGtpbmcgY2FzdC4gIFRoZSBvcnRob3BlZGljIHBpbnMgYW5kIHNjcmV3cyBhcmUgY29uc2lzdGVudCB3aXRoCiAgICAgIHNpdGVkIHByb2NlZHVyZS4gIAogICAgICAgRmlsbXMgYXJlIGF2YWlsYWJsZSBmb3IgcmV2aWV3IGJ5IHJlZmVycmluZyBwaHlzaWNpYW5zIGFzCiAgICAgIGRlc2lyZWQtLXRoZSBvcGVyYXRpdmUgc2l0ZXMgYmVpbmcgbm90IGZ1bGx5IGNoYXJhY3Rlcml6ZWQKICAgICAgdGhyb3VnaCBzdXBwb3J0IGFwcGFyYXR1cy4gIFNpbmNlIDYvMjMvOTcgc3R1ZHksIDIgbmV3IG9ydGhvcGVkaWMKICAgICAgcGlucyBoYXZlIGJlZW4gcGxhY2VkIHRyYXZlcnNpbmcgdGhlIHByb3hpbWFsIHBoYWxhbnggb2YgdGhlCiAgICAgIGdyZWF0IHRvZS4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIDEuICBJbnRlcnZhbCBzdXJnaWNhbCBwcm9jZWR1cmUtLW5vdCBvcHRpbWFsbHkgY2hhcmFjdGVyaXplZAogICAgICB0aHJvdWdoIGNhc3QuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBCRVJUQSBIIEJBVU1BTk4sIFJhZGlvbG9naXN0IChWZXJpZmllcikKL0dFRw=="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-07-16T08:59:00Z"

Instance: e51e6c01-6648-434a-9783-28a20e838f22
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029376.8548-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029376.8548-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.062397-656"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.656"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "520709"
* effectiveDateTime = "1997-06-23T14:51:00Z"
* issued = "1997-06-23T14:51:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBKVU4gMjMsIDE5OTdAMTQ6NTEKUmVxIFBoeXM6IExBVFRBLERFQlJBIEsgICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSA2NTYgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgRVZBTFVBVEUgSEVBTElORyAxU1QgUkFZLiAgCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogSlVOIDI0LCAxOTk3CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBKVU4gMjYsIDE5OTcKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9KLkUuU1VUVE9OLE0uRC4KCiAgICBSZXBvcnQ6CiAgICAgIExFRlRUIEZPT1Q6ICA2LTIzLTk3OiAgCiAgICAgICAKICAgICAgVGhyZWUgdmlld3Mgb2YgdGhlIGxlZnQgZm9vdCBhcmUgc2Vlbi4gIFBvc3Qtc3VyZ2ljYWwgY2hhbmdlcyBhcmUKICAgICAgbm90ZWQgaW52b2x2aW5nIHRoZSBmaXJzdCBtZXRhdGFyc2FsLiAgSi1XaXJlcyBhbmQgbWV0YWwgc2NyZXdzCiAgICAgIGFyZSBwcmVzZW50LiAgTGFyZ2UgYm9ueSBkZWZlY3QgaXMgc3RpbGwgcXVpdGUgdmlzaWJsZSBuZWFyIHRoZQogICAgICBwcm94aW1hbCBlbmQgb2YgdGhlIGJvbmUgYW5kIG5vIGV2aWRlbmNlIGlzIHNlZW4gb24gdGhpcyBzdHVkeSBvZgogICAgICBzdWJwZXJpb3N0ZWFsIG5ldyBib25lIGZvcm1hdGlvbi4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIFBvc3Qtc3VyZ2ljYWwgY2hhbmdlcyBhcmUgbm90ZWQuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT1NFUEggU1VUVE9OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9SU0M="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-06-23T14:51:00Z"

Instance: 9ae60270-ada2-4321-b5b3-3cf6c73c3ec1
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029487.8991-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SINGER,JOHN"
* contained[=].name.family = "SINGER,JOHN"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029487.8991-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.051297-238"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.238"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "478351"
* effectiveDateTime = "1997-05-12T10:08:00Z"
* issued = "1997-05-12T10:08:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBNQVkgMTIsIDE5OTdAMTA6MDgKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAyMzggQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBQT1JUQUJMRSBFWEFNLCBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgUy9QIEFSVEhST1BMQVNUWSBPRiAyTkQgRElHSVQgT0YgTFQgRk9PVCAKICAgICAgIAogICAgICAhISEhISEhISEhISEhICBQVCBJTiBQQUNVICBXSUxMIENBTEwgNzM3IFdIRU4gUFQgQVJSSVZFUy4gCiAgICAgICEhISEhISEhISEhISAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBNQVkgMTQsIDE5OTcKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IE1BWSAyOSwgMTk5NwogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0IuSC5CYXVtYW5uLE1ELgoKICAgIFJlcG9ydDoKICAgICAgTEVGVCBGT09UIFRIUk9VR0ggUExBU1RFUiBDQVNUOiAgNS0xMi05NzogIAogICAgICAgCiAgICAgIENvbXBhcmlzb24gaXMgbWFkZSB3aXRoIFgtUmF5cyBvZiA0LTIxLTk3LiAgCiAgICAgICAKICAgICAgUG9zdG9wZXJhdGl2ZSBjaGFuZ2VzIGFyZSBub3RlZCBpbiB0aGUgZmlyc3QgZGlnaXQgY29uc2lzdGluZyBvZgogICAgICBhbiBvc3Rlb3RvbXkgaW4gdGhlIHByb3hpbWFsIHBvcnRpb24gb2YgdGhlIGZpcnN0IG1ldGF0YXJzYWwKICAgICAgd2hpY2ggaGFzIGJlZW4gc3RhYmlsaXplZCBieSB0d28gYm9uZSBzY3Jld3MgYW5kIG9uZSB3aXJlLiAgQWxzbywKICAgICAgdGhlcmUgaXMgYW4gYWRkaXRpb25hbCBsb25naXR1ZGluYWwgd2lyZSBleHRlbmRpbmcgdGhyb3VnaCB0aGUKICAgICAgcmVtYWluaW5nIGxlbmd0aCBvZiB0aGUgZmlyc3QgbWV0YXRhcnNhbCBwbHVzIGEgc2luZ2xlIHNtYWxsCiAgICAgIHNjcmV3IGluIHRoZSBuZWNrIG9mIHRoZSBmaXJzdCBtZXRhdGFyc2FsLiAgVGhlcmUgaXMgaW1wcm92ZW1lbnQKICAgICAgaW4gaGFsbHV4IHZhbGd1cywgaG93ZXZlciwgb25lIGRvZXMgbm90ZSB0aGUgcHJlc2VuY2Ugb2Ygc29tZQogICAgICBkZWdyZWUgb2YgaGFtbWVyIHRvZSBkZWZvcm1pdHkgaW52b2x2aW5nIHRoZSBzZWNvbmQsIHRoaXJkLCBhbmQgCiAgICAgIGZvdXJ0aCwgYW5kIHBlcmhhcHMgYWxzbyB0aGUgZmlmdGggdG9lcy4gIAoKICAgIEltcHJlc3Npb246CiAgICAgIFNhdGlzZmFjdG9yeSBhcHBlYXJhbmNlIG9mIHBvc3Qtc3VyZ2ljYWwgcmVzaWR1YWxzIG9mIGhhbGx1eAogICAgICB2YWxndXMsIGFzIGRlc2NyaWJlZC4gIAoKICAgIFByaW1hcnkgRGlhZ25vc3RpYyBDb2RlOiBNQUpPUiBBQk5PUk1BTElUWSwgTk8gQVRUTi4gTkVFREVECgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT0hOIFNJTkdFUiwgU3RhZmYgUGh5c2ljaWFuClZFUklGSUVEIEJZOgogIEJFUlRBIEggQkFVTUFOTiwgUmFkaW9sb2dpc3QKCi9SU0M="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-05-12T10:08:00Z"

Instance: 3d6f5b1b-7a21-4784-b1cf-d75e04ed5d98
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029492.8485-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029492.8485-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.050797-1341"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1341"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "449867"
* effectiveDateTime = "1997-05-07T15:14:00Z"
* issued = "1997-05-07T15:14:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBNQVkgMDcsIDE5OTdAMTU6MTQKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxMzQxIENPTVBMRVRFKSBDSEVTVCAyIFZJRVdTIFBBJkxBVCAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjcxMDIwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBMRUZUCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgUFJFLU9QIEZPUiBTVVJHRVJZIChIQUxMVVggVkFMR1VTKSAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBNQVkgMDgsIDE5OTcKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IE1BWSAwOSwgMTk5NwogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS5TVVRUT04sTS5ELgoKICAgIFJlcG9ydDoKICAgICAgQ0hFU1Q6IAogICAgICAgCiAgICAgIFBBIGFuZCBsYXRlcmFsIG9mIHRoZSBjaGVzdCBzaG93IGNoYW5nZXMgb2YgY29uZ2VzdGl2ZQogICAgICBvYnN0cnVjdGl2ZSBwdWxtb25hcnkgZGlzZWFzZSBhbmQgZXZpZGVuY2Ugb2Ygb2xkIGdyYW51bG9tYXRvdXMKICAgICAgZGlzZWFzZS4gIEludGVyc3RpdGlhbCBmaWJyb3NpcyBhbmQgcGxldXJhbCB0aGlja2VuaW5nIGF0IHRoZQogICAgICBhcGljZXMgY2FuIGJlIHNlZW4uICBIeXBlcmFlcmF0ZWQgbHVuZ3Mgd2l0aCBmbGF0dGVuZGVkCiAgICAgIGRpYXBocmFnbXMgYXJlIHByZXNlbnQuICAKCiAgICBJbXByZXNzaW9uOgogICAgICBDaGFuZ2VzIG9mIGNocm9uaWMgb2JzdHJ1Y3RpdmUgcHVsbW9uYXJ5IGRpc2Vhc2UgYXJlIGZvdW5kIGFuZAogICAgICB0aGVyZSBhcmUgZXZpZGVuY2VzIG9mIG9sZCBncmFudWxvbWF0b3VzIGRpc2Vhc2Ugc3VwZXJpbXBvc2VkLiAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT1NFUEggU1VUVE9OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9KR0I="
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "1997-05-07T15:14:00Z"

Instance: e5e4d36a-f31e-4d87-80a7-63f56810a50f
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7029578.8663-1"
Description: "FOOT 3 OR MORE VIEWS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "SUTTON,JOSEPH"
* contained[=].name.family = "SUTTON,JOSEPH"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.2267"
* contained[=].active = true
* contained[=].name = "RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7029578.8663-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.042197-411"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.411"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#73630 "RADIOLOGIC EXAMINATION, FOOT; COMPLETE, MINIMUM OF 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* encounter.identifier.value = "422109"
* effectiveDateTime = "1997-04-21T13:36:00Z"
* issued = "1997-04-21T13:36:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Rk9PVCAzIE9SIE1PUkUgVklFV1MKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBBUFIgMjEsIDE5OTdAMTM6MzYKUmVxIFBoeXM6IEhPTEdBRE8sUk9OQUxEICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSA0MTEgQ09NUExFVEUpICBGT09UIDMgT1IgTU9SRSBWSUVXUyAgICAgICAgICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjczNjMwCiAgICAgUHJvYyBNb2RpZmllcnMgOiBCSUxBVEVSQUwgRVhBTQoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CiAgICAgIFBSRS1PUCBCVU5JT04gRVZBTFVBVElPTiAKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBBUFIgMjIsIDE5OTcKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IEFQUiAyNCwgMTk5NwogICAgVmVyaWZpZXIgRS1TaWc6L0VTL0ouRS5TVVRUT04sTS5ELgoKICAgIFJlcG9ydDoKICAgICAgQk9USCBGRUVUOiAKICAgICAgIAogICAgICBTZXZlcmUgY2hhbmdlcyBvZiBoYWxsdXggdmFsZ3VzIGFyZSBzZWVuIGJpbGF0ZXJhbGx5LCBzb21ld2hhdAogICAgICBncmVhdGVyIG9uIHRoZSBsZWZ0IHRoYW4gb24gdGhlIHJpZ2h0LiAgVGhlIG1ldGF0YXJzb3BoYWxhbmdlYWwKICAgICAgam9pbnRzIHNob3cgZGVnZW5lcmF0aXZlIGNoYW5nZXMgYXMgd2VsbC4gCgogICAgSW1wcmVzc2lvbjoKICAgICAgU2V2ZXJlIGhhbGx1eCB2YWxndXMsIGludm9sdmluZyBib3RoIGZlZXQuICAKCiAgICBQcmltYXJ5IERpYWdub3N0aWMgQ29kZTogCgpQcmltYXJ5IEludGVycHJldGluZyBTdGFmZjoKICBKT1NFUEggU1VUVE9OLCBSYWRpb2xvZ2lzdCAoVmVyaWZpZXIpCi9KR0I="
* presentedForm.title = "FOOT 3 OR MORE VIEWS"
* presentedForm.creation = "1997-04-21T13:36:00Z"

Instance: a66187be-5cf2-4911-9b62-cc1e7c811711
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7059298.8462-1"
Description: "CHEST 2 VIEWS PA&LAT"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BELLAS,RICHARD C"
* contained[=].name.family = "BELLAS,RICHARD C"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.704"
* contained[=].active = true
* contained[=].name = "INPATIENT RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7059298.8462-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.070194-2941"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.2941"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#71020 "RADIOLOGIC EXAMINATION, CHEST, 2 VIEWS, FRONTAL AND LATERAL;"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* effectiveDateTime = "1994-07-01T15:37:00Z"
* issued = "1994-07-01T15:37:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "Q0hFU1QgMiBWSUVXUyBQQSZMQVQKICAgClByb2MgT3JkOiBVbmtub3duCkV4bSBEYXRlOiBKVUwgMDEsIDE5OTRAMTU6MzcKUmVxIFBoeXM6IE1BTkRBTCxBTklMIEsgICAgICAgICAgICAgICAgICBQYXQgTG9jOiBPUCBVbmtub3duLzA5LTA3LTIwMjJAMTY6MTQKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJbWcgTG9jOiBJTlBBVElFTlQgUkFESU9MT0dZCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VydmljZTogVW5rbm93bgoKIAoKKENhc2UgMjk0MSBDT01QTEVURSkgQ0hFU1QgMiBWSUVXUyBQQSZMQVQgICAgICAgICAgICAgKFJBRCAgRGV0YWlsZWQpIENQVDo3MTAyMAogICAgIFByb2MgTW9kaWZpZXJzIDogTEVGVAoKICAgIENsaW5pY2FsIEhpc3Rvcnk6CgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogSlVMIDAyLCAxOTk0CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBKVUwgMDYsIDE5OTQKICAgIFZlcmlmaWVyIEUtU2lnOgoKICAgIFJlcG9ydDoKCiAgICBJbXByZXNzaW9uOgogICAgICBOb3JtYWwgc2l6ZWQgaGVhcnQuICAKICAgICAgIAogICAgICBPbGQgaGVhbGVkIGdyYW51bG9tYXRvdXMgZGlzZWFzZS4gIAogICAgICAgCiAgICAgIEFwcGFyZW50bHkgY2FsY2lmaWVkIGdyYW51bG9tYXMgcHJvamVjdGluZyBvdmVyIHRoZSBoaWxhciByZWdpb25zCiAgICAgIGFuZCB3aXRoaW4gdGhlIHVwcGVyIGxvYmVzIG9mIGJvdGggbHVuZ3MuICAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIFJJQ0hBUkQgQyBCRUxMQVMsIFNUQUZGIFJBRElPTE9HSVNUCiAgICAgICAgICBWZXJpZmllZCBieSB0cmFuc2NyaXB0aW9uaXN0IGZvciBSSUNIQVJEIEMgQkVMTEFTCi9SU0M="
* presentedForm.title = "CHEST 2 VIEWS PA&LAT"
* presentedForm.creation = "1994-07-01T15:37:00Z"

Instance: 05500f5e-0ca0-49c1-99e6-4c8e6de85285
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report: 7078984.8943-1"
Description: "UROGRAM IV W NEPHROTOMOGRAMS"
Usage: #example 
* contained[0].resourceType = "Practitioner"
* contained[=].id = "provider-0"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "unknown"
* contained[=].name.text = "BAUMANN,BERTA H"
* contained[=].name.family = "BAUMANN,BERTA H"
* contained[+].resourceType = "Organization"
* contained[=].id = "organization-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "OrganizationTO.704"
* contained[=].active = true
* contained[=].name = "INPATIENT RADIOLOGY"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ImagingExamTO.7078984.8943-1"
* identifier[accessionNumber].use = #official
* identifier[accessionNumber].type = $v2-0203#ACSN
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].value = "Accession.101592-1172"
* identifier[casenum].use = #secondary
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].value = "CaseNum.1172"
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* code = $cpt#74415 "UROGRAPHY, INFUSION, DRIP TECHNIQUE AND/OR BOLUS TECHNIQUE; WITH NEPHROTOMOGRAPHY"
* code.text = "GENERAL RADIOLOGY"
* subject = Reference(Patient/ex-MHV-patient-0)
* effectiveDateTime = "1992-10-15T10:56:00Z"
* issued = "1992-10-15T10:56:00Z"
* performer.reference = "#organization-0"
* resultsInterpreter.reference = "#provider-0"
* presentedForm.contentType = #text/plain
* presentedForm.data = "VVJPR1JBTSBJViBXIE5FUEhST1RPTU9HUkFNUwogICAKUHJvYyBPcmQ6IFVua25vd24KRXhtIERhdGU6IE9DVCAxNSwgMTk5MkAxMDo1NgpSZXEgUGh5czogQkFTVVJBWSxCSVNXQSBOQVRIICAgICAgICAgICAgIFBhdCBMb2M6IE9QIFVua25vd24vMDktMDctMjAyMkAxNjoxNAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IElOUEFUSUVOVCBSQURJT0xPR1kKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTZXJ2aWNlOiBVbmtub3duCgogCgooQ2FzZSAxMTcyIENPTVBMRVRFKSBVUk9HUkFNIElWIFcgTkVQSFJPVE9NT0dSQU1TICAgICAoUkFEICBEZXRhaWxlZCkgQ1BUOjc0NDE1CgogICAgQ2xpbmljYWwgSGlzdG9yeToKCiAgICBSZXBvcnQgU3RhdHVzOiBWZXJpZmllZCAgICAgICAgICAgICAgICAgICBEYXRlIFJlcG9ydGVkOiBPQ1QgMTYsIDE5OTIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERhdGUgVmVyaWZpZWQ6IE5PViAwNCwgMTk5MgogICAgVmVyaWZpZXIgRS1TaWc6CgogICAgUmVwb3J0OgoKICAgIEltcHJlc3Npb246CiAgICAgIDEuICBTcGxheWluZyBvZiBpbmZ1bmRpYnVsYSBkaWZmdXNlbHkgYmlsYXRlcmFsbHktc3VnZ2VzdCByZW5hbAogICAgICBwZWx2aWMgbGlwb21vdG9zaXMgYXMgbW9zdCBjb21tb24gZXRpb2xvZ3ktbm8gZXZpZGVuY2Ugb2YKICAgICAgb2JzdHJ1Y3Rpb24uICAKClByaW1hcnkgSW50ZXJwcmV0aW5nIFN0YWZmOgogIEJFUlRBIEggQkFVTUFOTiwgUmFkaW9sb2dpc3QKICAgICAgICAgIFZlcmlmaWVkIGJ5IHRyYW5zY3JpcHRpb25pc3QgZm9yIEJFUlRBIEggQkFVTUFOTgovSkdC"
* presentedForm.title = "UROGRAM IV W NEPHROTOMOGRAMS"
* presentedForm.creation = "1992-10-15T10:56:00Z"