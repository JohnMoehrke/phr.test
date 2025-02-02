
Instance: ex-MHV-imaging-0
InstanceOf: JFM.PHR.imaging
Title: "Imaging Report 0"
Usage: #example
Description: """
Derived from the a mock ImagingExamTO:
"""
* status = #final
* category[us-core] = LOINC#LP29684-5 "Radiology"
* subject =  Reference(Patient/ex-MHV-patient-0)
* identifier[TOid].value = "ImagingExamTO.6959075.8874-1" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* identifier[accessionNumber].value = "Accession.092404-1582" 
* identifier[accessionNumber].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[accessionNumber].use = #official
* identifier[casenum].value = "CaseNum.1582" 
* identifier[casenum].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[casenum].use = #secondary
* encounter.identifier.value = "5886199"
* presentedForm.title = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* contained[+] = ex-MHV-irOrder-0
* basedOn = Reference(ex-MHV-irOrder-0)
* effectiveDateTime = 2004-09-24T11:25:00Z
* issued = 2004-09-24T11:25:00Z
* presentedForm.creation = 2004-09-24T11:25:00Z
* code = CPT#72100 "RADIOLOGIC EXAMINATION, SPINE, LUMBOSACRAL; 2 OR 3 VIEWS"
* code.text = "GENERAL RADIOLOGY"
* contained[+] = ex-MHV-practitioner-image0
* resultsInterpreter = Reference(ex-MHV-practitioner-image0)
* contained[+] = ex-MHV-organization-image0
* performer = Reference(ex-MHV-organization-image0)
* presentedForm.contentType = #text/plain
* presentedForm.data = "U1BJTkUgTFVNQk9TQUNSQUwgTUlOIDIgVklFV1MKICAgCkV4bSBEYXRlOiBTRVAgMjQsIDIwMDRAMTE6MjUKUmVxIFBoeXM6IEZFTEtMRVksS0VOTkVUSCBFICAgICAgICAgICAgICBQYXQgTG9jOiBQQ1RfTyBQQVRJTCAoRi9VKSAoUmVxJ2cgTG9jKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEltZyBMb2M6IFJBRElPTE9HWQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlcnZpY2U6IFVua25vd24KCiAKCihDYXNlIDE1ODIgQ09NUExFVEUpIFNQSU5FIExVTUJPU0FDUkFMIE1JTiAyIFZJRVdTICAgIChSQUQgIERldGFpbGVkKSBDUFQ6NzIxMDAKICAgICBQcm9jIE1vZGlmaWVycyA6IEJJTEFURVJBTCBFWEFNCgogICAgQ2xpbmljYWwgSGlzdG9yeToKICAgICAgaGF2aW5nIDMgd2Vla3Mgb2YgYmFjayBwYWlucyBuZWVkIHRvIHJlLWV2YWwgZm9yIGFyaHJpdGlzIG9yIGFueSAKICAgICAgd29yc25laW5nIGRpc2Mgc3BhY2VzIGV0Yy4gCgogICAgUmVwb3J0IFN0YXR1czogVmVyaWZpZWQgICAgICAgICAgICAgICAgICAgRGF0ZSBSZXBvcnRlZDogU0VQIDI3LCAyMDA0CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEYXRlIFZlcmlmaWVkOiBTRVAgMjgsIDIwMDQKICAgIFZlcmlmaWVyIEUtU2lnOi9FUy9UaG9uZyBELiBOZ3V5ZW4sIE0uRC4KCiAgICBSZXBvcnQ6CiAgICAgIFRocmVlIHZpZXdzIG9mIHRoZSBsdW1ib3NhY3JhbCBzcGluZSBhcmUgY29tcGFyZWQgd2l0aCBhIHByZXZpb3VzIAogICAgICBleGFtaW5hdGlvbiBvZiA5LzIzLzAyLiAgCiAgICAgICAKICAgICAgVGhlcmUgaGFzIGJlZW4gYSBwYXJ0aWFsIGNvbGxhcHNlIG9mIEwyIHdoaWNoIGlzIHNpbWlsYXIgaW4KICAgICAgYXBwZWFyYW5jZSBhbmQgZGVncmVlIHRvIHRoZSBwcmV2aW91cyBleGFtaW5hdGlvbiBvZiBTZXB0ZW1iZXIKICAgICAgMjAwMi4gIFRoZXJlIGlzIGFsc28gY29sbGFwc2Ugb2YgdGhlIGJvZHkgb2YgVDEyIHdoaWNoIGFwcGFyZW50bHkKICAgICAgaXMgbmV3IHNpbmNlIHRoZSBwcmV2aW91cyBleGFtIGFuZCB0aGUgY29sbGFwc2UgaGFzIGJlZW4KICAgICAgZXN0aW1hdGVkIGFib3ZlIDc1IHRvIDgwJSBvZiB0aGUgaGVpZ2h0IG9mIHRoZSB2ZXJ0ZWJyYWwgYm9keS4gIAogICAgICAgCiAgICAgIFRoZXJlIGlzIG1pbGQgbWFyZ2luYWwgc3B1cnJpbmcgb2YgdGhlIHVwcGVyIGFudGVyaW9yIGFzcGVjdCBvZgogICAgICBMNC4gIFRoZXJlIGFyZSBhcnRlcmlvc2NsZXJvdGljIGNhbGNpZmljYXRpb25zIGluIHRoZSBhYmRvbWluYWwKICAgICAgYW9ydGEgYW5kIGJyYW5jaGVzLiAgCiAgICAgICAKICAgICAgVGhlIGludGVydmVydGVicmFsIGRpc2Mgc3BhY2VzIGFyZSBwcmVzZXJ2ZWQuICAKCiAgICBJbXByZXNzaW9uOgogICAgICAxLiAgT2xkIGNvbXByZXNzaW9uIGZyYWN0dXJlIG9mIEwyIHdpdGggYW50ZXJpb3IgbWFyZ2luYWwKICAgICAgc3B1cnJpbmcgYW5kIGFwcGFyZW50IGFua3lsb3NpcyBMMS1MMi4gIAogICAgICAgCiAgICAgIDIuICBDb2xsYXBzZSBvciBjb21wcmVzc2lvbiBmcmFjdHVyZSBvZiB0aGUgYm9keSBvZiBUMTIgd2hpY2ggaXMKICAgICAgbmV3IHNpbmNlIHRoZSBwcmV2aW91cyBleGFtaW5hdGlvbiBpbiAyMDAyIGFuZCBpbnZvbHZlcyBsb3NzIG9mCiAgICAgIGhlaWdodCBvZiB0aGF0IHZlcnRlYnJhbCBib2R5IGJ5IGFib3V0IDcwJS4gIEFydGVyaW9zY2xlcm90aWMKICAgICAgY2FsY2lmaWNhdGlvbnMgb2YgdGhlIGFvcnRhLiAgCgogICAgUHJpbWFyeSBEaWFnbm9zdGljIENvZGU6IAoKUHJpbWFyeSBJbnRlcnByZXRpbmcgU3RhZmY6CiAgRkVMSVggR0FSRlVOS0VMLCBTdGFmZiBQaHlzaWNpYW4KVkVSSUZJRUQgQlk6CiAgVEhPTkcgTkdVWUVOLCBSYWRpb2xvZ2lzdC9DaGllZgoKL0dFRw=="

Instance: ex-MHV-irOrder-0
InstanceOf: JFM.PHR.irOrder
Usage: #inline
* category[us-core] = SCT#363679005 "Imaging"
* identifier.value = "12248947"
* code.text = "SPINE LUMBOSACRAL MIN 2 VIEWS"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-0)
* performer[+] = Reference(Organization/ex-MHV-organization-image0)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-image0)


Instance: ex-MHV-practitioner-image0
InstanceOf: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Title: "GARFUNKEL,FELIX"
Description: "Practitioner GARFUNKEL,FELIX from Imaging 0"
Usage: #inline
* identifier.value = "unknown"
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* name.text = "GARFUNKEL,FELIX"
* name.family = "GARFUNKEL"

Instance: ex-MHV-organization-image0
InstanceOf: JFMorganization
Title: "Organization from Imaging 0"
Description: "This example derived off of a Radiology report 0."
Usage: #inline
* active = true
* identifier[TOid].use = #usual
* identifier[TOid].value = "2267"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[TOid].type.text = "FI"
* name = "RADIOLOGY"
