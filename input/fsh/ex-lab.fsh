




///////////////////////////////////////////////////  1  ////////////////////////////////////////


Instance:   ex-MHV-specimen-1
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <id>6Y100</id>
    <name>FECES</name>
    <collectionDate>2950730</collectionDate>
    <accessionNum>PARAS 95 264</accessionNum>
</specimen>
*/
/*
Accession [UID]: PARAS 95 264 []            Received: Aug 01, 1995@11:02
Collection sample: STOOL               Collection date: Jul 30, 1995
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 03, 1995   TECH CODE: 1003
Parasitology Remark(s):
NO OVA OR PARASITES FOUND
*/
* status = #available
* type.text = "STOOL"
* collection.collectedDateTime = 1995-07-30
* identifier[TOid].value = "LabSpecimenTO.6Y100" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* accessionIdentifier.value = "PARAS 95 264"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual
* collection.bodySite.text = "FECES"

Instance: ex-MHV-labTest-1
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>NO OVA OR PARASITES FOUND</value>
    </result>
    <id>MI;7049269;1</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950803.144900</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049269;1"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "NO OVA OR PARASITES FOUND"
* issued = 1995-08-03T14:49:00Z
* effectiveDateTime = 1995-07-30
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)

Instance: ex-MHV-labReport-1
InstanceOf: JFM.PHR.MBlabReport 
Title: "Lab 1"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[MBLabSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* code.text = "LR MICROBIOLOGY REPORT"
* code = LOINC#18725-2
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1995-08-03T14:49:00Z
* issued = 1995-08-03T14:49:00Z
* identifier[TOid].value = "LabReportTO.MI;7049269" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-labTest-1
* result[+] = Reference(ex-MHV-labTest-1)
* contained[+] = ex-MHV-specimen-1
* specimen[+] = Reference(ex-MHV-specimen-1)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-mangas
* performer[+] = Reference(ex-MHV-practitioner-mangas)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
QWNjZXNzaW9uIFtVSURdOiBQQVJBUyA5NSAyNjQgW10gICAgICAgICAgICBSZWNlaXZlZDogQXVnIDAxLCAxOTk1QDExOjAyCkNvbGxlY3Rpb24gc2FtcGxlOiBTVE9PTCAgICAgICAgICAgICAgIENvbGxlY3Rpb24gZGF0ZTogSnVsIDMwLCAxOTk1ClNpdGUvU3BlY2ltZW46IEZFQ0VTClByb3ZpZGVyOiBNQU5HQVMsUEhZTExJUyBBCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiogUEFSQVNJVE9MT0dZIEZJTkFMIFJFUE9SVCA9PiBBdWcgMDMsIDE5OTUgICBURUNIIENPREU6IDEwMDMKUGFyYXNpdG9sb2d5IFJlbWFyayhzKToKTk8gT1ZBIE9SIFBBUkFTSVRFUyBGT1VORAo=
"""
/*
Accession [UID]: PARAS 95 264 []            Received: Aug 01, 1995@11:02
Collection sample: STOOL               Collection date: Jul 30, 1995
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 03, 1995   TECH CODE: 1003
Parasitology Remark(s):
NO OVA OR PARASITES FOUND
*/


//////////////////////////////////////////////////  2  ///////////////////////////////////


Instance:   ex-MHV-specimen-2
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <id>6Y100</id>
    <name>FECES</name>
    <collectionDate>2950729.07</collectionDate>
    <accessionNum>PARAS 95 263</accessionNum>
</specimen>
*/
/*
Accession [UID]: PARAS 95 263 []            Received: Aug 01, 1995@11:02
Collection sample: STOOL               Collection date: Jul 29, 1995 07:00
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 03, 1995   TECH CODE: 1003
Parasitology Remark(s):
NO OVA OR PARASITES FOUND 
MODERATE WBC'S SEEN 
MODERATE YEAST
*/
* status = #available
* type.text = "STOOL"
* collection.collectedDateTime = 1995-07-29T07:00:00Z
* identifier[TOid].value = "LabSpecimenTO.6Y100" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* accessionIdentifier.value = "PARAS 95 263"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual
* collection.bodySite.text = "FECES"

Instance: ex-MHV-labTest-2
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>NO OVA OR PARASITES FOUND</value>
    </result>
    <id>MI;7049269.93;1</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950803.144900</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049269.93;1"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "NO OVA OR PARASITES FOUND"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)

Instance: ex-MHV-labTest-3
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>MODERATE WBC'S SEEN</value>
    </result>
    <id>MI;7049269.93;2</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950803.144900</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049269.93;2"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "MODERATE WBC'S SEEN"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)

Instance: ex-MHV-labTest-4
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>MODERATE YEAST</value>
    </result>
    <id>MI;7049269.93;3</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950803.144900</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049269.93;3"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "MODERATE YEAST"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)



Instance: ex-MHV-labReport-2
InstanceOf: JFM.PHR.MBlabReport 
Title: "Lab 2"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[MBLabSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* code.text = "LR MICROBIOLOGY REPORT"
* code.coding = LOINC#18725-2
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1995-08-03T14:49:00Z
* issued = 1995-08-03T14:49:00Z
* identifier[TOid].value = "LabReportTO.MI;7049269.93" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-labTest-2
* result[+] = Reference(ex-MHV-labTest-2)
* contained[+] = ex-MHV-labTest-3
* result[+] = Reference(ex-MHV-labTest-3)
* contained[+] = ex-MHV-labTest-4
* result[+] = Reference(ex-MHV-labTest-4)
* contained[+] = ex-MHV-specimen-2
* specimen[+] = Reference(ex-MHV-specimen-2)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-mangas
* performer[+] = Reference(ex-MHV-practitioner-mangas)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
QWNjZXNzaW9uIFtVSURdOiBQQVJBUyA5NSAyNjMgW10gICAgICAgICAgICBSZWNlaXZlZDogQXVnIDAxLCAxOTk1QDExOjAyCkNvbGxlY3Rpb24gc2FtcGxlOiBTVE9PTCAgICAgICAgICAgICAgIENvbGxlY3Rpb24gZGF0ZTogSnVsIDI5LCAxOTk1IDA3OjAwClNpdGUvU3BlY2ltZW46IEZFQ0VTClByb3ZpZGVyOiBNQU5HQVMsUEhZTExJUyBBCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiogUEFSQVNJVE9MT0dZIEZJTkFMIFJFUE9SVCA9PiBBdWcgMDMsIDE5OTUgICBURUNIIENPREU6IDEwMDMKUGFyYXNpdG9sb2d5IFJlbWFyayhzKToKTk8gT1ZBIE9SIFBBUkFTSVRFUyBGT1VORCAKTU9ERVJBVEUgV0JDJ1MgU0VFTiAKTU9ERVJBVEUgWUVBU1QK
"""
/*
Accession [UID]: PARAS 95 263 []            Received: Aug 01, 1995@11:02
Collection sample: STOOL               Collection date: Jul 29, 1995 07:00
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 03, 1995   TECH CODE: 1003
Parasitology Remark(s):
NO OVA OR PARASITES FOUND 
MODERATE WBC'S SEEN 
MODERATE YEAST
*/

////////////////////////////////////////////////// 3 ///////////////////////////////////////



Instance:   ex-MHV-specimen-3
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <id>6Y100</id>
    <name>FECES</name>
    <collectionDate>2950728</collectionDate>
    <accessionNum>PARAS 95 262</accessionNum>
</specimen>
*/
/*
Accession [UID]: PARAS 95 262 []            Received: Aug 01, 1995@11:00
Collection sample: STOOL               Collection date: Jul 28, 1995
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 01, 1995   TECH CODE: 420
Parasitology Remark(s):
REJECTED=LEAKED
*/
* status = #available
* type.text = "STOOL"
* collection.collectedDateTime = 1995-07-28
* identifier[TOid].value = "LabSpecimenTO.6Y100" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* accessionIdentifier.value = "PARAS 95 262"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual
* collection.bodySite.text = "FECES"

Instance: ex-MHV-labTest-5
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>REJECTED=LEAKED</value>
    </result>
    <id>MI;7049271;1</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950801.110700</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049271;1"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "REJECTED=LEAKED"
* effectiveDateTime = 1995-08-01T11:07:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)

Instance: ex-MHV-labTest-6
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>MODERATE WBC'S SEEN</value>
    </result>
    <id>MI;7049271;2</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950801.110700</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049271;2"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "MODERATE WBC'S SEEN"
* effectiveDateTime = 1995-08-01T11:07:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)

Instance: ex-MHV-labTest-7
InstanceOf: JFM.PHR.labTest 
Usage: #inline
/*
<labTestTO>
    <result>
        <value>MODERATE YEAST</value>
    </result>
    <id>MI;7049271;3</id>
    <name>Parasitology Remark(s)</name>
</labTestTO>
...
<labResultTO>
    <result>
        <timestamp>2950801.110700</timestamp>
        <labSiteId>989</labSiteId>
    </result>
</labResultTO>
*/
* status = #final
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* identifier[TOid].value = "LabTestTO.MI;7049271;3"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* valueString = "MODERATE YEAST"
* effectiveDateTime = 1995-08-01T11:07:00Z
* performer = Reference(Organization/ex-MHV-organization-989)
* subject = Reference(Patient/ex-MHV-patient-1)



Instance: ex-MHV-labReport-3
InstanceOf: JFM.PHR.MBlabReport 
Title: "Lab 3"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[MBLabSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* code.text = "LR MICROBIOLOGY REPORT"
* code.coding = LOINC#18725-2
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1995-08-01T11:07:00Z
* issued = 1995-08-01T11:07:00Z
* identifier[TOid].value = "LabReportTO.MI;7049271" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-labTest-5
* result[+] = Reference(ex-MHV-labTest-5)
* contained[+] = ex-MHV-labTest-6
* result[+] = Reference(ex-MHV-labTest-6)
* contained[+] = ex-MHV-labTest-7
* result[+] = Reference(ex-MHV-labTest-7)
* contained[+] = ex-MHV-specimen-3
* specimen[+] = Reference(ex-MHV-specimen-3)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-mangas
* performer[+] = Reference(ex-MHV-practitioner-mangas)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
QWNjZXNzaW9uIFtVSURdOiBQQVJBUyA5NSAyNjIgW10gICAgICAgICAgICBSZWNlaXZlZDogQXVnIDAxLCAxOTk1QDExOjAwCkNvbGxlY3Rpb24gc2FtcGxlOiBTVE9PTCAgICAgICAgICAgICAgIENvbGxlY3Rpb24gZGF0ZTogSnVsIDI4LCAxOTk1ClNpdGUvU3BlY2ltZW46IEZFQ0VTClByb3ZpZGVyOiBNQU5HQVMsUEhZTExJUyBBCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiogUEFSQVNJVE9MT0dZIEZJTkFMIFJFUE9SVCA9PiBBdWcgMDEsIDE5OTUgICBURUNIIENPREU6IDQyMApQYXJhc2l0b2xvZ3kgUmVtYXJrKHMpOgpSRUpFQ1RFRD1MRUFLRUQK
"""
/*
Accession [UID]: PARAS 95 262 []            Received: Aug 01, 1995@11:00
Collection sample: STOOL               Collection date: Jul 28, 1995
Site/Specimen: FECES
Provider: MANGAS,PHYLLIS A
                                                        
* PARASITOLOGY FINAL REPORT => Aug 01, 1995   TECH CODE: 420
Parasitology Remark(s):
REJECTED=LEAKED
*/

//////////////////////////////////////////////////  4  //////////////////////////////////////////////


Instance:   ex-MHV-specimen-4
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <name>OLD HARDWARE LEFT FOOT X2</name>
    <collectionDate>3000809</collectionDate>
    <accessionNum>SP 00 1982</accessionNum>
</specimen>
*/
* status = #available
* type.text = "OLD HARDWARE LEFT FOOT X2"
* collection.collectedDateTime = 2000-08-09
* accessionIdentifier.value = "SP 00 1982"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual



Instance: ex-MHV-labReport-4
InstanceOf: JFM.PHR.SPlabReport 
Title: "Lab 4"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[us-core] = LOINC#LP7839-6
* code.text = "LR SURGICAL PATHOLOGY REPORT"
* code.coding = LOINC#27898-6
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 2000-08-10T15:56:00Z
* issued = 2000-08-10T15:56:00Z
* identifier[TOid].value = "LabReportTo.SP;6999190" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-specimen-4
* specimen[+] = Reference(ex-MHV-specimen-4)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-seetha
* performer[+] = Reference(Practitioner/ex-MHV-practitioner-seetha)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
RGF0ZSBTcGVjIHRha2VuOiBBdWcgMDksIDIwMDAgICAgICAgIFBhdGhvbG9naXN0OlNFRVRIQSBTVVJZQVBSQVNBRCBNRApEYXRlIFNwZWMgcmVjJ2Q6IEF1ZyAwOSwgMjAwMCAxNjoxNCAgUmVzaWRlbnQ6IApEYXRlICBjb21wbGV0ZWQ6IEF1ZyAxMCwgMjAwMCAgICAgICAgQWNjZXNzaW9uICM6IFNQIDAwIDE5ODIKU3VibWl0dGVkIGJ5OiBNQVJLIE1BWlVSIE1EICAgICAgICAgIFByYWN0aXRpb25lcjpNQVJLIE1BWlVSIERQTQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNwZWNpbWVuOiAKT0xEIEhBUkRXQVJFIExFRlQgRk9PVCBYMgpCcmllZiBDbGluaWNhbCBIaXN0b3J5OgpUaGlzIDcxIHkvbyB3bSBwcmVzZW50cyB3aXRoIHBhaW5mdWwgaGFyZHdhcmUgTCAxc3QgbWV0YXRhcnNhbCBoZWFkLiBUaGUKcGlucyB3ZXJlIGluc2VydGVkIDMgeWVhcnMgYWdvIGZvciBhIGJ1bmlvbiBwcm9jZWR1cmUuIFRoZSBCdW5pb25wcm9jZWR1cmUKaXMgd2VsbCBoZWFsZWQgYW5kIHB0IGlzIG5vdyB3YW50aW5nIHRoZSBwaW4gcmVtb3ZlZC4gV2lsbCBwcm9iYWJseSBuZWVkCmstd2lyZSBkcml2ZXIgYW5kIHBvd2VyIGZvciB0aGlzIGNhc2UuClByZW9wZXJhdGl2ZSBEaWFnbm9zaXM6ClBBSU5GVUwgSEFSRFdBUkUgTEVGVCBGSVJTVCBNRVRBVEFSU0FMIApQb3N0b3BlcmF0aXZlIERpYWdub3NpczoKUEFJTkZVTCBIQVJEV0FSRSBMRUZUIEZJUlNUIE1FVEFUQVJTQUwgCkdyb3NzIGRlc2NyaXB0aW9uOgpSRUNFSVZFRCBVTkZJWEVEIEFORCBMQUJFTEVEICJPTEQgSEFSRFdBUkUgTEVGVCBGT09UIFggMiIgQ09OU0lTVFMgT0YgVFdPCjEuNyBDTSBBTkQgMi41IENNIExPTkcgMSBNTSBXSURFIE1FVEFMTElDIFBJTlMuCnxUQUJ8fE5PV1JBUHwKRElBR05PU0lTOiBIQVJEV0FSRSAoQ0xJTklDQUxMWSBGUk9NIExFRlQgRk9PVCkK
"""
/*
Date Spec taken: Aug 09, 2000        Pathologist:SEETHA SURYAPRASAD MD
Date Spec rec'd: Aug 09, 2000 16:14  Resident: 
Date  completed: Aug 10, 2000        Accession #: SP 00 1982
Submitted by: MARK MAZUR MD          Practitioner:MARK MAZUR DPM
-------------------------------------------------------------------------------
Specimen: 
OLD HARDWARE LEFT FOOT X2
Brief Clinical History:
This 71 y/o wm presents with painful hardware L 1st metatarsal head. The
pins were inserted 3 years ago for a bunion procedure. The Bunionprocedure
is well healed and pt is now wanting the pin removed. Will probably need
k-wire driver and power for this case.
Preoperative Diagnosis:
PAINFUL HARDWARE LEFT FIRST METATARSAL 
Postoperative Diagnosis:
PAINFUL HARDWARE LEFT FIRST METATARSAL 
Gross description:
RECEIVED UNFIXED AND LABELED "OLD HARDWARE LEFT FOOT X 2" CONSISTS OF TWO
1.7 CM AND 2.5 CM LONG 1 MM WIDE METALLIC PINS.
|TAB||NOWRAP|
DIAGNOSIS: HARDWARE (CLINICALLY FROM LEFT FOOT)
*/


//////////////////////////////////////////////////  5  //////////////////////////////////////////////


Instance:   ex-MHV-specimen-5
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <name>POLYPS (A) CECAL,        (B) PROXIMAL ASCENDING,        (C) RECTAL</name>
    <collectionDate>2990924</collectionDate>
    <accessionNum>SP 99 2207</accessionNum>
</specimen>
*/
* status = #available
* type.text = "POLYPS (A) CECAL,        (B) PROXIMAL ASCENDING,        (C) RECTAL"
* collection.collectedDateTime = 1999-09-24
* accessionIdentifier.value = "SP 99 2207"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual



Instance: ex-MHV-labReport-5
InstanceOf: JFM.PHR.SPlabReport 
Title: "Lab 5"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[us-core] = LOINC#LP7839-6
* code.text = "LR SURGICAL PATHOLOGY REPORT"
* code.coding = LOINC#27898-6
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1999-09-27T13:07:00Z
* issued = 1999-09-27T13:07:00Z
* identifier[TOid].value = "LabReportTO.SP;7009075" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-specimen-5
* specimen[+] = Reference(ex-MHV-specimen-5)
* contained[+] = ex-MHV-organization-989
* performer = Reference(Organization/ex-MHV-organization-989)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
RGF0ZSBTcGVjIHRha2VuOiBTZXAgMjQsIDE5OTkgICAgICAgIFBhdGhvbG9naXN0OkpBWkJJRUggTU9FWlpJIE1ECkRhdGUgU3BlYyByZWMnZDogU2VwIDI0LCAxOTk5IDEzOjQ2ICBSZXNpZGVudDogCkRhdGUgIGNvbXBsZXRlZDogU2VwIDI3LCAxOTk5ICAgICAgICBBY2Nlc3Npb24gIzogU1AgOTkgMjIwNwpTdWJtaXR0ZWQgYnk6IEtIVVJTSElEIFlPVVNVRiBNRCAgICAgUHJhY3RpdGlvbmVyOktIVVJTSElEIFlPVVNVRgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNwZWNpbWVuOiAKUE9MWVBTIChBKSBDRUNBTAogICAgICAgKEIpIFBST1hJTUFMIEFTQ0VORElORwogICAgICAgKEMpIFJFQ1RBTApCcmllZiBDbGluaWNhbCBIaXN0b3J5OgpDT0xPTiBQT0xZUFMgUEVSIEZMRVggU0lHClByZW9wZXJhdGl2ZSBEaWFnbm9zaXM6CkNPTE9OIFBPTFlQUwpPcGVyYXRpdmUgRmluZGluZ3M6CnxUQUJ8fE5PV1JBUHwKMS4gQ0VDQUwgUE9MWVBTIFggMgoyLiBBU0NFTkRJTkcgQ09MT04gUE9MWVAKMy4gUkVDVEFMIFBPTFlQClBvc3RvcGVyYXRpdmUgRGlhZ25vc2lzOgpTQU1FCkdyb3NzIGRlc2NyaXB0aW9uOgp8VEFCfHxOT1dSQVB8ClNQRUNJTUVOIChBKSBMQUJFTEVEIENFQ0FMIFBPTFlQIFggMi4gIFJFQ0VJVkVEIElOIEZPUk1BTElOIElTIE9ORSBQQUxFCkdSRVkgVElTU1VFIEZSQUdNRU5UIE1FQVNVUklORyAwLjQgQ00gSU4gRElBTUVURVIuICBFTUJFRERFRCBFTlRJUkVMWSBJTgpPTkUgQkxPQ0suClNQRUNJTUVOIChCKSBMQUJFTEVEIFBST1hJTUFMIEFTQ0VORElORyBDT0xPTi4gIFJFQ0VJVkVEIElOIEZPUk1BTElOIEFSRQpUV08gUEFMRSBCUk9XTiBUSVNTVUUgRlJBR01FTlRTIE1FQVNVUklORyAwLjMgQ00gSU4gQUdHUkVHQVRFLiAgRU1CRURERUQKRU5USVJFTFkgSU4gT05FIEJMT0NLLgpTUEVDSU1FTiAoQykgTEFCRUxFRCBSRUNUQUwgUE9MWVAuICBSRUNFSVZFRCBJTiBGT1JNQUxJTiBBUkUgVEhSRUUgTUlOVVRFClRJU1NVRSBGUkFHTUVOVFMgTUVBU1VSSU5HIDAuMyBDTSBJTiBBR0dSRUdBVEUuICBFTUJFRERFRCBFTlRJUkVMWQpJTiBPTkUgQkxPQ0suCk1pY3Jvc2NvcGljIGRlc2NyaXB0aW9uOiAoRGF0ZSBTcGVjIHRha2VuOiBTZXAgMjQsIDE5OTkpCnxUQUJ8fEJMQU5LKDMpfAp8VEFCfHxOT1dSQVB8CkRJQUdOT1NJUzoKQSkgQ0VDQUwgUE9MWVA6IEhZUEVSUExBU1RJQyBQT0xZUC4gIChTRUUgTk9URSkKQiAmYW1wOyBDKQpQUk9YSU1BTCBBU0NFTkRJTkcgQ09MT04gQU5EIFJFQ1RBTCBQT0xZUFM6IFRVQlVMQVIgQURFTk9NQVMuIChTRUUKTk9URSkKIApOT1RFOiBDT0FHVUxBVElPTiBBUlRFRkFDVCBBTkQgUE9PUiBUSVNTVUUgUFJFU0VSVkFUSU9OIElTIE5PVEVEIENBVVNJTkcKRElGRklDVUxUWSBJTiBFVkFMVUFUSU9OIE9GIExFU0lPTi4KRFIuIFlPVVNVRiBXQVMgTk9USUZJRUQuCg==
"""
/*
Date Spec taken: Sep 24, 1999        Pathologist:JAZBIEH MOEZZI MD
Date Spec rec'd: Sep 24, 1999 13:46  Resident: 
Date  completed: Sep 27, 1999        Accession #: SP 99 2207
Submitted by: KHURSHID YOUSUF MD     Practitioner:KHURSHID YOUSUF
-------------------------------------------------------------------------------
Specimen: 
POLYPS (A) CECAL
       (B) PROXIMAL ASCENDING
       (C) RECTAL
Brief Clinical History:
COLON POLYPS PER FLEX SIG
Preoperative Diagnosis:
COLON POLYPS
Operative Findings:
|TAB||NOWRAP|
1. CECAL POLYPS X 2
2. ASCENDING COLON POLYP
3. RECTAL POLYP
Postoperative Diagnosis:
SAME
Gross description:
|TAB||NOWRAP|
SPECIMEN (A) LABELED CECAL POLYP X 2.  RECEIVED IN FORMALIN IS ONE PALE
GREY TISSUE FRAGMENT MEASURING 0.4 CM IN DIAMETER.  EMBEDDED ENTIRELY IN
ONE BLOCK.
SPECIMEN (B) LABELED PROXIMAL ASCENDING COLON.  RECEIVED IN FORMALIN ARE
TWO PALE BROWN TISSUE FRAGMENTS MEASURING 0.3 CM IN AGGREGATE.  EMBEDDED
ENTIRELY IN ONE BLOCK.
SPECIMEN (C) LABELED RECTAL POLYP.  RECEIVED IN FORMALIN ARE THREE MINUTE
TISSUE FRAGMENTS MEASURING 0.3 CM IN AGGREGATE.  EMBEDDED ENTIRELY
IN ONE BLOCK.
Microscopic description: (Date Spec taken: Sep 24, 1999)
|TAB||BLANK(3)|
|TAB||NOWRAP|
DIAGNOSIS:
A) CECAL POLYP: HYPERPLASTIC POLYP.  (SEE NOTE)
B &amp; C)
PROXIMAL ASCENDING COLON AND RECTAL POLYPS: TUBULAR ADENOMAS. (SEE
NOTE)
 
NOTE: COAGULATION ARTEFACT AND POOR TISSUE PRESERVATION IS NOTED CAUSING
DIFFICULTY IN EVALUATION OF LESION.
DR. YOUSUF WAS NOTIFIED.
*/

//////////////////////////////////////////////////  6  //////////////////////////////////////////////


Instance:   ex-MHV-specimen-6
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <name>POLYP @ 12CM</name>
    <collectionDate>2990809</collectionDate>
    <accessionNum>SP 99 1804</accessionNum>
</specimen>
*/
* status = #available
* type.text = "POLYP @ 12CM"
* collection.collectedDateTime = 1999-08-09
* accessionIdentifier.value = "SP 99 1804"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual



Instance: ex-MHV-labReport-6
InstanceOf: JFM.PHR.SPlabReport 
Title: "Lab 6"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[us-core] = LOINC#LP7839-6
* code.text = "LR SURGICAL PATHOLOGY REPORT"
* code.coding = LOINC#27898-6
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1999-08-11T16:09:00Z
* issued = 1999-08-11T16:09:00Z
* identifier[TOid].value = "LabReportTO.SP;7009190" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-specimen-6
* specimen[+] = Reference(ex-MHV-specimen-6)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-seetha
* performer[+] = Reference(Practitioner/ex-MHV-practitioner-seetha)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
RGF0ZSBTcGVjIHRha2VuOiBBdWcgMDksIDE5OTkgICAgICAgIFBhdGhvbG9naXN0OlNFRVRIQSBTVVJZQVBSQVNBRCBNRApEYXRlIFNwZWMgcmVjJ2Q6IEF1ZyAxMCwgMTk5OSAxMzoyNyAgUmVzaWRlbnQ6IApEYXRlICBjb21wbGV0ZWQ6IEF1ZyAxMSwgMTk5OSAgICAgICAgQWNjZXNzaW9uICM6IFNQIDk5IDE4MDQKU3VibWl0dGVkIGJ5OiBLQVRITEVFTiBNQVJJRSBXT0xORVIgIFByYWN0aXRpb25lcjpLQVRITEVFTiBNQVJJRSBXT0xORVIgTUQKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTcGVjaW1lbjogClBPTFlQIEAgMTJDTQpCcmllZiBDbGluaWNhbCBIaXN0b3J5Ogo3MCBZRUFSIE9MRCBNQUxFIEZPUiBTQ1JFRU5JTkcgRVhBTS4gIApPcGVyYXRpdmUgRmluZGluZ3M6ClNNT09USCBCUk9BRCBCQVNFRCBQT0xZUApQb3N0b3BlcmF0aXZlIERpYWdub3NpczoKUFJPQkFCTEUgQkVOSUdOIFBPTFlQCkdyb3NzIGRlc2NyaXB0aW9uOgpSRUNFSVZFRCBJTiBGT1JNQUxJTiBBTkQgTEFCRUxFRCAiUE9MWVAiICBDT05TSVNUUyBPRiBUV08gMSBNTSBGUkFHTUVOVFMKT0YgUElOSyBUSVNTVUUuICBTVUJNSVRURUQgSU4gVE9UQUwgSU4gT05FIEJMT0NLLgpNaWNyb3Njb3BpYyBkZXNjcmlwdGlvbjogKERhdGUgU3BlYyB0YWtlbjogQXVnIDA5LCAxOTk5KQp8VEFCfHxCTEFOSygzKXwKRElBR05PU0lTOgpQT0xZUCBBVCAxMiBDTS4gVFVCVUxBUiBBREVOT01BLgo=
"""
/*
Date Spec taken: Aug 09, 1999        Pathologist:SEETHA SURYAPRASAD MD
Date Spec rec'd: Aug 10, 1999 13:27  Resident: 
Date  completed: Aug 11, 1999        Accession #: SP 99 1804
Submitted by: KATHLEEN MARIE WOLNER  Practitioner:KATHLEEN MARIE WOLNER MD
-------------------------------------------------------------------------------
Specimen: 
POLYP @ 12CM
Brief Clinical History:
70 YEAR OLD MALE FOR SCREENING EXAM.  
Operative Findings:
SMOOTH BROAD BASED POLYP
Postoperative Diagnosis:
PROBABLE BENIGN POLYP
Gross description:
RECEIVED IN FORMALIN AND LABELED "POLYP"  CONSISTS OF TWO 1 MM FRAGMENTS
OF PINK TISSUE.  SUBMITTED IN TOTAL IN ONE BLOCK.
Microscopic description: (Date Spec taken: Aug 09, 1999)
|TAB||BLANK(3)|
DIAGNOSIS:
POLYP AT 12 CM. TUBULAR ADENOMA.
*/


//////////////////////////////////////////////////  7  //////////////////////////////////////////////


Instance:   ex-MHV-specimen-7
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <name>(A) BONE FROM RIGHT FOOT, (B) BONE RIGHT FOOT</name>
    <collectionDate>2970908</collectionDate>
    <accessionNum>SP 97 2091</accessionNum>
</specimen>
*/
* status = #available
* type.text = "(A) BONE FROM RIGHT FOOT, (B) BONE RIGHT FOOT"
* collection.collectedDateTime = 1997-09-08
* accessionIdentifier.value = "SP 97 2091"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual



Instance: ex-MHV-labReport-7
InstanceOf: JFM.PHR.SPlabReport 
Title: "Lab 7"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[us-core] = LOINC#LP7839-6
* code.text = "LR SURGICAL PATHOLOGY REPORT"
* code.coding = LOINC#27898-6
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1997-09-09T13:13:00Z
* issued = 1997-09-09T13:13:00Z
* identifier[TOid].value = "LabReportTO.SP;7029091" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-specimen-7
* specimen[+] = Reference(ex-MHV-specimen-7)
* contained[+] = ex-MHV-organization-989
* performer = Reference(Organization/ex-MHV-organization-989)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
RGF0ZSBTcGVjIHRha2VuOiBTZXAgMDgsIDE5OTcgICAgICAgIFBhdGhvbG9naXN0OkpBWkJJRUggTU9FWlpJIE1ECkRhdGUgU3BlYyByZWMnZDogU2VwIDA4LCAxOTk3IDEzOjA4ICBSZXNpZGVudDogCkRhdGUgIGNvbXBsZXRlZDogU2VwIDA5LCAxOTk3ICAgICAgICBBY2Nlc3Npb24gIzogU1AgOTcgMjA5MQpTdWJtaXR0ZWQgYnk6IERFQlJBIEsgTEFUVEEgTUQgICAgICAgUHJhY3RpdGlvbmVyOkRFQlJBIEsgTEFUVEEKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTcGVjaW1lbjogCihBKSBCT05FIEZST00gUklHSFQgRk9PVAooQikgQk9ORSBSSUdIVCBGT09UCg==
"""
/*
Date Spec taken: Sep 08, 1997        Pathologist:JAZBIEH MOEZZI MD
Date Spec rec'd: Sep 08, 1997 13:08  Resident: 
Date  completed: Sep 09, 1997        Accession #: SP 97 2091
Submitted by: DEBRA K LATTA MD       Practitioner:DEBRA K LATTA
-------------------------------------------------------------------------------
Specimen: 
(A) BONE FROM RIGHT FOOT
(B) BONE RIGHT FOOT
*/


//////////////////////////////////////////////////  8  //////////////////////////////////////////////


Instance:   ex-MHV-specimen-8
InstanceOf: JFM.PHR.LabSpecimen
Usage: #inline
/*
<specimen>
    <name>BONE FRAGMENTS, LEFT FOOT</name>
    <collectionDate>2970512</collectionDate>
    <accessionNum>SP 97 1099</accessionNum>
</specimen>
*/
* status = #available
* type.text = "BONE FRAGMENTS, LEFT FOOT"
* collection.collectedDateTime = 1997-05-12
* accessionIdentifier.value = "SP 97 1099"
* accessionIdentifier.system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* accessionIdentifier.use = #usual



Instance: ex-MHV-labReport-8
InstanceOf: JFM.PHR.SPlabReport 
Title: "Lab 8"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[us-core] = LOINC#LP7839-6
* code.text = "LR SURGICAL PATHOLOGY REPORT"
* code.coding = LOINC#27898-6
* subject = Reference(Patient/ex-MHV-patient-1)
* effectiveDateTime = 1997-05-14T09:54:00Z
* issued = 1997-05-14T09:54:00Z
* identifier[TOid].value = "LabReportTO.SP;7029487" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* contained[+] = ex-MHV-specimen-8
* specimen[+] = Reference(ex-MHV-specimen-8)
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)
* contained[+] = ex-MHV-practitioner-seetha
* performer[+] = Reference(Practitioner/ex-MHV-practitioner-seetha)
* presentedForm.contentType = #text/plain
* presentedForm.data = """
RGF0ZSBTcGVjIHRha2VuOiBNYXkgMTIsIDE5OTcgICAgICAgIFBhdGhvbG9naXN0OlNFRVRIQSBTVVJZQVBSQVNBRCBNRApEYXRlIFNwZWMgcmVjJ2Q6IE1heSAxMiwgMTk5NyAxNDowMCAgUmVzaWRlbnQ6IApEYXRlICBjb21wbGV0ZWQ6IE1heSAxMywgMTk5NyAgICAgICAgQWNjZXNzaW9uICM6IFNQIDk3IDEwOTkKU3VibWl0dGVkIGJ5OiBERUJSQSBLIExBVFRBIE1EICAgICAgIFByYWN0aXRpb25lcjpERUJSQSBLIExBVFRBCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU3BlY2ltZW46IApCT05FIEZSQUdNRU5UUywgTEVGVCBGT09UCg==
"""
/*
Date Spec taken: May 12, 1997        Pathologist:SEETHA SURYAPRASAD MD
Date Spec rec'd: May 12, 1997 14:00  Resident: 
Date  completed: May 13, 1997        Accession #: SP 97 1099
Submitted by: DEBRA K LATTA MD       Practitioner:DEBRA K LATTA
-------------------------------------------------------------------------------
Specimen: 
BONE FRAGMENTS, LEFT FOOT
*/


Instance: ex-MHV-practitioner-mangas
InstanceOf: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Title: "MANGAS,PHYLLIS A"
Description: "Practitioner MANGAS,PHYLLIS A from Labs"
Usage: #inline
* identifier.value = "unknown"
* identifier.system = "http://nowhere.com/nope"
* name.text = "MANGAS,PHYLLIS A"
* name.family = "MANGAS"

Instance: ex-MHV-practitioner-seetha
InstanceOf: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Title: "SEETHA SURYAPRASAD MD"
Description: "Practitioner SEETHA SURYAPRASAD MD from Labs"
Usage: #inline
* identifier.value = "unknown"
* identifier.system = "http://nowhere.com/nope"
* name.text = "SEETHA SURYAPRASAD MD"
* name.family = "SEETHA"
