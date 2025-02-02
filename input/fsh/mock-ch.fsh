Alias: $v2-0487 = http://terminology.hl7.org/CodeSystem/v2-0487
Alias: $61 = http://va.gov/terminology/vistaDefinedTerms/61
Alias: $sct = http://snomed.info/sct
Alias: $64 = http://va.gov/terminology/vistaDefinedTerms/64
Alias: $60 = http://va.gov/terminology/vistaDefinedTerms/60
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $95.3 = http://va.gov/terminology/vistaDefinedTerms/95.3
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $snomed = http://snomed.info
Alias: $ucum = http://unitsofmeasure.org



/*

The mock conditions and conditons2 bundle is nice, but it does not allow the user of the IG to see examples. So in addition to having the bundle in the build, we also want examples. So we explode out the examples using the follow manual process. 

Note that Grahame has said he has a backlog to do this automatically in the IG publisher, but it is not priortized. So this might not be needed in the future.

These examples come from 
1. mocks/1012669926V770142_ChemHem.xml.xml
2. transformed with MHV code to a bundle 

5. put the result into this FSH file
6. Remove the bundle
7. change inline to example
8. convert extension for description and title 
9. move meta.profile into InstanceOf:
10. use slices on identifier - TOid
11. replace the FSH Online contained with #inline Location resources, with references


*/

Instance: 9952
Title: "ChemHem 9952"
Description: "ChemHem mock 9952"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#UR "Urine"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#71 "URINE"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-04-17T17:18:32-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#81818.0000
* contained[=].code.coding[+] = $60#951 "NICOTINE"
* contained[=].code.text = "Nicotine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#12293-7
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4653679
* contained[=].code.text = "NICOTINE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-04-17T17:18:32-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "NEG"
* contained[=].note.text = "NORMAL=NEGATIVE.  A POSITIVE RESULT MAY NOT BE CLINICALLY SIGNIFICANT."
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "NEGATIVE"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 4/17/17"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "3771070001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#12293-7
* category[=].text = "COTININE:THRESHOLD:PT:URINE:ORD:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-04-17T17:18:32-04:00"
* issued = "2017-04-17T17:19:53.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9953
Title: "ChemHem 9953"
Description: "ChemHem mock 9953"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-08-02T09:50:57-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-08-02T09:50:57-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 171
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's 8/2  test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1172140001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-08-02T09:50:57-04:00"
* issued = "2017-08-02T09:52:27.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9954
Title: "ChemHem 9954"
Description: "ChemHem mock 9954"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2014-06-26T12:57:24-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82040.0000
* contained[=].code.coding[+] = $60#185 "ALBUMIN"
* contained[=].code.text = "Albumin"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.14"
* contained[=].code.coding[=] = $loinc#1751-7
* contained[=].code.coding[+].version = "2.14"
* contained[=].code.coding[=] = $95.3#4659241
* contained[=].code.text = "ALBUMIN"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2014-06-26T12:57:24-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 5
* contained[=].valueQuantity.unit = "g/dl"
* contained[=].valueQuantity.code = #g/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.4-5.0"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Release 12.9.ER test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1141770003"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.14"
* category[=].coding = $loinc#1751-7
* category[=].text = "ALBUMIN:MCNC:PT:SER/PLAS:QN"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2014-06-26T12:57:24-04:00"
* issued = "2014-06-26T12:58:34.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9955
Title: "ChemHem 9955"
Description: "ChemHem mock 9955"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-03-14T16:04:58-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-03-14T16:04:58-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 4
* contained[=].valueQuantity.unit = "mEq/L"
* contained[=].valueQuantity.code = #meq/L
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L."
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.6-5.1"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's Release 17.2 test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1170730002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-03-14T16:04:58-04:00"
* issued = "2017-03-14T16:07:02.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9956
Title: "ChemHem 9956"
Description: "ChemHem mock 9956"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#UR "Urine"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#8796 "URINE,SPOT"
* contained[=].type.text = "URINE,SPOT"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-04-17T17:19:59-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#81848.0000
* contained[=].code.coding[+] = $60#5114 "OXYCODONE"
* contained[=].code.text = "Oxycodone"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#3893-5
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4682143
* contained[=].code.text = "OXYCODONE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-04-17T17:19:59-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "NEG"
* contained[=].note[0].text = "Patients on morphine or codeine may give a positive urine"
//* contained[=].note[+].text = "oxycodone result."
//* contained[=].note[+].text = "** THIS IS A SCREENING TEST AND IS FOR MEDICAL USE ONLY."
//* contained[=].note[+].text = "CALL THE LAB WITHIN ONE MONTH IF CONFIRMATION BY GC/MS"
//* contained[=].note[+].text = "IS NECESSARY. **"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "NEGATIVE"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 4/17/17"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1171070001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#3893-5
* category[=].text = "OXYCODONE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-04-17T17:19:59-04:00"
* issued = "2017-04-17T17:22:15.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9957
Title: "ChemHem 9957"
Description: "ChemHem mock 9957"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-03-14T16:04:05-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-03-14T16:04:05-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 90
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's release 17.2 regression"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1170730001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-03-14T16:04:05-04:00"
* issued = "2017-03-14T16:04:48.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9958
Title: "ChemHem 9958"
Description: "ChemHem mock 9958"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#UR "Urine"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#71 "URINE"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-08-02T09:52:35-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-08-02T09:52:35-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's 8/2 test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1172140002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-08-02T09:52:35-04:00"
* issued = "2017-08-02T10:17:59.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9959
Title: "ChemHem 9959"
Description: "ChemHem mock 9959"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#UR "Urine"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#71 "URINE"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-04-05T11:50:44-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-04-05T11:50:44-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa - 4/5/17"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1170950002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-04-05T11:50:44-04:00"
* issued = "2017-04-05T11:53:22.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9960
Title: "ChemHem 9960"
Description: "ChemHem mock 9960"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-04-05T11:49:48-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-04-05T11:49:48-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 99
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa - 4/5/17"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1170950001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-04-05T11:49:48-04:00"
* issued = "2017-04-05T11:50:36.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9961
Title: "ChemHem 9961"
Description: "ChemHem mock 9961"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2014-11-26T13:28:02-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.14"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.14"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2014-11-26T13:28:02-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 102
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Release 12.11 test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "0043300002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.14"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2014-11-26T13:28:02-04:00"
* issued = "2014-11-26T13:28:54.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9962
Title: "ChemHem 9962"
Description: "ChemHem mock 9962"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2014-07-31T10:37:29-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84520.0000
* contained[=].code.coding[+] = $60#174 "UREA NITROGEN"
* contained[=].code.text = "Urea Nitrogen"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.14"
* contained[=].code.coding[=] = $loinc#3094-0
* contained[=].code.coding[+].version = "2.14"
* contained[=].code.coding[=] = $95.3#4673484
* contained[=].code.text = "UREA NITROGEN"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2014-07-31T10:37:29-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 23
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "6-20"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Release 12.9.2 testing - LH"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1142120001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.14"
* category[=].coding = $loinc#3094-0
* category[=].text = "UREA NITROGEN:MCNC:PT:SER/PLAS:QN"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2014-07-31T10:37:29-04:00"
* issued = "2014-07-31T10:38:51.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9963
Title: "ChemHem 9963"
Description: "ChemHem mock 9963"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#BLD "Whole blood"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#70 "BLOOD"
* contained[=].type.text = "BLOOD"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2014-06-26T12:33:43-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#81159.0000
* contained[=].code.coding[+] = $60#1396 "FOLATE(WHOLE BLOOD)"
* contained[=].code.text = "Folate, RBC"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.14"
* contained[=].code.coding[=] = $loinc#2282-2
* contained[=].code.coding[+].version = "2.14"
* contained[=].code.coding[=] = $95.3#4664780
* contained[=].code.text = "FOLATE(WHOLE BLOOD)"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2014-06-26T12:33:43-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 10.1
* contained[=].valueQuantity.unit = "ng/ml cell"
//* contained[=].valueQuantity.code = #ng/ml cell
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].note.text = "Reference range prior to 10/31/00 was 150-600 ng/ml"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "342-786"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Release 12.9.ER test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "5241770001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.14"
* category[=].coding = $loinc#2282-2
* category[=].text = "FOLATE:MCNC:PT:BLD:QN"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2014-06-26T12:33:43-04:00"
* issued = "2014-06-26T12:38:03.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9964
Title: "ChemHem 9964"
Description: "ChemHem mock 9964"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#UR "Urine"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#71 "URINE"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2014-06-26T12:55:02-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.14"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.14"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2014-06-26T12:55:02-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "release 12.9.ER test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1141770002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.14"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:UR:QN"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2014-06-26T12:55:02-04:00"
* issued = "2014-06-26T12:56:09.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9965
Title: "ChemHem 9965"
Description: "ChemHem mock 9965"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2017-04-05T11:54:34-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.52"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.52"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2017-04-05T11:54:34-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 5.4
* contained[=].valueQuantity.unit = "mEq/L"
* contained[=].valueQuantity.code = #meq/L
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].note.text = "Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L."
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.6-5.1"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "lisa's test 4/5/17"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1170950003"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.52"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2017-04-05T11:54:34-04:00"
* issued = "2017-04-05T11:55:11.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9966
Title: "ChemHem 9966"
Description: "ChemHem mock 9966"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#BLD "Whole blood"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#70 "BLOOD"
* contained[=].type.text = "BLOOD"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-06-26T14:04:55-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#85610.0000
* contained[=].code.coding[+] = $60#1815 "WHOLE BLOOD PROTIME PANEL"
* contained[=].code.text = "Prothrombin Time"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.65"
* contained[=].code.coding[=] = $loinc#5964-2
* contained[=].code.coding[+].version = "2.65"
* contained[=].code.coding[=] = $95.3#4684199
* contained[=].code.text = "WHOLE BLOOD INR"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-06-26T14:04:55-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "2.5"
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].note.text = "Normal range prior to 6/29/00 = 0.98-1.3"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "2.0-3.0"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.2"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.65"
* contained[=].code.coding[=] = $loinc#5964-2
* contained[=].code.coding[+].version = "2.65"
* contained[=].code.coding[=] = $95.3#4684199
* contained[=].code.text = "WHOLE BLOOD PROTIME"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-06-26T14:04:55-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 18
* contained[=].valueQuantity.unit = "SECS"
* contained[=].valueQuantity.code = #s
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "17.1-20.8"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 6/26"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "5191770001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.65"
* category[=].coding = $loinc#5964-2
* category[=].text = "COAGULATION TISSUE FACTOR INDUCED:TIME:PT:BLD:QN:COAG"
* category[+].coding.version = "2.65"
* category[=].coding = $loinc#5964-2
* category[=].text = "COAGULATION TISSUE FACTOR INDUCED:TIME:PT:BLD:QN:COAG"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-06-26T14:04:55-05:00"
* issued = "2019-06-26T14:06:08.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result[0].reference = "#ChemistryResult-1.1"
* result[+].reference = "#ChemistryResult-1.2"

Instance: 9967
Title: "ChemHem 9967"
Description: "ChemHem mock 9967"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2018-07-13T14:01:40-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.63"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.63"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2018-07-13T14:01:40-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 104
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "lisa's test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1181940001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.63"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2018-07-13T14:01:40-04:00"
* issued = "2018-07-13T14:02:50.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9968
Title: "ChemHem 9968"
Description: "ChemHem mock 9968"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0].version = "20200901"
* contained[=].type.coding[=] = $snomed#78014005 "Urine (substance)"
* contained[=].type.coding[+] = $v2-0487#UR "Urine"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2021-01-20T16:22:23-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #corrected
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2021-01-20T16:22:23-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.02c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 1/20/2021\nLisa's amendment 1/21/21\nCREATININE  reported incorrectly as 0.03c by [14934-VA552].\nChanged to 0.02c on Jan 21, 2021@13:19 by [14934-VA552]."
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1110200001"
* basedOn.reference = "#ServiceRequest-1"
* status = #preliminary
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2021-01-20T16:22:23-05:00"
* issued = "2021-01-21T13:19:31.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9969
Title: "ChemHem 9969"
Description: "ChemHem mock 9969"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "23"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request[0].reference = "#ServiceRequest-1"
* contained[=].request[+].reference = "#ServiceRequest-2"
* contained[=].collection.collectedDateTime = "2021-01-20T16:38:59-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2021-01-20T16:38:59-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 3.5
* contained[=].valueQuantity.unit = "mEq/L"
* contained[=].valueQuantity.code = #meq/L
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].note.text = "Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L."
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.6-5.1"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-2"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84295.0000
* contained[=].code.coding[+] = $60#176 "SODIUM"
* contained[=].code.text = "Sodium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-2.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-2"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2951-2
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4671912
* contained[=].code.text = "SODIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2021-01-20T16:38:59-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 138
* contained[=].valueQuantity.unit = "mEq/L"
* contained[=].valueQuantity.code = #meq/L
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "136-145"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's Test 1/20/2021 - Second lab\nAdded Potassium test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1110200002"
* basedOn[0].reference = "#ServiceRequest-1"
* basedOn[+].reference = "#ServiceRequest-2"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* category[+].coding.version = "2.68"
* category[=].coding = $loinc#2951-2
* category[=].text = "SODIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2021-01-20T16:38:59-05:00"
* issued = "2021-01-21T13:23:47.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result[0].reference = "#ChemistryResult-1.1"
* result[+].reference = "#ChemistryResult-2.1"

Instance: 9970
Title: "ChemHem 9970"
Description: "ChemHem mock 9970"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-05T17:44:35-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84520.0000
* contained[=].code.coding[+] = $60#174 "UREA NITROGEN"
* contained[=].code.text = "Urea Nitrogen"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#3094-0
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4673484
* contained[=].code.text = "UREA NITROGEN"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-05T17:44:35-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 20
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "6-20"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's 2/5/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1190360005"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#3094-0
* category[=].text = "UREA NITROGEN:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-05T17:44:35-05:00"
* issued = "2019-02-05T17:45:08.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9971
Title: "ChemHem 9971"
Description: "ChemHem mock 9971"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2018-05-03T10:29:47-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82250.0000
* contained[=].code.coding[+] = $60#186 "TOT. BILIRUBIN"
* contained[=].code.text = "Bilirubin Total"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.61"
* contained[=].code.coding[=] = $loinc#1975-2
* contained[=].code.coding[+].version = "2.61"
* contained[=].code.coding[=] = $95.3#4661507
* contained[=].code.text = "TOT. BILIRUBIN"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2018-05-03T10:29:47-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 0.2
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = ".2-1.5"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Test 5/3/18"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1181230001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.61"
* category[=].coding = $loinc#1975-2
* category[=].text = "BILIRUBIN:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2018-05-03T10:29:47-04:00"
* issued = "2018-05-03T10:37:44.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9972
Title: "ChemHem 9972"
Description: "ChemHem mock 9972"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2018-05-03T10:38:04-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82466.0000
* contained[=].code.coding[+] = $60#183 "CHOLESTEROL"
* contained[=].code.text = "Cholesterol Total"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.61"
* contained[=].code.coding[=] = $loinc#2093-3
* contained[=].code.coding[+].version = "2.61"
* contained[=].code.coding[=] = $95.3#4662777
* contained[=].code.text = "CHOLESTEROL"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2018-05-03T10:38:04-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 142
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "107-200"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Test 5/3/18"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1181230002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.61"
* category[=].coding = $loinc#2093-3
* category[=].text = "CHOLESTEROL:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2018-05-03T10:38:04-04:00"
* issued = "2018-05-03T10:38:37.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9973
Title: "ChemHem 9973"
Description: "ChemHem mock 9973"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0].version = "20170901"
* contained[=].type.coding[=] = $snomed#78014005 "Urine (substance)"
* contained[=].type.coding[+] = $v2-0487#UR "Urine"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2018-05-03T10:39:14-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.61"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.61"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2018-05-03T10:39:14-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "30.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1181230003"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.61"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2018-05-03T10:39:14-04:00"
* issued = "2018-05-03T10:40:29.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9974
Title: "ChemHem 9974"
Description: "ChemHem mock 9974"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-06-26T14:02:34-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.65"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.65"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-06-26T14:02:34-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 99
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 6/26/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1191770002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.65"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-06-26T14:02:34-05:00"
* issued = "2019-06-26T14:04:24.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9975
Title: "ChemHem 9975"
Description: "ChemHem mock 9975"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2020-10-01T08:00:00-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2020-10-01T08:00:00-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 85
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Auto test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1102750001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2020-10-01T08:00:00-05:00"
* issued = "2020-10-01T10:45:12.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9976
Title: "ChemHem 9976"
Description: "ChemHem mock 9976"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0].version = "20180301"
* contained[=].type.coding[=] = $snomed#78014005 "Urine (substance)"
* contained[=].type.coding[+] = $v2-0487#UR "Urine"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2018-07-13T14:04:02-04:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.63"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.63"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2018-07-13T14:04:02-04:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "lisa's test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1181940002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.63"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2018-07-13T14:04:02-04:00"
* issued = "2018-07-13T14:05:27.000-04:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9977
Title: "ChemHem 9977"
Description: "ChemHem mock 9977"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-05T17:42:55-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-05T17:42:55-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 3.4
* contained[=].valueQuantity.unit = "mEq/L"
* contained[=].valueQuantity.code = #meq/L
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].note.text = "Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L."
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.6-5.1"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1190360004"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-05T17:42:55-05:00"
* issued = "2019-02-05T17:43:33.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9978
Title: "ChemHem 9978"
Description: "ChemHem mock 9978"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "22"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#BLD "Whole blood"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#70 "BLOOD"
* contained[=].type.text = "BLOOD"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-20T17:50:33-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#81159.0000
* contained[=].code.coding[+] = $60#1396 "FOLATE(WHOLE BLOOD)"
* contained[=].code.text = "Folate, RBC"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2282-2
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4664780
* contained[=].code.text = "FOLATE(WHOLE BLOOD)"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-20T17:50:33-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 12
* contained[=].valueQuantity.unit = "ng/ml cell"
//* contained[=].valueQuantity.code = #ng/ml cell
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].note.text = "Reference range prior to 10/31/00 was 150-600 ng/ml"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "342-786"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's AWS TEst"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "5290510001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2282-2
* category[=].text = "FOLATE:MCNC:PT:BLD:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-20T17:50:33-05:00"
* issued = "2019-02-20T17:51:57.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9979
Title: "ChemHem 9979"
Description: "ChemHem mock 9979"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "19"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0].version = "20200731"
* contained[=].type.coding[=] = $snomed#78014005 "Urine (substance)"
* contained[=].type.coding[+] = $v2-0487#UR "Urine"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2020-11-23T12:43:22-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2162-6
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4663504
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2020-11-23T12:43:22-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueString = "0.00c gm/24h"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "1-2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "11/23/20 test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1103280001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2162-6
* category[=].text = "CREATININE:MRAT:24H:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2020-11-23T12:43:22-05:00"
* issued = "2020-11-23T12:47:19.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9980
Title: "ChemHem 9980"
Description: "ChemHem mock 9980"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#SER "Serum"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#72 "SERUM"
* contained[=].type.text = "SERUM"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2022-03-14T08:00:00-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "14934-VA552"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "A"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-552"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "552"
* contained[=].active = true
* contained[=].name = "DAYTON, OH VAMC"
* contained[=].address.line = "4100 W. THIRD STREET"
* contained[=].address.city = "DAYTON"
* contained[=].address.state = "OH"
* contained[=].address.postalCode = "45428"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-989"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "989"
* contained[=].active = true
* contained[=].name = "DAYT29.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-552"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2022-03-14T08:00:00-05:00"
* contained[=].performer.reference = "#Organization-552"
* contained[=].valueQuantity.value = 85
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].note.text = "***PLEASE NOTE NEW CRITICAL VALUE EFFECTIVE 2/2/98***"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "65-110"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Auto Test Lab"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.DAYTON.MED.VA.GOV:LR"
* identifier[Rid].value = "1120730001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2022-03-14T08:00:00-05:00"
* issued = "2022-03-14T13:53:50.000-05:00"
* performer.reference = "#OrgPerformer-989"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9981
Title: "ChemHem 9981"
Description: "ChemHem mock 9981"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "21"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0].version = "20180901"
* contained[=].type.coding[=] = $snomed#78014005 "Urine (substance)"
* contained[=].type.coding[+] = $v2-0487#UR "Urine"
* contained[=].type.text = "URINE"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-03-15T16:59:44-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82435.0000
* contained[=].code.coding[+] = $60#178 "CHLORIDE"
* contained[=].code.text = "Chloride"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2078-4
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4662617
* contained[=].code.text = "CHLORIDE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-03-15T16:59:44-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 99
* contained[=].valueQuantity.unit = "mmol/L"
* contained[=].valueQuantity.code = #mmol/L
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Test 3/15/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190740002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2078-4
* category[=].text = "CHLORIDE:SCNC:PT:URINE:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-03-15T16:59:44-05:00"
* issued = "2019-03-15T17:00:42.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9982
Title: "ChemHem 9982"
Description: "ChemHem mock 9982"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2020-10-29T13:28:45-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "V"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2020-10-29T13:28:45-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 97
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "71-119"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 10/29/20"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1103030001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2020-10-29T13:28:45-05:00"
* issued = "2020-10-29T13:29:52.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9983
Title: "ChemHem 9983"
Description: "ChemHem mock 9983"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "21"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-03-15T16:58:06-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-03-15T16:58:06-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 4.1
* contained[=].valueQuantity.unit = "mmol/L"
* contained[=].valueQuantity.code = #mmol/L
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.8-5.2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's 3/15 test"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190740001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-03-15T16:58:06-05:00"
* issued = "2019-03-15T16:59:35.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9984
Title: "ChemHem 9984"
Description: "ChemHem mock 9984"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "20"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-22T11:11:47-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84330.0000
* contained[=].code.coding[+] = $60#175 "GLUCOSE"
* contained[=].code.text = "Glucose Quant"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2345-7
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4665460
* contained[=].code.text = "GLUCOSE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-22T11:11:47-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 90
* contained[=].valueQuantity.unit = "mg/dl"
* contained[=].valueQuantity.code = #mg/dl
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "71-119"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's test 2/22/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190530002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2345-7
* category[=].text = "GLUCOSE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-22T11:11:47-05:00"
* issued = "2019-02-22T11:12:57.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9985
Title: "ChemHem 9985"
Description: "ChemHem mock 9985"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "23"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#BLD "Whole blood"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#70 "BLOOD"
* contained[=].type.text = "BLOOD"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2020-10-29T13:30:03-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given[0] = "LISA"
* contained[=].name.given[+] = "V"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#85052.0000
* contained[=].code.coding[+] = $60#1893 "A1C HEMOGLOBIN {Pnl}"
* contained[=].code.text = "Glycohemoglobin A(1) C"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.68"
* contained[=].code.coding[=] = $loinc#4548-4
* contained[=].code.coding[+].version = "2.68"
* contained[=].code.coding[=] = $95.3#4682837
* contained[=].code.text = "HEMOGLOBIN A1C"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2020-10-29T13:30:03-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 3.9
* contained[=].valueQuantity.unit = "percent"
* contained[=].valueQuantity.code = #%
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "4.4-6.0"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's Test 10/29/20"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1103030002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.68"
* category[=].coding = $loinc#4548-4
* category[=].text = "HEMOGLOBIN A1C/HEMOGLOBIN.TOTAL:MFR:PT:BLD:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2020-10-29T13:30:03-05:00"
* issued = "2020-10-29T13:32:46.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9986
Title: "ChemHem 9986"
Description: "ChemHem mock 9986"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "23"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-06T11:13:48-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82830.0000
* contained[=].code.coding[+] = $60#179 "CO2"
* contained[=].code.text = "Carbon Dioxide Content"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2028-9
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4662085
* contained[=].code.text = "CO2"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-06T11:13:48-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 21
* contained[=].valueQuantity.unit = "mmol/L"
* contained[=].valueQuantity.code = #mmol/L
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#L
* contained[=].interpretation.text = "L"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "22-32"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190370002"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2028-9
* category[=].text = "CARBON DIOXIDE:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-06T11:13:48-05:00"
* issued = "2019-02-06T11:14:52.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9987
Title: "ChemHem 9987"
Description: "ChemHem mock 9987"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "23"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-22T11:10:05-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#82565.0000
* contained[=].code.coding[+] = $60#173 "CREATININE"
* contained[=].code.text = "Creatinine"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2160-0
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4663483
* contained[=].code.text = "CREATININE"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-22T11:10:05-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 29
* contained[=].valueQuantity.unit = "mg/dL"
* contained[=].valueQuantity.code = #mg/dL
* contained[=].valueQuantity.system = $ucum
* contained[=].interpretation = $v3-ObservationInterpretation#H
* contained[=].interpretation.text = "H"
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "0.6-1.3"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa's Test 2/22/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190530001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2160-0
* category[=].text = "CREATININE:MCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-22T11:10:05-05:00"
* issued = "2019-02-22T11:11:33.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"

Instance: 9988
Title: "ChemHem 9988"
Description: "ChemHem mock 9988"
InstanceOf: JFM.PHR.chReport
Usage: #example
* meta.versionId = "21"
* meta.lastUpdated = "2024-05-16T18:08:59.215-04:00"
* meta.source = "#reWo6V0WdeyFTR19"
* contained[0].resourceType = "Specimen"
* contained[=].id = "Specimen-0"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chSpecimen"
* contained[=].status = #available
* contained[=].type.coding[0] = $v2-0487#PLAS "Plasma"
* contained[=].type.coding[+].version = "5.2"
* contained[=].type.coding[=] = $61#73 "PLASMA"
* contained[=].type.text = "PLASMA"
* contained[=].request.reference = "#ServiceRequest-1"
* contained[=].collection.collectedDateTime = "2019-02-06T11:02:30-05:00"
* contained[+].resourceType = "Practitioner"
* contained[=].id = "Provider-1"
* contained[=].identifier.system = "http://va.gov/terminology/vistaDefinedTerms/4"
* contained[=].identifier.value = "59845-VA660"
* contained[=].name.family = "HALL"
* contained[=].name.given = "LISA"
* contained[+].resourceType = "Organization"
* contained[=].id = "Organization-660"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.type.text = "FI"
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "660"
* contained[=].active = true
* contained[=].name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* contained[=].address.line = "500 FOOTHILL BLVD."
* contained[=].address.city = "SALT LAKE CITY"
* contained[=].address.state = "UT"
* contained[=].address.postalCode = "84148"
* contained[=].address.country = "USA"
* contained[+].resourceType = "Organization"
* contained[=].id = "OrgPerformer-979"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.organization"
* contained[=].identifier.use = #usual
* contained[=].identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* contained[=].identifier.value = "979"
* contained[=].active = true
* contained[=].name = "SLC10.FO-BAYPINES.MED.VA.GOV"
* contained[+].resourceType = "ServiceRequest"
* contained[=].id = "ServiceRequest-1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chOrder"
* contained[=].status = #unknown
* contained[=].intent = #order
* contained[=].category = $sct#108252007 "Laboratory procedure"
* contained[=].code.coding[0] = $64#84140.0000
* contained[=].code.coding[+] = $60#177 "POTASSIUM"
* contained[=].code.text = "Potassium"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].requester.reference = "#Provider-1"
* contained[=].performer.reference = "#Organization-660"
* contained[+].resourceType = "Observation"
* contained[=].id = "ChemistryResult-1.1"
* contained[=].meta.profile = "http://johnmoehrke.github.io/phr/StructureDefinition/JFM.PHR.chTest"
* contained[=].basedOn.reference = "#ServiceRequest-1"
* contained[=].status = #final
* contained[=].category = $observation-category#laboratory
* contained[=].code.coding[0].version = "2.64"
* contained[=].code.coding[=] = $loinc#2823-3
* contained[=].code.coding[+].version = "2.64"
* contained[=].code.coding[=] = $95.3#4670505
* contained[=].code.text = "POTASSIUM"
* contained[=].subject = Reference(Patient/ex-MHV-patient-942104)
* contained[=].effectiveDateTime = "2019-02-06T11:02:30-05:00"
* contained[=].performer.reference = "#Organization-660"
* contained[=].valueQuantity.value = 4.1
* contained[=].valueQuantity.unit = "mmol/L"
* contained[=].valueQuantity.code = #mmol/L
* contained[=].valueQuantity.system = $ucum
* contained[=].specimen.reference = "#Specimen-0"
* contained[=].referenceRange.text = "3.8-5.2"
* extension.url = "http://johnmoehrke.github.io/phr/StructureDefinition/Notes"
* extension.valueString = "Lisa 2/6/19"
* identifier[Rid].use = #usual
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].value = "1190370001"
* basedOn.reference = "#ServiceRequest-1"
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB
* category[ChSlice] = $v2-0074#CH
* category[2].coding.version = "2.64"
* category[=].coding = $loinc#2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* effectiveDateTime = "2019-02-06T11:02:30-05:00"
* issued = "2019-02-06T11:04:02.000-05:00"
* performer.reference = "#OrgPerformer-979"
* specimen.reference = "#Specimen-0"
* result.reference = "#ChemistryResult-1.1"