/*

The mock notes bundle is nice, but it does not allow the user of the IG to see examples. So in addition to having the bundle in the build, we also want examples. So we explode out the examples using the follow manual process. 

Note that Grahame has said he has a backlog to do this automatically in the IG publisher, but it is not priortized. So this might not be needed in the future.

These examples come from 
1. mocks/notes.xml
2. transformed with mocks/notes.xslt (with extensions populating an resource-instance-name and resource-instance-description extension)
3. that bundle built into the IG so that the IG build creates the json equivilant (sushi fails if these are bigger than 3500 lines or 29 entries)
3. Put the json equvilant bundle into "FSH Online" to convert to FSH - https://fshschool.org/FSHOnline/#/  
5. put the result into this FSH file
6. Remove the bundle
7. change inline to example
9. move meta.profile into InstanceOf:
10. use slices on identifier - TOid
12. change contained (author, approvedBy, and location) references to .reference = "#author-0" -- https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/FSHOnline.20contained.20resources

*/

Alias: $loinc = http://loinc.org
Alias: $us-core-documentreference-category = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category


Instance: cd981839-d618-466e-9ac5-a0d07eb1009a
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 81544045"
Description: "WOUND - SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.374229"
* contained[=].name.text = "ISON,RONALD C"
* contained[=].name.family = "ISON,RONALD C"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.374229"
* contained[=].name.text = "ISON,RONALD C"
* contained[=].name.family = "ISON,RONALD C"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.81544045"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "WOUND CARE SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-11-13T15:27:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-11-13T12:27:38Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogV09VTkQgLSBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBXT1VORCBDQVJFIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBOT1YgMTMsIDIwMjNAMTU6MjcgICAgIEVOVFJZIERBVEU6IE5PViAxMywgMjAyM0AxMjoyNzozOCAgICAgIAogICAgICBBVVRIT1I6IElTT04sUk9OQUxEIEMgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDExLzEzLzIwMjMgMDM6MjAgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE9zdG9teSAmIFdvdW5kIENhcmVfVkFQb3J0bGFuZEhDU19PQ0QgClN1YmplY3Q6ICBHZW5lcmFsOlRlc3QgTWVzc2FnZSBmb3IgU2F2ZSB0byBDUFJTIAoKVGVzdCBNZXNzYWdlIGZvciBTYXZlIHRvIENQUlMgLSBOb3RlIHRpdGxlIGVycm9yICAKICAKICAKRmx1IFNob3QgSW5mbzogaHR0cHM6Ly93d3cucG9ydGxhbmQudmEuZ292L25ld3MvZmx1c2hvdHMuYXNwICAKaHR0cHM6Ly93d3cudmEuZ292L2RpcmVjdG9yeS9ndWlkZS9yZWdpb24uYXNwP0lEPTEwMjA/Ci0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gClNlbnQ6ICAxMS8xMy8yMDIzIDAzOjI3IFBNIEVUIApGcm9tOiAgSVNPTiwgUk9OQUxEICBDIApUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVCAgUEFUSUVOVFIgClN1YmplY3Q6ICBHZW5lcmFsOlRlc3QgTWVzc2FnZSBmb3IgU2F2ZSB0byBDUFJTIAoKdHJpYWwKCiAKL2VzLyBST05BTEQgQyBJU09OCkFSTlAgQ1dPTgpTaWduZWQ6IDExLzEzLzIwMjMgMTI6MjcK"
* content.attachment.title = "WOUND - SECURE MESSAGING"
* content.attachment.creation = "2023-11-13T15:27:00Z"
* context.related.reference = "#location-0"

Instance: bee88c20-4462-4b02-8d73-10beccfe9388
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 81509152"
Description: "UROLOGY SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.422673"
* contained[=].name.text = "BORRELL,TAMMY L"
* contained[=].name.family = "BORRELL,TAMMY L"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.422673"
* contained[=].name.text = "BORRELL,TAMMY L"
* contained[=].name.family = "BORRELL,TAMMY L"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.81509152"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "UROLOGY SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-11-09T12:36:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-11-09T09:36:04Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogVVJPTE9HWSBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBVUk9MT0dZIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBOT1YgMDksIDIwMjNAMTI6MzYgICAgIEVOVFJZIERBVEU6IE5PViAwOSwgMjAyM0AwOTozNjowNCAgICAgIAogICAgICBBVVRIT1I6IEJPUlJFTEwsVEFNTVkgTCAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDExLzA5LzIwMjMgMTI6MDkgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIFVyb2xvZ3lfVkFQb3J0bGFuZEhDU19PQ0QgClN1YmplY3Q6ICBHZW5lcmFsOlRyYWluaW5nIE1zZyAxIGZvciBUYW1teSAKCnRyYWluaW5nIG1lc3NhZ2UgMSAgCiAgCiAgCkZsdSBTaG90IEluZm86IGh0dHBzOi8vd3d3LnBvcnRsYW5kLnZhLmdvdi9uZXdzL2ZsdXNob3RzLmFzcCAgCmh0dHBzOi8vd3d3LnZhLmdvdi9kaXJlY3RvcnkvZ3VpZGUvcmVnaW9uLmFzcD9JRD0xMDIwPwotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIApTZW50OiAgMTEvMDkvMjAyMyAxMjozMyBQTSBFVCAKRnJvbTogIEJPUlJFTEwsIFRBTU1ZICBMIApUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVCAgUEFUSUVOVFIgClN1YmplY3Q6ICBHZW5lcmFsOlRyYWluaW5nIE1zZyAxIGZvciBUYW1teSAKCmFza2VkIHF1ZXN0aW9ucy4gSSdtIGdvaW5nIHRvIGxldCB0aGUgc3VyZ2VvbiBrbm93LiAgV2Ugd2lsbCBjb250YWN0IHlvdS4gCgogCi9lcy8gVEFNTVkgTCBCT1JSRUxMIFJOLCBCU04KUk4sIEJTTgpTaWduZWQ6IDExLzA5LzIwMjMgMDk6MzYK"
* content.attachment.title = "UROLOGY SECURE MESSAGING"
* content.attachment.creation = "2023-11-09T12:36:00Z"
* context.related.reference = "#location-0"

Instance: 37ed1a35-5ca6-4a0b-b9a0-274ff255120d
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 80529980"
Description: "EYE - AFTERVISIT SUMMARY SPECTACLE RX"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.273377"
* contained[=].name.text = "JACKSON,ANNA L"
* contained[=].name.family = "JACKSON,ANNA L"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.273377"
* contained[=].name.text = "JACKSON,ANNA L"
* contained[=].name.family = "JACKSON,ANNA L"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648GA"
* contained[=].name = "BEND, OR CBOC"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.80529980"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "OPTOMETRY NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-09-01T14:52:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-09-01T14:53:33Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRVlFIC0gQUZURVJWSVNJVCBTVU1NQVJZIFNQRUNUQUNMRSBSWCAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBPUFRPTUVUUlkgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMDEsIDIwMjNAMTQ6NTIgICAgIEVOVFJZIERBVEU6IFNFUCAwMSwgMjAyM0AxNDo1Mjo1MyAgICAgIAogICAgICBBVVRIT1I6IEpBQ0tTT04sQU5OQSBMICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNQRUNUQUNMRSBSWAogICAgICAgIERFUEFSVE1FTlQgT0YgVkVURVJBTlMgQUZGQUlSUyBTUEVDVEFDTEUgUFJFU0NSSVBUSU9OIEZPUk0KICAgICAgICAgICAgICAgICpOb3QgdG8gYmUgZmlsbGVkIHByaXZhdGVseSBhdCBWQSBleHBlbnNlKgogClBhdGllbnQgTmFtZTogIE1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSICAgICAgICAgICAgRGF0ZSBvZiBCaXJ0aDogIEpBTiAKMSwyMDAxCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiAKRnJvbSBub3RlOiBFWUUvT1BUT00gLSBGT0xMT1ctVVAgOS8xLzIzQDE0OjUwCk1hbmlmZXN0IHJlZnJhY3Rpb246ClJJR0hUIEVZRSAoT0QpOgogKzAuNTAgKzAuNTAgeCAwOTAKTEVGVCBFWUUgKE9TKToKICswLjUwICswLjI1IHggMDk1CkFERDogKzIuNTAKIAogCiAKIAogCkVsZWN0cm9uaWNhbGx5IFNpZ25lZCBCeToKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpFeWUgQ2FyZSBQcm92aWRlcjogIEthcmVuIFdhZGhhbXMsIE9EIC8gT1IgQVQtMzY0MwpFeGFtaW5hdGlvbiBEYXRlOiAgU2VwIDEsMjAyMwpFeHBpcmF0aW9uIERhdGU6ICAyIHllYXJzIGZyb20gRXhhbWluYXRpb24gRGF0ZQogCkNvbnRhY3QvQWRkcmVzcyBJbmZvcm1hdGlvbiBmb3IgdGhlIFZBUE9SSENTIEV5ZSBTZXJ2aWNlOiAoMjAxOSkKIApURUxFUEhPTkUgLyBFWUUgQ0FSRSBTRVJWSUNFUzogIDUwMy03MjEtNzg5MAogICAgICBPcHRpb24gMTogIFNjaGVkdWxpbmcKICAgICAgT3B0aW9uIDI6ICBNZWRpY2F0aW9ucwogICAgICBPcHRpb24gMzogIE9wdGljYWwgU2hvcAogICAgICBPcHRpb24gNDogIENvbW11bml0eSBDYXJlCiAgICAgIE9wdGlvbiA1OiAgVXJnZW50IEV5ZSBQcm9ibGVtcwogCkJlbmQgQ0JPQywgVkFQT1JIQ1MgICAgICAgICAgIFBvcnRsYW5kIERpdmlzaW9uLCBWQVBPUkhDUwpFeWUgQ2xpbmljLCAybmQgRmxvb3IgICAgICAgICBFeWUgQ2xpbmljLCBCbGRnIDEwMCwgOC1DCjI2NTAgTkUgQ291cnRuZXkgRHJpdmUgICAgICAgIDM3MTAgU1cgVS5TLiBWZXRlcmFucyBIb3NwaXRhbCBSZC4KQmVuZCwgT3JlZ29uIDk3NzAxICAgICAgICAgICAgUG9ydGxhbmQsIE9yZWdvbiA5NzIzOQogClNhbGVtIENCT0MsIFZBUE9SSENTICAgICAgICAgIFZhbmNvdXZlciBDYW1wdXMsIFZBUE9SSENTCkV5ZSBDbGluaWMsIFN1aXRlIDEzMCAgICAgICAgIEV5ZSBDbGluaWMsIEJ1aWxkaW5nIDE3LCAzcmQgRmxvb3IKMTc1MCBNY0dpbGNocmlzdCBTdC4gU0UgICAgICAgMTYwMSBFIEZvdXJ0aCBQbGFpbiBCbHZkLgpTYWxlbSwgT1IgOTczMDIgICAgICAgICAgICAgICBWYW5jb3V2ZXIsIFdhc2hpbmd0b24gOTg2NjEKIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKCg=="
* content.attachment.title = "EYE - AFTERVISIT SUMMARY SPECTACLE RX"
* content.attachment.creation = "2023-09-01T14:52:00Z"
* context.related.reference = "#location-0"

Instance: 56a978c4-0ec7-4bbc-b364-61b28a9c2983
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 80341525"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.215568"
* contained[=].name.text = "WARD,NICOLE"
* contained[=].name.family = "WARD,NICOLE"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.215568"
* contained[=].name.text = "WARD,NICOLE"
* contained[=].name.family = "WARD,NICOLE"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.80341525"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-08-21T11:26:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-08-21T09:26:03Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBVUcgMjEsIDIwMjNAMTE6MjYgICAgIEVOVFJZIERBVEU6IEFVRyAyMSwgMjAyM0AwOToyNjowMyAgICAgIAogICAgICBBVVRIT1I6IFdBUkQsTklDT0xFICAgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA4LzIxLzIwMjMgMTE6NDUgQU0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIFdhcmQgTl9Tb2NpYWwgV29ya19Qb3J0bGFuZF9TVyAKU3ViamVjdDogIEdlbmVyYWw6VGVzdCAKCkhlbGxvICAgCiAgCiAgCkZsdSBTaG90IEluZm86IGh0dHBzOi8vd3d3LnBvcnRsYW5kLnZhLmdvdi9uZXdzL2ZsdXNob3RzLmFzcCAgCmh0dHBzOi8vd3d3LnZhLmdvdi9kaXJlY3RvcnkvZ3VpZGUvcmVnaW9uLmFzcD9JRD0xMDIwPwotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIApTZW50OiAgMDgvMjEvMjAyMyAxMjoyNSBQTSBFVCAKRnJvbTogIFdBUkQsIE5JQ09MRSAgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6VGVzdCAKCkhlbGxvIGJhY2shICAKCiAKL2VzLyBOaWNvbGUgV2FyZCBMQ1NXLCBNU1cgClNPQ0lBTCBXT1JLRVIKU2lnbmVkOiAwOC8yMS8yMDIzIDA5OjI2Cg=="
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2023-08-21T11:26:00Z"
* context.related.reference = "#location-0"

Instance: 4da8e1c4-43cf-4d4a-9099-55c9dc0a445f
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 80340830"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.215568"
* contained[=].name.text = "WARD,NICOLE"
* contained[=].name.family = "WARD,NICOLE"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.215568"
* contained[=].name.text = "WARD,NICOLE"
* contained[=].name.family = "WARD,NICOLE"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.80340830"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-08-21T11:06:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-08-21T09:06:53Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBVUcgMjEsIDIwMjNAMTE6MDYgICAgIEVOVFJZIERBVEU6IEFVRyAyMSwgMjAyM0AwOTowNjo1MyAgICAgIAogICAgICBBVVRIT1I6IFdBUkQsTklDT0xFICAgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA4LzIxLzIwMjMgMTI6MDAgUE0gRVQgCkZyb206ICBXQVJELCBOSUNPTEUgIApUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVCAgUEFUSUVOVFIgClN1YmplY3Q6ICBUZXN0OlRlc3QgMSAgCgpIZWxsbyBza2Zqc2pnc2tnaiBza2ouIAoKIAovZXMvIE5pY29sZSBXYXJkIExDU1csIE1TVyAKU09DSUFMIFdPUktFUgpTaWduZWQ6IDA4LzIxLzIwMjMgMDk6MDYK"
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2023-08-21T11:06:00Z"
* context.related.reference = "#location-0"

Instance: bc4be08f-16c3-4c66-8eea-f223add70ac7
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 80222094"
Description: "CCC: CLINICAL TRIAGE"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.41743"
* contained[=].name.text = "NUTTBROCK,SARAH R"
* contained[=].name.family = "NUTTBROCK,SARAH R"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.41743"
* contained[=].name.text = "NUTTBROCK,SARAH R"
* contained[=].name.family = "NUTTBROCK,SARAH R"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.80222094"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "RN PROGRESS NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-08-11T13:03:18Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-08-11T13:03:19Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ0NDOiBDTElOSUNBTCBUUklBR0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBSTiBQUk9HUkVTUyBOT1RFICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBVUcgMTEsIDIwMjNAMTM6MDM6MTggIEVOVFJZIERBVEU6IEFVRyAxMSwgMjAyM0AxMzowMzoxOCAgICAgIAogICAgICBBVVRIT1I6IE5VVFRCUk9DSyxTQVJBSCBSICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKClBhdGllbnQgRGVtb2dyYXBoaWNzClBhdGllbnQgTmFtZTogVEVTVCBQQVRJRU5UUiBNSFZaWlZJU05UV0VOVFkKU1NOOiA2NjY2NjIwMDAKUGF0aWVudCBQcmltYXJ5IEFkZHJlc3M6IDQ4MTUgTiBBc3NlbWJseSBTdCA8YnI+U3Bva2FuZSwgV0EgOTkyMDUKUGF0aWVudCBET0I6IEphbnVhcnkgMSwgMjAwMQpQYXRpZW50IEFnZTogMjIKQ2FsbGVyL1JlY2lwaWVudCBSZWxhdGlvbiB0byBQYXRpZW50OiBTZWxmCgpUcmlhZ2UgU3VtbWFyeQpDb25kdWN0ZWQgdHJpYWdlL2Rpc2N1c3NlZCBzeW1wdG9tcwpVdGlsaXplZCB0aGUgVHJpYWdlIFRvb2w6IFllcwpDaGllZiBDb21wbGFpbnQ6IHRlc3QgdGVzdApOdXJzZSdzIFJlY29tbWVuZGF0aW9uIC8gV0hFTjogV2l0aGluIDggSG91cnMKTnVyc2UncyBSZWNvbW1lbmRhdGlvbiAvIFdIRVJFOiBVcmdlbnQgTm9uLVZBCgpQYXRpZW50IERpc3Bvc2l0aW9uClBhdGllbnQvQ2FyZWdpdmVyIGFncmVlcyB0byBwbGFuIG9mIGNhcmU6IFllcwpQYXRpZW50IGlzIFVyZ2VudCBvciBFbWVyZ2VudAoKTnVyc2luZyBQbGFuIGFuZCBEaXNwb3NpdGlvbgpSZWZlcnJlZCBwYXRpZW50IHRvIGVtZXJnZW5jeSBzZXJ2aWNlcwpJbnN0cnVjdGVkIHRvIGdvIHRvIFVyZ2VudCBDYXJlIChVQykKUHJvdmlkZWQgbG9jYXRpb24gb2YgVXJnZW50IENhcmUgQ2VudGVyCkFkdmlzZWQgb2YgTWlzc2lvbiBBY3QgVUMgQmVuZWZpdHMKCk51cnNlIFN1bW1hcnkKTnVyc2UgU3VtbWFyeTogdGVzdCB0ZXN0IHRlc3QKCkNsaW5pY2FsIENvbnRhY3QgQ2VudGVyIENvZGVzCkNsaW5pYy9Mb2NhdGlvbjogVjIwIFBPUiBQSE9ORSBDQ0MgUk4KCk5vdGVzCk5vdGVzICYgSW5mb3JtYXRpb246IHRlc3RpbmcgdGVzdGluZyB0ZXN0aW5nCiAKL2VzLyBTYXJhaCBSIE51dHRicm9jaywgUk4KUGF0aWVudCBBY2Nlc3MgQ2VudGVyIENvb3JkaW5hdG9yClNpZ25lZDogMDgvMTEvMjAyMyAxMzowMwo="
* content.attachment.title = "CCC: CLINICAL TRIAGE"
* content.attachment.creation = "2023-08-11T13:03:18Z"
* context.related.reference = "#location-0"

Instance: e6a74d16-6402-483e-861c-a2cc6dcaad12
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 79745271"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.79745271"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-07-11T09:49:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-07-11T07:49:14Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVUwgMTEsIDIwMjNAMDk6NDkgICAgIEVOVFJZIERBVEU6IEpVTCAxMSwgMjAyM0AwNzo0OToxNCAgICAgIAogICAgICBBVVRIT1I6IE1JTExFUixCUklBTiBLICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA3LzExLzIwMjMgMTA6NDMgQU0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE15SGVhbHRoZVZldC9TZWN1cmVNZXNzYWdpbmcgQWRtaW5fVkFQb3J0bGFuZEhDUyAKU3ViamVjdDogIEdlbmVyYWw6VGVzdCAKCnM7bGRrY2ZqO2xza21kY2xrc21kICAKYXM7b2RpY2puO3Nsa2RmICAKXWFzbztka2ZuY2E7bHMgIAogIAogIApGbHUgU2hvdCBJbmZvOiBodHRwczovL3d3dy5wb3J0bGFuZC52YS5nb3YvbmV3cy9mbHVzaG90cy5hc3AgIApodHRwczovL3d3dy52YS5nb3YvZGlyZWN0b3J5L2d1aWRlL3JlZ2lvbi5hc3A/SUQ9MTAyMD8KLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA3LzExLzIwMjMgMTA6NDQgQU0gRVQgCkZyb206ICBNSUxMRVIsIEJSSUFOICBLIApUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVCAgUEFUSUVOVFIgClN1YmplY3Q6ICBHZW5lcmFsOlRlc3QgCgogIAphZGNkbGthampkZmFzICAKREtGSk5BUztMRiAgCkFTTEtESk5GTCAgCiAgCiAgCkdvIHRvIHRoZSBWQSBQb3J0bGFuZCBIZWFsdGhDYXJlIFN5c3RlbSBIb21lcGFnZTogIApodHRwczovL3d3dy52YS5nb3YvcG9ydGxhbmQtaGVhbHRoLWNhcmUvCgogCi9lcy8gQlJJQU4gSyBNSUxMRVIgQkEKU0VDVVJFIE1FU1NBR0lORyBBRE1JTklTVFJBVE9SClNpZ25lZDogMDcvMTEvMjAyMyAwNzo0OQo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2023-07-11T09:49:00Z"
* context.related.reference = "#location-0"

Instance: b71ceba1-a4b0-4d09-8a00-2c76568267a9
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 79686701"
Description: "AVS STUB NOTE"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.11786"
* contained[=].name.text = "LENZI,AMIE M"
* contained[=].name.family = "LENZI,AMIE M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.79686701"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "EDUCATION NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-07-06T10:08:36Z"
* author.reference = "#author-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQVZTIFNUVUIgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBFRFVDQVRJT04gTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBKVUwgMDYsIDIwMjNAMTA6MDg6MzYgIEVOVFJZIERBVEU6IEpVTCAwNiwgMjAyM0AxMDowODozNiAgICAgIAogRElDVEFURUQgQlk6IExFTlpJLEFNSUUgTSAgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKVGhlIHBhdGllbnQgd2FzIHByb3ZpZGVkIHdpdGggYSBjb3B5IG9mIGFuIGFmdGVyLXZpc2l0IHN1bW1hcnkgYXQgdGhlCmNvbmNsdXNpb24gb2YgdGhlIHZpc2l0LgoKVGhlIGFmdGVyLXZpc2l0IHN1bW1hcnkgaW5jbHVkZXMgaW5mb3JtYXRpb24gcGVydGFpbmluZyB0byB0aGUgcGF0aWVudCdzCmVuY291bnRlciwgaW5jbHVkaW5nIGRpYWdub3Nlcywgdml0YWwgc2lnbnMsIG1lZGljYXRpb25zLCBhbmQgbmV3IG9yZGVycywKYXMgd2VsbCBhcyBhIGxpc3Qgb2YgYW55IGFueSB1cGNvbWluZyBhcHBvaW50bWVudHMgYW5kIGluZm9ybWF0aW9uIHJlZ2FyZGluZwp0aGUgcGF0aWVudCdzIG9uZ29pbmcgY2FyZS4KClRoZSBwYXRpZW50J3MgbWVkaWNhdGlvbnMgd2VyZSByZXZpZXdlZCB3aXRoIHRoZSBwYXRpZW50IGJ5IHRoZSBwcm92aWRlcgphbmQgd2VyZSBwcm92aWRlZCB0byB0aGUgcGF0aWVudCBhcyBhbiB1cGRhdGVkIGxpc3Qgb2YgbWVkaWNhdGlvbnMuICBUaGUKcGF0aWVudCB3YXMgaW5zdHJ1Y3RlZCB0byBpbmZvcm0gdGhlIHByb3ZpZGVyIG9mIGFueSBtZWRpY2F0aW9uIGNoYW5nZXMKb3IgZGlzY3JlcGFuY2llcyB0aGF0IHdlcmUgbm90ZWQuICBPdGhlcndpc2UsIHRoZSBwYXRpZW50IHdhcyBpbnN0cnVjdGVkCnRvIGNvbnRpbnVlIHRoZSBtZWRpY2F0aW9ucyBhcyBwcmVzY3JpYmVkLgoKQSBjb3B5IG9mIHRoZSBhZnRlci12aXNpdCBzdW1tYXJ5IHByb3ZpZGVkIHRvIHRoZSBwYXRpZW50IGlzIGF2YWlsYWJsZSBpbgpWaXN0QSBJbWFnaW5nLgogCiAgICAgICAgICAgICAgICAgICAgICAgICAgICoqKiBTQ0FOTkVEIERPQ1VNRU5UICoqKgogICAgICAgICAgICAgICAgICAgICAgICAgICAgU0lHTkFUVVJFIE5PVCBSRVFVSVJFRAogCiAKICBFbGVjdHJvbmljYWxseSBGaWxlZDogMDcvMDYvMjAyMwogICAgICAgICAgICAgICAgICAgIGJ5OiBFUklDIEMgU1BBSE4KICAgICAgICAgICAgICAgICAgICAgICAgCg=="
* content.attachment.title = "AVS STUB NOTE"
* content.attachment.creation = "2023-07-06T10:08:36Z"
* context.related.reference = "#location-0"

Instance: 6dd497a8-621a-4ba7-80fc-13c108ae395a
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77100417"
Description: "VIRTUAL EMERG MGMT PHARM"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.155955"
* contained[=].name.text = "SPAHN,ERIC C"
* contained[=].name.family = "SPAHN,ERIC C"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.155955"
* contained[=].name.text = "SPAHN,ERIC C"
* contained[=].name.family = "SPAHN,ERIC C"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77100417"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "TELEHEALTH NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-01-04T13:41:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-04-19T12:43:06Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogVklSVFVBTCBFTUVSRyBNR01UIFBIQVJNICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBURUxFSEVBTFRIIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKQU4gMDQsIDIwMjNAMTM6NDEgICAgIEVOVFJZIERBVEU6IEpBTiAwNCwgMjAyM0AxMzo0MTo1NCAgICAgIAogICAgICBBVVRIT1I6IFNQQUhOLEVSSUMgQyAgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgKioqIFZJUlRVQUwgRU1FUkcgTUdNVCBQSEFSTSBIYXMgQURERU5EQSAqKioKCgoiTWFyeSBoYWQgYSBsaXR0bGUgbGFtYi4iCkhvdXNlJ3MgODAncyBCb2IncwoKIk1hcnkgaGFkIGEgbGl0dGxlIGxhbWIuIgpIb3VzZSdzIDgwJ3MgQm9iJ3MKIAovZXMvIEVSSUMgQyBTUEFITgoKU2lnbmVkOiAwNC8xOS8yMDIzIDEyOjQzCgowNC8xOS8yMDIzIEFEREVORFVNICAgICAgICAgICAgICAgICAgICAgIFNUQVRVUzogQ09NUExFVEVECmhhaGEsIHdobyBzZW50IHRoaXM/CiAKL2VzLyBFUklDIEMgU1BBSE4KClNpZ25lZDogMDQvMTkvMjAyMyAxMjo0Mwo="
* content.attachment.title = "VIRTUAL EMERG MGMT PHARM"
* content.attachment.creation = "2023-01-04T13:41:00Z"
* context.related.reference = "#location-0"

Instance: e75beb72-77f4-41f9-8348-c23133a665a7
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 78118479"
Description: "PC - AFTERVISIT SUMMARY"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.78118479"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-03-17T09:27:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-03-17T09:28:54Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUEMgLSBBRlRFUlZJU0lUIFNVTU1BUlkgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBNQVIgMTcsIDIwMjNAMDk6MjcgICAgIEVOVFJZIERBVEU6IE1BUiAxNywgMjAyM0AwOToyNzowNiAgICAgIAogICAgICBBVVRIT1I6IFdJTlRFUkJPVFRPTSxMSVNBIE0gIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKCioqKiBDTElOSUMgQUZURVJWSVNJVCBTVU1NQVJZICoqKgogCk1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSCiAKVGhhbmsgeW91IGZvciBhbGxvd2luZyB1cyB0byBwYXJ0aWNpcGF0ZSBpbiB5b3VyIGhlYWx0aGNhcmUuIFBsZWFzZSByZXZpZXcgdGhpcwpkb2N1bWVudC4gIEl0IG1heSBjb250YWluIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gb3IgaW5zdHJ1Y3Rpb25zIGZyb20geW91ciBjYXJlCnByb3ZpZGVyLgogX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KIApQQVRJRU5UIElOU1RSVUNUSU9OUzoKClRoYW5rIHlvdSBmb3IgY29taW5nIGluCgpQbGVhc2UgcmVwb3J0IGZvciBsYWJzCgpQbGVhc2UgbW9uaXRvciB5b3VyIGJsb29kIHByZXNzdXJlIGFuZCBibG9vZCBnbHVjb3NlCgpXZSB3aWxsIG1lZXQgYWdhaW4gaW4gMyBtb250aHMKIAogCisrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIApUSElTIElTIFlPVVIgTUVESUNBVElPTiBMSVNUIE1BUiAxNywgMjAyMyBZb3Ugc2hvdWxkIGtlZXAgYSBjb3B5IG9mIHlvdXIKbWVkaWNhdGlvbiBsaXN0IGFuZCBicmluZyBpdCB3aXRoIHlvdSB0byBhbGwgb2YgeW91ciBtZWRpY2FsIGFwcG9pbnRtZW50cy4KUGxlYXNlIGNvbnRpbnVlIHRvIHRha2UgdGhlc2UgbWVkaWNhdGlvbnMgYXMgZGlyZWN0ZWQuIENhbGwgdXMgb3Igc2VuZCB1cyBhCnNlY3VyZSBtZXNzYWdlIGlmIHlvdSBzdGFydCwgc3RvcCwgb3IgY2hhbmdlIG1lZGljYXRpb25zLiBUbyBoZWxwIHlvdXIgcHJpbWFyeQpjYXJlIHRlYW0gcHJvdmlkZSB0aGUgc2FmZXN0IGNhcmUgZm9yIHlvdSwgaXQgaXMgaW1wb3J0YW50IGZvciB0aGVtIHRvIGtub3cKYWJvdXQgYWxsIHRoZSBtZWRpY2F0aW9ucyB5b3UgdGFrZSwgZXZlbiBpZiBpdCdzIGp1c3QgYW4gaGVyYmFsIHN1cHBsZW1lbnQgb3IKb3ZlciB0aGUgY291bnRlciBtZWRpY2F0aW9ucy4KIApJZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zLCBwbGVhc2Ugbm90aWZ5IGFuIGFzc2lzdGFudCBiZWZvcmUgeW91IGxlYXZlLiAgSWYgeW91Cm5lZWQgdG8gcmVmaWxsIGEgbWVkaWNhdGlvbiwgcGxlYXNlIGNhbGwgMS04ODgtNDAwLTgzODcKIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwogCk5FVyBBTkQgRElTQ09OVElOVUVEIE1FRElDQVRJT05TCiAKIApZb3VyIHByb3ZpZGVyIGhhcyBOT1QgcHJlc2NyaWJlZCBhbnkgbmV3IG1lZGljYXRpb25zIHRvZGF5LgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiAKWW91ciBwcm92aWRlciBoYXMgTk9UIGRpc2NvbnRpbnVlZCBhbnkgb2YgeW91ciBtZWRpY2F0aW9ucyB0b2RheS4KIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwogCkNPTlRJTlVFRCBNRURJQ0FUSU9OUyAoYWN0aXZlIFZBIGFuZCBub24tVkEgbWVkcykKIApUaGVzZSBtZWRpY2F0aW9ucyB3ZXJlIG5vdCBjaGFuZ2VkIGR1cmluZyB0aGlzIHZpc2l0LiBZb3Ugc2hvdWxkIGNvbnRpbnVlIHRvCnRha2UgdGhlbSBhcyBwcmVzY3JpYmVkLgpBY3RpdmUgTWVkaWNhdGlvbnMKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CiAxKSBBY2V0YW1pbm9waGVuIDUwME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCBmb3VyIHRpbWVzIGEgZGF5IGFzIG5lZWRlZCAqZG8KICAgICBOb3QgdGFrZSBtb3JlICB0aGFuIDQsMDAwbWcgYSBkYXkgb2YgYWNldGFtaW5vcGhlbgogICAgIEZyb20gYWxsIHNvdXJjZXMgZHVlIHRvIHJpc2sgb2YgIGxpdmVyIGRhbWFnZS4KIDIpIEFsYnV0ZXJvbCAxMDAvSXByYXRybyAyME1jZyAxMjBEIFBvIEluaGwKICAgICBJbmhhbGUgMSBzcHJheSBieSBtb3V0aCBmb3VyIHRpbWVzIGEgZGF5IChlYWNoIGluaGFsZXIKICAgICBDb250YWlucyAxMjAgIHNwcmF5cykKIDMpIEFsbG9wdXJpbm9sIDEwME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCBldmVyeSBkYXkKIDQpIEFzcGlyaW4gMzI1TWcgRWMgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIGV2ZXJ5IGRheQogNSkgQnVzcGlyb25lIEhjbCAxME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCB0d2ljZSBhIGRheSBhcyBuZWVkZWQgZm9yIGFueGlldHkKIDYpIENhcHNhaWNpbiAwLjElIENyZWFtCiAgICAgQXBwbHkgYSBzbWFsbCBhbW91bnQgdG9waWNhbGx5IHR3aWNlIGEgZGF5CiA3KSBDbG9waWRvZ3JlbCBCaXN1bGZhdGUgNzVNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgZXZlcnkgZGF5CiA4KSBEaXBoZW5oeWRyYW1pbmUgSGNsIDI1TWcgQ2FwCiAgICAgVGFrZSBvbmUgY2Fwc3VsZSBieSBtb3V0aCBmb3VyIHRpbWVzIGEgZGF5IGFzIG5lZWRlZAogOSkgRmx1b3hldGluZSBIY2wgMTBNZyBDYXAKICAgICBUYWtlIG9uZSBjYXBzdWxlIGJ5IG1vdXRoIGV2ZXJ5IGRheQoxMCkgRmx1dGljYXMgNTAwL1NhbG1ldGVyb2wgNTAgSW5obCBEaXNrIDYwCiAgICAgSW5oYWxlIDEgaW5oYWxhdGlvbiBieSBtb3V0aCB0d2ljZSBhIGRheSByaW5zZSBtb3V0aCBhbmQKICAgICBTcGl0IGFmdGVyICB1c2UuIERpc2NhcmQgMSBtb250aCBhZnRlciBvcGVuaW5nIGZvaWwgcG91Y2guCjExKSBGb2xpYyBBY2lkIDFNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGggZXZlcnkgZGF5CjEyKSBHbGlwaXppZGUgNU1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCB0d2ljZSBhIGRheSBmb3IgZGlhYmV0ZXMuIFRha2UKICAgICAzMCBNaW51dGVzICBiZWZvcmUgYSBtZWFsLgoxMykgSHlkcm9jaGxvcm90aGlhemlkZSAyNU1nIFRhYgogICAgIFRha2UgdHdvIHRhYmxldHMgYnkgbW91dGggZXZlcnkgbW9ybmluZyBmb3IgYmxvb2QgcHJlc3N1cmUKMTQpIEh5ZHJvY29ydGlzb25lIDElIENyZWFtCiAgICAgQXBwbHkgdGhpbiBmaWxtIHRvcGljYWxseSBldmVyeSBkYXkKMTUpIElidXByb2ZlbiA0MDBNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGggdGhyZWUgdGltZXMgYSBkYXkgYXMgbmVlZGVkCjE2KSBJbnN1bGluIFJlZyAxMDBVL21sIEluaiAxME1sIFZsCiAgICAgSW5qZWN0IDUgdW5pdHMgc3ViY3V0YW5lb3VzbHkgYXMgZGlyZWN0ZWQKMTcpIE1ldGZvcm1pbiBIY2wgNTAwTWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIGV2ZXJ5IGRheQoxOCkgTWV0b3Byb2xvbCBTdWNjaW5hdGUgMjVNZyBTYSBUYWIKICAgICBUYWtlIHR3byB0YWJsZXRzIGJ5IG1vdXRoIGV2ZXJ5IGRheQoxOSkgTXVsdGl2aXRhbWluIENhcC90YWIKICAgICBUYWtlIDEgY2FwL3RhYiBieSBtb3V0aCBldmVyeSBkYXkKMjApIE9tZXByYXpvbGUgMjBNZyBFYyBDYXAKICAgICBUYWtlIG9uZSBjYXBzdWxlIGJ5IG1vdXRoIGV2ZXJ5IGRheQoyMSkgUGlvZ2xpdGF6b25lIEhjbCAxNU1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCBldmVyeSBkYXkKMjIpIFByYXZhc3RhdGluIE5hIDgwTWcgVGFiCiAgICAgVGFrZSBvbmUtaGFsZiB0YWJsZXQgYnkgbW91dGggZXZlcnkgZXZlbmluZyB0byBsb3dlciB5b3VyCiAgICAgQ2hvbGVzdGVyb2wKMjMpIFRhbXN1bG9zaW4gSGNsIDAuNE1nIENhcAogICAgIFRha2Ugb25lIGNhcHN1bGUgYnkgbW91dGggYXQgYmVkdGltZQoyNCkgVGlvdHJvcGl1bSAxOE1jZyBJbmhsIENhcCAzMAogICAgIFBsYWNlIDEgY2Fwc3VsZSAoMTggbWNnKSBpbiBpbmhhbGVyLCBpbmhhbGUgYnkgbW91dGggZXZlcnkKICAgICBEYXkgIHJlcGxhY2VzIGlwcmF0cm9waXVtIChhdHJvdmVudC9jb21iaXZlbnQpLCBmb3IKICAgICBJbmhhbGVyIHVzZSBvbmx5CiAKQWN0aXZlIE5vbi1WQSBNZWRpY2F0aW9uczoKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CiAxKSBBY2V0YW1pbm9waGVuIDUwME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aAogMikgQW1pb2Rhcm9uZSBIY2wgKFBhY2Vyb25lKSAyMDBNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGggZXZlcnkgZGF5CiAzKSBBc3BpcmluCiAgICAgVGFrZSAgYnkgbW91dGggZXZlcnkgZGF5CiA0KSBDbG9waWRvZ3JlbCBCaXN1bGZhdGUgNzVNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGgKIDUpIE11bHRpdml0YW1pbiBDYXAvdGFiCiAgICAgVGFrZSAxIGNhcC90YWIgYnkgbW91dGggZXZlcnkgZGF5CiAKICBZb3UgaGF2ZSAyOSBhY3RpdmUgbWVkaWNhdGlvbnMKIAogCisrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIApZb3VyIFByaW1hcnkgQ2FyZSBQcm92aWRlciBpczogVW5rbm93bgogCiNGVVRVUkUgQVBQT0lOVE1FTlRTOgpGdXR1cmUgQXBwb2ludG1lbnRzOgpObyBmdXR1cmUgYXBwb2ludG1lbnRzIG9uIGZpbGUKIAojTEFCUyB0aGF0IHdlcmUgb3JkZXJlZCB0b2RheTogICBObyBwZW5kaW5nIGxhYnMuCiAKI0lNQUdJTkcgU1RVRElFUyB0aGF0IHdlcmUgb3JkZXJlZCBpbiB0aGUgbGFzdCAzIG1vbnRoczogICBOTyByZWNlbnQgcGVuZGluZwpSYWRpb2xvZ3kgZm91bmQuCiAKICArIElmIGFuIGltYWdpbmcgc3R1ZHkgKHVsdHJhc291bmQsIENULCBNUkksIGV0YykgaGFzIGJlZW4gb3JkZXJlZCwKICAgIHBsZWFzZSBjYWxsIHRoZSBQb3J0bGFuZCBWQSBNZWRpY2FsIENlbnRlciBJbWFnaW5nIFNjaGVkdWxpbmcgbnVtYmVyCiAgICB0byBtYWtlIGFycmFuZ2VtZW50czogNTAzLTI3My01MTI2LgogCiNDT05TVUxUUyBvciBQUk9DRURVUkVTIHRoYXQgd2VyZSBvcmRlcmVkIGluIHRoZSBwYXN0IHdlZWs6ICAgTk8gcmVjZW50IHBlbmRpbmcKQ29uc3VsdHMgZm91bmQuCiAKWW91ciBoZWFsdGggY2FyZSB0ZWFtIG1heSBoYXZlIGRpc2N1c3NlZCB3aGV0aGVyIG9yIG5vdCB5b3Ugd2VyZSBleHBvc2VkIHRvIGFueQpwb3RlbnRpYWwgdG94aW5zL2hhemFyZHMgZHVyaW5nIHlvdXIgbWlsaXRhcnkgc2VydmljZSBkdXJpbmcgdGhpcyB2aXNpdC4KIApUaGlzIGlzIHJlbGF0ZWQgdG8gYSBuZXcgVG94aWMgRXhwb3N1cmUgU2NyZWVuaW5nIChURVMpIHByb2dyYW0gaW4gdGhlIFZBLiAgSWYKeW91IGJlbGlldmUgeW91IHdlcmUgZXhwb3NlZCB0byBwb3RlbnRpYWwgdG94aW5zL2hhemFyZHMgZHVyaW5nIHlvdXIgc2VydmljZSwKeW91IGNhbiBnbyBoZXJlIHRvIGxlYXJuIG1vcmUgYWJvdXQgd2hhdCB0aGUgVkEgaXMgZG9pbmcgdG8gc3VwcG9ydCBvdXIKVmV0ZXJhbnM6Cmh0dHBzOi8vd3d3LndhcnJlbGF0ZWRpbGxuZXNzLnZhLmdvdi9XQVJSRUxBVEVESUxMTkVTUy9lZHVjYXRpb24vbG9jYWwtb2ZmCmVyaW5ncy9zdXBwb3J0L1RveGljRXhwb3N1cmVTY3JlZW5pbmdFbmdsaXNoLnBkZgogCklmIHlvdSBiZWxpZXZlIHlvdSB3ZXJlIGV4cG9zZWQgdG8gYWdlbnQgb3JhbmdlLCBidXJuIHBpdHMsIG90aGVyIGFpcmJvcm5lCmhhemFyZHMsIHJhZGlhdGlvbiwgb3IgIHNlcnZlZCBpbiBHdWxmIFdhciB0aGVhdGVycywgeW91IG1heSBiZSBlbGlnaWJsZSB0bwpwYXJ0aWNpcGF0ZSBpbiBhIGZyZWUgcmVnaXN0cnkgZXhhbS4gIFlvdSBtYXkgY2FsbCA1MDMtOTA2LTUxMDAgZm9yIG1vcmUKaW5mb3JtYXRpb24uCiAKRm9yIEhlYWx0aGNhcmUgRWxpZ2liaWxpdHkgYW5kIEVucm9sbG1lbnQgcXVlc3Rpb25zLCBjb250YWN0IG91ciBFbnJvbGxtZW50Ck9mZmljZSBhdCA1MDMtMjczLTUwNjkuCiAKRm9yIHF1ZXN0aW9ucyBhYm91dCBCZW5lZml0cyBhbmQgQ2xhaW1zIHlvdSBjYW4gZmluZCBhIFZldGVyYW4gU2VydmljZQpPcmdhbml6YXRpb24gT2ZmaWNlIG5lYXIgeW91IGF0OgpodHRwczovL3d3dy5lYmVuZWZpdHMudmEuZ292L2ViZW5lZml0cy92c28tc2VhcmNoIG9yIGJ5IGNhbGxpbmcgVkJBCjEtODAwLTgyNy0xMDAwLgogCklmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbiBwaHlzaWNhbCB0aGVyYXB5LCBwbGVhc2UgY2FsbCB0aGUgbnVtYmVyIGJlbG93IHRvCmFycmFuZ2UgYW4gYXBwb2ludG1lbnQ6CkFsbCBjbGluaWNzOiAgICAgICAgICAgICAoNTAzKTI3My01MDE4CiAKIApZb3VyIHZpdGFscyBmb3IgdG9kYXkgYXJlOgogIEJsb29kIFByZXNzdXJlIC0gMTI1LzgwICgwMS8wOC8yMDIwIDE0OjI3KQogIFdlaWdodCAtIDI1NSBsYiBbMTE1LjY3IGtnXSAoMDEvMDgvMjAyMCAxNDoyNykKICBQYWluIExldmVsIC0gMCAoMDEvMDgvMjAyMCAxNDoyNykKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KIApJZiB5b3UgaGF2ZSBxdWVzdGlvbnMgb3IgY29uY2VybnMgYWZ0ZXIgdG9kYXksIHBsZWFzZSBjb250YWN0IHRoZSBjbGluaWMgYnkKY2FsbGluZyAxLTgwMC05NDktMTAwNC4gU2VsZWN0IG9wdGlvbiAyIHdoZW4gdGhlIGF1dG9tYXRlZCBtZXNzYWdlIHN0YXJ0cy4KCgo="
* content.attachment.title = "PC - AFTERVISIT SUMMARY"
* content.attachment.creation = "2023-03-17T09:27:00Z"
* context.related.reference = "#location-0"

Instance: 94b33c4e-b9eb-4ae0-9f32-11cc4f4b13f8
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 78118440"
Description: "PC - NEW"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.78118440"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE OUTPATIENT NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-03-17T09:25:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-03-17T09:26:05Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUEMgLSBORVcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgT1VUUEFUSUVOVCBOT1RFICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBNQVIgMTcsIDIwMjNAMDk6MjUgICAgIEVOVFJZIERBVEU6IE1BUiAxNywgMjAyM0AwOToyNTo0OSAgICAgIAogICAgICBBVVRIT1I6IFdJTlRFUkJPVFRPTSxMSVNBIE0gIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQ0M6CiAKIApQcm9ibGVtczoKIApEb2N0b3JzL091dHNpZGUgcmVjb3JkczoKIApTdXJnaWNhbCBhZG1pc3Npb25zOgogCk1lZGljYWwgYWRtaXNzaW9uczoKIApXb21lbidzIEhlYWx0aDogZ3hweGF4LCBicmVhc3QgaGlzdG9yeSwgcGFwIGhpc3RvcnksIGZhbWlseSAKcGxhbm5pbmcvY29udHJhY2VwdGlvbiBwbGFuLCBib25lIGhlYWx0aAogCk1lZGljYXRpb25zOgogCkFsbGVyZ2llcyB0byBtZWRzOgogClNvY2lhbCBoaXN0b3J5OgogClRvYmFjY28sIGV0b2gsIHJlYyBkcnVnczoKIApGYW1pbHkgaHg6CiAKTWlsaXRhcnkgaHg6ICAgVGltZSBwZXJpb2Q6ICAgICAgICAgICAgIEJyYW5jaDogSm9iOiAgICAgICAgICAgIExvY2F0aW9uczoKICAgICAgICBJbG5lc3NlcyB3aGlsZSBpbjogICAgICAgICAgICAgIFBUU0Q6CkFueSBleHBlcmllbmNlcyBmb3Igd2hpY2ggd291bGQgbGlrZSBjb3Vuc2VsaW5nOgp3aXRuZXNzZWQgZGVhdGggb3IgY29tYmF0OgogCk1lbnRhbCBIZWFsdGg6CiAKIAogClJvczogbm8gc2VpenVyZSwgbG9jLCBoZWFkYWNoZXMsIHZpc3VhbCBwcm9ibGVtcwogICAgIG5vIGhlYXJpbmcgcHJvYmxlbXMKICAgICBubyBwcm9ibGVtcyB3aXRoIHRlZXRoIG9yIGd1bXMKICAgICAgICBwdWxtb25hcnk6CiAgICAgICAgaHRuIG9yIG11cm11cnM6CiAgICAgbm8gZGlmZmljdWx0eSBzd2FsbG93aW5nLCBubyBzdG9tYWNoIHByb2JsZW1zLCBubyBjb25zdGlwYXRpb24gb3IgCmRpYXJyaGVhLApubyBibG9vZCBpbiBzdG9vbCBvciBvbiB0b2lsZXQgcGFwZXIKICAgICBubyB1cmluYXJ5IGZyZXF1ZW5jeSwgdXJnZW5jeSwgZGlmZmljdWx0eSBzdGFydGluZyBvciBzdG9wcGluZyBzdHJlYW0KICAgICBubyBtdXNjbGUgcHJvYmxlbXMsIG5vIG5ldyBqb2ludCBwcm9ibGVtcwogICAgIG5vIHNraW4gb3IgbmV1cm9sb2dpYWwgcHJvYmxlbXMKIAogCiAKU1VCSkVDVElWRTogTUhWWlpWSVNOVFdFTlRZLFRFU1QgUEFUSUVOVFIgaXMgYSAyMiBZT01BTEUgaGVyZSBmb3IKIAogCk1FRElDQVRJT05TOgpBY3RpdmUgT3V0cGF0aWVudCBNZWRpY2F0aW9ucyAoaW5jbHVkaW5nIFN1cHBsaWVzKToKIAogICAgIEFjdGl2ZSBPdXRwYXRpZW50IE1lZGljYXRpb25zICAgICAgICAgICAgICAgICAgICAgICAgICBTdGF0dXMKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoxKSAgIEFDRVRBTUlOT1BIRU4gNTAwTUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCBGT1VSICBIT0xECiAgICAgICBUSU1FUyBBIERBWSBBUyBORUVERUQgKkRPIE5PVCBUQUtFIE1PUkUgVEhBTgogICAgICAgNCwwMDBNRyBBIERBWSBPRiBBQ0VUQU1JTk9QSEVOIEZST00gQUxMIFNPVVJDRVMgRFVFCiAgICAgICBUTyBSSVNLIE9GIExJVkVSIERBTUFHRS4KMikgICBBTEJVVEVST0wgMTAwL0lQUkFUUk8gMjBNQ0cgMTIwRCBQTyBJTkhMIElOSEFMRSAxICAgICAgQUNUSVZFCiAgICAgICBTUFJBWSBCWSBNT1VUSCBGT1VSIFRJTUVTIEEgREFZIChFQUNIIElOSEFMRVIKICAgICAgIENPTlRBSU5TIDEyMCBTUFJBWVMpCjMpICAgQUxDT0hPTCBQUkVQIFBBRCBVU0UgUEFEIFRPUElDQUxMWSBBUyBESVJFQ1RFRCAgICAgICAgIEFDVElWRSAoUykKNCkgICBBTExPUFVSSU5PTCAxMDBNRyBUQUIgVEFLRSBPTkUgVEFCTEVUIEJZIE1PVVRIIEVWRVJZICAgQUNUSVZFCiAgICAgICBEQVkKNSkgICBBU1BJUklOIDMyNU1HIEVDIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgICAgSE9MRAogICAgICAgREFZCjYpICAgQlVTUElST05FIEhDTCAxME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggVFdJQ0UgIEFDVElWRQogICAgICAgQSBEQVkgQVMgTkVFREVEIEZPUiBBTlhJRVRZCjcpICAgQ0FQU0FJQ0lOIDAuMSUgQ1JFQU0gQVBQTFkgQSBTTUFMTCBBTU9VTlQgVE9QSUNBTExZICAgIEFDVElWRQogICAgICAgVFdJQ0UgQSBEQVkKOCkgICBDTE9QSURPR1JFTCBCSVNVTEZBVEUgNzVNRyBUQUIgVEFLRSBPTkUgVEFCTEVUIEVWRVJZICAgQUNUSVZFCiAgICAgICBEQVkKOSkgICBESVBIRU5IWURSQU1JTkUgSENMIDI1TUcgQ0FQIFRBS0UgT05FIENBUFNVTEUgQlkgICAgICAgQUNUSVZFCiAgICAgICBNT1VUSCBGT1VSIFRJTUVTIEEgREFZIEFTIE5FRURFRAoxMCkgIEZMVU9YRVRJTkUgSENMIDEwTUcgQ0FQIFRBS0UgT05FIENBUFNVTEUgQlkgTU9VVEggICAgICBBQ1RJVkUKICAgICAgIEVWRVJZIERBWQoxMSkgIEZMVVRJQ0FTIDUwMC9TQUxNRVRFUk9MIDUwIElOSEwgRElTSyA2MCBJTkhBTEUgMSAgICAgICBBQ1RJVkUKICAgICAgIElOSEFMQVRJT04gQlkgTU9VVEggVFdJQ0UgQSBEQVkgUklOU0UgTU9VVEggQU5ECiAgICAgICBTUElUIEFGVEVSIFVTRS4gRElTQ0FSRCAxIE1PTlRIIEFGVEVSIE9QRU5JTkcgRk9JTAogICAgICAgUE9VQ0guCjEyKSAgRk9MSUMgQUNJRCAxTUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCBFVkVSWSBEQVkgIEFDVElWRQoxMykgIEdMSVBJWklERSA1TUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCBUV0lDRSBBICAgICBBQ1RJVkUKICAgICAgIERBWSBGT1IgRElBQkVURVMuIFRBS0UgMzAgTUlOVVRFUyBCRUZPUkUgQSBNRUFMLgoxNCkgIEdMVUNPU1RJWCBHTFVDT1NFIFRFU1QgU1RSSVAgVVNFIDEgU1RSSVAgSVRFTSBBUyAgICAgICBBQ1RJVkUKICAgICAgIERJUkVDVEVECjE1KSAgSFlEUk9DSExPUk9USElBWklERSAyNU1HIFRBQiBUQUtFIFRXTyBUQUJMRVRTIEJZICAgICAgIEFDVElWRQogICAgICAgTU9VVEggRVZFUlkgTU9STklORyBGT1IgQkxPT0QgUFJFU1NVUkUKMTYpICBIWURST0NPUlRJU09ORSAxJSBDUkVBTSBBUFBMWSBUSElOIEZJTE0gVE9QSUNBTExZICAgICAgQUNUSVZFCiAgICAgICBFVkVSWSBEQVkKMTcpICBJQlVQUk9GRU4gNDAwTUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCBUSFJFRSAgICAgQUNUSVZFCiAgICAgICBUSU1FUyBBIERBWSBBUyBORUVERUQKMTgpICBJTlNVTElOIFJFRyAxMDBVL01MIElOSiAxME1MIFZMIElOSkVDVCA1IFVOSVRTICAgICAgICAgQUNUSVZFCiAgICAgICBTVUJDVVRBTkVPVVNMWSBBUyBESVJFQ1RFRAoxOSkgIE1FVEZPUk1JTiBIQ0wgNTAwTUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCAgICAgICBBQ1RJVkUKICAgICAgIEVWRVJZIERBWQoyMCkgIE1FVE9QUk9MT0wgU1VDQ0lOQVRFIDI1TUcgU0EgVEFCIFRBS0UgVFdPIFRBQkxFVFMgQlkgICBBQ1RJVkUKICAgICAgIE1PVVRIIEVWRVJZIERBWQoyMSkgIE1VTFRJVklUQU1JTiBDQVAvVEFCIFRBS0UgMSBDQVAvVEFCIEJZIE1PVVRIIEVWRVJZICAgICBBQ1RJVkUKICAgICAgIERBWQoyMikgIE5FRURMRSAyNUcgMS41SU4gVVNFIE9ORSBJVEVNIEFTIERJUkVDVEVEICAgICAgICAgICAgICBBQ1RJVkUKMjMpICBPTUVQUkFaT0xFIDIwTUcgRUMgQ0FQIFRBS0UgT05FIENBUFNVTEUgQlkgTU9VVEggICAgICAgQUNUSVZFCiAgICAgICBFVkVSWSBEQVkKMjQpICBQSU9HTElUQVpPTkUgSENMIDE1TUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCAgICAgQUNUSVZFCiAgICAgICBFVkVSWSBEQVkKMjUpICBQUkFWQVNUQVRJTiBOQSA4ME1HIFRBQiBUQUtFIE9ORS1IQUxGIFRBQkxFVCBCWSBNT1VUSCAgQUNUSVZFCiAgICAgICBFVkVSWSBFVkVOSU5HIFRPIExPV0VSIFlPVVIgQ0hPTEVTVEVST0wKMjYpICBUQU1TVUxPU0lOIEhDTCAwLjRNRyBDQVAgVEFLRSBPTkUgQ0FQU1VMRSBCWSBNT1VUSCBBVCAgQUNUSVZFCiAgICAgICBCRURUSU1FCjI3KSAgVElPVFJPUElVTSAxOE1DRyBJTkhMIENBUCAzMCBQTEFDRSAxIENBUFNVTEUgKDE4IE1DRykgIEFDVElWRQogICAgICAgSU4gSU5IQUxFUiwgSU5IQUxFIEJZIE1PVVRIIEVWRVJZIERBWSBSRVBMQUNFUwogICAgICAgSVBSQVRST1BJVU0gKEFUUk9WRU5UL0NPTUJJVkVOVCksIEZPUiBJTkhBTEVSIFVTRQogICAgICAgT05MWQogCiAgICAgQWN0aXZlIE5vbi1WQSBNZWRpY2F0aW9ucyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFN0YXR1cwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CjEpICAgTm9uLVZBIEFDRVRBTUlOT1BIRU4gNTAwTUcgVEFCIDUwME1HIE1PVVRIICAgICAgICAgICAgIEFDVElWRQoyKSAgIE5vbi1WQSBBTUlPREFST05FIEhDTCAoUEFDRVJPTkUpIDIwME1HIFRBQiAyMDBNRyAgICAgICBBQ1RJVkUKICAgICAgIE1PVVRIIEVWRVJZIERBWQozKSAgIE5vbi1WQSBBU1BJUklOIFRBQixFQyAgTU9VVEggRVZFUlkgREFZICAgICAgICAgICAgICAgICBBQ1RJVkUKNCkgICBOb24tVkEgQ0xPUElET0dSRUwgQklTVUxGQVRFIDc1TUcgVEFCIDc1TUcgTU9VVEggICAgICAgQUNUSVZFCjUpICAgTm9uLVZBIE1VTFRJVklUQU1JTiBDQVAvVEFCIDEgQ0FQL1RBQiBNT1VUSCBFVkVSWSBEQVkgIEFDVElWRQogCjMyIFRvdGFsIE1lZGljYXRpb25zCiAKQUxMRVJHSUVTOgogIFBFTklDSUxMSU4sIFNVTEZBIERSVUdTLCBFR0dTLCBNQUFMT1ggQU5UQUNJRCwgQURIRVNJVkUgVEFQRSwgVEVUUkFDWUNMSU5FCiAgUFJBWk9TSU4sIExJU0lOT1BSSUwKIApQSFlTSUNBTCBFWEFNOgpCUDEyNS84MCAoMDEvMDgvMjAyMCAxNDoyNykgIFA2NyAoMDEvMDgvMjAyMCAxNDoyNykgIFJSMTIgKDAxLzA4LzIwMjAgMTQ6MjcpIApUOTguOCBGIFszNy4xIENdICgwMS8wOC8yMDIwIDE0OjI3KQpXVDI1NSBsYiBbMTE1LjY3IGtnXSAoMDEvMDgvMjAyMCAxNDoyNykgIEJPRFkgTUFTUyBJTkRFWCAtIE5PIEhFSUdIVFMgRk9VTkQKIApBUFBFQVJBTkNFOiAgV0VMTCBBUFBFQVJJTkcsIElOIE5BRApIRUVOVDogIEFUL05DLCBQRUVSTEEsIEVPTUkKTkVDSzogIE5PIE5PREVTIE9SIE1BU1NFUwpMVU5HUzogIENUQSBCSUxBVEVSQUxMWQpDT1I6ICBSUlIsIE5PIE1SRwpBQkRPTUVOOiBOTyBNQVNTRVMgSU4gQUxMIDQgUVVBRFJBTlRTLCBOTyBIU00KRVhUOiAgTk8gQy9DL0UsIERQIDIrIEJJTEFULCBTRU5TQVRJT04gSU4gVEFDVApHVToKIApMYWJzOgogCmNob2xlc3Rlcm9sICAgICAgIE5vIENIT0xFU1RFUk9MIGluIHRoZSBsYXN0IDFZCmhkbCAgICAgICAgICAgICAgIE5vIEhETCBpbiB0aGUgbGFzdCAxWQpsZGwgY2FsYyAgICAgICAgICBObyBMREwtQ0hPTCBDQUxDIGluIHRoZSBsYXN0IDFZCnRyaWdzICAgICAgICAgICAgIE5vIFRSSUdMWUNFUklERVMgaW4gdGhlIGxhc3QgMVkKZmVycml0aW4gICAgICAgICAgTm8gRkVSUklUSU4gaW4gdGhlIGxhc3QgMVkKSENUICAgICAgICAgICAgICAgTm8gSENUIGluIHRoZSBsYXN0IDFZCkhlbW9nbG9iaW4gICAgICAgIFRoZSBPQkpFQ1QgTEFCLUhHQkExQyB3YXMgTk9UIGZvdW5kLi4uQ29udGFjdCBJUk0uClBTQSAgICAgICAgICAgICAgIE5vIFBST1NUQVRJQyBTUEVDSUZJQyBBTlRJR0VOIGluIHRoZSBsYXN0IDFZCnN0b29sIGNhcmRzICAgICAgIE5vIEdVQUlBQyBHQVNUUklDIGluIHRoZSBsYXN0IDFZCiAKTm8gQ0JDIGluIHRoZSBwYXN0IDFZCiAKTm8gQkFTSUMgTUVUQUJPTElDIFBBTkVMIGluIHRoZSBwYXN0IDFZTm8gR1VBSUFDIEdBU1RSSUMgaW4gdGhlIGxhc3QgMVlObyAKSEVNT0dMT0JJTiBBMUMgaW4gdGhlIGxhc3QgMVlObyBaWkhFUEFUSVRJUyBBIEFOVElCT0RZIFRPVEFMIGluIHRoZSBsYXN0IDFZTm8gCkhFUEFUSVRJUyBCIFNVUkZBQ0UgQU5USUdFTiBpbiB0aGUgbGFzdCAxWVRoZSBPQkpFQ1QgTEFCLSB3YXMgTk9UIApmb3VuZC4uLkNvbnRhY3QgSVJNLgpIRVAgQyBBQlRoZSBPQkpFQ1QgIHdhcyBOT1QgZm91bmQuLi5Db250YWN0IElSTS5MQUItTElWRVIKUFJPRklMRVRoZSBPQkpFQ1QgIHdhcyBOT1QgZm91bmQuLi5Db250YWN0IElSTS5MQUItTUEvQ1IgUkFUSU9UaGUgT0JKRUNUICB3YXMgCk5PVCBmb3VuZC4uLkNvbnRhY3QgSVJNLkxBQi1VUklOQUxZU0lTVGhlIE9CSkVDVCAgd2FzIE5PVCBmb3VuZC4uLkNvbnRhY3QgCklSTS4KIAogCiAKSU1QUkVTU0lPTjogIE1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSIGlzIGEgMjIgWU9NQUxFIGhlcmUgZm9yCiAKUFJPQkxFTVM6CiAKTm8gRnV0dXJlIEFwcG9pbnRtZW50cyBTY2hlZHVsZWQKIApwcm9ibGVtIDEKCnByb2JsZW0gMgoKcHJvYmxlbSAzCiAKL2VzLyBMSVNBIE0gV0lOVEVSQk9UVE9NLCBNLkQuClN0YWZmIFBoeXNpY2lhbgpTaWduZWQ6IDAzLzE3LzIwMjMgMDk6MjYK"
* content.attachment.title = "PC - NEW"
* content.attachment.creation = "2023-03-17T09:25:00Z"
* context.related.reference = "#location-0"

Instance: 3029c9a5-2a11-4ee9-9028-6d5947402575
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77830476"
Description: "TLH - PORTLAND/VANCOUVER"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77830476"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE TELEPHONE ENCOUNTER NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-02-27T09:02:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-02-27T09:02:49Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogVExIIC0gUE9SVExBTkQvVkFOQ09VVkVSICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgVEVMRVBIT05FIEVOQ09VTlRFUiBOT1RFICAgICAgICAgICAKREFURSBPRiBOT1RFOiBGRUIgMjcsIDIwMjNAMDk6MDIgICAgIEVOVFJZIERBVEU6IEZFQiAyNywgMjAyM0AwOTowMjo0OCAgICAgIAogICAgICBBVVRIT1I6IE1JTExFUixCUklBTiBLICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKUFJPVklERVIgRE9DVU1FTlRBVElPTgoKVGVzdCBUZXN0IFRlc3RlcgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpSRVFVRVNUIERFVEFJTFMKUmVxdWVzdCBEZXRhaWxzIGZvciBNeSBWQSBJbWFnZXMgVmlkZW8gcmVxdWVzdApDcmVhdGUgRGF0ZTogMDIvMDYvMjAyMyBAIDA2OjQxIEFNClRpbWUgZnJhbWUgZm9yIFZpZGVvIHJlcXVlc3Q6IDAyLzA2LzIwMjMgdG8gMDIvMTMvMjAyMwpSZXF1ZXN0aW5nIFByb3ZpZGVyOiBNSUxMRVIsIEJSSUFOCkZhY2lsaXR5IE5hbWU6IFBvcnRsYW5kIE9SIFZBTUMKU3RhdHVzOiBWaWRlbyBSZWNlaXZlZCBmcm9tIFBhdGllbnQKUmVxdWVzdCM6IDYzZTExMTliMTNkOTBiNWNlNjVmOGRlYwpQdXJwb3NlIG9mIFZpZGVvOiBCYWxhbmNlClRha2UgYSBWaWRlbyBPZjogc3RhbmRpbmcgb24gb25lIGxlZwpJbnN0cnVjdGlvbnM6IEhlbGxvIC0tIHBsZWFzZSBwcm92aWRlIHZpZGVvIHNob3dpbmcgdXMgeW91ciBiYWxhbmNlLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClBBVElFTlQgU1VCTUlUVEVEIFZJREVPIEFORCBDT01NRU5UUwpEYXRlIFN1Ym1pdHRlZCBieSBwYXRpZW50OiAwMi8wOC8yMDIzIEAgMDg6MjUgQU0KT3RoZXIgLSBCYWxhbmEKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkNPTU1FTlRTIFNFTlQgVE8gUEFUSUVOVCBJTiBNWSBWQSBJTUFHRVMKVGVzdCBWaWRlbyByZWNlaXZlZCBpbiBWQ00KIAovZXMvIEJSSUFOIEsgTUlMTEVSIEJBClNFQ1VSRSBNRVNTQUdJTkcgQURNSU5JU1RSQVRPUgpTaWduZWQ6IDAyLzI3LzIwMjMgMDk6MDIK"
* content.attachment.title = "TLH - PORTLAND/VANCOUVER"
* content.attachment.creation = "2023-02-27T09:02:00Z"
* context.related.reference = "#location-0"

Instance: 7b3443f8-c9ae-41eb-aac1-0586dc63705c
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77735058"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.305761"
* contained[=].name.text = "FRIGO,MARLAINA J"
* contained[=].name.family = "FRIGO,MARLAINA J"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.305761"
* contained[=].name.text = "FRIGO,MARLAINA J"
* contained[=].name.family = "FRIGO,MARLAINA J"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77735058"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-02-17T14:59:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-02-17T11:59:28Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBGRUIgMTcsIDIwMjNAMTQ6NTkgICAgIEVOVFJZIERBVEU6IEZFQiAxNywgMjAyM0AxMTo1OToyOCAgICAgIAogICAgICBBVVRIT1I6IEZSSUdPLE1BUkxBSU5BIEogICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDAyLzE3LzIwMjMgMDI6NDAgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogICpDYXJlIEluIFRoZSBDb21tdW5pdHlfVkFQb3J0bGFuZEhDUyAKU3ViamVjdDogIEdlbmVyYWw6VHJhaW5pbmcgTWVzc2FnZSAzIGZvciBNYXJsYWluYSAKClRyYWluaW5nIE1lc3NhZ2UgMyBmb3IgTWFybGFpbmEgIAogIAogIApGbHUgU2hvdCBJbmZvOiBodHRwczovL3d3dy5wb3J0bGFuZC52YS5nb3YvbmV3cy9mbHVzaG90cy5hc3AgIApodHRwczovL3d3dy52YS5nb3YvZGlyZWN0b3J5L2d1aWRlL3JlZ2lvbi5hc3A/SUQ9MTAyMD8KLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDAyLzE3LzIwMjMgMDI6NTggUE0gRVQgCkZyb206ICBGUklHTywgTUFSTEFJTkEgIEogClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6VHJhaW5pbmcgTWVzc2FnZSAzIGZvciBNYXJsYWluYSAKCmpnIGdodmggIAogIAogIAogIApNYXJsYWluYSBGcmlnbywgUk4gIApDb21tdW5pdHkgQ2FyZSBOQ00gCgogCi9lcy8gTUFSTEFJTkEgSiBGUklHTywgTVBILCBSTgoKU2lnbmVkOiAwMi8xNy8yMDIzIDExOjU5Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2023-02-17T14:59:00Z"
* context.related.reference = "#location-0"

Instance: 545e22f7-b716-48b8-8d48-916433c2b41b
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77713416"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.13582"
* contained[=].name.text = "SONNEMAN,SUSAN L"
* contained[=].name.family = "SONNEMAN,SUSAN L"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.13582"
* contained[=].name.text = "SONNEMAN,SUSAN L"
* contained[=].name.family = "SONNEMAN,SUSAN L"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77713416"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-02-16T13:26:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-02-16T10:26:55Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBGRUIgMTYsIDIwMjNAMTM6MjYgICAgIEVOVFJZIERBVEU6IEZFQiAxNiwgMjAyM0AxMDoyNjo1NSAgICAgIAogICAgICBBVVRIT1I6IFNPTk5FTUFOLFNVU0FOIEwgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDAyLzE2LzIwMjMgMDE6MjUgUE0gRVQgCkZyb206ICBTT05ORU1BTiwgU1VTQU4gIEwgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6VHJhaW5pbmcgTWVzc2FnZSAzIGZvciBTb25uZW1hbiAKCkkgaGF2ZSBjb21wbGV0ZWQgeW91ciBjb25zdWx0LiAKCiAKL2VzLyBTVVNBTiBMIFNPTk5FTUFOClJOClNpZ25lZDogMDIvMTYvMjAyMyAxMDoyNgo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2023-02-16T13:26:00Z"
* context.related.reference = "#location-0"

Instance: 2b7690c3-e2ad-4610-952d-41cf8239db9d
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77598354"
Description: "NEUROLOGY SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.90042"
* contained[=].name.text = "ORALLO,EDITHA"
* contained[=].name.family = "ORALLO,EDITHA"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.90042"
* contained[=].name.text = "ORALLO,EDITHA"
* contained[=].name.family = "ORALLO,EDITHA"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77598354"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "NEUROLOGY SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-02-08T16:32:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-02-08T13:32:22Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTkVVUk9MT0dZIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBORVVST0xPR1kgU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBGRUIgMDgsIDIwMjNAMTY6MzIgICAgIEVOVFJZIERBVEU6IEZFQiAwOCwgMjAyM0AxMzozMjoyMiAgICAgIAogICAgICBBVVRIT1I6IE9SQUxMTyxFRElUSEEgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDAyLzA4LzIwMjMgMDM6NDYgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE5ldXJvbG9neSBDbGluaWNzX1ZBUG9ydGxhbmRIQ1NfREhTTSAKU3ViamVjdDogIEdlbmVyYWw6VHJhaW5pbmcgTXNnIDIgZm9yIEVkaXRoYSAKClRlc3QgVGVzdCBUZXN0ZXIgMiAgCiAgCiAgCkZsdSBTaG90IEluZm86IGh0dHBzOi8vd3d3LnBvcnRsYW5kLnZhLmdvdi9uZXdzL2ZsdXNob3RzLmFzcCAgCmh0dHBzOi8vd3d3LnZhLmdvdi9kaXJlY3RvcnkvZ3VpZGUvcmVnaW9uLmFzcD9JRD0xMDIwPwotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIApTZW50OiAgMDIvMDgvMjAyMyAwNDozMCBQTSBFVCAKRnJvbTogIE9SQUxMTywgRWRpdGhhICAKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApTdWJqZWN0OiAgR2VuZXJhbDpUcmFpbmluZyBNc2cgMiBmb3IgRWRpdGhhIAoKICAKdGVzdCAyICAKICAKICAKRWRpdGggT3JhbGxvICAKTmV1cm9sb2d5IEFNU0EgCgogCi9lcy8gRWRpdGhhIE9yYWxsbyBGYWNpbGl0YXRvcgpBZHZhbmNlIE1lZGljYWwgU3VwcG9ydCBBc3N0ClNpZ25lZDogMDIvMDgvMjAyMyAxMzozMgo="
* content.attachment.title = "NEUROLOGY SECURE MESSAGING"
* content.attachment.creation = "2023-02-08T16:32:00Z"
* context.related.reference = "#location-0"

Instance: 6099a54b-7329-460d-8834-b204aca34050
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77498227"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77498227"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-02-01T17:56:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-02-01T14:56:58Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBGRUIgMDEsIDIwMjNAMTc6NTYgICAgIEVOVFJZIERBVEU6IEZFQiAwMSwgMjAyM0AxNDo1Njo1OCAgICAgIAogICAgICBBVVRIT1I6IE1JTExFUixCUklBTiBLICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDAyLzAxLzIwMjMgMDU6NTQgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE15SGVhbHRoZVZldC9TZWN1cmVNZXNzYWdpbmcgQWRtaW5fVkFQb3J0bGFuZEhDUyAKU3ViamVjdDogIEdlbmVyYWw6dGVzdGluZyAKCmJsYWggYmxhaCBibGFoICAKICAKICAKRmx1IFNob3QgSW5mbzogaHR0cHM6Ly93d3cucG9ydGxhbmQudmEuZ292L25ld3MvZmx1c2hvdHMuYXNwICAKaHR0cHM6Ly93d3cudmEuZ292L2RpcmVjdG9yeS9ndWlkZS9yZWdpb24uYXNwP0lEPTEwMjA/Ci0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gClNlbnQ6ICAwMi8wMS8yMDIzIDA1OjU2IFBNIEVUIApGcm9tOiAgTUlMTEVSLCBCUklBTiAgSyAKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApTdWJqZWN0OiAgR2VuZXJhbDp0ZXN0aW5nIAoKdGVzdGluZyByZXBseSBhbmQgc2F2ZSB0byBjcHJzICAKICAKICAKICAKR28gdG8gdGhlIG5ldyBWQSBQb3J0bGFuZCBIZWFsdGhDYXJlIFN5c3RlbSBIb21lcGFnZTogIApodHRwczovL3d3dy52YS5nb3YvcG9ydGxhbmQtaGVhbHRoLWNhcmUvCgogCi9lcy8gQlJJQU4gSyBNSUxMRVIgQkEKU0VDVVJFIE1FU1NBR0lORyBBRE1JTklTVFJBVE9SClNpZ25lZDogMDIvMDEvMjAyMyAxNDo1Ngo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2023-02-01T17:56:00Z"
* context.related.reference = "#location-0"

Instance: b0eadec8-a552-49fe-9656-fa080f0b2e0c
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77429396"
Description: "PC - AFTERVISIT SUMMARY"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77429396"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-01-27T11:56:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-01-27T11:58:04Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUEMgLSBBRlRFUlZJU0lUIFNVTU1BUlkgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKQU4gMjcsIDIwMjNAMTE6NTYgICAgIEVOVFJZIERBVEU6IEpBTiAyNywgMjAyM0AxMTo1NjozMCAgICAgIAogICAgICBBVVRIT1I6IFdJTlRFUkJPVFRPTSxMSVNBIE0gIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKCioqKiBDTElOSUMgQUZURVJWSVNJVCBTVU1NQVJZICoqKgogCk1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSCiAKVGhhbmsgeW91IGZvciBhbGxvd2luZyB1cyB0byBwYXJ0aWNpcGF0ZSBpbiB5b3VyIGhlYWx0aGNhcmUuIFBsZWFzZSByZXZpZXcgdGhpcwpkb2N1bWVudC4gIEl0IG1heSBjb250YWluIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gb3IgaW5zdHJ1Y3Rpb25zIGZyb20geW91ciBjYXJlCnByb3ZpZGVyLgogX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KIApQQVRJRU5UIElOU1RSVUNUSU9OUzoKClRoYW5rIHlvdSBmb3IgY29taW5nIGluLgoKUGxlYXNlIGNvbnRpbnVlIHRvIGJlIGFjdGl2ZSBtb3N0IGRheXMgb2YgdGhlIHdlZWsuCgpDb250aW51ZSBtYWtpbmcgaGVhbHRoeSBtZWFsIGNob2ljZXMgZm9yIHlvdXIgbnV0cml0aW9uLgoKTGV0IHVzIGtub3cgaWYgeW91IHdvdWxkIGxpa2UgdG8gY29tZSBiYWNrIGZvciBhbnkgdmFjY2luZXMuCgpUaGFuayB5b3UsIERyIFdpbnRlcmJvdHRvbQogCiAKKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogClRISVMgSVMgWU9VUiBNRURJQ0FUSU9OIExJU1QgSkFOIDI3LCAyMDIzIFlvdSBzaG91bGQga2VlcCBhIGNvcHkgb2YgeW91cgptZWRpY2F0aW9uIGxpc3QgYW5kIGJyaW5nIGl0IHdpdGggeW91IHRvIGFsbCBvZiB5b3VyIG1lZGljYWwgYXBwb2ludG1lbnRzLgpQbGVhc2UgY29udGludWUgdG8gdGFrZSB0aGVzZSBtZWRpY2F0aW9ucyBhcyBkaXJlY3RlZC4gQ2FsbCB1cyBvciBzZW5kIHVzIGEKc2VjdXJlIG1lc3NhZ2UgaWYgeW91IHN0YXJ0LCBzdG9wLCBvciBjaGFuZ2UgbWVkaWNhdGlvbnMuIFRvIGhlbHAgeW91ciBwcmltYXJ5CmNhcmUgdGVhbSBwcm92aWRlIHRoZSBzYWZlc3QgY2FyZSBmb3IgeW91LCBpdCBpcyBpbXBvcnRhbnQgZm9yIHRoZW0gdG8ga25vdwphYm91dCBhbGwgdGhlIG1lZGljYXRpb25zIHlvdSB0YWtlLCBldmVuIGlmIGl0J3MganVzdCBhbiBoZXJiYWwgc3VwcGxlbWVudCBvcgpvdmVyIHRoZSBjb3VudGVyIG1lZGljYXRpb25zLgogCklmIHlvdSBoYXZlIGFueSBxdWVzdGlvbnMsIHBsZWFzZSBub3RpZnkgYW4gYXNzaXN0YW50IGJlZm9yZSB5b3UgbGVhdmUuICBJZiB5b3UKbmVlZCB0byByZWZpbGwgYSBtZWRpY2F0aW9uLCBwbGVhc2UgY2FsbCAxLTg4OC00MDAtODM4NwogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiAKTkVXIEFORCBESVNDT05USU5VRUQgTUVESUNBVElPTlMKIAogCllvdXIgcHJvdmlkZXIgaGFzIE5PVCBwcmVzY3JpYmVkIGFueSBuZXcgbWVkaWNhdGlvbnMgdG9kYXkuCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KIApZb3VyIHByb3ZpZGVyIGhhcyBOT1QgZGlzY29udGludWVkIGFueSBvZiB5b3VyIG1lZGljYXRpb25zIHRvZGF5LgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCiAKQ09OVElOVUVEIE1FRElDQVRJT05TIChhY3RpdmUgVkEgYW5kIG5vbi1WQSBtZWRzKQogClRoZXNlIG1lZGljYXRpb25zIHdlcmUgbm90IGNoYW5nZWQgZHVyaW5nIHRoaXMgdmlzaXQuIFlvdSBzaG91bGQgY29udGludWUgdG8KdGFrZSB0aGVtIGFzIHByZXNjcmliZWQuCkFjdGl2ZSBNZWRpY2F0aW9ucwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KIDEpIEFjZXRhbWlub3BoZW4gNTAwTWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIGZvdXIgdGltZXMgYSBkYXkgYXMgbmVlZGVkICpkbwogICAgIE5vdCB0YWtlIG1vcmUgIHRoYW4gNCwwMDBtZyBhIGRheSBvZiBhY2V0YW1pbm9waGVuCiAgICAgRnJvbSBhbGwgc291cmNlcyBkdWUgdG8gcmlzayBvZiAgbGl2ZXIgZGFtYWdlLgogMikgQWxidXRlcm9sIDEwMC9JcHJhdHJvIDIwTWNnIDEyMEQgUG8gSW5obAogICAgIEluaGFsZSAxIHNwcmF5IGJ5IG1vdXRoIGZvdXIgdGltZXMgYSBkYXkgKGVhY2ggaW5oYWxlcgogICAgIENvbnRhaW5zIDEyMCAgc3ByYXlzKQogMykgQWxsb3B1cmlub2wgMTAwTWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIGV2ZXJ5IGRheQogNCkgQXNwaXJpbiAzMjVNZyBFYyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGggZXZlcnkgZGF5CiA1KSBCdXNwaXJvbmUgSGNsIDEwTWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIHR3aWNlIGEgZGF5IGFzIG5lZWRlZCBmb3IgYW54aWV0eQogNikgQ2Fwc2FpY2luIDAuMSUgQ3JlYW0KICAgICBBcHBseSBhIHNtYWxsIGFtb3VudCB0b3BpY2FsbHkgdHdpY2UgYSBkYXkKIDcpIENsb3BpZG9ncmVsIEJpc3VsZmF0ZSA3NU1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBldmVyeSBkYXkKIDgpIERpcGhlbmh5ZHJhbWluZSBIY2wgMjVNZyBDYXAKICAgICBUYWtlIG9uZSBjYXBzdWxlIGJ5IG1vdXRoIGZvdXIgdGltZXMgYSBkYXkgYXMgbmVlZGVkCiA5KSBGbHVveGV0aW5lIEhjbCAxME1nIENhcAogICAgIFRha2Ugb25lIGNhcHN1bGUgYnkgbW91dGggZXZlcnkgZGF5CjEwKSBGbHV0aWNhcyA1MDAvU2FsbWV0ZXJvbCA1MCBJbmhsIERpc2sgNjAKICAgICBJbmhhbGUgMSBpbmhhbGF0aW9uIGJ5IG1vdXRoIHR3aWNlIGEgZGF5IHJpbnNlIG1vdXRoIGFuZAogICAgIFNwaXQgYWZ0ZXIgIHVzZS4gRGlzY2FyZCAxIG1vbnRoIGFmdGVyIG9wZW5pbmcgZm9pbCBwb3VjaC4KMTEpIEZvbGljIEFjaWQgMU1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCBldmVyeSBkYXkKMTIpIEdsaXBpemlkZSA1TWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIHR3aWNlIGEgZGF5IGZvciBkaWFiZXRlcy4gVGFrZQogICAgIDMwIE1pbnV0ZXMgIGJlZm9yZSBhIG1lYWwuCjEzKSBIeWRyb2NobG9yb3RoaWF6aWRlIDI1TWcgVGFiCiAgICAgVGFrZSB0d28gdGFibGV0cyBieSBtb3V0aCBldmVyeSBtb3JuaW5nIGZvciBibG9vZCBwcmVzc3VyZQoxNCkgSHlkcm9jb3J0aXNvbmUgMSUgQ3JlYW0KICAgICBBcHBseSB0aGluIGZpbG0gdG9waWNhbGx5IGV2ZXJ5IGRheQoxNSkgSWJ1cHJvZmVuIDQwME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCB0aHJlZSB0aW1lcyBhIGRheSBhcyBuZWVkZWQKMTYpIEluc3VsaW4gUmVnIDEwMFUvbWwgSW5qIDEwTWwgVmwKICAgICBJbmplY3QgNSB1bml0cyBzdWJjdXRhbmVvdXNseSBhcyBkaXJlY3RlZAoxNykgTWV0Zm9ybWluIEhjbCA1MDBNZyBUYWIKICAgICBUYWtlIG9uZSB0YWJsZXQgYnkgbW91dGggZXZlcnkgZGF5CjE4KSBNZXRvcHJvbG9sIFN1Y2NpbmF0ZSAyNU1nIFNhIFRhYgogICAgIFRha2UgdHdvIHRhYmxldHMgYnkgbW91dGggZXZlcnkgZGF5CjE5KSBNdWx0aXZpdGFtaW4gQ2FwL3RhYgogICAgIFRha2UgMSBjYXAvdGFiIGJ5IG1vdXRoIGV2ZXJ5IGRheQoyMCkgT21lcHJhem9sZSAyME1nIEVjIENhcAogICAgIFRha2Ugb25lIGNhcHN1bGUgYnkgbW91dGggZXZlcnkgZGF5CjIxKSBQaW9nbGl0YXpvbmUgSGNsIDE1TWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoIGV2ZXJ5IGRheQoyMikgUHJhdmFzdGF0aW4gTmEgODBNZyBUYWIKICAgICBUYWtlIG9uZS1oYWxmIHRhYmxldCBieSBtb3V0aCBldmVyeSBldmVuaW5nIHRvIGxvd2VyIHlvdXIKICAgICBDaG9sZXN0ZXJvbAoyMykgVGFtc3Vsb3NpbiBIY2wgMC40TWcgQ2FwCiAgICAgVGFrZSBvbmUgY2Fwc3VsZSBieSBtb3V0aCBhdCBiZWR0aW1lCjI0KSBUaW90cm9waXVtIDE4TWNnIEluaGwgQ2FwIDMwCiAgICAgUGxhY2UgMSBjYXBzdWxlICgxOCBtY2cpIGluIGluaGFsZXIsIGluaGFsZSBieSBtb3V0aCBldmVyeQogICAgIERheSAgcmVwbGFjZXMgaXByYXRyb3BpdW0gKGF0cm92ZW50L2NvbWJpdmVudCksIGZvcgogICAgIEluaGFsZXIgdXNlIG9ubHkKIApBY3RpdmUgTm9uLVZBIE1lZGljYXRpb25zOgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KIDEpIEFjZXRhbWlub3BoZW4gNTAwTWcgVGFiCiAgICAgVGFrZSBvbmUgdGFibGV0IGJ5IG1vdXRoCiAyKSBBbWlvZGFyb25lIEhjbCAoUGFjZXJvbmUpIDIwME1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aCBldmVyeSBkYXkKIDMpIEFzcGlyaW4KICAgICBUYWtlICBieSBtb3V0aCBldmVyeSBkYXkKIDQpIENsb3BpZG9ncmVsIEJpc3VsZmF0ZSA3NU1nIFRhYgogICAgIFRha2Ugb25lIHRhYmxldCBieSBtb3V0aAogNSkgTXVsdGl2aXRhbWluIENhcC90YWIKICAgICBUYWtlIDEgY2FwL3RhYiBieSBtb3V0aCBldmVyeSBkYXkKIAogIFlvdSBoYXZlIDI5IGFjdGl2ZSBtZWRpY2F0aW9ucwogCiAKKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogCllvdXIgUHJpbWFyeSBDYXJlIFByb3ZpZGVyIGlzOiBVbmtub3duCiAKI0ZVVFVSRSBBUFBPSU5UTUVOVFM6CkZ1dHVyZSBBcHBvaW50bWVudHM6Ck5vIGZ1dHVyZSBhcHBvaW50bWVudHMgb24gZmlsZQogCiNMQUJTIHRoYXQgd2VyZSBvcmRlcmVkIHRvZGF5OiAgIE5vIHBlbmRpbmcgbGFicy4KIAojSU1BR0lORyBTVFVESUVTIHRoYXQgd2VyZSBvcmRlcmVkIGluIHRoZSBsYXN0IDMgbW9udGhzOiAgIE5PIHJlY2VudCBwZW5kaW5nClJhZGlvbG9neSBmb3VuZC4KIAogICsgSWYgYW4gaW1hZ2luZyBzdHVkeSAodWx0cmFzb3VuZCwgQ1QsIE1SSSwgZXRjKSBoYXMgYmVlbiBvcmRlcmVkLAogICAgcGxlYXNlIGNhbGwgdGhlIFBvcnRsYW5kIFZBIE1lZGljYWwgQ2VudGVyIEltYWdpbmcgU2NoZWR1bGluZyBudW1iZXIKICAgIHRvIG1ha2UgYXJyYW5nZW1lbnRzOiA1MDMtMjczLTUxMjYuCiAKI0NPTlNVTFRTIG9yIFBST0NFRFVSRVMgdGhhdCB3ZXJlIG9yZGVyZWQgaW4gdGhlIHBhc3Qgd2VlazogICBOTyByZWNlbnQgcGVuZGluZwpDb25zdWx0cyBmb3VuZC4KIApZb3VyIGhlYWx0aCBjYXJlIHRlYW0gbWF5IGhhdmUgZGlzY3Vzc2VkIHdoZXRoZXIgb3Igbm90IHlvdSB3ZXJlIGV4cG9zZWQgdG8gYW55CnBvdGVudGlhbCB0b3hpbnMvaGF6YXJkcyBkdXJpbmcgeW91ciBtaWxpdGFyeSBzZXJ2aWNlIGR1cmluZyB0aGlzIHZpc2l0LgogClRoaXMgaXMgcmVsYXRlZCB0byBhIG5ldyBUb3hpYyBFeHBvc3VyZSBTY3JlZW5pbmcgKFRFUykgcHJvZ3JhbSBpbiB0aGUgVkEuICBJZgp5b3UgYmVsaWV2ZSB5b3Ugd2VyZSBleHBvc2VkIHRvIHBvdGVudGlhbCB0b3hpbnMvaGF6YXJkcyBkdXJpbmcgeW91ciBzZXJ2aWNlLAp5b3UgY2FuIGdvIGhlcmUgdG8gbGVhcm4gbW9yZSBhYm91dCB3aGF0IHRoZSBWQSBpcyBkb2luZyB0byBzdXBwb3J0IG91cgpWZXRlcmFuczoKaHR0cHM6Ly93d3cud2FycmVsYXRlZGlsbG5lc3MudmEuZ292L1dBUlJFTEFURURJTExORVNTL2VkdWNhdGlvbi9sb2NhbC1vZmYKZXJpbmdzL3N1cHBvcnQvVG94aWNFeHBvc3VyZVNjcmVlbmluZ0VuZ2xpc2gucGRmCiAKSWYgeW91IGJlbGlldmUgeW91IHdlcmUgZXhwb3NlZCB0byBhZ2VudCBvcmFuZ2UsIGJ1cm4gcGl0cywgb3RoZXIgYWlyYm9ybmUKaGF6YXJkcywgcmFkaWF0aW9uLCBvciAgc2VydmVkIGluIEd1bGYgV2FyIHRoZWF0ZXJzLCB5b3UgbWF5IGJlIGVsaWdpYmxlIHRvCnBhcnRpY2lwYXRlIGluIGEgZnJlZSByZWdpc3RyeSBleGFtLiAgWW91IG1heSBjYWxsIDUwMy05MDYtNTEwMCBmb3IgbW9yZQppbmZvcm1hdGlvbi4KIApGb3IgSGVhbHRoY2FyZSBFbGlnaWJpbGl0eSBhbmQgRW5yb2xsbWVudCBxdWVzdGlvbnMsIGNvbnRhY3Qgb3VyIEVucm9sbG1lbnQKT2ZmaWNlIGF0IDUwMy0yNzMtNTA2OS4KIApGb3IgcXVlc3Rpb25zIGFib3V0IEJlbmVmaXRzIGFuZCBDbGFpbXMgeW91IGNhbiBmaW5kIGEgVmV0ZXJhbiBTZXJ2aWNlCk9yZ2FuaXphdGlvbiBPZmZpY2UgbmVhciB5b3UgYXQ6Cmh0dHBzOi8vd3d3LmViZW5lZml0cy52YS5nb3YvZWJlbmVmaXRzL3Zzby1zZWFyY2ggb3IgYnkgY2FsbGluZyBWQkEKMS04MDAtODI3LTEwMDAuCiAKSWYgeW91IGFyZSBpbnRlcmVzdGVkIGluIHBoeXNpY2FsIHRoZXJhcHksIHBsZWFzZSBjYWxsIHRoZSBudW1iZXIgYmVsb3cgdG8KYXJyYW5nZSBhbiBhcHBvaW50bWVudDoKQWxsIGNsaW5pY3M6ICAgICAgICAgICAgICg1MDMpMjczLTUwMTgKIAogCllvdXIgdml0YWxzIGZvciB0b2RheSBhcmU6CiAgQmxvb2QgUHJlc3N1cmUgLSAxMjUvODAgKDAxLzA4LzIwMjAgMTQ6MjcpCiAgV2VpZ2h0IC0gMjU1IGxiIFsxMTUuNjcga2ddICgwMS8wOC8yMDIwIDE0OjI3KQogIFBhaW4gTGV2ZWwgLSAwICgwMS8wOC8yMDIwIDE0OjI3KQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwogCklmIHlvdSBoYXZlIHF1ZXN0aW9ucyBvciBjb25jZXJucyBhZnRlciB0b2RheSwgcGxlYXNlIGNvbnRhY3QgdGhlIGNsaW5pYyBieQpjYWxsaW5nIDEtODAwLTk0OS0xMDA0LiBTZWxlY3Qgb3B0aW9uIDIgd2hlbiB0aGUgYXV0b21hdGVkIG1lc3NhZ2Ugc3RhcnRzLgoKCg=="
* content.attachment.title = "PC - AFTERVISIT SUMMARY"
* content.attachment.creation = "2023-01-27T11:56:00Z"
* context.related.reference = "#location-0"

Instance: ea96c04b-547f-4a0b-ac18-7da3f5976484
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 77429324"
Description: "PC - FOLLOW UP"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.77429324"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE OUTPATIENT NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2023-01-27T11:53:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2023-01-27T11:56:17Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUEMgLSBGT0xMT1cgVVAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgT1VUUEFUSUVOVCBOT1RFICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKQU4gMjcsIDIwMjNAMTE6NTMgICAgIEVOVFJZIERBVEU6IEpBTiAyNywgMjAyM0AxMTo1NDowMSAgICAgIAogICAgICBBVVRIT1I6IFdJTlRFUkJPVFRPTSxMSVNBIE0gIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKTkFNRTpNSFZaWlZJU05UV0VOVFksVEVTVCBQQVRJRU5UUiAgSkFOIDEsMjAwMQogClBST0JMRU1TOgpIeXBlcmthbGVtaWEgKFNDVCAxNDE0MDAwOSkgICAgICAgICAgICAgQUYtIEF0cmlhbCBGaWJyaWxsYXRpb24gKFNDVCA0OTQzNjAwNCkKQmFzYWwgQ2VsbCBDYXJjaW5vbWEgb2YgU2tpbiAoU0NUIDI1NDcwMVNsZWVwIEFwbmVhIChTQ1QgNzM0MzAwMDYpCkh5cGVydGVuc2l2ZSBoZWFydCBkaXNlYXNlIHdpdGhvdXQgY29uZ2VEaWFiZXRlcyBNZWxsaXR1cyBUeXBlIDIgKFNDVCA0NDA1NDAwNikKRmx5aW5nIHBob2JpYSAoU0NUIDI0Nzg1NDAwMikgICAgICAgICAgIE1lZGljYWwgZXhhbWluYXRpb25zL3JlcG9ydHMgc3RhdHVzIChTQ1QgCjMxMDM2NjAwOCkKU2Vhc29uYWwgYWxsZXJnaWMgcmhpbml0aXMgKFNDVCAzNjc0OTgwMAogClNVQkpFQ1RJVkU6IE1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSIGlzIGEgMjIgWU9NQUxFIGhlcmUgZm9yCiAKIApNRURJQ0FUSU9OUzoKQWN0aXZlIE91dHBhdGllbnQgTWVkaWNhdGlvbnMgKGluY2x1ZGluZyBTdXBwbGllcyk6CiAKICAgICBBY3RpdmUgT3V0cGF0aWVudCBNZWRpY2F0aW9ucyAgICAgICAgICAgICAgICAgICAgICAgICAgU3RhdHVzCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KMSkgICBBQ0VUQU1JTk9QSEVOIDUwME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRk9VUiAgSE9MRAogICAgICAgVElNRVMgQSBEQVkgQVMgTkVFREVEICpETyBOT1QgVEFLRSBNT1JFIFRIQU4KICAgICAgIDQsMDAwTUcgQSBEQVkgT0YgQUNFVEFNSU5PUEhFTiBGUk9NIEFMTCBTT1VSQ0VTIERVRQogICAgICAgVE8gUklTSyBPRiBMSVZFUiBEQU1BR0UuCjIpICAgQUxCVVRFUk9MIDEwMC9JUFJBVFJPIDIwTUNHIDEyMEQgUE8gSU5ITCBJTkhBTEUgMSAgICAgIEFDVElWRSAoUykKICAgICAgIFNQUkFZIEJZIE1PVVRIIEZPVVIgVElNRVMgQSBEQVkgKEVBQ0ggSU5IQUxFUgogICAgICAgQ09OVEFJTlMgMTIwIFNQUkFZUykKMykgICBBTENPSE9MIFBSRVAgUEFEIFVTRSBQQUQgVE9QSUNBTExZIEFTIERJUkVDVEVEICAgICAgICAgQUNUSVZFIChTKQo0KSAgIEFMTE9QVVJJTk9MIDEwME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgICBBQ1RJVkUgKFMpCiAgICAgICBEQVkKNSkgICBBU1BJUklOIDMyNU1HIEVDIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgICAgSE9MRAogICAgICAgREFZCjYpICAgQlVTUElST05FIEhDTCAxME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggVFdJQ0UgIEFDVElWRSAoUykKICAgICAgIEEgREFZIEFTIE5FRURFRCBGT1IgQU5YSUVUWQo3KSAgIENBUFNBSUNJTiAwLjElIENSRUFNIEFQUExZIEEgU01BTEwgQU1PVU5UIFRPUElDQUxMWSAgICBBQ1RJVkUKICAgICAgIFRXSUNFIEEgREFZCjgpICAgQ0xPUElET0dSRUwgQklTVUxGQVRFIDc1TUcgVEFCIFRBS0UgT05FIFRBQkxFVCBFVkVSWSAgIEFDVElWRQogICAgICAgREFZCjkpICAgRElQSEVOSFlEUkFNSU5FIEhDTCAyNU1HIENBUCBUQUtFIE9ORSBDQVBTVUxFIEJZICAgICAgIEFDVElWRQogICAgICAgTU9VVEggRk9VUiBUSU1FUyBBIERBWSBBUyBORUVERUQKMTApICBGTFVPWEVUSU5FIEhDTCAxME1HIENBUCBUQUtFIE9ORSBDQVBTVUxFIEJZIE1PVVRIICAgICAgQUNUSVZFCiAgICAgICBFVkVSWSBEQVkKMTEpICBGTFVUSUNBUyA1MDAvU0FMTUVURVJPTCA1MCBJTkhMIERJU0sgNjAgSU5IQUxFIDEgICAgICAgQUNUSVZFCiAgICAgICBJTkhBTEFUSU9OIEJZIE1PVVRIIFRXSUNFIEEgREFZIFJJTlNFIE1PVVRIIEFORAogICAgICAgU1BJVCBBRlRFUiBVU0UuIERJU0NBUkQgMSBNT05USCBBRlRFUiBPUEVOSU5HIEZPSUwKICAgICAgIFBPVUNILgoxMikgIEZPTElDIEFDSUQgMU1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgREFZICBBQ1RJVkUKMTMpICBHTElQSVpJREUgNU1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggVFdJQ0UgQSAgICAgQUNUSVZFCiAgICAgICBEQVkgRk9SIERJQUJFVEVTLiBUQUtFIDMwIE1JTlVURVMgQkVGT1JFIEEgTUVBTC4KMTQpICBHTFVDT1NUSVggR0xVQ09TRSBURVNUIFNUUklQIFVTRSAxIFNUUklQIElURU0gQVMgICAgICAgQUNUSVZFCiAgICAgICBESVJFQ1RFRAoxNSkgIEhZRFJPQ0hMT1JPVEhJQVpJREUgMjVNRyBUQUIgVEFLRSBUV08gVEFCTEVUUyBCWSAgICAgICBBQ1RJVkUKICAgICAgIE1PVVRIIEVWRVJZIE1PUk5JTkcgRk9SIEJMT09EIFBSRVNTVVJFCjE2KSAgSFlEUk9DT1JUSVNPTkUgMSUgQ1JFQU0gQVBQTFkgVEhJTiBGSUxNIFRPUElDQUxMWSAgICAgIEFDVElWRQogICAgICAgRVZFUlkgREFZCjE3KSAgSUJVUFJPRkVOIDQwME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggVEhSRUUgICAgIEFDVElWRQogICAgICAgVElNRVMgQSBEQVkgQVMgTkVFREVECjE4KSAgSU5TVUxJTiBSRUcgMTAwVS9NTCBJTkogMTBNTCBWTCBJTkpFQ1QgNSBVTklUUyAgICAgICAgIEFDVElWRQogICAgICAgU1VCQ1VUQU5FT1VTTFkgQVMgRElSRUNURUQKMTkpICBNRVRGT1JNSU4gSENMIDUwME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggICAgICAgQUNUSVZFCiAgICAgICBFVkVSWSBEQVkKMjApICBNRVRPUFJPTE9MIFNVQ0NJTkFURSAyNU1HIFNBIFRBQiBUQUtFIFRXTyBUQUJMRVRTIEJZICAgQUNUSVZFCiAgICAgICBNT1VUSCBFVkVSWSBEQVkKMjEpICBNVUxUSVZJVEFNSU4gQ0FQL1RBQiBUQUtFIDEgQ0FQL1RBQiBCWSBNT1VUSCBFVkVSWSAgICAgQUNUSVZFCiAgICAgICBEQVkKMjIpICBORUVETEUgMjVHIDEuNUlOIFVTRSBPTkUgSVRFTSBBUyBESVJFQ1RFRCAgICAgICAgICAgICAgQUNUSVZFCjIzKSAgT01FUFJBWk9MRSAyME1HIEVDIENBUCBUQUtFIE9ORSBDQVBTVUxFIEJZIE1PVVRIICAgICAgIEFDVElWRQogICAgICAgRVZFUlkgREFZCjI0KSAgUElPR0xJVEFaT05FIEhDTCAxNU1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggICAgIEFDVElWRQogICAgICAgRVZFUlkgREFZCjI1KSAgUFJBVkFTVEFUSU4gTkEgODBNRyBUQUIgVEFLRSBPTkUtSEFMRiBUQUJMRVQgQlkgTU9VVEggIEFDVElWRQogICAgICAgRVZFUlkgRVZFTklORyBUTyBMT1dFUiBZT1VSIENIT0xFU1RFUk9MCjI2KSAgVEFNU1VMT1NJTiBIQ0wgMC40TUcgQ0FQIFRBS0UgT05FIENBUFNVTEUgQlkgTU9VVEggQVQgIEFDVElWRQogICAgICAgQkVEVElNRQoyNykgIFRJT1RST1BJVU0gMThNQ0cgSU5ITCBDQVAgMzAgUExBQ0UgMSBDQVBTVUxFICgxOCBNQ0cpICBBQ1RJVkUKICAgICAgIElOIElOSEFMRVIsIElOSEFMRSBCWSBNT1VUSCBFVkVSWSBEQVkgUkVQTEFDRVMKICAgICAgIElQUkFUUk9QSVVNIChBVFJPVkVOVC9DT01CSVZFTlQpLCBGT1IgSU5IQUxFUiBVU0UKICAgICAgIE9OTFkKIAogICAgIEFjdGl2ZSBOb24tVkEgTWVkaWNhdGlvbnMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTdGF0dXMKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoxKSAgIE5vbi1WQSBBQ0VUQU1JTk9QSEVOIDUwME1HIFRBQiA1MDBNRyBNT1VUSCAgICAgICAgICAgICBBQ1RJVkUKMikgICBOb24tVkEgQU1JT0RBUk9ORSBIQ0wgKFBBQ0VST05FKSAyMDBNRyBUQUIgMjAwTUcgICAgICAgQUNUSVZFCiAgICAgICBNT1VUSCBFVkVSWSBEQVkKMykgICBOb24tVkEgQVNQSVJJTiBUQUIsRUMgIE1PVVRIIEVWRVJZIERBWSAgICAgICAgICAgICAgICAgQUNUSVZFCjQpICAgTm9uLVZBIENMT1BJRE9HUkVMIEJJU1VMRkFURSA3NU1HIFRBQiA3NU1HIE1PVVRIICAgICAgIEFDVElWRQo1KSAgIE5vbi1WQSBNVUxUSVZJVEFNSU4gQ0FQL1RBQiAxIENBUC9UQUIgTU9VVEggRVZFUlkgREFZICBBQ1RJVkUKIAozMiBUb3RhbCBNZWRpY2F0aW9ucwogCkFMTEVSR0lFUzoKICBQRU5JQ0lMTElOLCBTVUxGQSBEUlVHUywgRUdHUywgTUFBTE9YIEFOVEFDSUQsIEFESEVTSVZFIFRBUEUsIFRFVFJBQ1lDTElORQogIFBSQVpPU0lOLCBMSVNJTk9QUklMCiAKUEhZU0lDQUwgRVhBTToKQlAxMjUvODAgKDAxLzA4LzIwMjAgMTQ6MjcpICBQNjcgKDAxLzA4LzIwMjAgMTQ6MjcpICBSUjEyICgwMS8wOC8yMDIwIDE0OjI3KSAKVDk4LjggRiBbMzcuMSBDXSAoMDEvMDgvMjAyMCAxNDoyNykKV1QyNTUgbGIgWzExNS42NyBrZ10gKDAxLzA4LzIwMjAgMTQ6MjcpCiAKQVBQRUFSQU5DRTogIFdFTEwgQVBQRUFSSU5HLCBJTiBOQUQKSEVFTlQ6ICBBVC9OQywgUEVFUkxBLCBFT01JCk5FQ0s6ICBOTyBOT0RFUyBPUiBNQVNTRVMKTFVOR1M6ICBDVEEgQklMQVRFUkFMTFkKQ09SOiAgUlJSLCBOTyBNUkcKQUJET01FTjogTk8gTUFTU0VTIElOIEFMTCA0IFFVQURSQU5UUywgTk8gSFNNCkVYVDogIE5PIEMvQy9FLCBEUCAyKyBCSUxBVCwgU0VOU0FUSU9OIElOIFRBQ1QKR1U6CiAKTGFiczoKIApjaG9sZXN0ZXJvbCAgICAgICBObyBDSE9MRVNURVJPTCBpbiB0aGUgbGFzdCAxWQpoZGwgICAgICAgICAgICAgICBObyBIREwgaW4gdGhlIGxhc3QgMVkKbGRsIGNhbGMgICAgICAgICAgTm8gTERMLUNIT0wgQ0FMQyBpbiB0aGUgbGFzdCAxWQp0cmlncyAgICAgICAgICAgICBObyBUUklHTFlDRVJJREVTIGluIHRoZSBsYXN0IDFZCmZlcnJpdGluICAgICAgICAgIE5vIEZFUlJJVElOIGluIHRoZSBsYXN0IDFZCkhDVCAgICAgICAgICAgICAgIE5vIEhDVCBpbiB0aGUgbGFzdCAxWQpIZW1vZ2xvYmluICAgICAgICBUaGUgT0JKRUNUIExBQi1IR0JBMUMgd2FzIE5PVCBmb3VuZC4uLkNvbnRhY3QgSVJNLgpQU0EgICAgICAgICAgICAgICBObyBQUk9TVEFUSUMgU1BFQ0lGSUMgQU5USUdFTiBpbiB0aGUgbGFzdCAxWQogCk5vIENCQyBpbiB0aGUgcGFzdCAxWQogCk5vIEJBU0lDIE1FVEFCT0xJQyBQQU5FTCBpbiB0aGUgcGFzdCAxWQpObyBHVUFJQUMgR0FTVFJJQyBpbiB0aGUgbGFzdCAxWU5vIEhFTU9HTE9CSU4gQTFDIGluIHRoZSBsYXN0IDFZTm8gWlpIRVBBVElUSVMgQSAKQU5USUJPRFkgVE9UQUwgaW4gdGhlIGxhc3QgMVlObyBIRVBBVElUSVMgQiBTVVJGQUNFIEFOVElHRU4gaW4gdGhlIGxhc3QgMVlObyAKSEVQQyBBTlRJQk9EWSAoU0VFIFBBTkVMICM2NzI3KSBpbiB0aGUgbGFzdCAxWQogCk5vIExJVkVSIEZVTkNUSU9OIFBBTkVMIGluIHRoZSBwYXN0IDFZCk5vIE1JQ1JPQUxCVU1JTi9DUkVBVElOSU5FIFJBVElPIGluIHRoZSBsYXN0IDFZCk5vIFVBIERJUFNUSUNLIE9OTFkgaW4gdGhlIHBhc3QgMVkKIAogCiAKSU1QUkVTU0lPTjogIE1IVlpaVklTTlRXRU5UWSxURVNUIFBBVElFTlRSIGlzIGEgMjIgWU9NQUxFIGhlcmUgZm9yCiAKUFJPQkxFTVM6CiAKIAovZXMvIExJU0EgTSBXSU5URVJCT1RUT00sIE0uRC4KU3RhZmYgUGh5c2ljaWFuClNpZ25lZDogMDEvMjcvMjAyMyAxMTo1Ngo="
* content.attachment.title = "PC - FOLLOW UP"
* content.attachment.creation = "2023-01-27T11:53:00Z"
* context.related.reference = "#location-0"

Instance: 6f427bef-053a-4b68-b270-fc55f55bfcc6
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76750716"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.347662"
* contained[=].name.text = "AMSDEN,NIKI D"
* contained[=].name.family = "AMSDEN,NIKI D"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.347662"
* contained[=].name.text = "AMSDEN,NIKI D"
* contained[=].name.family = "AMSDEN,NIKI D"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76750716"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-12-07T11:21:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-12-07T08:21:11Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBERUMgMDcsIDIwMjJAMTE6MjEgICAgIEVOVFJZIERBVEU6IERFQyAwNywgMjAyMkAwODoyMToxMSAgICAgIAogICAgICBBVVRIT1I6IEFNU0RFTixOSUtJIEQgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEyLzA3LzIwMjIgMTE6MTggQU0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIFdlc3QgTGlubiBCZWhhdmlvcmFsIEhlYWx0aF9WQVBvcnRsYW5kSENTX01IIApTdWJqZWN0OiAgR2VuZXJhbDpUZXN0IE1lc3NhZ2UgZm9yIE5pa2kgCgpzZGpjbmxrc2pkaGxrc2QgIAphc2Rjc2RmU0QgIAogIApGbHUgU2hvdCBJbmZvOiBodHRwczovL3d3dy5wb3J0bGFuZC52YS5nb3YvbmV3cy9mbHVzaG90cy5hc3AgIApodHRwczovL3d3dy52YS5nb3YvZGlyZWN0b3J5L2d1aWRlL3JlZ2lvbi5hc3A/SUQ9MTAyMD8KLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEyLzA3LzIwMjIgMTE6MjAgQU0gRVQgCkZyb206ICBBTVNERU4sIE5JS0kgIEQgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6VGVzdCBNZXNzYWdlIGZvciBOaWtpIAoKVGhhbmsgeW91IAoKIAovZXMvIE5JS0kgRCBBTVNERU4sIFBIRApCSElQIFBTWUNIT0xPR0lTVApTaWduZWQ6IDEyLzA3LzIwMjIgMDg6MjEK"
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2022-12-07T11:21:00Z"
* context.related.reference = "#location-0"

Instance: 02adeb96-f116-4688-9917-80cf12a2bf7b
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76666064"
Description: "INPAT - MED - ATT - ADMIT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.42803"
* contained[=].name.text = "SEGURA,JENNIFER RENEE"
* contained[=].name.family = "SEGURA,JENNIFER RENEE"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.42803"
* contained[=].name.text = "SEGURA,JENNIFER RENEE"
* contained[=].name.family = "SEGURA,JENNIFER RENEE"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76666064"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "ATTENDING ADMISSION EVALUATION NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-11-30T16:23:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-11-30T16:34:04Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogSU5QQVQgLSBNRUQgLSBBVFQgLSBBRE1JVCAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBBVFRFTkRJTkcgQURNSVNTSU9OIEVWQUxVQVRJT04gTk9URSAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBOT1YgMzAsIDIwMjJAMTY6MjMgICAgIEVOVFJZIERBVEU6IE5PViAzMCwgMjAyMkAxNjoyMzoyNyAgICAgIAogICAgICBBVVRIT1I6IFNFR1VSQSxKRU5OSUZFUiBSRU4gIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQ0xJTklDQUwgUkVNSU5ERVIgQUNUSVZJVFkKICBUb3hpYyBFeHBvc3VyZSBTY3JlZW5pbmc6CiAgICBUaGUgVmV0ZXJhbi9jYXJlZ2l2ZXIgd2FzIGFza2VkIGlmIHRoZXkgYmVsaWV2ZSB0aGUgVmV0ZXJhbiBleHBlcmllbmNlZCBhbnkgCiAgICB0b3hpYyBleHBvc3VyZShzKSwgc3VjaCBhcyBPcGVuIEJ1cm4gUGl0cy9BaXJib3JuZSBIYXphcmRzLCBHdWxmIFdhciAKICAgIHJlbGF0ZWQgZXhwb3N1cmVzLCBBZ2VudCBPcmFuZ2UsIFJhZGlhdGlvbiwgY29udGFtaW5hdGVkIHdhdGVyIGF0IENhbXAgCiAgICBMZWpldW5lIG9yIG90aGVyIHN1Y2ggZXhwb3N1cmVzLCB3aGlsZSBzZXJ2aW5nIGluIHRoZSBBcm1lZCBGb3JjZXMuCiAKICAgICAgVmV0ZXJhbi9jYXJlZ2l2ZXIgZG9lc24ndCBrbm93IG9mIGNvbmNlcm5zIGFib3V0IFZldGVyYW4gZXhwb3N1cmUgdG8gCiAgICAgIGhhcm1mdWwgc3Vic3RhbmNlcyB3aGlsZSBzZXJ2aW5nIGluIHRoZSBBcm1lZCBGb3JjZXMuCiAgICAgICAgUHJpbnRlZCBpbmZvcm1hdGlvbiB3YXMgb2ZmZXJlZCBhbmQgY29udGFjdCBpbmZvcm1hdGlvbiBmb3IgbG9jYWwgCiAgICAgICAgcmVzb3VyY2VzIHdlcmUgcHJvdmlkZWQgaWYgcmVxdWVzdGVkLgogCiAgICAgICAgVmV0ZXJhbi9jYXJlZ2l2ZXIgZG9lcyBub3QgaGF2ZSBxdWVzdGlvbnMgYXQgdGhpcyB0aW1lLgogICAgICAgICAgVmV0ZXJhbi9jYXJlZ2l2ZXIgd2FzIGluZm9ybWVkIG9mIGxvY2FsIHBvaW50cyBvZiBjb250YWN0LgogCiAgICAgICAgQ29udGFjdCBpbmZvcm1hdGlvbiBmb3IgbG9jYWwgcmVzb3VyY2VzOgogCiAgICAgICAgRm9yIHF1ZXN0aW9ucyBhYm91dCBURVMgUmVnaXN0cnkgUHJvZ3JhbSwgVmV0ZXJhbiBtYXkgY2FsbCA1MDMtOTA2LTUxMDAKIAogICAgICAgIEZvciBhZGRpdGlvbmFsIGFzc2lzdGFuY2Ugd2l0aCBURVMgUHJvZ3JhbSwgVmV0ZXJhbiBtYXkgY29udGFjdCBsb2NhbAogICAgICAgIFRFUyBOYXZpZ2F0b3IgdGVhbSBhdCA1MDMtMjczLTUwNzUKIAogICAgICAgIEZvciBIZWFsdGhjYXJlIEVsaWdpYmlsaXR5IGFuZCBFbnJvbGxtZW50IHF1ZXN0aW9ucywgVmV0ZXJhbiBtYXkKICAgICAgICBjb250YWN0IGxvY2FsIEVucm9sbG1lbnQgT2ZmaWNlIGF0IDUwMy0yNzMtNTA2OQogCiAgICAgICAgRm9yIHF1ZXN0aW9ucyBhYm91dCBCZW5lZml0cyBhbmQgQ2xhaW1zIFZldGVyYW4gbWF5IGNvbnRhY3QgVmV0ZXJhbgogICAgICAgIGluc3RydWN0ZWQgdG8gd29yayB0aHJvdWdoIGxvY2FsIFZldGVyYW4gU2VydmljZSBPcmdhbml6YXRpb24gT2ZmaWNlIGF0CiAgICAgICAgaHR0cHM6Ly93d3cuZWJlbmVmaXRzLnZhLmdvdi9lYmVuZWZpdHMvdnNvLXNlYXJjaAogCi9lcy8gSi4gUkVORUUgU0VHVVJBLCBNRApTdGFmZiBBdHRlbmRpbmcKU2lnbmVkOiAxMS8zMC8yMDIyIDE2OjM0Cg=="
* content.attachment.title = "INPAT - MED - ATT - ADMIT"
* content.attachment.creation = "2022-11-30T16:23:00Z"
* context.related.reference = "#location-0"

Instance: 22edbda8-1800-49c9-a44d-e98ec6ec9957
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76264996"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76264996"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-31T16:19:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-31T14:19:31Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMzEsIDIwMjJAMTY6MTkgICAgIEVOVFJZIERBVEU6IE9DVCAzMSwgMjAyMkAxNDoxOTozMSAgICAgIAogICAgICBBVVRIT1I6IFdSSUdIVCxEQU5JRUwgRSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEwLzMxLzIwMjIgMDI6MzMgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE1ISUNNX1ZBUG9ydGxhbmRIQ1NfTUggClN1YmplY3Q6ICBHZW5lcmFsOlRlc3RpbmcgMS4uLiAKCkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQuIFV0IGNvbnNlY3RldHVyIG9ybmFyZSAKYXVndWUuIE51bmMgc2VkIHNvZGFsZXMgbGlndWxhLCBpZCBsb2JvcnRpcyBuaWJoLiAgIAogIAogIApGbHUgU2hvdCBJbmZvOiBodHRwczovL3d3dy5wb3J0bGFuZC52YS5nb3YvbmV3cy9mbHVzaG90cy5hc3AgIApodHRwczovL3d3dy52YS5nb3YvZGlyZWN0b3J5L2d1aWRlL3JlZ2lvbi5hc3A/SUQ9MTAyMD8KLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEwLzMxLzIwMjIgMDU6MTggUE0gRVQgCkZyb206ICBXUklHSFQsIERBTklFTCAgRSAKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApTdWJqZWN0OiAgR2VuZXJhbDpUZXN0aW5nIDEuLi4gCgp0aGlzIGlzIGEgcmVwbHkgIAogIAogIAogIApEYW5pZWwgV3JpZ2h0LCBMQ1NXICAKVGVhbSBMZWFkL0Nhc2UgTWFuYWdlciwgTUhJQ00gCgogCi9lcy8gRGFuaWVsIEUuIFdyaWdodCwgTENTVwpMaWNlbnNlZCBDbGluaWNhbCBTb2NpYWwgV29ya2VyClNpZ25lZDogMTAvMzEvMjAyMiAxNDoxOQo="
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2022-10-31T16:19:00Z"
* context.related.reference = "#location-0"

Instance: d59cb213-6460-40d2-8b8d-c2d43405d157
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76263140"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76263140"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-31T15:24:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-31T13:24:03Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMzEsIDIwMjJAMTU6MjQgICAgIEVOVFJZIERBVEU6IE9DVCAzMSwgMjAyMkAxMzoyNDowMyAgICAgIAogICAgICBBVVRIT1I6IFdSSUdIVCxEQU5JRUwgRSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEwLzMxLzIwMjIgMDI6MzYgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE1ISUNNX1ZBUG9ydGxhbmRIQ1NfTUggClN1YmplY3Q6ICBHZW5lcmFsOjMgCgpTZWQgY29udmFsbGlzIGNvbnZhbGxpcyBpcHN1bSwgaWQgbWF0dGlzIHR1cnBpcyB1bHRyaWNlcyBpZC4gSW4gdml2ZXJyYSBldWlzbW9kIAplcm9zLCBhYyBwb3N1ZXJlIHJpc3VzLiAgCiAgCiAgCnRoZSBiZWxvdyBpcyBqdXN0IHdoYXQgaSBwdXQgaW4gbXkgc2lnbmF0dXJlIGJveCAocHJlZnMpIGluc3RlYWQgb2YgbXkgCm5hbWUvdGl0bGU7IHlvdSd2ZSA2NiBjaGFyYWN0ZXJzIHBlciBsaW5lIHdpdGggd2hpY2ggdG8gd29yayBpZiB5b3Ugd2FudCB0byBnZXQgCmNyZWF0aXZlLiAgCiAgCkZsdSBTaG90IEluZm86IGh0dHBzOi8vd3d3LnBvcnRsYW5kLnZhLmdvdi9uZXdzL2ZsdXNob3RzLmFzcCAgCmh0dHBzOi8vd3d3LnZhLmdvdi9kaXJlY3RvcnkvZ3VpZGUvcmVnaW9uLmFzcD9JRD0xMDIwPwoKIAovZXMvIERhbmllbCBFLiBXcmlnaHQsIExDU1cKTGljZW5zZWQgQ2xpbmljYWwgU29jaWFsIFdvcmtlcgpTaWduZWQ6IDEwLzMxLzIwMjIgMTM6MjQK"
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2022-10-31T15:24:00Z"
* context.related.reference = "#location-0"

Instance: 6da04be0-2005-47ff-8164-27a12cc7db81
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76265401"
Description: "MHD - MHICM PROGRESS NOTE"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76265401"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH OUTPATIENT NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-31T14:32:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-31T14:32:51Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUhEIC0gTUhJQ00gUFJPR1JFU1MgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIE9VVFBBVElFTlQgTk9URSAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMzEsIDIwMjJAMTQ6MzIgICAgIEVOVFJZIERBVEU6IE9DVCAzMSwgMjAyMkAxNDozMjo1MSAgICAgIAogICAgICBBVVRIT1I6IFdSSUdIVCxEQU5JRUwgRSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKTUhEIC0gTUhJQ00gUFJPR1JFU1MgTk9URSAtIDMxIE9jdCwgMjAyMiBAIDAyOjMyUE0KVmlzaXQgRGF0ZTogIDMwIE5vdiwgMjAyMSBAIDExOjM5IC0gUE9SLVNFQ01TRy1NSCBDV1QvU0UtWAoKTUhUQyBub3QgYXNzaWduZWQKClRFQU0gTUVNQkVSUzoKV1JJR0hULERBTklFTCBFOiBTT0NJQUwgV09SS0VSCgpJTlRFUkRJU0NJUExJTkFSWSBJTlRFR1JBVEVEIFNVTU1BUlk6IApDaGllZiBDb21wbGFpbnQvSHggb2YgUHJlc2VudCBJbGxuZXNzCnZhZnYgYQoKRmFtaWx5IENpcmN1bXN0YW5jZXMKYVN2YVZCCgpJbnRlcnByZXRpdmUgU3VtbWFyeToKYWJyZmJhYmFiCgpUUkVBVE1FTlQgUExBTjogClByb2JsZW06IFByb2JsZW0vTmVlZDogW0FESlVTVE1FTlQgRElTT1JERVJdOiBJIGhhdmUgYmVlbiAKICAgICAgICAgZXhwZXJpZW5jaW5nIDRraWU2N2tpZSBpbiByZXNwb25zZSB0byA0aWs0cgogICAgR29hbDogSSB3YW50IHRvIHJlZHVjZSB0aGUgbGV2ZWwgb2YgbXkgZmVlbGluZ3MgCiAgICAgICAgICBvZiBkaXN0cmVzcy4KICAgIE9iamVjdGl2ZTogSSB3aWxsIHRha2UgbWVkaWNhdGlvbnMgYXMgcHJlc2NyaWJlZCB0byAKICAgICAgICAgICAgICAgcHJvbW90ZSBpbXByb3ZlbWVudCBpbiAgNHJpOC4gSW1wcm92ZW1lbnQgd2lsbCAKICAgICAgICAgICAgICAgYmUgbWVhc3VyZWQgdGhyb3VnaCBpbi1vZmZpY2UgYXNzZXNzbWVudCBhbmQgCiAgICAgICAgICAgICAgIHNlbGYtcmVwb3J0LiAgUHJvamVjdGVkIFRhcmdldCBEYXRlOiAxMS8wMS8yMDIyCiAgICAgICAgSW50ZXJ2ZW50aW9uOiBbUFNZQ0hPVEhFUkFQWV0gTXkgcHJvdmlkZXIgd2lsbCB3b3JrIAogICAgICAgICAgICAgICAgICAgICAgd2l0aCBtZSB0byBhY2hpZXZlIHRoaXMgZ29hbCBhbmQgCiAgICAgICAgICAgICAgICAgICAgICBvYmplY3RpdmUgdGhyb3VnaCByNmlrNHIgIFByb3ZpZGVyczogCiAgICAgICAgICAgICAgICAgICAgICBXUklHSFQsREFOSUVMIEUgIFRpbWUgRnJhbWU6IFR3byB0aW1lcyAKICAgICAgICAgICAgICAgICAgICAgIHBlciB3ZWVrIGZvciAxIHdlZWsKICAgICAgICAgICAgICAgVHJlYXRpbmcgU3BlY2lhbHR5OiBNSElDTQogICAgICAgICAgICAgICBSZW5ld2FsIERhdGU6IDA0LzI5LzIwMjMKICAgICAgICAgICAgICAgRW50ZXJlZCBUcmVhdG1lbnQ6IDEwLzMxLzIwMjIgQCAwMjozMFBNCiAgICAgICAgICAgICAgIEFudGljaXBhdGVkIERpc2NoYXJnZTogTm9uZQogICAgICAgICAgICAgICBBY3R1YWwgRGlzY2hhcmdlOiBOb25lCiAKL2VzLyBEYW5pZWwgRS4gV3JpZ2h0LCBMQ1NXCkxpY2Vuc2VkIENsaW5pY2FsIFNvY2lhbCBXb3JrZXIKU2lnbmVkOiAxMC8zMS8yMDIyIDE0OjMyCg=="
* content.attachment.title = "MHD - MHICM PROGRESS NOTE"
* content.attachment.creation = "2022-10-31T14:32:00Z"
* context.related.reference = "#location-0"

Instance: baa6cb68-782c-4ff4-b513-5caad0f1132e
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 76265366"
Description: "PROCEDURE - INTRAOSSEOUS VASCULAR ACCESS"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.154424"
* contained[=].name.text = "WRIGHT,DANIEL E"
* contained[=].name.family = "WRIGHT,DANIEL E"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.76265366"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PROCEDURE NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-31T14:31:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-31T14:31:31Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUFJPQ0VEVVJFIC0gSU5UUkFPU1NFT1VTIFZBU0NVTEFSIEFDQ0VTUyAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUk9DRURVUkUgTk9URSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMzEsIDIwMjJAMTQ6MzEgICAgIEVOVFJZIERBVEU6IE9DVCAzMSwgMjAyMkAxNDozMTozMSAgICAgIAogICAgICBBVVRIT1I6IFdSSUdIVCxEQU5JRUwgRSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQUNDRVNTICA8UFJPQ0VEVVJFIC0gSU5UUkFPU1NFT1VTIFZBU0NVTEFSIEFDQ0VTUz4gLSAzMSBPY3QsIDIwMjIgQCAwMjozMVBNClZpc2l0IERhdGU6ICA2IEp1bCwgMjAyMiBAIDExOjQyIC0gUE9SLVNFQ01TRy1NSCBJTkQtWAoKTUhUQyBub3QgYXNzaWduZWQKClRFQU0gTUVNQkVSUzoKV1JJR0hULERBTklFTCBFOiBTT0NJQUwgV09SS0VSCgpUUkVBVE1FTlQgUExBTjogClByb2JsZW06IFByb2JsZW0vTmVlZDogW0FESlVTVE1FTlQgRElTT1JERVJdOiBJIGhhdmUgYmVlbiAKICAgICAgICAgZXhwZXJpZW5jaW5nIDRraWU2N2tpZSBpbiByZXNwb25zZSB0byA0aWs0cgogICAgR29hbDogSSB3YW50IHRvIHJlZHVjZSB0aGUgbGV2ZWwgb2YgbXkgZmVlbGluZ3MgCiAgICAgICAgICBvZiBkaXN0cmVzcy4KICAgIE9iamVjdGl2ZTogSSB3aWxsIHRha2UgbWVkaWNhdGlvbnMgYXMgcHJlc2NyaWJlZCB0byAKICAgICAgICAgICAgICAgcHJvbW90ZSBpbXByb3ZlbWVudCBpbiAgNHJpOC4gSW1wcm92ZW1lbnQgd2lsbCAKICAgICAgICAgICAgICAgYmUgbWVhc3VyZWQgdGhyb3VnaCBpbi1vZmZpY2UgYXNzZXNzbWVudCBhbmQgCiAgICAgICAgICAgICAgIHNlbGYtcmVwb3J0LiAgUHJvamVjdGVkIFRhcmdldCBEYXRlOiAxMS8wMS8yMDIyCiAgICAgICAgSW50ZXJ2ZW50aW9uOiBbUFNZQ0hPVEhFUkFQWV0gTXkgcHJvdmlkZXIgd2lsbCB3b3JrIAogICAgICAgICAgICAgICAgICAgICAgd2l0aCBtZSB0byBhY2hpZXZlIHRoaXMgZ29hbCBhbmQgCiAgICAgICAgICAgICAgICAgICAgICBvYmplY3RpdmUgdGhyb3VnaCByNmlrNHIgIFByb3ZpZGVyczogCiAgICAgICAgICAgICAgICAgICAgICBXUklHSFQsREFOSUVMIEUgIFRpbWUgRnJhbWU6IFR3byB0aW1lcyAKICAgICAgICAgICAgICAgICAgICAgIHBlciB3ZWVrIGZvciAxIHdlZWsKICAgICAgICAgICAgICAgVHJlYXRpbmcgU3BlY2lhbHR5OiBNSElDTQogICAgICAgICAgICAgICBSZW5ld2FsIERhdGU6IDA0LzI5LzIwMjMKICAgICAgICAgICAgICAgRW50ZXJlZCBUcmVhdG1lbnQ6IDEwLzMxLzIwMjIgQCAwMjozMFBNCiAgICAgICAgICAgICAgIEFudGljaXBhdGVkIERpc2NoYXJnZTogTm9uZQogICAgICAgICAgICAgICBBY3R1YWwgRGlzY2hhcmdlOiBOb25lCiAKL2VzLyBEYW5pZWwgRS4gV3JpZ2h0LCBMQ1NXCkxpY2Vuc2VkIENsaW5pY2FsIFNvY2lhbCBXb3JrZXIKU2lnbmVkOiAxMC8zMS8yMDIyIDE0OjMxCgpSZWNlaXB0IEFja25vd2xlZGdlZCBCeToKMTAvMzEvMjAyMiAxNToxNiAgICAgICAgL2VzLyBMeW5uZSBBLiBMdWRlbWFuLCBQTUhOUC1CQyAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBzeWNoaWF0cmljIE5QICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCg=="
* content.attachment.title = "PROCEDURE - INTRAOSSEOUS VASCULAR ACCESS"
* content.attachment.creation = "2022-10-31T14:31:00Z"
* context.related.reference = "#location-0"

Instance: 9743570c-49cd-4d53-8ab5-1d846ad59a24
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 75912699"
Description: "ENDOCRINOLOGY SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.562335"
* contained[=].name.text = "MERRIWEATHER,YOLANDA A"
* contained[=].name.family = "MERRIWEATHER,YOLANDA A"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.562335"
* contained[=].name.text = "MERRIWEATHER,YOLANDA A"
* contained[=].name.family = "MERRIWEATHER,YOLANDA A"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.75912699"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "ENDOCRINOLOGY SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-05T13:31:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-05T11:31:54Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRU5ET0NSSU5PTE9HWSBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBFTkRPQ1JJTk9MT0dZIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDUsIDIwMjJAMTM6MzEgICAgIEVOVFJZIERBVEU6IE9DVCAwNSwgMjAyMkAxMTozMTo1NCAgICAgIAogICAgICBBVVRIT1I6IE1FUlJJV0VBVEhFUixZT0xBTkQgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgKioqIEVORE9DUklOT0xPR1kgU0VDVVJFIE1FU1NBR0lORyBIYXMgQURERU5EQSAqKioKCi0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gClNlbnQ6ICAxMC8wNS8yMDIyIDAyOjAxIFBNIEVUIApGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKVG86ICAqQ2FyZSBJbiBUaGUgQ29tbXVuaXR5X1ZBUG9ydGxhbmRIQ1MgClN1YmplY3Q6ICBHZW5lcmFsOlRyYWluaW5nIE1lc3NhZ2UgZm9yIFlvbGFuZGEgLSAzIAoKVGVzdCAzICAKICAKICAKRmx1IFNob3QgSW5mbzogaHR0cHM6Ly93d3cucG9ydGxhbmQudmEuZ292L25ld3MvZmx1c2hvdHMuYXNwICAKaHR0cHM6Ly93d3cudmEuZ292L2RpcmVjdG9yeS9ndWlkZS9yZWdpb24uYXNwP0lEPTEwMjA/Ci0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gClNlbnQ6ICAxMC8wNS8yMDIyIDAyOjI4IFBNIEVUIApGcm9tOiAgTUVSUklXRUFUSEVSLCBZT0xBTkRBICBBIApUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVCAgUEFUSUVOVFIgClN1YmplY3Q6ICBHZW5lcmFsOlRyYWluaW5nIE1lc3NhZ2UgZm9yIFlvbGFuZGEgLSAzIAoKUGxlYXNlIHJldmlldzogIAoKIAovZXMvIFlPTEFOREEgQSBNRVJSSVdFQVRIRVIKQU1TQQpTaWduZWQ6IDEwLzA1LzIwMjIgMTE6MzEKCjEwLzA4LzIwMjIgQURERU5EVU0gICAgICAgICAgICAgICAgICAgICAgU1RBVFVTOiBDT01QTEVURUQKdGVzdAogCi9lcy8gRVJJQ0sgSCBUVVJORVIsIE1EClN0YWZmIFBzeWNoaWF0cmlzdApTaWduZWQ6IDEwLzA4LzIwMjIgMDg6NTQK"
* content.attachment.title = "ENDOCRINOLOGY SECURE MESSAGING"
* content.attachment.creation = "2022-10-05T13:31:00Z"
* context.related.reference = "#location-0"

Instance: 1f9d61a4-23d2-486c-a48c-ac990883e5de
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 75866332"
Description: "MOVE SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.196951"
* contained[=].name.text = "MILLER,BRIAN K"
* contained[=].name.family = "MILLER,BRIAN K"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.75866332"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MOVE SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-10-03T08:34:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-10-03T06:34:14Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTU9WRSBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNT1ZFIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDMsIDIwMjJAMDg6MzQgICAgIEVOVFJZIERBVEU6IE9DVCAwMywgMjAyMkAwNjozNDoxNCAgICAgIAogICAgICBBVVRIT1I6IE1JTExFUixCUklBTiBLICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDEwLzAzLzIwMjIgMDk6MjggQU0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIE1IViBUZXN0IFRyaWFnZSBHcm91cCAKU3ViamVjdDogIEdlbmVyYWw6dGVzdCAKCkZsdSBTaG90IEluZm86IGh0dHBzOi8vd3d3LnBvcnRsYW5kLnZhLmdvdi9uZXdzL2ZsdXNob3RzLmFzcCAgCmh0dHBzOi8vd3d3LnZhLmdvdi9kaXJlY3RvcnkvZ3VpZGUvcmVnaW9uLmFzcD9JRD0xMDIwPwotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIApTZW50OiAgMTAvMDMvMjAyMiAwOTozMiBBTSBFVCAKRnJvbTogIE1JTExFUiwgQlJJQU4gIEsgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6dGVzdCAKCmRjU0RjU0RDU0RGICAKICAKICAKICAKR28gdG8gdGhlIG5ldyBWQSBQb3J0bGFuZCBIZWFsdGhDYXJlIFN5c3RlbSBIb21lcGFnZTogIApodHRwczovL3d3dy52YS5nb3YvcG9ydGxhbmQtaGVhbHRoLWNhcmUvCgogCi9lcy8gQlJJQU4gSyBNSUxMRVIgQkEKU0VDVVJFIE1FU1NBR0lORyBBRE1JTklTVFJBVE9SClNpZ25lZDogMTAvMDMvMjAyMiAwNjozNAo="
* content.attachment.title = "MOVE SECURE MESSAGING"
* content.attachment.creation = "2022-10-03T08:34:00Z"
* context.related.reference = "#location-0"

Instance: 779259b7-04c4-45a4-8c00-fb96e373902d
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 75540140"
Description: "PRIMARY CARE SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.387736"
* contained[=].name.text = "VANDERDASSON,JULEE"
* contained[=].name.family = "VANDERDASSON,JULEE"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.387736"
* contained[=].name.text = "VANDERDASSON,JULEE"
* contained[=].name.family = "VANDERDASSON,JULEE"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.75540140"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PRIMARY CARE SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-09-08T13:58:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-09-08T11:58:07Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUFJJTUFSWSBDQVJFIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUklNQVJZIENBUkUgU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMDgsIDIwMjJAMTM6NTggICAgIEVOVFJZIERBVEU6IFNFUCAwOCwgMjAyMkAxMTo1ODowNyAgICAgIAogICAgICBBVVRIT1I6IFZBTkRFUkRBU1NPTixKVUxFRSAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA5LzA3LzIwMjIgMDY6MDMgUE0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogICoqTWFsbGFidXJuX1ByaW1hcnlDYXJlX1ZBUG9ydGxhYm5kSENTX1RoZURhbGxlcyAKU3ViamVjdDogIEdlbmVyYWw6Rm9yIEthdGllIE1hbGxhYnVybiAtIFRlc3QgU2F2ZSBhcyBXb3JrbG9hZCBDcmVkaXQgCgpMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LiBWaXZhbXVzIHB1cnVzIGVyYXQsIApmZXVnaWF0IGEgYXVndWUgdXQsIG1hdHRpcyB2aXZlcnJhIGR1aS4gCi0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gClNlbnQ6ICAwOS8wOC8yMDIyIDAyOjU4IFBNIEVUIApGcm9tOiAgVkFOREVSREFTU09OLCBKVUxFRSAgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6Rm9yIEthdGllIE1hbGxhYnVybiAtIFRlc3QgU2F2ZSBhcyBXb3JrbG9hZCBDcmVkaXQgCgpJIHVuZGVyc3RhbmQgdGhhdCB5b3VyIHBhaW4gaXMgdmVyeSByZWFsLCBob3dldmVyLCBuYXJjb3RpYyBwYWluIG1lZGljYXRpb24gaXMgCm5vdCBhbiBvcHRpb24gYXQgdGhpcyBwb2ludC4gIAogIAogIAogIApKdWxlZSBWYW5kZXJkYXNzb24gIApMUE4KCiAKL2VzLyBKVUxFRSBWQU5ERVJEQVNTT04KTFBOClNpZ25lZDogMDkvMDgvMjAyMiAxMTo1OAoKUmVjZWlwdCBBY2tub3dsZWRnZWQgQnk6CjA5LzA5LzIwMjIgMDk6MjQgICAgICAgIC9lcy8gS0FUSUUgRC4gTUFMTEFCVVJOIFBBLUMgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQaHlzaWNpYW4gQXNzaXN0YW50ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo="
* content.attachment.title = "PRIMARY CARE SECURE MESSAGING"
* content.attachment.creation = "2022-09-08T13:58:00Z"
* context.related.reference = "#location-0"

Instance: fee0ea20-c28e-4a04-a01b-9ea731487597
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 75535810"
Description: "MENTAL HEALTH SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.356886"
* contained[=].name.text = "SINGH,MUKHDIP"
* contained[=].name.family = "SINGH,MUKHDIP"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.356886"
* contained[=].name.text = "SINGH,MUKHDIP"
* contained[=].name.family = "SINGH,MUKHDIP"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.75535810"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MENTAL HEALTH SECURE MESSAGING"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2022-09-08T11:38:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2022-09-08T09:38:45Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogTUVOVEFMIEhFQUxUSCBTRUNVUkUgTUVTU0FHSU5HICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNRU5UQUwgSEVBTFRIIFNFQ1VSRSBNRVNTQUdJTkcgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMDgsIDIwMjJAMTE6MzggICAgIEVOVFJZIERBVEU6IFNFUCAwOCwgMjAyMkAwOTozODo0NSAgICAgIAogICAgICBBVVRIT1I6IFNJTkdILE1VS0hESVAgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA5LzA4LzIwMjIgMDk6MjMgQU0gRVQgCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QgIFBBVElFTlRSIApUbzogIFNhbGVtIE1lbnRhbCBIZWFsdGggQ2xpbmljX1ZBUG9ydGxhbmRIQ1NfTUggClN1YmplY3Q6ICBHZW5lcmFsOlRyYWluaW5nIE1lc3NhZ2UgMiBmb3IgTXVraGRpcCBTaW5naCAKClNlZCBlZ2VzdGFzIG1hZ25hIHF1aXMgc2VtcGVyIGJsYW5kaXQuIFBlbGxlbnRlc3F1ZSBlZ2VzdGFzIGR1aSBuaXNsLCBxdWlzIApjdXJzdXMgZG9sb3IgdmVoaWN1bGEgYWMuIFBoYXNlbGx1cyB1dCBkaWFtIHRlbGx1cy4gU2VkIGludGVyZHVtIGFjIHR1cnBpcyAKdml0YWUgZWZmaWNpdHVyLiAgIAogIAogIApGbHUgU2hvdCBJbmZvOiBodHRwczovL3d3dy5wb3J0bGFuZC52YS5nb3YvbmV3cy9mbHVzaG90cy5hc3AgIApodHRwczovL3d3dy52YS5nb3YvZGlyZWN0b3J5L2d1aWRlL3JlZ2lvbi5hc3A/SUQ9MTAyMD8KLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAKU2VudDogIDA5LzA4LzIwMjIgMTI6MzIgUE0gRVQgCkZyb206ICBTSU5HSCwgTVVLSERJUCAgClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUICBQQVRJRU5UUiAKU3ViamVjdDogIEdlbmVyYWw6VHJhaW5pbmcgTWVzc2FnZSAyIGZvciBNdWtoZGlwIFNpbmdoIAoKaGVsbG8gIAogIAogIAogIApNdWtoZGlwIFNpbmdoLCBNRCAgClBzeWNoaWF0cmlzdAoKIAovZXMvIE1VS0hESVAgU0lOR0ggTUQKUHN5Y2hpYXRyeSBSZXNpZGVudApTaWduZWQ6IDA5LzA4LzIwMjIgMDk6MzgK"
* content.attachment.title = "MENTAL HEALTH SECURE MESSAGING"
* content.attachment.creation = "2022-09-08T11:38:00Z"
* context.related.reference = "#location-0"


Instance: 33116ce7-24ce-49cb-97d1-718efd94f90d
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19776835"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19776835"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2010-01-06T18:27:51Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2010-01-06T11:47:27Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKQU4gMDYsIDIwMTBAMTg6Mjc6NTEgIEVOVFJZIERBVEU6IEpBTiAwNiwgMjAxMEAxMTo0NzoyNiAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDEvMDYvMjAxMCAxMjoyMyBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKClRISVMgSVMgQSBURVNUCgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkNISUVGIEhFQUxUSCBJTkZPUk1BVElDUyBPRkZJQ0VSL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwMS8wNi8yMDEwIDExOjQ3Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2010-01-06T18:27:51Z"
* context.related.reference = "#location-0"

Instance: b60a7fbf-9f60-441f-bd09-aa40ff4c67aa
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19132325"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19132325"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-15T18:25:24Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-15T11:25:25Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMTUsIDIwMDlAMTg6MjU6MjQgIEVOVFJZIERBVEU6IE9DVCAxNSwgMjAwOUAxMToyNToyNSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMTUvMjAwOSAwMToyMSBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QgT0YgQ1BSUwoKPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPlRFU1QgT0YgQ1BSUzwvdGQ+PC90cj48L3RhYmxlPgoKCiAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgIFNlbnQ6ICAxMC8xNS8yMDA5IDAxOjI1IFBNCiAgICAgRnJvbTogIERvdWdsYXMsIERhdmlkCiAgICAgVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QgT0YgQ1BSUwogICAgIAogICAgIDx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD5TYXZpbmcgdG8gQ1BSUzwvdGQ+PC90cj48L3RhYmxlPgoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMTAvMTUvMjAwOSAxMToyNQo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-15T18:25:24Z"
* context.related.reference = "#location-0"

Instance: fb0d4744-d3b4-4de1-a483-09b14ea42d10
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19065448"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.14593"
* contained[=].name.text = "WOODS,SUSAN S"
* contained[=].name.family = "WOODS,SUSAN S"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.14593"
* contained[=].name.text = "WOODS,SUSAN S"
* contained[=].name.family = "WOODS,SUSAN S"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19065448"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-07T15:45:56Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-07T08:45:59Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDcsIDIwMDlAMTU6NDU6NTYgIEVOVFJZIERBVEU6IE9DVCAwNywgMjAwOUAwODo0NTo1OSAgICAgIAogICAgICBBVVRIT1I6IFdPT0RTLFNVU0FOIFMgICAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMDcvMjAwOSAxMDozNCBBTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgV29vZHMgU19NSFYgVGVhbQpTdWJqZWN0OiAgY2FuY2VsIGFwcG9pbnRtZXRuCgo8dGFibGUgd2lkdGg9IjEwMDAiPjx0cj48dGQ+SSBjYW4ndCBjb21lIHRvIG15IGFwcG9pbnRtZW50IHRoaXMKIHdlZWsuPC90ZD48L3RyPjwvdGFibGU+CgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDEwLzA3LzIwMDkgMTA6NDMgQU0KICAgICBGcm9tOiAgV29vZHMsIFN1c2FuCiAgICAgVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBTdWJqZWN0OiAgY2FuY2VsIGFwcG9pbnRtZXRuCiAgICAgCiAgICAgPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPndlIHdpbGwgcmVzY2hlZHVsZSBmb3IgbmV4dAogd2Vlay48L3RkPjwvdHI+PC90YWJsZT4KCgogICAgICAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgICAgICAgU2VudDogIDEwLzA3LzIwMDkgMTA6NDQgQU0KICAgICAgICAgIEZyb206ICBXb29kcywgU3VzYW4KICAgICAgICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgICAgICBTdWJqZWN0OiAgY2FuY2VsIGFwcG9pbnRtZXRuCiAgICAgICAgICAKICAgICAgICAgIDx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD53aWxsIGJlIHJlc2N1ZWhkdWVkLjwvdGQ+PC90cj48L3RhYmxlPgoKCgogCi9lcy8gU1VTQU4gUyBXT09EUwoKU2lnbmVkOiAxMC8wNy8yMDA5IDA4OjQ1Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-07T15:45:56Z"
* context.related.reference = "#location-0"

Instance: 8ad345dd-c89f-4e1d-b47e-488c9483a138
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19034139"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19034139"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-02T21:04:05Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-02T14:04:55Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDIsIDIwMDlAMjE6MDQ6NTAgIEVOVFJZIERBVEU6IE9DVCAwMiwgMjAwOUAxNDowNDo1NCAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMDIvMjAwOSAwMjoyNiBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgV29vZHMgU19NSFYgVGVhbQpTdWJqZWN0OiAgQ2hhbmdlIG9mIEFkZHJlc3MgUmVxdWVzdAoKPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPlBsZWFzZSBub3RlIHRoYXQgd2UgbmVlZCAzIGJ1c2luZXNzIGRheXMgdG8gcmVzcG9uZAogdG8gc2VjdXJlIG1lc3NhZ2luZwoKV2Ugd2lsbCBub3RpZnkgeW91IHdoZW4gd2UgaGF2ZSB1cGRhdGVkIHlvdXIgYWRkcmVzcyBvciBwaG9uZSBudW1iZXIuICBVbnRpbCAKdGhhdCB0aW1lLCBtYWlsIG9yIHBob25lIGNhbGxzIG1heSBzdGlsbCBnbyB0byB5b3VyIG9sZCBhZGRyZXNzIG9yIHBob25lIApudW1iZXIuCgpJIGhhdmUgYSBuZXcgYWRkcmVzcyBhbmQvb3IgcGhvbmUgbnVtYmVyLiAgUGxlYXNlIHVwZGF0ZSB5b3VyIHJlY29yZHMgCndpdGggdGhlIGZvbGxvd2luZzoKCgo8L3RkPjwvdHI+PC90YWJsZT4KCgogICAgIC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICBTZW50OiAgMTAvMDIvMjAwOSAwNDowNCBQTQogICAgIEZyb206ICBEb3VnbGFzLCBEYXZpZAogICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgU3ViamVjdDogIENoYW5nZSBvZiBBZGRyZXNzIFJlcXVlc3QKICAgICAKICAgICA8dGFibGUgd2lkdGg9IjEwMDAiPjx0cj48dGQ+c2F2aW5nIHRvIENQUlM8L3RkPjwvdHI+PC90YWJsZT4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDEwLzAyLzIwMDkgMTQ6MDQK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-02T21:04:05Z"
* context.related.reference = "#location-0"

Instance: e3302e08-ce2f-4323-8995-c1ff48cd53fd
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19032582"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19032582"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-02T19:37:45Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-02T12:37:47Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDIsIDIwMDlAMTk6Mzc6NDUgIEVOVFJZIERBVEU6IE9DVCAwMiwgMjAwOUAxMjozNzo0NyAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMDIvMjAwOSAwMjoyNyBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgV29vZHMgU19NSFYgVGVhbQpTdWJqZWN0OiAgTWVkaWNhdGlvbiBQcmVzY3JpcHRpb24gUXVlc3Rpb24KCjx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD5QbGVhc2Ugbm90ZSB0aGF0IHdlIG5lZWQgMyBidXNpbmVzcyBkYXlzIHRvIHJlc3BvbmQKIHRvIHNlY3VyZSBtZXNzYWdpbmcuCklmIHlvdSBhcmUgaGF2aW5nIGEgcHJvYmxlbSB3aXRoIHlvdXIgbWVkaWNhdGlvbiB0aGF0IGNhbm5vdCB3YWl0IHRoYXQgbG9uZywgCnBsZWFzZSBjYWxsIHRoZSBudW1iZXIgb24geW91ciBib3R0bGUuCgpQbGVhc2UgZW50ZXIgeW91ciBwcmVzY3JpcHRpb24gcmVsYXRlZCBxdWVzdGlvbiBPUiBjb25jZXJuIGJlbG93OgoKTm90ZSB0aGF0IElGIHlvdSBoYXZlIHJlZmlsbHMgTEVGVCBPTiB5b3VyIHByZXNjcmlwdGlvbiwgeW91IGNhbiByZXF1ZXN0IAp0aGVzZSBkaXJlY3RseSBGUk9NIE15IEhlYWx0aGVWZXQuPC90ZD48L3RyPjwvdGFibGU+CgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDEwLzAyLzIwMDkgMDI6MzcgUE0KICAgICBGcm9tOiAgRG91Z2xhcywgRGF2aWQKICAgICBUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVAogICAgIFN1YmplY3Q6ICBNZWRpY2F0aW9uIFByZXNjcmlwdGlvbiBRdWVzdGlvbgogICAgIAogICAgIDx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD50ZXN0aW5nIHRoZSBzYXZlIHRvIENQUlMgZXZlbiB0aG91Z2gKIHVuYXNzaWduZWQ8L3RkPjwvdHI+PC90YWJsZT4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDEwLzAyLzIwMDkgMTI6MzcK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-02T19:37:45Z"
* context.related.reference = "#location-0"

Instance: 5a77fd98-b82e-49df-a4aa-b09171cfdf41
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19021967"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19021967"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-01T19:49:28Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-01T12:49:31Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDEsIDIwMDlAMTk6NDk6MjggIEVOVFJZIERBVEU6IE9DVCAwMSwgMjAwOUAxMjo0OTozMSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMDEvMjAwOSAwMjo0NyBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgTWVzc2FnZSB0byBiZSBzYXZlZCBhcyBDUFJTIG5vdGUKCjx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD5DUFJTIE5vdGU8L3RkPjwvdHI+PC90YWJsZT4KCgogICAgIC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICBTZW50OiAgMTAvMDEvMjAwOSAwMjo0OCBQTQogICAgIEZyb206ICBEb3VnbGFzLCBEYXZpZAogICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgU3ViamVjdDogIE1lc3NhZ2UgdG8gYmUgc2F2ZWQgYXMgQ1BSUyBub3RlCiAgICAgCiAgICAgPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPkkgd2lsbCBzYXZlIHRoaXMgYXMgYSBDUFJTIFByb2dyZXNzIG5vdGUuCiA8L3RkPjwvdHI+PC90YWJsZT4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDEwLzAxLzIwMDkgMTI6NDkK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-01T19:49:28Z"
* context.related.reference = "#location-0"

Instance: f3559412-e0a8-41a6-aa18-f92d7700796e
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 19019553"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.19019553"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-10-01T17:24:05Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-10-01T10:24:53Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMDEsIDIwMDlAMTc6MjQ6NTAgIEVOVFJZIERBVEU6IE9DVCAwMSwgMjAwOUAxMDoyNDo1MyAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMDEvMjAwOSAxMjoxNyBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKCjx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD5XaGF0IGRvIHRoZXNlIHRlc3QgcmVzdWx0cyBtZWFuPzwvdGQ+PC90cj48L3RhYmxlPgoKCiAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgIFNlbnQ6ICAxMC8wMS8yMDA5IDEyOjIzIFBNCiAgICAgRnJvbTogIERvdWdsYXMsIERhdmlkCiAgICAgVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKICAgICAKICAgICA8dGFibGUgd2lkdGg9IjEwMDAiPjx0cj48dGQ+VGhlc2UgdGVzdCByZXN1bHRzIGFyZSBub3JtYWwuCiA8L3RkPjwvdHI+PC90YWJsZT4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDEwLzAxLzIwMDkgMTA6MjQK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-10-01T17:24:05Z"
* context.related.reference = "#location-0"

Instance: a367c56a-28d9-4bc5-a6c6-e22d9c5a2107
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 18964275"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.77186"
* contained[=].name.text = "SANTORO,JAMES A"
* contained[=].name.family = "SANTORO,JAMES A"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.77186"
* contained[=].name.text = "SANTORO,JAMES A"
* contained[=].name.family = "SANTORO,JAMES A"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.18964275"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-09-24T22:34:43Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-09-24T15:34:44Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMjQsIDIwMDlAMjI6MzQ6NDMgIEVOVFJZIERBVEU6IFNFUCAyNCwgMjAwOUAxNTozNDo0NCAgICAgIAogICAgICBBVVRIT1I6IFNBTlRPUk8sSkFNRVMgQSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDkvMjQvMjAwOSAwNToyNSBQTQpGcm9tOiAgU0FOVE9STywgSkFNRVMKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKU3ViamVjdDogIExhYiBSZXN1bHRzCgo8dGFibGUgd2lkdGg9IjEwMDAiPjx0cj48dGQ+VGVzdCBtZXNzYWdlPC90ZD48L3RyPjwvdGFibGU+CgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDA5LzI0LzIwMDkgMDU6MjggUE0KICAgICBGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgVG86ICBTYW50b3JvIEpBX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZAogICAgIFN1YmplY3Q6ICBMYWIgUmVzdWx0cwogICAgIAogICAgIDx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD50aGFuayB5b3UgRHIuIFNhbnRvcm8uICBXaGF0IGRvZXMgdGhpcyBtZWFuPwogQW0gSSBnb2luZyB0byBkaWU/PC90ZD48L3RyPjwvdGFibGU+CgoKICAgICAgICAgIC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICAgICAgIFNlbnQ6ICAwOS8yNC8yMDA5IDA1OjMyIFBNCiAgICAgICAgICBGcm9tOiAgU0FOVE9STywgSkFNRVMKICAgICAgICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgICAgICBTdWJqZWN0OiAgTGFiIFJlc3VsdHMKICAgICAgICAgIAogICAgICAgICAgPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPldoYXRldmVyLCB5b3Ugd2lsbAogbGl2ZSE8L3RkPjwvdHI+PC90YWJsZT4KCgoKIAovZXMvIEpBTUVTIEEgU0FOVE9STywgTUQKR3JvdXAgUHJhY3RpY2UgTWFuYWdlciAtIEVhc3QgUHRsZCBDQk9DClNpZ25lZDogMDkvMjQvMjAwOSAxNTozNAo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-09-24T22:34:43Z"
* context.related.reference = "#location-0"

Instance: 82f86929-d317-4255-a78d-5bc2d0a0d01f
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 18459196"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.18459196"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-07-24T17:09:21Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-07-24T10:09:23Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVUwgMjQsIDIwMDlAMTc6MDk6MjEgIEVOVFJZIERBVEU6IEpVTCAyNCwgMjAwOUAxMDowOToyMyAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDcvMjQvMjAwOSAxMjowNCBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgU00gRW5oYW5jZW1lbnRzIFRlc3QgIExhYiBSZXN1bHRzCgo8dGFibGUgd2lkdGg9IjEwMDAiPjx0cj48dGQ+UGxlYXNlIHNlbmQgbXkgbW9zdCByZWNlbnQgbGFiCiByZXN1bHRzLjwvdGQ+PC90cj48L3RhYmxlPgoKCiAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgIFNlbnQ6ICAwNy8yNC8yMDA5IDEyOjA4IFBNCiAgICAgRnJvbTogIERvdWdsYXMsIERhdmlkCiAgICAgVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBTdWJqZWN0OiAgU00gRW5oYW5jZW1lbnRzIFRlc3QgIExhYiBSZXN1bHRzCiAgICAgCiAgICAgPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPk1lc3NhZ2UgdGhyZWFkIHdpbGwgYmUgc2F2ZWQgdG8gQ1BSUy4KIDwvdGQ+PC90cj48L3RhYmxlPgoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDcvMjQvMjAwOSAxMDowOQo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-07-24T17:09:21Z"
* context.related.reference = "#location-0"

Instance: 37b3963a-106f-4e4e-98db-1a4362d1b8b5
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 18395172"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.18395172"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-07-16T20:03:57Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-07-16T13:04:00Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVUwgMTYsIDIwMDlAMjA6MDM6NTcgIEVOVFJZIERBVEU6IEpVTCAxNiwgMjAwOUAxMzowNCAgICAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgKioqIFNFQ1VSRSBNRVNTQUdJTkcgSGFzIEFEREVOREEgKioqCgotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNlbnQ6ICAwNy8xNi8yMDA5IDAzOjAyIFBNCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKVG86ICBEb3VnbGFzIERfUHJpbWFyeSBDYXJlX1BvcnRsYW5kClN1YmplY3Q6ICBUSElTIElTIEEgVEVTVAoKPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPlRISVMgSVMgQSBURVNUPC90ZD48L3RyPjwvdGFibGU+CgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkNISUVGIEhFQUxUSCBJTkZPUk1BVElDUyBPRkZJQ0VSL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwNy8xNi8yMDA5IDEzOjA0CgowNy8xNi8yMDA5IEFEREVORFVNICAgICAgICAgICAgICAgICAgICAgIFNUQVRVUzogQ09NUExFVEVECi0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU2VudDogIDA3LzE2LzIwMDkgMDM6MTQgUE0KRnJvbTogIERvdWdsYXMsIERhdmlkClRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClN1YmplY3Q6ICBUSElTIElTIEEgVEVTVAoKPHRhYmxlIHdpZHRoPSIxMDAwIj48dHI+PHRkPlRoaXMgaXMgYSByZXBseSB0byB5b3VyIHF1ZXN0aW9uLgogPC90ZD48L3RyPjwvdGFibGU+CgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkNISUVGIEhFQUxUSCBJTkZPUk1BVElDUyBPRkZJQ0VSL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwNy8xNi8yMDA5IDEzOjE0Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-07-16T20:03:57Z"
* context.related.reference = "#location-0"

Instance: f7c91cd2-1ebc-4611-8d23-8551e0329838
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 18395183"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.18395183"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-07-16T20:04:43Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-07-16T13:04:45Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVUwgMTYsIDIwMDlAMjA6MDQ6NDMgIEVOVFJZIERBVEU6IEpVTCAxNiwgMjAwOUAxMzowNDo0NSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDcvMTYvMjAwOSAwMzowMiBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKCjx0YWJsZSB3aWR0aD0iMTAwMCI+PHRyPjx0ZD5USElTIElTIEEgVEVTVDwvdGQ+PC90cj48L3RhYmxlPgoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDcvMTYvMjAwOSAxMzowNAo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-07-16T20:04:43Z"
* context.related.reference = "#location-0"

Instance: 24559a1b-afd5-4a29-b645-f4576f4a1bd1
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 17521574"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.11059"
* contained[=].name.text = "PENNINGTON,ANNA L"
* contained[=].name.family = "PENNINGTON,ANNA L"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.11059"
* contained[=].name.text = "PENNINGTON,ANNA L"
* contained[=].name.family = "PENNINGTON,ANNA L"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.17521574"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-04-01T22:24:01Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-04-01T15:24:11Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBUFIgMDEsIDIwMDlAMjI6MjQ6MTAgIEVOVFJZIERBVEU6IEFQUiAwMSwgMjAwOUAxNToyNDoxMSAgICAgIAogICAgICBBVVRIT1I6IFBFTk5JTkdUT04sQU5OQSBMICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDIvMjQvMjAwOSAxMjo0OCBQTQpGcm9tOiAgRG91Z2xhcywgRGF2aWQKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKU3ViamVjdDogIFRISVMgSVMgQSBURVNUCgpXSUxMIFRISVMgTUVTU0FHRSBFU0NBTEFURT8KCgogICAgIC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICBTZW50OiAgMDIvMjQvMjAwOSAwMTowNCBQTQogICAgIEZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBUbzogIERvdWdsYXMgRF9QcmltYXJ5IENhcmVfUG9ydGxhbmQKICAgICBTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKICAgICAKICAgICBXaWxsIHRoaXMgbWVzc2FnZSBlc2NhbGF0ZT8KCgogICAgICAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgICAgICAgU2VudDogIDAzLzAzLzIwMDkgMDE6NTggUE0KICAgICAgICAgIEZyb206ICBXb29kcywgU3VzYW4KICAgICAgICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgICAgICBTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKICAgICAgICAgIAogICAgICAgICAgSGVsbG8gTUhWIHBhdGllbnQuCgpUaGlzIGlzIGEgdGVzdCB0byBzZWUgaWYgbXkgUkVQTFkgaXMgc2VlbiBpbiB0aGUgY29tcGxldGVkIG1lc3NhZ2UgYW5kIHRoZSBDUFJTCiBub3RlLgoKRHIuIFdvb2RzCgoKICAgICAgICAgICAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgICAgICAgICAgICBTZW50OiAgMDQvMDEvMjAwOSAwNToxMyBQTQogICAgICAgICAgICAgICBGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgICAgICAgICAgIFRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZAogICAgICAgICAgICAgICBTdWJqZWN0OiAgVEhJUyBJUyBBIFRFU1QKICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgIE1lc3NhZ2UgcmVjZWl2ZWQuIAoKCgogCi9lcy8gQU5OQSBMIFBFTk5JTkdUT04KUGF0aWVudCBSZWxhdGlvbnMgQXNzaXN0YW50ClNpZ25lZDogMDQvMDEvMjAwOSAxNToyNAo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-04-01T22:24:01Z"
* context.related.reference = "#location-0"

Instance: 736b94c1-8290-41cc-b4f6-77d6ea8eb2c5
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 17521552"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.11059"
* contained[=].name.text = "PENNINGTON,ANNA L"
* contained[=].name.family = "PENNINGTON,ANNA L"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.11059"
* contained[=].name.text = "PENNINGTON,ANNA L"
* contained[=].name.family = "PENNINGTON,ANNA L"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.17521552"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2009-04-01T22:22:41Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2009-04-01T15:22:44Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBUFIgMDEsIDIwMDlAMjI6MjI6NDEgIEVOVFJZIERBVEU6IEFQUiAwMSwgMjAwOUAxNToyMjo0NCAgICAgIAogICAgICBBVVRIT1I6IFBFTk5JTkdUT04sQU5OQSBMICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDQvMDEvMjAwOSAwNToxNSBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgUHJvemFjCgpEZWFyIERyLiBEb3VnbGFzOiAgSSBqdXN0IHJlZmlsbGVkIDEyIG91dCBvZiAxMiBvbiBteSBQcm96YWMuICBJIHdpbGwgbmVlZCBhCiBuZXcgcHJlc2NyaXB0aW9uLiAKCllvdXIgUGF0aWVudCwKCgoKCgogCi9lcy8gQU5OQSBMIFBFTk5JTkdUT04KUGF0aWVudCBSZWxhdGlvbnMgQXNzaXN0YW50ClNpZ25lZDogMDQvMDEvMjAwOSAxNToyMgo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2009-04-01T22:22:41Z"
* context.related.reference = "#location-0"

Instance: 8c3a7ef7-4ed6-49d4-96d7-9bea812d47ac
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 16277615"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.16277615"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-10-20T16:04:22Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-10-20T09:04:25Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBPQ1QgMjAsIDIwMDhAMTY6MDQ6MjIgIEVOVFJZIERBVEU6IE9DVCAyMCwgMjAwOEAwOTowNDoyNSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMTAvMjAvMjAwOCAwODowOCBBTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgUnggCgpJIG5lZWQgYSByZW5ld2FsIG9mIExpc2lub3ByaWwuICBJIGFtIGFsbW9zdCBvdXQuICAKCllvdXIgUGF0aWVudCwKCkRhdmlkCgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDEwLzIwLzIwMDggMTE6MDQgQU0KICAgICBGcm9tOiAgRG91Z2xhcywgRGF2aWQKICAgICBUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVAogICAgIFN1YmplY3Q6ICBSeCAKICAgICAKICAgICBJIGhhdmUgcmVuZXdlZCBMSXNpbm9wcmlsLiAgSXQgc2hvdWxkIGFycml2ZWluIDE0IGRheXMuCgpEci4gRG91Z2xhcwoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApGQUNJTElUWSBDSU8vQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDEwLzIwLzIwMDggMDk6MDQK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-10-20T16:04:22Z"
* context.related.reference = "#location-0"

Instance: 6b868dda-fe6b-47be-ad85-10e17bb7f39d
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 16024843"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.16024843"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-09-16T09:44:29Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-09-16T02:44:32Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMTYsIDIwMDhAMDk6NDQ6MjkgIEVOVFJZIERBVEU6IFNFUCAxNiwgMjAwOEAwMjo0NDozMSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDkvMTYvMjAwOCAwNDozMSBBTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgU2NoZWR1bGUgcm91dGluZSBhcHBvaW50bWVudAoKUGxlYXNlIG5vdGUgdGhhdCB3ZSBuZWVkIDMgYnVzaW5lc3MgZGF5cyB0byByZXNwb25kIHRvIHNlY3VyZSBtZXNzYWdpbmcKClt4XSBJIHJlY2VpdmVkIGEgcmVjYWxsIGxldHRlci9wb3N0IGNhcmQvcGhvbmUgY2FsbCB0byBzY2hlZHVsZSBhIGZvbGxvdyB1cCAKYXBwb2ludG1lbnQKClsgXSBJIGFtIGR1ZSBmb3IgYW4gYXBwb2ludG1lbnQKClsgXSBPdGhlciAocGxlYXNlIGVudGVyIGluZm9ybWF0aW9uIGhlcmUgaW5jbHVkaW5nIG5hbWUgYW5kIGxvY2F0aW9uIG9mIGNsaW5pYwoKUGxlYXNlIGxldCB1cyBrbm93IGlmIHlvdSB3b3VsZCBwcmVmZXIgYSBtb3JuaW5nIG9yIGFmdGVybm9vbiBhcHBvaW50bWVudC4gCklmIHBvc3NpYmxlLCB3ZSB3aWxsIHRyeSB0byBnaXZlIHlvdSB0aGUgdGltZSB5b3Ugd291bGQgcHJlZmVyCgpbeF0gTW9ybmluZyAoYmV0d2VlbiA4IGFtIGFuZCBub29uKQoKWyBdIEFmdGVybm9vbiAoYmV0d2VlbiAxIHBtIGFuZCA0IHBtKQoKWyBdIE5vIHByZWZlcmVuY2UgYW55IHRpbWUgYmV0d2VlbiA4IGFtIGFuZCA0IHBtIGlzIE9LCgpQbGVhc2UgaW5kaWNhdGUgdGhlIGRheShzKSBvZiB0aGUgd2VlayB5b3Ugd291bGQgbGlrZSBmb3IgeW91ciBhcHBvaW50bWVudC4gCklmIHBvc3NpYmxlLCB3ZSB3aWxsIHRyeSB0byBnaXZlIHlvdSB0aGUgZGF5IHlvdSB3b3VsZCBwcmVmZXIuCgpbIF0gTW9uZGF5IFsgXSBUdWVzZGF5IFt4XSBXZWRuZXNkYXkgWyBdIFRodXJzZGF5IFsgXSBGcmlkYXkKClsgXSBObyBwcmVmZXJlbmNlIGFueSBkYXkgaXMgT0sKClJlYXNvbihzKSBmb3IgYXBwb2ludG1lbnQ6ICBJIHJlY2VpdmVkIGEgcG9zdCBjYXJkLiAKCgogICAgIC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAgICBTZW50OiAgMDkvMTYvMjAwOCAwNDo0NCBBTQogICAgIEZyb206ICBEb3VnbGFzLCBEYXZpZAogICAgIFRvOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgU3ViamVjdDogIFNjaGVkdWxlIHJvdXRpbmUgYXBwb2ludG1lbnQKICAgICAKICAgICBZb3VyIGZvbGxvdyB1cCBhcHBvaW50bWVudCBoYXMgYmVlbiBzY2hlZHVsZWQgZm9yOgoKU2VwdCAxOCBhdCAxMEFNCgpOQU1FIG9mIENsaW5pYzogUHJpbWFyeSBDYXJlIERvdWdsYXMKCk5BTUUgb2YgUHJvdmlkZXIgRGF2aWQgRG91Z2xhcyAKCkhvc3BpdGFsIG9yIENsaW5pYyBBZGRyZXNzICBQb3J0bGFuZCBWQU1DCgpQbGVhc2UgcmVzcG9uZCB0byB0aGlzIGVtYWlsIElmIHlvdSBuZWVkIHRvIGNoYW5nZSB0aGlzIGFwcG9pbnRtZW50LiAgV2UgCm5lZWQgdG8gcmVjZWl2ZSB5b3VyIG1lc3NhZ2UgYXQgbGVhc3QgdGhyZWUgYnVzaW5lc3MgZGF5cyBiZWZvcmUgeW91ciAKYXBwb2ludG1lbnQuCgpJZiBpdCBpcyBsZXNzIHRoYW4gdGhyZWUgYnVzaW5lc3MgZGF5cyB1bnRpbCB0aGUgYXBwb2ludG1lbnQsIHBsZWFzZSBjYWxsIAp0aGUgZm9sbG93aW5nIG51bWJlciB0byBjYW5jZWwgb3IgcmVzY2hlZHVsZSB0aGlzIGFwcG9pbnRtZW50OgoKCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOS8xNi8yMDA4IDAyOjQ0Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-09-16T09:44:29Z"
* context.related.reference = "#location-0"

Instance: 9c8d050c-80c4-4ee6-9546-0b9a14075a11
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15780149"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15780149"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-13T14:57:04Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-13T07:57:42Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTMsIDIwMDhAMTQ6NTc6NDAgIEVOVFJZIERBVEU6IEFVRyAxMywgMjAwOEAwNzo1Nzo0MiAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgKioqIFNFQ1VSRSBNRVNTQUdJTkcgSGFzIEFEREVOREEgKioqCgotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNlbnQ6ICAwOC8xMy8yMDA4IDA5OjM4IEFNCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKVG86ICBEb3VnbGFzIERfUHJpbWFyeSBDYXJlX1BvcnRsYW5kClN1YmplY3Q6ICBVc2VyIENsYXNzIG9mIEF0dGVuZGluZyBQaHlzaWNpYW4gIzIKClVzZXIgQ2xhc3Mgb2YgQXR0ZW5kaW5nIFBoeXNpY2lhbgoKCiAgICAgLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgIFNlbnQ6ICAwOC8xMy8yMDA4IDA5OjU3IEFNCiAgICAgRnJvbTogIERvdWdsYXMsIERhdmlkCiAgICAgVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKICAgICBTdWJqZWN0OiAgVXNlciBDbGFzcyBvZiBBdHRlbmRpbmcgUGh5c2ljaWFuICMyCiAgICAgCiAgICAgU2F2ZSB0byBUSVUgYXMgQXR0ZW5kaW5nIFBoeXNpY2lhbi4gCgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkZBQ0lMSVRZIENJTy9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDgvMTMvMjAwOCAwNzo1NwoKMDgvMTMvMjAwOCBBRERFTkRVTSAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRAotLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNlbnQ6ICAwOC8xMy8yMDA4IDEwOjAwIEFNCkZyb206ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKVG86ICBEb3VnbGFzIERfUHJpbWFyeSBDYXJlX1BvcnRsYW5kClN1YmplY3Q6ICBVc2VyIENsYXNzIG9mIEF0dGVuZGluZyBQaHlzaWNpYW4gIzIKClJlcGx5aW5nIHRvIGEgdGhyZWFkIHdoaWNoIGhhcyBwcmV2aW91c2x5IGJlZW4gc3VjY2Vzc2Z1bGx5IHNhdmVkIHRvIFRJVSB3aXRoCiB1c2VyIGNsYXNzIG9mIEF0dGVuZGluZyBQaHlzaWNpYW4uIAoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApGQUNJTElUWSBDSU8vQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA4LzEzLzIwMDggMDg6MDIKCjA4LzE1LzIwMDggQURERU5EVU0gICAgICAgICAgICAgICAgICAgICAgU1RBVFVTOiBDT01QTEVURUQKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTMvMjAwOCAxMDowMCBBTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVXNlciBDbGFzcyBvZiBBdHRlbmRpbmcgUGh5c2ljaWFuICMyCgpSZXBseWluZyB0byBhIHRocmVhZCB3aGljaCBoYXMgcHJldmlvdXNseSBiZWVuIHN1Y2Nlc3NmdWxseSBzYXZlZCB0byBUSVUgd2l0aAogdXNlciBjbGFzcyBvZiBBdHRlbmRpbmcgUGh5c2ljaWFuLiAKCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOC8xNS8yMDA4IDExOjQyCgowOC8yMS8yMDA4IEFEREVORFVNICAgICAgICAgICAgICAgICAgICAgIFNUQVRVUzogQ09NUExFVEVECi0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU2VudDogIDA4LzEzLzIwMDggMTA6MDAgQU0KRnJvbTogIE1IVlpaVklTTlRXRU5UWSwgVEVTVApUbzogIERvdWdsYXMgRF9QcmltYXJ5IENhcmVfUG9ydGxhbmQKU3ViamVjdDogIFVzZXIgQ2xhc3Mgb2YgQXR0ZW5kaW5nIFBoeXNpY2lhbiAjMgoKUmVwbHlpbmcgdG8gYSB0aHJlYWQgd2hpY2ggaGFzIHByZXZpb3VzbHkgYmVlbiBzdWNjZXNzZnVsbHkgc2F2ZWQgdG8gVElVIHdpdGgKIHVzZXIgY2xhc3Mgb2YgQXR0ZW5kaW5nIFBoeXNpY2lhbi4gCgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDA4LzE5LzIwMDggMDk6NTYgUE0KICAgICBGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUCiAgICAgVG86ICBEb3VnbGFzIERfUHJpbWFyeSBDYXJlX1BvcnRsYW5kCiAgICAgU3ViamVjdDogIFVzZXIgQ2xhc3Mgb2YgQXR0ZW5kaW5nIFBoeXNpY2lhbiAjMgogICAgIAogICAgIEFkZGluZyB0byB0aGlzIG1lc3NhZ2UuIAoKUGh5c2ljaWFuIFMuVy4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOC8yMC8yMDA4IDE3OjEwCg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-13T14:57:04Z"
* context.related.reference = "#location-0"

Instance: c3ca3358-6b38-431d-acd5-c4a56305390f
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15802805"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15802805"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-15T18:50:56Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-15T11:51:00Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBVUcgMTUsIDIwMDhAMTg6NTA6NTYgIEVOVFJZIERBVEU6IEFVRyAxNSwgMjAwOEAxMTo1MSAgICAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTUvMjAwOCAwMTo1MCBQTQpGcm9tOiAgRG91Z2xhcywgRGF2aWQKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKU3ViamVjdDogIFRISVMgSVMgQSBURVNUCgpUSElTIElTIE9OTFkgQSBURVNUCgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkZBQ0lMSVRZIENJTy9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDgvMTUvMjAwOCAxMTo1MQo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-15T18:50:56Z"
* context.related.reference = "#location-0"

Instance: c0b5d917-d4ca-48f8-8711-ad28432dfd8a
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15780132"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15780132"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-13T14:55:57Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-13T07:55:59Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTMsIDIwMDhAMTQ6NTU6NTcgIEVOVFJZIERBVEU6IEFVRyAxMywgMjAwOEAwNzo1NTo1OSAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTMvMjAwOCAwOTozOCBBTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgVXNlciBDbGFzcyBvZiBBdHRlbmRpbmcgUGh5c2ljaWFuICMxCgpVc2VyIENsYXNzIG9mIEF0dGVuZGluZyBQaHlzaWNpYW4KCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOC8xMy8yMDA4IDA3OjU1Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-13T14:55:57Z"
* context.related.reference = "#location-0"

Instance: b604bffd-5a11-4341-95ac-b2132a87ace8
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15778113"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15778113"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T23:14:14Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T16:14:16Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTIsIDIwMDhAMjM6MTQ6MTQgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxNjoxNDoxNiAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTIvMjAwOCAwNjoxMiBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgTGFiIG9yIFRlc3QgUmVzdWx0cyBRdWVzdGlvbgoKUGxlYXNlIG5vdGUgdGhhdCB3ZSBuZWVkIDMgYnVzaW5lc3MgZGF5cyB0byByZXNwb25kIHRvIHNlY3VyZSBtZXNzYWdpbmcKCkkgd291bGQgbGlrZSB0byBrbm93IHRoZSByZXN1bHRzIG9mIGEgbGFiIHRlc3QsIFgtcmF5LCBvciBwcm9jZWR1cmUuCgpQbGVhc2UgdHlwZSBpbiB0aGUgbmFtZSBvZiB0aGUgbGFiIHRlc3QsIFgtcmF5LCBvciBwcm9jZWR1cmUgYW5kIHRoZSBkYXRlIAppdCB3YXMgcGVyZm9ybWVkLgoKQ2FuIEkgaGF2ZSBhIE1SSSBmb3IgYSBiYWNrIGluanVyeS4gIEl0IGhhc24ndCBzdG9wIGh1cnRpbmcgc2luY2UgbXkgY2FyCiBhY2NpZGVudC4KCgoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApGQUNJTElUWSBDSU8vQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA4LzEyLzIwMDggMTY6MTQK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-12T23:14:14Z"
* context.related.reference = "#location-0"

Instance: d7f4a7f5-0aeb-4d93-92f1-cb9c3e4f9a72
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15777395"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15777395"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T22:24:27Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T15:24:31Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTIsIDIwMDhAMjI6MjQ6MjcgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxNToyNDozMSAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTIvMjAwOCAwNToyMiBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgSGVhbHRoIEluZm9ybWF0aW9uIFF1ZXN0aW9uCgpQbGVhc2Ugbm90ZSB0aGF0IHdlIG5lZWQgMyBidXNpbmVzcyBkYXlzIHRvIHJlc3BvbmQgdG8gc2VjdXJlIG1lc3NhZ2luZwoKVGhpcyBpcyBub3QgYW4gZW1lcmdlbmN5IHNpdHVhdGlvbi4KSSBuZWVkIGluZm9ybWF0aW9uIE9SIGhhdmUgYSBxdWVzdGlvbiBhYm91dCB0aGlzIGhlYWx0aCBpc3N1ZTogSSBzZWVtIHRvIGJlCiBoYXZpbmcgdHJvdWJsZSB3aXRoIG15IGxlZnQgYXJtLCBpdCBhY3RzIG51bWIgYW5kIHRpbmdseS4KCldoYXQgc2hvdWxkIEkgZG8/CgoKICAgICAtLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgICAgU2VudDogIDA4LzEyLzIwMDggMDU6MjQgUE0KICAgICBGcm9tOiAgRG91Z2xhcywgRGF2aWQKICAgICBUbzogIE1IVlpaVklTTlRXRU5UWSwgVEVTVAogICAgIFN1YmplY3Q6ICBIZWFsdGggSW5mb3JtYXRpb24gUXVlc3Rpb24KICAgICAKICAgICBUaGlzIGlzIGEgdGVzdCBub3cgdGhhdCBteSBVc2VyIENsYXNzIGhhcyBiZWVuIGNoYW5nZWQgZnJvbSBTdHVkZW50IHRvCiBBdHRlbmRpbmcgUGh5c2ljaWFuLiAKCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOC8xMi8yMDA4IDE1OjI0Cg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-12T22:24:27Z"
* context.related.reference = "#location-0"

Instance: 5c058740-b1a2-45ce-9375-5b0e36457613
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15775744"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15775744"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T20:51:53Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T13:51:56Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTIsIDIwMDhAMjA6NTE6NTMgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxMzo1MTo1NiAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTIvMjAwOCAwMzo1MSBQTQpGcm9tOiAgRG91Z2xhcywgRGF2aWQKVG86ICBNSFZaWlZJU05UV0VOVFksIFRFU1QKU3ViamVjdDogIHRoaXMgaXMgYSB0ZXN0CgpUaGlzIGlzIG9ubHkgYSB0ZXN0LiAKCgoKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKRkFDSUxJVFkgQ0lPL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOC8xMi8yMDA4IDEzOjUxCg=="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-12T20:51:53Z"
* context.related.reference = "#location-0"

Instance: b7634047-e088-429c-8524-78af995b94dc
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15775601"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15775601"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T20:44:05Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T13:44:08Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTIsIDIwMDhAMjA6NDQ6MDUgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxMzo0NDowOCAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTIvMjAwOCAwMzozOCBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgQWRtaW5pc3RyYXRpdmUgUXVlc3Rpb24KCkRyLiBEb3VnbGFzLAoKV2UgaGF2ZSBlbmFibGVkIHRoZSBNSFZWSVNOMjAgcGF0aWVudC4gIElmIHlvdSBnZXQgdGhpcyBtZXNzYWdlLCB3ZSBkaWQgaXQKIHJpZ2h0IDopLgoKCgoKCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkZBQ0lMSVRZIENJTy9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDgvMTIvMjAwOCAxMzo0NAo="
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-12T20:44:05Z"
* context.related.reference = "#location-0"

Instance: 25998b93-8058-4cd1-862d-6c08e20ef4dd
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15775522"
Description: "SECURE MESSAGING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15775522"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "MHV DIALOG NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T20:39:49Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T13:39:51Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogU0VDVVJFIE1FU1NBR0lORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBNSFYgRElBTE9HIE5PVEUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBBVUcgMTIsIDIwMDhAMjA6Mzk6NDkgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxMzozOTo1MSAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZW50OiAgMDgvMTIvMjAwOCAwMzozNiBQTQpGcm9tOiAgTUhWWlpWSVNOVFdFTlRZLCBURVNUClRvOiAgRG91Z2xhcyBEX1ByaW1hcnkgQ2FyZV9Qb3J0bGFuZApTdWJqZWN0OiAgQWRtaW5pc3RyYXRpdmUgUXVlc3Rpb24KClBsZWFzZSBub3RlIHRoYXQgd2UgbmVlZCAzIGJ1c2luZXNzIGRheXMgdG8gcmVzcG9uZCB0byBzZWN1cmUgbWVzc2FnaW5nCgpbIF0gSSB3b3VsZCBsaWtlIGEgY29weSBvZiBteSBtZWRpY2FsIHJlY29yZHMgZm9yIGNhcmUgdGhhdCBJIHJlY2VpdmVkIApkdXJpbmcgdGhlIGZvbGxvd2luZyBkYXRlczoKClsgXSBJIG5lZWQgdG8gdGFsayB0byBzb21lb25lIGluIHRoZSBCdXNpbmVzcyBPZmZpY2UgYWJvdXQgYSBiaWxsIEkgcmVjZWl2ZWQuCgpbIF0gSSBuZWVkIGhlbHAgd2l0aCB0aGUgZm9sbG93aW5nIGFkbWluaXN0cmF0aXZlIGlzc3VlOgoKCgoKCgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApGQUNJTElUWSBDSU8vQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA4LzEyLzIwMDggMTM6MzkK"
* content.attachment.title = "SECURE MESSAGING"
* content.attachment.creation = "2008-08-12T20:39:49Z"
* context.related.reference = "#location-0"

Instance: 97cf0c46-71bc-4392-8673-20a9de8548af
InstanceOf: JFM.PHR.note
Usage: #example
Title: "PN Note: 15775755"
Description: "PSYCHIATRY - ATTENDING"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.15775755"
* status = #current
* type.coding[LO] = $loinc#11506-3
* type.text = "PSYCHIATRY ATTENDING NOTE"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2008-08-12T13:52:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2008-08-12T13:52:48Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUFNZQ0hJQVRSWSAtIEFUVEVORElORyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQU1lDSElBVFJZIEFUVEVORElORyBOT1RFICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBVUcgMTIsIDIwMDhAMTM6NTIgICAgIEVOVFJZIERBVEU6IEFVRyAxMiwgMjAwOEAxMzo1MjozNCAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKdGhpcyBpcyBvbmx5IGEgdGVzdC4gCiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkZBQ0lMSVRZIENJTy9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDgvMTIvMjAwOCAxMzo1Mgo="
* content.attachment.title = "PSYCHIATRY - ATTENDING"
* content.attachment.creation = "2008-08-12T13:52:00Z"
* context.related.reference = "#location-0"

Instance: 969e7d79-e27e-4b8f-82c1-e011755d1be9
InstanceOf: JFM.PHR.note
Usage: #example
Title: "DS Note: 62932232"
Description: "Discharge Summary"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.62932232"
* status = #current
* type.coding[LO] = $loinc#18842-5
* type.text = "DISCHARGE SUMMARY"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2020-02-26T13:00:35Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2020-02-26T13:00:35Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRGlzY2hhcmdlIFN1bW1hcnkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBESVNDSEFSR0UgU1VNTUFSWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBGRUIgMjYsIDIwMjBAMTI6NTggICAgIEVOVFJZIERBVEU6IEZFQiAyNiwgMjAyMEAxMjo1ODo1NyAgICAgIAogRElDVEFURUQgQlk6IFdJTlRFUkJPVFRPTSxMSVNBIE0gICAgIEFUVEVORElORzogV0lOVEVSQk9UVE9NLExJU0EgTSAgICAgICAgICAKICAgICBVUkdFTkNZOiByb3V0aW5lICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKREFURSBPRiBBRE1JU1NJT046IApEQVRFIE9GIERJU0NIQVJHRTogCkFUVEVORElORyBQSFlTSUNJQU46IAogClBSSU1BUlkgQ0FSRSBQUk9WSURFUi9GQUNJTElUWTogCiAKUFJJTUFSWSBESUFHTk9TSVMgRk9SIFRISVMgQURNSVNTSU9OOiAKIAogCk9USEVSIERJQUdOT1NFUyBUUkVBVEVEIERVUklORyBUSElTIEFETUlTU0lPTiBUSEFUIFdFUkUgUFJFU0VOVCBBVCBUSEUgClRJTUUgT0YgQURNSVNTSU9OOgogCiAKT1RIRVIgRElBR05PU0VTIFRSRUFURUQgRFVSSU5HIFRISVMgQURNSVNTSU9OIFRIQVQgREVWRUxPUEVEIEFGVEVSIApBRE1JU1NJT04sIElGIEFOWToKIAogClBST0NFRFVSRVMgUEVSRk9STUVEIERVUklORyBUSElTIEFETUlTU0lPTjogCiAKIApQRVJUSU5FTlQgSU1BR0lORyBQRVJGT1JNRUQgRFVSSU5HIFRISVMgQURNSVNTSU9OOiAKIChJbmNsdWRlIHN1bW1hcnkgb2YgbWFpbiBpbWFnaW5nIHJlc3VsdHMpCiAKIApDT05TVUxUUyBPQlRBSU5FRCBEVVJJTkcgVEhJUyBBRE1JU1NJT046IAogCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJSSUVGIEhQSSAoU0VFIEFETUlUIE5PVEUgRk9SIENPTVBMRVRFIERFVEFJTFMpOiAKIChQcmVzZW50aW5nIHN5bXB0b21zLCBwZXJ0aW5lbnQgZXhhbSwgbGFiIGFuZCBpbWFnaW5nIGZpbmRpbmdzKQogCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fIApIT1NQSVRBTCBDT1VSU0UsIEJZIFBST0JMRU06IAogKFBlcnRpbmVudCB0cmVhdG1lbnQgcHJvdmlkZWQsIGNvbXBsaWNhdGlvbnMsIHN1Z2dlc3Rpb25zIGZvcgogIGZ1dHVyZSBtYW5hZ2VtZW50LCBmb2xsb3cgdXAgY2FyZSBuZWVkZWQpCiAKICMgCiAjIAogIyAKICMgCiAjIAogCkVYQU0gT04gREFZIE9GIERJU0NIQVJHRTogCiBEaXNjaGFyZ2UgVml0YWxzOiAKIAogRm9jdXNlZCBFeGFtOiAKIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KRElTQ0hBUkdFIE1FRElDQVRJT04gTElTVAooTXVzdCBjb3B5IGFuZCBwYXN0ZSBmcm9tIFBoYXJtYWN5IERpc2NoYXJnZSBJbnN0cnVjdGlvbnMgc28gYm90aCBsaXN0cyAKbWF0Y2ggZXhhY3RseSkKCgpBY3RpdmUgTWVkaWNhdGlvbnM6CkFjdGl2ZSBhbmQgUmVjZW50bHkgRXhwaXJlZCBPdXRwYXRpZW50IE1lZGljYXRpb25zIChleGNsdWRpbmcgU3VwcGxpZXMpOgogCiAgICAgQWN0aXZlIE91dHBhdGllbnQgTWVkaWNhdGlvbnMgICAgICAgICAgICAgICAgICAgICAgICAgIFN0YXR1cwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CjEpICAgQU1MT0RJUElORSBCRVNZTEFURSA1TUcgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSBNT1VUSCAgIEFDVElWRSAoUykKICAgICAgIEVWRVJZIERBWSBGT1IgQkxPT0QgUFJFU1NVUkUKMikgICBBU1BJUklOIDMyNU1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgREFZICAgQUNUSVZFIChTKQogICAgICAgQVMgRElSRUNURUQKMykgICBBVE9SVkFTVEFUSU4gQ0FMQ0lVTSA4ME1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgICAgICAgQUNUSVZFIChTKQogICAgICAgTU9VVEggRVZFUlkgRVZFTklORyBUTyBMT1dFUiBDSE9MRVNURVJPTCAqQVZPSUQKICAgICAgIEdSQVBFRlJVSVQgUFJPRFVDVFMgV0lUSCBUSElTIE1FRElDSU5FCjQpICAgTUVURk9STUlOIEhDTCA1MDBNRyAyNEhSIFNBIFRBQiBUQUtFIFRXTyBUQUJMRVRTIEJZICAgIEFDVElWRSAoUykKICAgICAgIE1PVVRIIFdJVEggWU9VUiBFVkVOSU5HIE1FQUwKIAogICAgIFBlbmRpbmcgT3V0cGF0aWVudCBNZWRpY2F0aW9ucyAgICAgICAgICAgICAgICAgICAgICAgICBTdGF0dXMKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoxKSAgIExJU0lOT1BSSUwgNU1HIFRBQiBUQUtFIE9ORSBUQUJMRVQgQlkgTU9VVEggRVZFUlkgREFZICBQRU5ESU5HCiAgICAgICBGT1IgQkxPT0QgUFJFU1NVUkUKMikgICBNRVRGT1JNSU4gSENMIDUwME1HIDI0SFIgU0EgVEFCIFRBS0UgT05FIFRBQkxFVCBCWSAgICAgUEVORElORwogICAgICAgTU9VVEggV0lUSCBZT1VSIEVWRU5JTkcgTUVBTAogCiAgICAgSW5hY3RpdmUgT3V0cGF0aWVudCBNZWRpY2F0aW9ucyAgICAgICAgICAgICAgICAgICAgICAgIFN0YXR1cwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CjEpICAgQU1PWElDSUxMSU4gMjUwTUcgQ0FQIFRBS0UgT05FIENBUFNVTEUgQlkgTU9VVEggVEhSRUUgIEVYUElSRUQKICAgICAgIFRJTUVTIEEgREFZCjIpICAgQVRPUlZBU1RBVElOIDEwTUcgVEFCIChHUkVFTlNUT05FIEJSQU5EKSBUQUtFIE9ORSAgICAgIEVYUElSRUQKICAgICAgIFRBQkxFVCBFVkVSWSBEQVkgSEFTCiAKICAgICBBY3RpdmUgTm9uLVZBIE1lZGljYXRpb25zICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3RhdHVzCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KMSkgICBOb24tVkEgTVVMVElWSVRBTUlOIENBUC9UQUIgMSBDQVAvVEFCIE1PVVRIIEVWRVJZIERBWSAgQUNUSVZFCiAKOSBUb3RhbCBNZWRpY2F0aW9ucwoKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ClBlbmRpbmcgcHJlc2NyaXB0aW9ucyB3cml0dGVuIHdpdGhpbiBsYXN0IDcgZGF5cwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KKioqIFBFTkRJTkcgb3V0cGF0aWVudCBtZWRzIG9yZGVyZWQgaW4gdGhlIGxhc3QgNyBkYXlzOiAqKioKTGlzaW5vcHJpbCBUYWIgIDVNZwogVGFrZSBPbmUgVGFibGV0IEJ5IE1vdXRoIEV2ZXJ5IERheSBGb3IgQmxvb2QgUHJlc3N1cmUKIFF1YW50aXR5OiA5MCBSZWZpbGxzOiAzCiBPcmRlciBTdGF0dXM6IFBlbmRpbmcgICAgICAgICAgICAgUHJvdmlkZXI6IExJU0EgTSBXSU5URVJCT1RUT00sIE0uRC4KIApNZXRmb3JtaW4gVGFiLHNhICA1MDBNZwogVGFrZSBPbmUgVGFibGV0IEJ5IE1vdXRoIFdpdGggWW91ciBFdmVuaW5nIE1lYWwKIFF1YW50aXR5OiA5MCBSZWZpbGxzOiAzCiBPcmRlciBTdGF0dXM6IFBlbmRpbmcgICAgICAgICAgICAgUHJvdmlkZXI6IExJU0EgTSBXSU5URVJCT1RUT00sIE0uRC4KIAoKCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpSZW1vdGUgVkEgUGhhcm1hY3kgbWVkaWNhdGlvbi9hbGxlcmd5IGluZm9ybWF0aW9uCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpIRFJNIC0gUmVtb3RlIEFjdGl2ZSBNZWRzCgpBY3RpdmUgTWVkaWNhdGlvbnMgZnJvbSBSZW1vdGUgRGF0YQogCkNMT1BJRE9HUkVMIEJJU1VMRkFURSA3NU1HIFRBQgpTaWc6ICBUQUtFIE9ORSBUQUJMRVQgRVZFUlkgREFZClF1YW50aXR5OiAzMCAgICBEYXlzIFN1cHBseTogMzAKMTEgcmVmaWxscyByZW1haW5pbmcgdW50aWwgMDEvMzEvMjEKTGFzdCBmaWxsZWQgMDEvMzEvMjAgYXQgTUFOTi1HUkFORFNUQUZGIFZBTUMgKEFjdGl2ZSkKIApSQVJUIC0gUmVtb3RlIEFEUgoKRkFDSUxJVFkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFMTEVSR1kvQURSCi0tLS0tLS0tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLS0tLS0tLS0tLQozNjNeQU5DSE9SQUdFIFZBIE1FRElDQUwgQ0VOVEVSXjQ2MyAgICAgVEVUQU5VUyBUT1hPSUQKNjY4Xk1BTk4tR1JBTkRTVEFGRiBWQU1DXjY2OCAgICAgICAgICAgIENMSU5EQU1ZQ0lOCjY4N15KT05BVEhBTiBNLiBXQUlOV1JJR0hUIFZBTUNeNjg3ICAgICBQRU5JQ0lMTElOCgogCi9lcy8gTElTQSBNIFdJTlRFUkJPVFRPTSwgTS5ELgpTdGFmZiBQaHlzaWNpYW4KU2lnbmVkOiAwMi8yNi8yMDIwIDEzOjAwCg=="
* content.attachment.title = "Discharge Summary"
* content.attachment.creation = "2020-02-26"
* context.related.reference = "#location-0"

Instance: 9ae81286-2f79-4852-a135-4699c69534ec
InstanceOf: JFM.PHR.note
Usage: #example
Title: "DS Note: 62846390"
Description: "Discharge Summary"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.7194"
* contained[=].name.text = "WINTERBOTTOM,LISA M"
* contained[=].name.family = "WINTERBOTTOM,LISA M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.62846390"
* status = #current
* type.coding[LO] = $loinc#18842-5
* type.text = "DISCHARGE SUMMARY"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2020-02-20T10:55:13Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2020-02-20T10:55:13Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRGlzY2hhcmdlIFN1bW1hcnkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBESVNDSEFSR0UgU1VNTUFSWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBGRUIgMjAsIDIwMjBAMTA6NTQgICAgIEVOVFJZIERBVEU6IEZFQiAyMCwgMjAyMEAxMDo1NDo1NiAgICAgIAogRElDVEFURUQgQlk6IFdJTlRFUkJPVFRPTSxMSVNBIE0gICAgIEFUVEVORElORzogV0lOVEVSQk9UVE9NLExJU0EgTSAgICAgICAgICAKICAgICBVUkdFTkNZOiByb3V0aW5lICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKREFURSBPRiBBRE1JU1NJT046IApEQVRFIE9GIERJU0NIQVJHRTogCkFUVEVORElORyBQSFlTSUNJQU46IAogClBSSU1BUlkgQ0FSRSBQUk9WSURFUi9GQUNJTElUWTogCiAKUFJJTUFSWSBESUFHTk9TSVMgRk9SIFRISVMgQURNSVNTSU9OOiAKIAogCk9USEVSIERJQUdOT1NFUyBUUkVBVEVEIERVUklORyBUSElTIEFETUlTU0lPTiBUSEFUIFdFUkUgUFJFU0VOVCBBVCBUSEUgClRJTUUgT0YgQURNSVNTSU9OOgogCiAKT1RIRVIgRElBR05PU0VTIFRSRUFURUQgRFVSSU5HIFRISVMgQURNSVNTSU9OIFRIQVQgREVWRUxPUEVEIEFGVEVSIApBRE1JU1NJT04sIElGIEFOWToKIAogClBST0NFRFVSRVMgUEVSRk9STUVEIERVUklORyBUSElTIEFETUlTU0lPTjogCiAKIApQRVJUSU5FTlQgSU1BR0lORyBQRVJGT1JNRUQgRFVSSU5HIFRISVMgQURNSVNTSU9OOiAKIChJbmNsdWRlIHN1bW1hcnkgb2YgbWFpbiBpbWFnaW5nIHJlc3VsdHMpCiAKIApDT05TVUxUUyBPQlRBSU5FRCBEVVJJTkcgVEhJUyBBRE1JU1NJT046IAogCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJSSUVGIEhQSSAoU0VFIEFETUlUIE5PVEUgRk9SIENPTVBMRVRFIERFVEFJTFMpOiAKIChQcmVzZW50aW5nIHN5bXB0b21zLCBwZXJ0aW5lbnQgZXhhbSwgbGFiIGFuZCBpbWFnaW5nIGZpbmRpbmdzKQogCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fIApIT1NQSVRBTCBDT1VSU0UsIEJZIFBST0JMRU06IAogKFBlcnRpbmVudCB0cmVhdG1lbnQgcHJvdmlkZWQsIGNvbXBsaWNhdGlvbnMsIHN1Z2dlc3Rpb25zIGZvcgogIGZ1dHVyZSBtYW5hZ2VtZW50LCBmb2xsb3cgdXAgY2FyZSBuZWVkZWQpCiAKICMgCiAjIAogIyAKICMgCiAjIAogCkVYQU0gT04gREFZIE9GIERJU0NIQVJHRTogCiBEaXNjaGFyZ2UgVml0YWxzOiAKIAogRm9jdXNlZCBFeGFtOiAKIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KRElTQ0hBUkdFIE1FRElDQVRJT04gTElTVAooTXVzdCBjb3B5IGFuZCBwYXN0ZSBmcm9tIFBoYXJtYWN5IERpc2NoYXJnZSBJbnN0cnVjdGlvbnMgc28gYm90aCBsaXN0cyAKbWF0Y2ggZXhhY3RseSkKIAovZXMvIExJU0EgTSBXSU5URVJCT1RUT00sIE0uRC4KU3RhZmYgUGh5c2ljaWFuClNpZ25lZDogMDIvMjAvMjAyMCAxMDo1NQo="
* content.attachment.title = "Discharge Summary"
* content.attachment.creation = "2020-02-20"
* context.related.reference = "#location-0"

Instance: 849fe26a-f7e8-4235-a9a2-597836d88e62
InstanceOf: JFM.PHR.note
Usage: #example
Title: "DS Note: 47760379"
Description: "Discharge Summary"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.47760379"
* status = #current
* type.coding[LO] = $loinc#18842-5
* type.text = "DISCHARGE SUMMARY"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2017-01-05T12:28:21Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2017-01-05T12:28:21Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRGlzY2hhcmdlIFN1bW1hcnkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBESVNDSEFSR0UgU1VNTUFSWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBKQU4gMDUsIDIwMTdAMTI6MjcgICAgIEVOVFJZIERBVEU6IEpBTiAwNSwgMjAxN0AxMjoyODowMyAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgICAgIEFUVEVORElORzogRE9VR0xBUyxEQVZJRCBNICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiByb3V0aW5lICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQVRURU5ESU5HIFBIWVNJQ0lBTjogCiAKUFJJTUFSWSBDQVJFIFBST1ZJREVSIEFORCBGQUNJTElJVFk6IAogClBSSU5DSVBBTCBESUFHTk9TSVM6IAogCk9USEVSIERJQUdOT1NFUyBUUkVBVEVEIE9SIElNUEFDVElORyBUUkVBVE1FTlQgVEhJUyBBRE1JU1NJT046CgoKIApQUk9DRURVUkVTIFBFUkZPUk1FRCBBVCBUSElTIEhPU1BJVEFMIERVUklORyBDVVJSRU5UIEFETUlTU0lPTjoKIApTVU1NQVJZOgooQUJCUkVWSUFURUQgSFBJLCBQRSwgQU5EIFBFUlRJTkVOVCBMQUJTKQogCiAKSE9TUElUQUwgQ09VUlNFOgogCiAKRlVOQ1RJT05BTCBTVEFUVVM6CihNQVkgSU5DTFVERSBBQ1RJVklUWSBMRVZFTCwgV09SSyBSRVNUUklDVElPTlMsIE9SIERJRVQpCiAKIApESVNDSEFSR0UgTUVESUNBVElPTlM6IAooSU5ESUNBVEUgQURESVRJT05TIE9SIENIQU5HRVMgV0lUSCBBTiBBU1RFUklTSykgCiAKIApNRURJQ0FUSU9OUyBUSEFUIEhBVkUgQkVFTiBESVNDT05USU5VRUQ6CiAKIAogCkNMSU5JQ0FMIElTU1VFUyBSRVFVSVJJTkcgRk9MTE9XIFVQIERVUklORyBQQyBQSE9ORSBBUFQ6CjEuCjIuCjMuCiAKIApBRERJVElPTkFMIEZPTExPVyBVUCBBUFBPSU5UTUVOVFM6ClNQRUNJQUxUWSAgICAgICAgICAgICAgIEVYUEVDVEVEIERBVEUgICBTQ0hFRFVMRUQoWS9OKSAgUE9JTlQgT0YgQ09OVEFDVAoxLgoyLgozLgogCiAKRk9MTE9XIFVQIExBQlMgSU5DTFVESU5HIFBBVEhPTE9HWSAmIE1JQ1JPQklPTE9HWToKVEVTVCAgICAgICAgICAgICAgICAgICAgT1JERVJFRChZL04pICAgIEVYUEVDVEVEIERBVEUgSUYgTk9UIE9SREVSRUQKMS4KMi4KMy4KIAogCkZPTExPVyBVUCBJTUFHSU5HIEFORCBQUk9DRURVUkVTOgpQUk9DRURVUkUgICAgICAgICAgICAgICBPUkRFUkVEKFkvTikgICAgRVhQRUNURUQgREFURSBJRiBOT1QgT1JERVJFRAoxLgoyLgozLgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDEvMDUvMjAxNyAxMjoyOAo="
* content.attachment.title = "Discharge Summary"
* content.attachment.creation = "2017-01-05"
* context.related.reference = "#location-0"

Instance: 9bb2c706-39c2-4e8a-a7e5-012b039af17a
InstanceOf: JFM.PHR.note
Usage: #example
Title: "DS Note: 47760462"
Description: "Discharge Summary"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.47760462"
* status = #current
* type.coding[LO] = $loinc#18842-5
* type.text = "DISCHARGE SUMMARY"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2017-01-05T12:31:23Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2017-01-05T12:31:23Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRGlzY2hhcmdlIFN1bW1hcnkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBESVNDSEFSR0UgU1VNTUFSWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBKQU4gMDUsIDIwMTdAMTI6MzAgICAgIEVOVFJZIERBVEU6IEpBTiAwNSwgMjAxN0AxMjozMTowOSAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgICAgIEFUVEVORElORzogRE9VR0xBUyxEQVZJRCBNICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiByb3V0aW5lICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQVRURU5ESU5HIFBIWVNJQ0lBTjogCiAKUFJJTUFSWSBDQVJFIFBST1ZJREVSIEFORCBGQUNJTElJVFk6IAogClBSSU5DSVBBTCBESUFHTk9TSVM6IAogCk9USEVSIERJQUdOT1NFUyBUUkVBVEVEIE9SIElNUEFDVElORyBUUkVBVE1FTlQgVEhJUyBBRE1JU1NJT046CgoKIApQUk9DRURVUkVTIFBFUkZPUk1FRCBBVCBUSElTIEhPU1BJVEFMIERVUklORyBDVVJSRU5UIEFETUlTU0lPTjoKIApTVU1NQVJZOgooQUJCUkVWSUFURUQgSFBJLCBQRSwgQU5EIFBFUlRJTkVOVCBMQUJTKQogCiAKSE9TUElUQUwgQ09VUlNFOgogCiAKRlVOQ1RJT05BTCBTVEFUVVM6CihNQVkgSU5DTFVERSBBQ1RJVklUWSBMRVZFTCwgV09SSyBSRVNUUklDVElPTlMsIE9SIERJRVQpCiAKIApESVNDSEFSR0UgTUVESUNBVElPTlM6IAooSU5ESUNBVEUgQURESVRJT05TIE9SIENIQU5HRVMgV0lUSCBBTiBBU1RFUklTSykgCiAKIApNRURJQ0FUSU9OUyBUSEFUIEhBVkUgQkVFTiBESVNDT05USU5VRUQ6CiAKIAogCkNMSU5JQ0FMIElTU1VFUyBSRVFVSVJJTkcgRk9MTE9XIFVQIERVUklORyBQQyBQSE9ORSBBUFQ6CjEuCjIuCjMuCiAKIApBRERJVElPTkFMIEZPTExPVyBVUCBBUFBPSU5UTUVOVFM6ClNQRUNJQUxUWSAgICAgICAgICAgICAgIEVYUEVDVEVEIERBVEUgICBTQ0hFRFVMRUQoWS9OKSAgUE9JTlQgT0YgQ09OVEFDVAoxLgoyLgozLgogCiAKRk9MTE9XIFVQIExBQlMgSU5DTFVESU5HIFBBVEhPTE9HWSAmIE1JQ1JPQklPTE9HWToKVEVTVCAgICAgICAgICAgICAgICAgICAgT1JERVJFRChZL04pICAgIEVYUEVDVEVEIERBVEUgSUYgTk9UIE9SREVSRUQKMS4KMi4KMy4KIAogCkZPTExPVyBVUCBJTUFHSU5HIEFORCBQUk9DRURVUkVTOgpQUk9DRURVUkUgICAgICAgICAgICAgICBPUkRFUkVEKFkvTikgICAgRVhQRUNURUQgREFURSBJRiBOT1QgT1JERVJFRAoxLgoyLgozLgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDEvMDUvMjAxNyAxMjozMQo="
* content.attachment.title = "Discharge Summary"
* content.attachment.creation = "2017-01-05"
* context.related.reference = "#location-0"

Instance: 58e372ef-e3a8-4b4e-a3ed-8ced732db859
InstanceOf: JFM.PHR.note
Usage: #example
Title: "DS Note: 43297305"
Description: "Discharge Summary"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.43297305"
* status = #current
* type.coding[LO] = $loinc#18842-5
* type.text = "DISCHARGE SUMMARY"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2016-01-13T08:51:47Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2016-01-13T08:51:47Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogRGlzY2hhcmdlIFN1bW1hcnkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBESVNDSEFSR0UgU1VNTUFSWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgRElDVCBEQVRFOiBKQU4gMTMsIDIwMTZAMDg6NTEgICAgIEVOVFJZIERBVEU6IEpBTiAxMywgMjAxNkAwODo1MTozMSAgICAgIAogRElDVEFURUQgQlk6IERPVUdMQVMsREFWSUQgTSAgICAgICAgIEFUVEVORElORzogRE9VR0xBUyxEQVZJRCBNICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiByb3V0aW5lICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQVRURU5ESU5HIFBIWVNJQ0lBTjogCiAKUFJJTUFSWSBDQVJFIFBST1ZJREVSIEFORCBGQUNJTElJVFk6IAogClBSSU5DSVBBTCBESUFHTk9TSVM6IAogCk9USEVSIERJQUdOT1NFUyBUUkVBVEVEIE9SIElNUEFDVElORyBUUkVBVE1FTlQgVEhJUyBBRE1JU1NJT046CgoKIApQUk9DRURVUkVTIFBFUkZPUk1FRCBBVCBUSElTIEhPU1BJVEFMIERVUklORyBDVVJSRU5UIEFETUlTU0lPTjoKIApTVU1NQVJZOgooQUJCUkVWSUFURUQgSFBJLCBQRSwgQU5EIFBFUlRJTkVOVCBMQUJTKQogCiAKSE9TUElUQUwgQ09VUlNFOgogCiAKRlVOQ1RJT05BTCBTVEFUVVM6CihNQVkgSU5DTFVERSBBQ1RJVklUWSBMRVZFTCwgV09SSyBSRVNUUklDVElPTlMsIE9SIERJRVQpCiAKIApESVNDSEFSR0UgTUVESUNBVElPTlM6IAooSU5ESUNBVEUgQURESVRJT05TIE9SIENIQU5HRVMgV0lUSCBBTiBBU1RFUklTSykgCiAKIApNRURJQ0FUSU9OUyBUSEFUIEhBVkUgQkVFTiBESVNDT05USU5VRUQ6CiAKIAogCkNMSU5JQ0FMIElTU1VFUyBSRVFVSVJJTkcgRk9MTE9XIFVQIERVUklORyBQQyBQSE9ORSBBUFQ6CjEuCjIuCjMuCiAKIApBRERJVElPTkFMIEZPTExPVyBVUCBBUFBPSU5UTUVOVFM6ClNQRUNJQUxUWSAgICAgICAgICAgICAgIEVYUEVDVEVEIERBVEUgICBTQ0hFRFVMRUQoWS9OKSAgUE9JTlQgT0YgQ09OVEFDVAoxLgoyLgozLgogCiAKRk9MTE9XIFVQIExBQlMgSU5DTFVESU5HIFBBVEhPTE9HWSAmIE1JQ1JPQklPTE9HWToKVEVTVCAgICAgICAgICAgICAgICAgICAgT1JERVJFRChZL04pICAgIEVYUEVDVEVEIERBVEUgSUYgTk9UIE9SREVSRUQKMS4KMi4KMy4KIAogCkZPTExPVyBVUCBJTUFHSU5HIEFORCBQUk9DRURVUkVTOgpQUk9DRURVUkUgICAgICAgICAgICAgICBPUkRFUkVEKFkvTikgICAgRVhQRUNURUQgREFURSBJRiBOT1QgT1JERVJFRAoxLgoyLgozLgogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDEvMTMvMjAxNiAwODo1MQo="
* content.attachment.title = "Discharge Summary"
* content.attachment.creation = "2016-01-13"
* context.related.reference = "#location-0"


Instance: c578f7cb-8002-4ab1-8917-d1cd84b1f638
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 58196324"
Description: "CARDIOLOGY - E-CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.58196324"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2019-03-16T05:48:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2019-03-16T06:15:25Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ0FSRElPTE9HWSAtIEUtQ09OU1VMVCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBNQVIgMTYsIDIwMTlAMDU6NDggICAgIEVOVFJZIERBVEU6IE1BUiAxNiwgMjAxOUAwNTo0OToxMSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKVEhJUyBJUyBBIFRFU1QKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDAzLzE2LzIwMTkgMDY6MTUK"
* content.attachment.title = "CARDIOLOGY - E-CONSULT"
* content.attachment.creation = "2019-03-16T05:48:00Z"
* context.related.reference = "#location-0"

Instance: b7289c96-ed07-4346-92d1-5b4ba105c2b5
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 56889160"
Description: "ANESTHESIA - E-CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.56889160"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "ANESTHESIOLOGY CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-12-05T11:37:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-12-05T11:37:36Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQU5FU1RIRVNJQSAtIEUtQ09OU1VMVCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBBTkVTVEhFU0lPTE9HWSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBERUMgMDUsIDIwMThAMTE6MzcgICAgIEVOVFJZIERBVEU6IERFQyAwNSwgMjAxOEAxMTozNzoyNyAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKdGVzdAogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMTIvMDUvMjAxOCAxMTozNwo="
* content.attachment.title = "ANESTHESIA - E-CONSULT"
* content.attachment.creation = "2018-12-05T11:37:00Z"
* context.related.reference = "#location-0"

Instance: bf51989c-a68f-47f5-b803-9d8462b6c291
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 55856227"
Description: "CLINICAL PHARMACY - E-CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.3542"
* contained[=].name.text = "COLLEY,COLLEEN A"
* contained[=].name.family = "COLLEY,COLLEEN A"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.55856227"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "PHARMACY CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-09-19T13:09:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-09-19T13:09:54Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ0xJTklDQUwgUEhBUk1BQ1kgLSBFLUNPTlNVTFQgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQSEFSTUFDWSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBTRVAgMTksIDIwMThAMTM6MDkgICAgIEVOVFJZIERBVEU6IFNFUCAxOSwgMjAxOEAxMzowOToyMSAgICAgIAogICAgICBBVVRIT1I6IENPTExFWSxDT0xMRUVOIEEgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKUGxlYXNlIG9idGFpbiBvdXRzaWRlIHJlY29yZHMgYW5kIHBlcmZvcm0gbWVkaWNhdGlvbiByZWNvbmNpbGlhdGlvbiBwcmlvciB0byAKcmVzdWJtaXR0aW5nIGFuIGFudGktY29hZyBjb25zdWx0CiAKL2VzLyBEQVZJRCBNLiBET1VHTEFTIE1ECkNISUVGIEhFQUxUSCBJTkZPUk1BVElDUyBPRkZJQ0VSL0FUVEVORElORyBQU1lDSElBVFJJU1QKU2lnbmVkOiAwOS8xOS8yMDE4IDEzOjA5CmZvciBDb2xsZWVuIEEuIENvbGxleSBQaGFybS5ELiAgICAgICAgICAgICAgICAgICAgCkFudGljb2FndWxhdGlvbiBQcm9ncmFtIE1hbmFnZXIsIENsaW5pY2FsIFBoYXJtYWN5Cg=="
* content.attachment.title = "CLINICAL PHARMACY - E-CONSULT"
* content.attachment.creation = "2018-09-19T13:09:00Z"
* context.related.reference = "#location-0"

Instance: 9441ec45-ed79-4581-825d-75c1cd564c54
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 54812639"
Description: "PULMONARY - LUNG CANCER SCREENING CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.377519"
* contained[=].name.text = "SADAK,CYNTHIA H"
* contained[=].name.family = "SADAK,CYNTHIA H"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.377519"
* contained[=].name.text = "SADAK,CYNTHIA H"
* contained[=].name.family = "SADAK,CYNTHIA H"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.54812639"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "PREVENTIVE MEDICINE CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-07-03T08:04:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-07-03T08:05:47Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUFVMTU9OQVJZIC0gTFVORyBDQU5DRVIgU0NSRUVOSU5HIENPTlNVTFQgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQUkVWRU5USVZFIE1FRElDSU5FIENPTlNVTFQgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVUwgMDMsIDIwMThAMDg6MDQgICAgIEVOVFJZIERBVEU6IEpVTCAwMywgMjAxOEAwODowNDoyMyAgICAgIAogICAgICBBVVRIT1I6IFNBREFLLENZTlRISUEgSCAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKQWRkaXRpb25hbCBub3RlIHRvIHVwZGF0ZSBMQ1MgcmVnaXN0cnk6CgpUZXN0IHBhdGllbnQgd2l0aCBMQ1MgY29uc3VsdCwgdGVzdCBwYXRpZW50IG5vdyBzaG93aW5nIGluIExDUyByZWdpc3RyeSB1bmRlciAKbmV3IGNvbnN1bHRzLCB3aWxsIHJlbW92ZSB0ZXN0IHBhdGllbnQgZnJvbSByZWdpc3RyeSB3aXRoIHRoaXMgbm90ZS4KCkx1bmcgQ2FuY2VyIFNjcmVlbmluZyBSZWZlcnJhbAogIFBhdGllbnQgbm8gbG9uZ2VyIGluIHRhcmdldCBwb3B1bGF0aW9uLgoKIAovZXMvIENZTlRISUEgSCBTQURBSwpMdW5nIENhbmNlciBTY3JlZW5pbmcgUk4gQ29vcmRpbmF0b3IKU2lnbmVkOiAwNy8wMy8yMDE4IDA4OjA1Cg=="
* content.attachment.title = "PULMONARY - LUNG CANCER SCREENING CONSULT"
* content.attachment.creation = "2018-07-03T08:04:00Z"
* context.related.reference = "#location-0"

Instance: 0d6b882f-34e2-4e88-8ef4-29de9c3cf102
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 54705220"
Description: "WOUND - E-CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.54705220"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "WOUND CARE CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-06-25T09:35:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-06-25T09:36:02Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogV09VTkQgLSBFLUNPTlNVTFQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBXT1VORCBDQVJFIENPTlNVTFQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBKVU4gMjUsIDIwMThAMDk6MzUgICAgIEVOVFJZIERBVEU6IEpVTiAyNSwgMjAxOEAwOTozNTozNiAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKcGxlYXNlIHByb3ZpZGUgdGhpcyBhZGRpdGlvbmFsIGluZm9ybWF0aW9uIHRvIHByb2Nlc3MgdGhpcyBjb25zdWx0LiAKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA2LzI1LzIwMTggMDk6MzYK"
* content.attachment.title = "WOUND - E-CONSULT"
* content.attachment.creation = "2018-06-25T09:35:00Z"
* context.related.reference = "#location-0"

Instance: 0dff0f4b-4c90-4db0-88cb-e4b0552956d0
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 54345827"
Description: "CLINICAL PHARMACY - MENTAL HEALTH E-CONSULT"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.54345827"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "PHARMACY CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-05-29T07:45:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-05-29T07:48:09Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ0xJTklDQUwgUEhBUk1BQ1kgLSBNRU5UQUwgSEVBTFRIIEUtQ09OU1VMVCAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQSEFSTUFDWSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBNQVkgMjksIDIwMThAMDc6NDUgICAgIEVOVFJZIERBVEU6IE1BWSAyOSwgMjAxOEAwNzo0NjoxNyAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKdGVzdAogCi9lcy8gREFWSUQgTS4gRE9VR0xBUyBNRApDSElFRiBIRUFMVEggSU5GT1JNQVRJQ1MgT0ZGSUNFUi9BVFRFTkRJTkcgUFNZQ0hJQVRSSVNUClNpZ25lZDogMDUvMjkvMjAxOCAwNzo0OAo="
* content.attachment.title = "CLINICAL PHARMACY - MENTAL HEALTH E-CONSULT"
* content.attachment.creation = "2018-05-29T07:45:00Z"
* context.related.reference = "#location-0"

Instance: 1eb498e9-0668-4925-9c98-888c2308abc5
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 53889003"
Description: "COMMUNITY CARE-CONSULT RESULT NOTE"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.53889003"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "NONVA CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-04-24T07:44:51Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-04-24T07:44:51Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ09NTVVOSVRZIENBUkUtQ09OU1VMVCBSRVNVTFQgTk9URSAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBOT05WQSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBUFIgMjQsIDIwMTggICAgICAgICAgIEVOVFJZIERBVEU6IEFQUiAyNCwgMjAxOEAwNzo0NDo1MCAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgVmlzdEEgSW1hZ2luZyAtIFNjYW5uZWQgRG9jdW1lbnQKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA0LzI0LzIwMTggMDc6NDQK"
* content.attachment.title = "COMMUNITY CARE-CONSULT RESULT NOTE"
* content.attachment.creation = "2018-04-24"
* context.related.reference = "#location-0"

Instance: 1b36c49d-0708-47fe-8bce-87cd5209a6e2
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 53889052"
Description: "COMMUNITY CARE-CONSULT RESULT NOTE"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.2926"
* contained[=].name.text = "DOUGLAS,DAVID M"
* contained[=].name.family = "DOUGLAS,DAVID M"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.53889052"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "NONVA CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-04-24T07:47:36Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-04-24T07:47:36Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogQ09NTVVOSVRZIENBUkUtQ09OU1VMVCBSRVNVTFQgTk9URSAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBOT05WQSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBUFIgMjQsIDIwMTggICAgICAgICAgIEVOVFJZIERBVEU6IEFQUiAyNCwgMjAxOEAwNzo0NzozNSAgICAgIAogICAgICBBVVRIT1I6IERPVUdMQVMsREFWSUQgTSAgICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKICAgVmlzdEEgSW1hZ2luZyAtIFNjYW5uZWQgRG9jdW1lbnQKIAovZXMvIERBVklEIE0uIERPVUdMQVMgTUQKQ0hJRUYgSEVBTFRIIElORk9STUFUSUNTIE9GRklDRVIvQVRURU5ESU5HIFBTWUNISUFUUklTVApTaWduZWQ6IDA0LzI0LzIwMTggMDc6NDcKClJlY2VpcHQgQWNrbm93bGVkZ2VkIEJ5OgoqIEFXQUlUSU5HIFNJR05BVFVSRSAqICAgICAgIE1DS0VPV04sTkFUSEFOQUVMIEogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK"
* content.attachment.title = "COMMUNITY CARE-CONSULT RESULT NOTE"
* content.attachment.creation = "2018-04-24"
* context.related.reference = "#location-0"

Instance: de517264-b4d0-454b-9afa-46a4491c2009
InstanceOf: JFM.PHR.note
Usage: #example
Title: "CR Note: 53661869"
Description: "PODIATRY - CONSULT REQUESTED"
//* meta.extension[lastSourceSync].valueDateTime = 2024-01-14T08:59:26.5669915-06:00
* contained[0].resourceType = "Practitioner"
* contained[=].id = "author-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.114539"
* contained[=].name.text = "QUIJANO,VICTOR J"
* contained[=].name.family = "QUIJANO,VICTOR J"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "approvedBy-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.practitioner"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "AuthorTO.114539"
* contained[=].name.text = "QUIJANO,VICTOR J"
* contained[=].name.family = "QUIJANO,VICTOR J"
* contained[+].resourceType = "Location"
* contained[=].id = "location-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.location"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* contained[=].identifier.value = "LocationTO.648"
* contained[=].name = "PORTLAND VA MEDICAL CENTER"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "NoteTO.53661869"
* status = #current
* type.coding[LO] = $loinc#11488-4
* type.text = "PODIATRY CONSULT"
* category = $us-core-documentreference-category#clinical-note
* subject = Reference(Patient/ex-MHV-patient-0)
* date = "2018-04-06T11:14:00Z"
* author.reference = "#author-0"
* authenticator.extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/noteAuthenticatedWhen"
* authenticator.extension.valueDateTime = "2018-04-06T11:15:26Z"
* authenticator.reference = "#approvedBy-0"
* content.attachment.contentType = #text/plain
* content.attachment.data = "CiBMT0NBTCBUSVRMRTogUE9ESUFUUlkgLSBDT05TVUxUIFJFUVVFU1RFRCAgICAgICAgICAgICAgICAgICAgICAgClNUQU5EQVJEIFRJVExFOiBQT0RJQVRSWSBDT05TVUxUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKREFURSBPRiBOT1RFOiBBUFIgMDYsIDIwMThAMTE6MTQgICAgIEVOVFJZIERBVEU6IEFQUiAwNiwgMjAxOEAxMToxNToxMSAgICAgIAogICAgICBBVVRIT1I6IFFVSUpBTk8sVklDVE9SIEogICAgIEVYUCBDT1NJR05FUjogICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICBVUkdFTkNZOiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVEFUVVM6IENPTVBMRVRFRCAgICAgICAgICAgICAgICAgICAgIAoKdGVzdAogCi9lcy8gVklDVE9SIEogUVVJSkFOTyBKciBEUE0sIFBoRApQb2RpYXRyeQpTaWduZWQ6IDA0LzA2LzIwMTggMTE6MTUK"
* content.attachment.title = "PODIATRY - CONSULT REQUESTED"
* content.attachment.creation = "2018-04-06T11:14:00Z"
* context.related.reference = "#location-0"