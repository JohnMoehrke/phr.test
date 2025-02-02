Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason


/*

The mock vitals bundle is nice, but it does not allow the user of the IG to see examples. So we incorporate a xml bundle from xslt transform, explode out the examples using the follow manual process. 

These examples come from 
1. mocks/1013699421V762086_Vitals.xml. This set of examples have qualifiers and pulse-ox
2. transformed with mocks/vitalsxslt.xslt (with extensions populating an resource-instance-name and resource-instance-description extension)
3. that bundle built into the IG so that the IG build creates the json equivilant
3. Put the json equvilant bundle into "FSH Online" to convert to FSH - https://fshschool.org/FSHOnline/#/
5. put the result into this FSH file
6. Remove the bundle
7. change inline to example
9. move meta.profile into InstanceOf:
10. use slices on identifier - TOid
11. replace the FSH Online contained with #inline Location resources, with references
12. use slice on component with blood pressure
13. use slice on category - VSCat
14. remove the extensions from the transform
15. build the bundle the normal way to show a transaction Bundle in the IG

*/



Instance: d83fd11d-f536-4fb0-8f77-b0b514a8eed9
InstanceOf: JFM.PHR.vitalsBP
Title: "BLOOD PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544818"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544818"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "BLOOD PRESSURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* component[systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity = 130 'mm[Hg]' "mmHg"
* component[diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity = 80 'mm[Hg]' "mmHg"
/*
* component[2].code = urn:oid:2.16.840.1.113883.6.233#4688643 "BRACHIAL"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4536411 "LG ADULT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688702 "AFTER EXERCISE"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688682 "SEMIFOWLERS"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#17137000 "Structure of brachial artery"
* method = SCT#255214003 "After exercise"
* extension[bodyPosition].valueCodeableConcept = SCT#426408003 "Semi-Fowler's position"
* extension[deviceCode].valueCodeableConcept = SCT#255509001 "Large"
*/

Instance: 6e5f2e0d-17e6-4cd4-8324-f6b294cad9c4
InstanceOf: JFM.PHR.vitals
Title: "CIRCUMFERENCE/GIRTH"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544823"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544823"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.text = "CIRCUMFERENCE/GIRTH"
* code = $loinc#9844-2 "Body region Circumference"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 30 '[in_i]' "inches"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688660 "LEFT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688689 "KNEE"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#82169009 "Structure of left knee region"	
*/

Instance: 3696d905-853b-49f0-bc16-867e9be94c34
InstanceOf: JFM.PHR.vitals
Title: "CENTRAL VENOUS PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544824"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544824"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.text = "CENTRAL VENOUS PRESSURE"
* code = $loinc#8591-0 "Central venous pressure (CVP) Mean"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 30 'cm[H2O]' "cmH2O"

Instance: 1664af28-8cae-4c8e-9d8b-3d39bf61987c
InstanceOf: JFM.PHR.vitals
Title: "HEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544822"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544822"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8302-2 "Body height"
* code.text = "HEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* dataAbsentReason = $data-absent-reason#unknown

Instance: 5f72a042-728a-4b51-9705-0c2883efa2b7
InstanceOf: JFM.PHR.vitals
Title: "PULSE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544816"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544816"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* code.text = "PULSE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 70 '/min' "/min"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688663 "LYING"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688643 "BRACHIAL"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688639 "AUSCULTATE"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688660 "LEFT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* extension[bodyPosition].valueCodeableConcept = SCT#102538003 "Recumbent body position"
* bodySite = SCT#723961002 "Structure of left brachial artery"	
* method = SCT#37931006 "Auscultation"
*/

Instance: 5d2c473d-9809-4b02-b413-64c09d8845fc
InstanceOf: JFM.PHR.vitalsPain
Title: "PAIN"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544819"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544819"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.text = "PAIN"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* dataAbsentReason = $data-absent-reason#asked-declined

Instance: 3411ad29-aad6-4eae-9897-9503a70ee916
InstanceOf: JFM.PHR.vitalsOx
Title: "PULSE OXIMETRY"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544821"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544821"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.text = "PULSE OXIMETRY"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 98 '%' "%"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688666 "NASAL CANNULA"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* extension[deviceCode].valueCodeableConcept = SCT#336623009 "Oxygen nasal cannula"
*/

Instance: 91f05de1-fb1c-4c31-b434-094d53791842
InstanceOf: JFM.PHR.vitals
Title: "RESPIRATION"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544817"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544817"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#9279-1 "Respiratory Rate"
* code.text = "RESPIRATION"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 15 '/min' "/min"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688647 "CONTROLLED VENTILATOR"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#5335364 "RIGHT LATERAL RECUMBENT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* extension[deviceCode].valueCodeableConcept = SCT#243147009 "Controlled ventilation"
* extension[bodyPosition].valueCodeableConcept = SCT#102535000 "Right lateral decubitus position"
*/

Instance: 08f45167-b235-4cf9-9240-71949f533529
InstanceOf: JFM.PHR.vitals
Title: "TEMPERATURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544820"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544820"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8310-5 "Body temperature"
* code.text = "TEMPERATURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 98 '[degF]' "F"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688648 "CORE"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#276885007 "Core body temperature"
*/

Instance: d209e820-6995-4925-a9d5-6954c29fe44b
InstanceOf: JFM.PHR.vitals
Title: "WEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544825"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544825"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#29463-7 "Body weight"
* code.text = "WEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-12-12T09:55:14Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "CARDIO RESEARCH"
* valueQuantity = 185 '[lb_av]' "pounds"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688634 "ACTUAL"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4500993 "WITH PROSTHESIS"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
//* method = SCT#258104002 "Measured"
* method = SCT#303474004 "Does not remove prosthesis"
*/

Instance: da82f55f-aa45-4883-896e-0bd87528bb4c
InstanceOf: JFM.PHR.vitalsBP
Title: "BLOOD PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544750"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544750"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "BLOOD PRESSURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* component[systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity = 80 'mm[Hg]' "mmHg"
/*
* component[2].code = urn:oid:2.16.840.1.113883.6.233#4688657 "L ARM"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688663 "LYING"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4536409 "ADULT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688697 "AT REST"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* method = SCT#263678003 "At rest"
* bodySite = SCT#80768000 "Structure of left upper limb"	
* extension[bodyPosition].valueCodeableConcept = SCT#102538003 "Recumbent body position"
*/

Instance: cb2adb6e-2991-4cbb-abd1-18b4e6c050f7
InstanceOf: JFM.PHR.vitals
Title: "CENTRAL VENOUS PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544755"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544755"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.text = "CENTRAL VENOUS PRESSURE"
* code = $loinc#8591-0 "Central venous pressure (CVP) Mean"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 120 'cm[H2O]' "cmH2O"

Instance: c4ce545b-8eb9-488e-b9cf-5023d25bc842
InstanceOf: JFM.PHR.vitals
Title: "HEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544754"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544754"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8302-2 "Body height"
* code.text = "HEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 72 '[in_i]' "inches"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688634 "ACTUAL"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* method = SCT#258104002 "Measured"
*/

Instance: bbba7e3c-c3cb-47ee-808e-8a370f7575bd
InstanceOf: JFM.PHR.vitals
Title: "PULSE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544748"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544748"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* code.text = "PULSE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 90 '/min' "/min"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688663 "LYING"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688655 "FEMORAL"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688660 "LEFT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688697 "AT REST"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* method = SCT#263678003 "At rest"
* extension[bodyPosition].valueCodeableConcept = SCT#102538003 "Recumbent body position"
* bodySite = SCT#113270003 "Structure of left femoral artery"
*/

Instance: 63d3199c-f89e-4766-a72d-667cb63bc793
InstanceOf: JFM.PHR.vitalsPain
Title: "PAIN"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544751"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544751"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.text = "PAIN"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueInteger = 4

Instance: 3ba4e1cb-3215-4669-ad03-b743bf76522a
InstanceOf: JFM.PHR.vitalsOx
Title: "PULSE OXIMETRY"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544753"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544753"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.text = "PULSE OXIMETRY"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 95 '%' "%"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688666 "NASAL CANNULA"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* extension[deviceCode].valueCodeableConcept = SCT#336623009 "Oxygen nasal cannula"
*/

Instance: 54bf8a48-9ea0-4948-ab7b-8f084aca13f9
InstanceOf: JFM.PHR.vitals
Title: "RESPIRATION"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544749"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544749"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#9279-1 "Respiratory Rate"
* code.text = "RESPIRATION"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 12 '/min' "/min"

Instance: bfa96071-b7dd-4713-9078-4077e4a4e062
InstanceOf: JFM.PHR.vitals
Title: "TEMPERATURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544752"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544752"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8310-5 "Body temperature"
* code.text = "TEMPERATURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 98.5 '[degF]' "F"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688704 "SKIN"
* component.dataAbsentReason = $data-absent-reason#not-applicable
*/

Instance: d56b25dd-7304-41df-ba38-61ec089c5a32
InstanceOf: JFM.PHR.vitals
Title: "WEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544756"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544756"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#29463-7 "Body weight"
* code.text = "WEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2023-10-26T11:33:31Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "000-EYE NON TREATMENT (LOC)"
* valueQuantity = 180 '[lb_av]' "pounds"

Instance: f49abb87-0ee6-4aca-8858-2563316926ea
InstanceOf: JFM.PHR.vitalsBP
Title: "BLOOD PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544219"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544219"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "BLOOD PRESSURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* component[systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity = 80 'mm[Hg]' "mmHg"
/*
* component[2].code = urn:oid:2.16.840.1.113883.6.233#4688657 "L ARM"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688703 "SITTING"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4500641 "ADULT CUFF"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#80768000 "Structure of left upper limb"	
* extension[bodyPosition].valueCodeableConcept = SCT#33586001 "Sitting position"
*/

Instance: 57964868-ef5a-4038-9b14-b2c4fba9926f
InstanceOf: JFM.PHR.vitals
Title: "CIRCUMFERENCE/GIRTH"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544224"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544224"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.text = "CIRCUMFERENCE/GIRTH"
* code = $loinc#9844-2 "Body region Circumference"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 80 '[in_i]' "inches"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688660 "LEFT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688633 "ABDOMINAL"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#818983003 "Abdomen"
*/

Instance: 04d6e474-aa2f-476d-a525-be1395b9fb81
InstanceOf: JFM.PHR.vitals
Title: "CENTRAL VENOUS PRESSURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544225"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544225"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code.text = "CENTRAL VENOUS PRESSURE"
* code = $loinc#8591-0 "Central venous pressure (CVP) Mean"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 90 'cm[H2O]' "cmH2O"

Instance: 8110a61a-22d5-40d8-942f-33e828e92edd
InstanceOf: JFM.PHR.vitals
Title: "HEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544223"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544223"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8302-2 "Body height"
* code.text = "HEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 67 '[in_i]' "inches"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688634 "ACTUAL"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* method = SCT#258104002 "Measured"
*/

Instance: e379a7cd-db65-481e-a587-44cc08ee0ea4
InstanceOf: JFM.PHR.vitals
Title: "PULSE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544217"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544217"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8867-4 "Heart rate"
* code.text = "PULSE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 90 '/min' "/min"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688642 "BILATERAL PERIPHERALS"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688703 "SITTING"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688660 "LEFT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688697 "AT REST"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* method = SCT#263678003 "At rest"
* extension[bodyPosition].valueCodeableConcept = SCT#33586001 "Sitting position"
* bodySite = SCT#54718008 "Peripheral pulse, function"
* extension[bodyPosition].valueCodeableConcept = SCT#33586001 "Sitting position"
*/

Instance: 676a48ac-2d9b-41bc-875f-b537775c278e
InstanceOf: JFM.PHR.vitalsPain
Title: "PAIN"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544220"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544220"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.text = "PAIN"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueInteger = 7

Instance: 8f92c275-7be5-4f9f-81ca-9c1eb58b91c8
InstanceOf: JFM.PHR.vitalsOx
Title: "PULSE OXIMETRY"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544222"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544222"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.text = "PULSE OXIMETRY"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 95 '%' "%"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4688666 "NASAL CANNULA"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* extension[deviceCode].valueCodeableConcept = SCT#336623009 "Oxygen nasal cannula"
*/

Instance: d8e425bc-2f2c-445b-932f-73668eeccfea
InstanceOf: JFM.PHR.vitals
Title: "RESPIRATION"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544218"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544218"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#9279-1 "Respiratory Rate"
* code.text = "RESPIRATION"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 12 '/min' "/min"
/*
* component[0].code = urn:oid:2.16.840.1.113883.6.233#4688697 "AT REST"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* component[+].code = urn:oid:2.16.840.1.113883.6.233#5335366 "LEFT LATERAL RECUMBENT"
* component[=].dataAbsentReason = $data-absent-reason#not-applicable
* extension[bodyPosition].valueCodeableConcept = SCT#102536004
* method = SCT#263678003 "At rest"
*/

Instance: e89a2290-0ed9-4de4-a861-82eb2f0f499c
InstanceOf: JFM.PHR.vitals
Title: "TEMPERATURE"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544221"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544221"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#8310-5 "Body temperature"
* code.text = "TEMPERATURE"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 98 '[degF]' "F"
/*
* component.code = urn:oid:2.16.840.1.113883.6.233#4500642 "ORAL"
* component.dataAbsentReason = $data-absent-reason#not-applicable
* bodySite = SCT#123851003 "Mouth region structure"
*/

Instance: 34d37063-ea9e-4ff2-bdfb-c1cb6593524a
InstanceOf: JFM.PHR.vitals
Title: "WEIGHT"
Description: "Example translated from [mock 2 example](https://github.com/department-of-veterans-affairs/mhv-fhir-phr-mapping/blob/main/mocks/1013699421V762086_Vitals.xml) from id=6544226"
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].value = "VitalSignTO.6544226"
* status = #final
* category[VSCat] = $observation-category#vital-signs
* code = $loinc#29463-7 "Body weight"
* code.text = "WEIGHT"
* subject = Reference(Patient/ex-MHV-patient-3)
* effectiveDateTime = "2022-08-08T10:51:24Z"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "AC AMOD"
* valueQuantity = 190 '[lb_av]' "pounds"
