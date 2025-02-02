Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $icd-9-cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $icd-10-cm = http://hl7.org/fhir/sid/icd-10-cm



/*

The mock conditions and conditons2 bundle is nice, but it does not allow the user of the IG to see examples. So in addition to having the bundle in the build, we also want examples. So we explode out the examples using the follow manual process. 

Note that Grahame has said he has a backlog to do this automatically in the IG publisher, but it is not priortized. So this might not be needed in the future.

These examples come from 
1. mocks/problems.xml and mocks/problems2.xml
2. transformed with mocks/conditions.xslt (with extensions populating an resource-instance-name and resource-instance-description extension)
3. that bundle built into the IG so that the IG build creates the json equivilant
3. Put the json equvilant bundle into "FSH Online" to convert to FSH - https://fshschool.org/FSHOnline/#/
5. put the result into this FSH file
6. Remove the bundle
7. change inline to example
8. convert extension for description and title 
9. move meta.profile into InstanceOf:
10. use slices on identifier - TOid
11. replace the FSH Online contained with #inline Location resources, with references


*/


Instance: 36a44c53-cb2a-45a3-a932-a295ac7d52c7
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 487"
Description: "Hypertension (ICD-9-CM 401.9)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.487"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#401.9
* code.text = "Hypertension (ICD-9-CM 401.9)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1995-09-27"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: 397ef2d8-7516-4fdb-aef4-ae74b53dd202
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 488"
Description: "Anxiety Neuroses (ICD-9-CM 300.00)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.488"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#300.00
* code.text = "Anxiety Neuroses (ICD-9-CM 300.00)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1995-09-27"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: 74976867-7782-4e26-90af-2e576be9bb44
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 489"
Description: "Glaucoma (ICD-9-CM 365.9)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.489"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#365.9
* code.text = "Glaucoma (ICD-9-CM 365.9)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1995-09-27"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: ca55b358-f98a-4ba0-a3dc-0346cbeaf44d
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 37085"
Description: "SCREENING FOR ALCOHOLISM (ICD-9-CM V79.1)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.37085"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#V79.1
* code.text = "SCREENING FOR ALCOHOLISM (ICD-9-CM V79.1)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1997-12-08"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: c02cc828-7fd0-40a7-a2fb-5b4609f825a7
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 37086"
Description: "SCREENING FOR OTHER SPECIFIED MENTAL DISORDERS AND DEVELOPMENTAL HANDICAPS (ICD-9-CM V79.8)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.37086"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#V79.8
* code.text = "SCREENING FOR OTHER SPECIFIED MENTAL DISORDERS AND DEVELOPMENTAL HANDICAPS (ICD-9-CM V79.8)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "1997-12-08"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: 6ba7a74c-b635-4593-bcb7-735f009aaf88
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 98034"
Description: "ENDOCARDITIS NOS (ICD-9-CM 424.90)"
* contained[+] = ex-MHV-practitioner-110
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.98034"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#424.90
* code.text = "ENDOCARDITIS NOS (ICD-9-CM 424.90)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2000-07-18"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-110)

Instance: 0635f0d9-81ab-4a0b-af8d-f899d8e5220d
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 118499"
Description: "COR ATHEROSCL UNSP TYP-VES (ICD-9-CM 414.00)"
* contained[+] = ex-MHV-practitioner-4262
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.118499"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#414.00
* code.text = "COR ATHEROSCL UNSP TYP-VES (ICD-9-CM 414.00)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2001-03-22"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-4262)

Instance: 7f88a60c-ffe5-4001-8286-c5eeccc069dd
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 128381"
Description: "Restless Legs (ICD-9-CM 333.99)"
* contained[+] = ex-MHV-practitioner-6051
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.128381"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#333.99
* code.text = "Restless Legs (ICD-9-CM 333.99)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2001-07-06"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-6051)

Instance: 2b2d8b23-439d-4d5c-967e-b080b2710dd9
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 229415"
Description: "Benign Prostatic Hypertrophy (ICD-9-CM 799.9)"
* contained[+] = ex-MHV-practitioner-4262
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.229415"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#799.9
* code.text = "Benign Prostatic Hypertrophy (ICD-9-CM 799.9)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2003-07-17"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-4262)

Instance: a7471138-f4ac-4226-9555-4999196c6136
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 268463"
Description: "Hypertrophy (Benign) of Prostate without Urinary obstruction (ICD-9-CM 600.00)"
* contained[+] = ex-MHV-practitioner-4262
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.268463"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#600.00
* code.text = "Hypertrophy (Benign) of Prostate without Urinary obstruction (ICD-9-CM 600.00)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2004-01-21"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-4262)

Instance: 7e55cbc8-4864-462d-a730-98ca4cccd4a2
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 318630"
Description: "Lumbago (ICD-9-CM 724.2)"
* contained[+] = ex-MHV-practitioner-22572
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "ProblemTO.318630"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-9-cm#724.2
* code.text = "Lumbago (ICD-9-CM 724.2)"
* subject = Reference(Patient/ex-MHV-patient-0)
* recordedDate = "2004-09-24"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-22572)


/////////////////////////////////////////// conditions2 //////////////////////////////


Instance: 067e62f5-6066-46c8-92c8-03011db4187b
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352164"
Description: "Cardiomegaly (SCT 8186001)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352164"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I51.7
* code.text = "Cardiomegaly (SCT 8186001)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2020-01-01"
* recordedDate = "2022-08-18"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)

Instance: f451313f-3b04-48ae-9b88-78f3fcc22b53
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352165"
Description: "Chronic Kidney Disease Stage 2 (SCT 431856006)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352165"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#N18.2
* code.text = "Chronic Kidney Disease Stage 2 (SCT 431856006)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2022-08-09"
* recordedDate = "2022-08-18"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)

Instance: 32f99fab-9fdb-4cc4-832a-d4e275800489
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352166"
Description: "Retained Dental Root (SCT 66569006)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352166"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#K08.3
* code.text = "Retained Dental Root (SCT 66569006)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2022-08-18"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)

Instance: 735ac73b-30e1-4784-9cd8-25aa3e89cd5f
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352218"
Description: "Rash (SCT 271807003)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352218"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#R21
* code.text = "Rash (SCT 271807003)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2023-10-30"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2023-10-30"
* note.text = "Problem list test Comment , Muazzam Khan"

Instance: 6fec0aa5-b0e9-4de3-abb6-53dd3812163d
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352231"
Description: "Atrial Flutter (SCT 5370000)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352231"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I48.92
* code.text = "Atrial Flutter (SCT 5370000)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2010-01-01"
* recordedDate = "2023-12-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2023-12-20"
* note.text = "Problem Catagories -Cardiology, Status -Active, Immediacy - Unknown"

Instance: c7f280d9-88fe-4849-8075-91f6cc8a6f54
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352232"
Description: "Defective Dental Restoration (SCT 109728009)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352232"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#K08.50
* code.text = "Defective Dental Restoration (SCT 109728009)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2011-07-01"
* recordedDate = "2023-12-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2023-12-20"
* note.text = "Problem Catagories -Dental, Status -Active, Immediacy - chronic"

Instance: 3ca33c70-26dc-48f1-bc8a-0a5d1c141bcf
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352233"
Description: "Benign Neoplasm of Skin (SCT 92384009)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352233"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#D23.9
* code.text = "Benign Neoplasm of Skin (SCT 92384009)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2005-04-18"
* recordedDate = "2023-12-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2023-12-20"
* note.text = "Problem Catagories -Dental, Status -dermotology, Immediacy - Acute"

Instance: 74869b91-f12f-4281-bd94-b9c72c6fbaab
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352234"
Description: "History of Alcohol Abuse (SCT 371434005)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352234"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#F10.21
* code.text = "History of Alcohol Abuse (SCT 371434005)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2005-12-31"
* recordedDate = "2023-12-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2023-12-20"
* note.text = "Problem Catagories -Active, Status -Active, Immediacy - Acute"

Instance: cfe9ec39-d291-4ca0-b130-c7a4d33eb83b
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352245"
Description: "Chest Pain (SCT 29857009)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352245"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#R07.9
* code.text = "Chest Pain (SCT 29857009)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "1999"
* recordedDate = "2024-02-13"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2024-02-13"
* note.text = "treatment factor service connected with date of onset YYYY01"

Instance: b1aee5a0-fccd-4506-88de-d218cd40be0a
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352246"
Description: "Acute Deep Vein Thrombosis Of Lower Limb (SCT 651000119108)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352246"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I82.409
* code.text = "Acute Deep Vein Thrombosis Of Lower Limb (SCT 651000119108)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2020"
* recordedDate = "2024-02-13"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2024-02-13"
* note.text = "will sign thsi problem"

Instance: 88c35ca4-a88a-43d3-8f97-69144f229051
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352247"
Description: "Exposure to Agent Orange (SCT 718016003)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352247"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#Z77.29
* code.text = "Exposure to Agent Orange (SCT 718016003)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2024-02-02"
* recordedDate = "2024-02-13"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2024-02-13"
* note.text = "Problem added from other problem list"

Instance: c4706e07-7290-44e8-8d34-593027b04913
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352248"
Description: "Acute posttraumatic stress disorder following military combat (SCT 446175003)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352248"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#F43.11
* code.text = "Acute posttraumatic stress disorder following military combat (SCT 446175003)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "1997-01-01"
* recordedDate = "2024-02-13"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2024-02-13"
* note.text = "Problem added from other problem under military"

Instance: acf94eab-a6d1-4b5e-bd76-1288e616dd4b
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352249"
Description: "AF- Atrial Fibrillation (SCT 49436004)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352249"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I48.91
* code.text = "AF- Atrial Fibrillation (SCT 49436004)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2024-02-15"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note[0].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-15"
* note[=].text = "Comment - 4 of 4"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-15"
* note[=].text = "Comment - 3 of 4"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-15"
* note[=].text = "Comment - 2 of 4"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-15"
* note[=].text = "Comment -1 of 4"

Instance: 794eed45-7ad5-4078-bc08-302ec0060ac6
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352250"
Description: "Alcohol Abuse (SCT 15167005)"
* contained[+] = ex-MHV-practitioner-37524
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352250"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#F10.10
* code.text = "Alcohol Abuse (SCT 15167005)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2024-02-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-37524)
* note.authorString = "NOBLE,PAMELA J"
* note.time = "2024-02-20"
* note.text = "test"

Instance: 65daf497-c0d2-451d-9950-f31616437a88
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352251"
Description: "CAD - Coronary Artery Disease (SCT 53741008)"
* contained[+] = ex-MHV-practitioner-37524
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352251"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I25.10
* code.text = "CAD - Coronary Artery Disease (SCT 53741008)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2024-02-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-37524)
* note.authorString = "NOBLE,PAMELA J"
* note.time = "2024-02-20"
* note.text = "test"

Instance: 61784c6a-854d-49cd-9847-9d92772fdba6
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352252"
Description: "Abnormal cardiotochogram tracing (SCT 735205007)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352252"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#R94.120
* code.text = "Abnormal cardiotochogram tracing (SCT 735205007)"
* subject = Reference(Patient/ex-MHV-patient-4)
* recordedDate = "2024-02-20"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2024-02-20"
* note.text = "diagnosis"

Instance: 49cdaa51-9e6d-4246-9b54-5c9f3db13909
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352167"
Description: "Proliferative Diabetic Retinopathy (SCT 59276001)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352167"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#E11.3599
* code.text = "Proliferative Diabetic Retinopathy (SCT 59276001)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2019-01-09"
* abatementDateTime = "2024-02-13"
* recordedDate = "2022-08-18"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note.authorString = "AHMED,MARUF"
* note.time = "2022-08-18"
* note.text = "test"

Instance: 6a2be107-501e-458f-8f17-0ada297d34d8
InstanceOf: JFM.PHR.condition
Usage: #example
Title: "Condition: 352243"
Description: "Angina Pectoris (SCT 194828000)"
* contained[+] = ex-MHV-practitioner-36556
* contained[+] = ex-MHV-location-552
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "ProblemTO.352243"
* clinicalStatus = $condition-clinical#inactive
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* code = $icd-10-cm#I20.9
* code.text = "Angina Pectoris (SCT 194828000)"
* subject = Reference(Patient/ex-MHV-patient-4)
* onsetDateTime = "2002"
* abatementDateTime = "2024-02-13"
* recordedDate = "2024-02-13"
* recorder.extension.url = "http://hl7.org/fhir/StructureDefinition/alternate-reference"
* recorder.extension.valueReference = Reference(ex-MHV-location-552)
* recorder = Reference(ex-MHV-practitioner-36556)
* note[0].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-13"
* note[=].text = "test4"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-13"
* note[=].text = "test3"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-13"
* note[=].text = "Test 2 with John_Maruf Ahmed"
* note[+].authorString = "AHMED,MARUF"
* note[=].time = "2024-02-13"
* note[=].text = "Test with John_Maruf Ahmed"
