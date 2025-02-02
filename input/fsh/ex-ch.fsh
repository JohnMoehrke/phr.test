




///////////////////////////////////////////////////  1110200002  ////////////////////////////////////////


Instance:   ex-MHV-chSpecimen-1
InstanceOf: JFM.PHR.chSpecimen
Usage: #inline
/*
<specimen>
    <specimenSource>
        <code>SER</code>
        <displayText>Serum</displayText>
        <codingSystem>HL70070</codingSystem>
        <alternateCode>72</alternateCode>
        <alternateDisplayText>SERUM</alternateDisplayText>
        <alternateCodingSystem>99VA61</alternateCodingSystem>
        <alternateCodingSystemVersion>5.2</alternateCodingSystemVersion>
        <originalText>SERUM</originalText>
    </specimenSource>
    <specimenTakenDate>
        <literal>20210120163859-0500</literal>
    </specimenTakenDate>
</specimen>
*/
* status = #available
* type.coding[+].code = #SER
* type.coding[=].display = "Serum"
* type.coding[=].system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* type.coding[+].code = #72
* type.coding[=].display = "SERUM"
* type.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/61"
* type.text = "SERUM"
* collection.collectedDateTime = 2021-01-20T16:38:59-05:00
* request = Reference(ex-MHV-chOrder-1a)


Instance: ex-MHV-chOrder-1a
InstanceOf: JFM.PHR.chOrder
Usage: #inline
/*  first labTest in the report
         <labTestRequest>
            <author>
               <identifier>
                  <identity>14934-VA552</identity>
               </identifier>
               <idSourceTable>99VA4</idSourceTable>
               <name>
                  <given>LISA</given>
                  <middle>A</middle>
                  <family>HALL</family>
               </name>
            </author>
            <orderingFacilityIdentifier>
               <identity>552</identity>
               <name>DAYTON, OH VAMC</name>
               <assigningAuthority>USVHA</assigningAuthority>
               <nameTypeCode>L</nameTypeCode>
               <identityTypeCode>FI</identityTypeCode>
               <nameRepresentation>A</nameRepresentation>
               <stationNumber>552</stationNumber>
            </orderingFacilityIdentifier>
         </labTestRequest>
   ...
         <labTests>
            <orderedTestCode>
               <code>84140.0000</code>
               <displayText>Potassium</displayText>
               <codingSystem>99VA64</codingSystem>
               <alternateCode>177</alternateCode>
               <alternateDisplayText>POTASSIUM</alternateDisplayText>
               <alternateCodingSystem>99VA60</alternateCodingSystem>
            </orderedTestCode>
      ...
*/
* category[us-core] = SCT#108252007 "Laboratory procedure"
* code.coding[+].code = #84140.0000
* code.text = "Potassium"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/64"
* code.coding[+].code = #177
* code.coding[=].display = "POTASSIUM"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/60"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-942104)
* performer[+] = Reference(Organization/ex-MHV-organization-552)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-14934-VA552)


Instance: ex-MHV-chTest-1a
InstanceOf: JFM.PHR.chTest 
Usage: #inline
/*  first labTest in the report
         <labTests>
      ...
            <chemistryResults>
               <valueInterpretation>L</valueInterpretation>
               <observationStatus>F</observationStatus>
               <testIdentifier>
                  <code>2823-3</code>
                  <displayText>POTASSIUM:SCNC:PT:SER/PLAS:QN:</displayText>
                  <codingSystem>LN</codingSystem>
                  <codingSystemVersion>2.68</codingSystemVersion>
                  <alternateCode>4670505</alternateCode>
                  <alternateCodingSystem>99VA95.3</alternateCodingSystem>
                  <alternateCodingSystemVersion>2.68</alternateCodingSystemVersion>
                  <originalText>POTASSIUM</originalText>
               </testIdentifier>
               <referenceRange>3.6-5.1</referenceRange>
               <labCommentEvents>
                  <comments>Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L.</comments>
               </labCommentEvents>
               <observationValue>3.5</observationValue>
               <observationUnits>
                  <code>mEq/L</code>
                  <displayText>mEq/L</displayText>
                  <codingSystem>L</codingSystem>
               </observationUnits>
               <performingOrganization>
                  <identifier>
                     <identity>552</identity>
                     <name>DAYTON, OH VAMC</name>
                     <assigningAuthority>USVHA</assigningAuthority>
                     <nameTypeCode>L</nameTypeCode>
                     <identityTypeCode>FI</identityTypeCode>
                     <nameRepresentation>A</nameRepresentation>
                     <stationNumber>552</stationNumber>
                  </identifier>
                  <address>
                     <line1>4100 W. THIRD STREET</line1>
                     <city>DAYTON</city>
                     <postalCode>45428</postalCode>
                     <country>USA</country>
                     <state>OH</state>
                  </address>
               </performingOrganization>
            </chemistryResults>
         </labTests>
*/
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* interpretation.text = "L"
* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L
* status = #final
* code.coding[+].code = #2823-3
* code.text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* code.coding[=].system = LOINC
* code.coding[=].version = "2.68"
* code.coding[+].code = #4670505
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/95.3"
* code.text = "POTASSIUM"
* effectiveDateTime = 2021-01-20T16:38:59-05:00
* referenceRange.text = "3.6-5.1"
* note.text = "Normal Range Prior to 8-22-02 was: 3.6 - 5.0 mEq/L."
* valueQuantity.value = 3.5
* valueQuantity.unit = "mEq/L"
* valueQuantity.system = UCUM
* performer = Reference(Organization/ex-MHV-organization-552)
* subject = Reference(Patient/ex-MHV-patient-942104)
* specimen = Reference(ex-MHV-chSpecimen-1)
* basedOn = Reference(ex-MHV-chOrder-1a)


Instance: ex-MHV-chOrder-1b
InstanceOf: JFM.PHR.chOrder
Usage: #inline
/* second labTest in the report
         <labTestRequest>
            <author>
               <identifier>
                  <identity>14934-VA552</identity>
               </identifier>
               <idSourceTable>99VA4</idSourceTable>
               <name>
                  <given>LISA</given>
                  <middle>A</middle>
                  <family>HALL</family>
               </name>
            </author>
            <orderingFacilityIdentifier>
               <identity>552</identity>
               <name>DAYTON, OH VAMC</name>
               <assigningAuthority>USVHA</assigningAuthority>
               <nameTypeCode>L</nameTypeCode>
               <identityTypeCode>FI</identityTypeCode>
               <nameRepresentation>A</nameRepresentation>
               <stationNumber>552</stationNumber>
            </orderingFacilityIdentifier>
         </labTestRequest>
    ...
         <labTests>
            <orderedTestCode>
               <code>84295.0000</code>
               <displayText>Sodium</displayText>
               <codingSystem>99VA64</codingSystem>
               <alternateCode>176</alternateCode>
               <alternateDisplayText>SODIUM</alternateDisplayText>
               <alternateCodingSystem>99VA60</alternateCodingSystem>
            </orderedTestCode>
         ...
*/
* category[us-core] = SCT#108252007 "Laboratory procedure"
* code.coding[+].code = #84295.0000
* code.text = "Sodium"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/64"
* code.coding[+].code = #176
* code.coding[=].display = "SODIUM"
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/60"
* status = #unknown
* intent = #order
* subject = Reference(Patient/ex-MHV-patient-942104)
* performer[+] = Reference(Organization/ex-MHV-organization-552)
* requester[+] = Reference(Practitioner/ex-MHV-practitioner-14934-VA552)


Instance: ex-MHV-chTest-1b
InstanceOf: JFM.PHR.chTest 
Usage: #inline
/* second labTest in the report
         <labTests>
      ...
            <chemistryResults>
               <observationStatus>F</observationStatus>
               <testIdentifier>
                  <code>2951-2</code>
                  <displayText>SODIUM:SCNC:PT:SER/PLAS:QN:</displayText>
                  <codingSystem>LN</codingSystem>
                  <codingSystemVersion>2.68</codingSystemVersion>
                  <alternateCode>4671912</alternateCode>
                  <alternateCodingSystem>99VA95.3</alternateCodingSystem>
                  <alternateCodingSystemVersion>2.68</alternateCodingSystemVersion>
                  <originalText>SODIUM</originalText>
               </testIdentifier>
               <referenceRange>136-145</referenceRange>
               <observationValue>138</observationValue>
               <observationUnits>
                  <code>mEq/L</code>
                  <displayText>mEq/L</displayText>
                  <codingSystem>L</codingSystem>
               </observationUnits>
               <performingOrganization>
                  <identifier>
                     <identity>552</identity>
                     <name>DAYTON, OH VAMC</name>
                     <assigningAuthority>USVHA</assigningAuthority>
                     <nameTypeCode>L</nameTypeCode>
                     <identityTypeCode>FI</identityTypeCode>
                     <nameRepresentation>A</nameRepresentation>
                     <stationNumber>552</stationNumber>
                  </identifier>
                  <address>
                     <line1>4100 W. THIRD STREET</line1>
                     <city>DAYTON</city>
                     <postalCode>45428</postalCode>
                     <country>USA</country>
                     <state>OH</state>
                  </address>
               </performingOrganization>
            </chemistryResults>
         </labTests>

*/
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* interpretation.text = "L"
* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L
* status = #final
* code.coding[+].code = #2951-2
* code.text = "SODIUM:SCNC:PT:SER/PLAS:QN:"
* code.coding[=].system = LOINC
* code.coding[=].version = "2.68"
* code.coding[+].code = #4671912
* code.coding[=].system = "http://va.gov/terminology/vistaDefinedTerms/95.3"
* effectiveDateTime = 2021-01-20T16:38:59-05:00
* referenceRange.text = "136-145"
* valueQuantity.value = 138.0
* valueQuantity.unit = "mEq/L"
* valueQuantity.system = UCUM
* performer = Reference(Organization/ex-MHV-organization-552)
* subject = Reference(Patient/ex-MHV-patient-942104)
* basedOn = Reference(ex-MHV-chOrder-1b)
* specimen = Reference(ex-MHV-chSpecimen-1)



Instance: ex-MHV-chReport-1
InstanceOf: JFM.PHR.chReport 
Title: "ChemHem 1"
Usage: #example
Description: """
Example from a mock labTestPromises (1110200002)
"""
/*

      <labTestPromises>
         <recordIdentifier>
            <identity>1110200002</identity>
            <namespaceId>LR</namespaceId>
            <universalId>TEST.DAYTON.MED.VA.GOV</universalId>
            <universalIdType>DNS</universalIdType>
         </recordIdentifier>
         <patient>
            <identifier>
               <identity>27167</identity>
               <assigningFacility>989</assigningFacility>
               <assigningAuthority>USVHA</assigningAuthority>
            </identifier>
            <name>
               <given>TESTFIVE</given>
               <middle>L</middle>
               <family>MHVSYSTEST</family>
            </name>
         </patient>
         <reportCompleteDate>
            <literal>20210121132347-0500</literal>
         </reportCompleteDate>
         <labSubscript>CH</labSubscript>
         <labCommentEvents>
            <comments>Lisa's Test 1/20/2021 - Second lab</comments>
            <comments>Added Potassium test</comments>
         </labCommentEvents>

...  Specimen and two labTest ...

         <recordSource>
            <namespaceId>989</namespaceId>
            <universalId>DAYT29.FO-BAYPINES.MED.VA.GOV</universalId>
            <universalIdType>DNS</universalIdType>
         </recordSource>
         <recordVersion>0</recordVersion>
         <recordUpdateTime>
            <literal>20210121132348-0500</literal>
         </recordUpdateTime>
      </labTestPromises>
*/
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[Rid].value = "1110200002" 
* identifier[Rid].system = "urn:fdc:TEST.SALT-LAKE.MED.VA.GOV:LR"
* identifier[Rid].use = #usual
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[ChSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#CH
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* issued = 2021-01-21T11:32:47-05:00
* extension[note][+].valueString = "Lisa's Test 1/20/2021 - Second lab"
* extension[note][+].valueString = "Added Potassium test"

* contained[+] = ex-MHV-organization-552
* contained[+] = ex-MHV-practitioner-14934-VA552
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)

* contained[+] = ex-MHV-chOrder-1a
* basedOn[+] = Reference(ex-MHV-chOrder-1a)
* contained[+] = ex-MHV-chTest-1a
* result[+] = Reference(ex-MHV-chTest-1a)
* category[2].coding.code = #2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chOrder-1b
* basedOn[+] = Reference(ex-MHV-chOrder-1b)
* contained[+] = ex-MHV-chTest-1b
* result[+] = Reference(ex-MHV-chTest-1b)
* category[+].coding.code = #2951-2
* category[=].text = "SODIUM:SCNC:PT:SER/PLAS:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chSpecimen-1
* specimen[+] = Reference(ex-MHV-chSpecimen-1)
* effectiveDateTime = 2021-01-20T16:38:59-05:00


Instance: ex-MHV-chReport-1-secondary
InstanceOf: JFM.PHR.chReport 
Title: "ChemHem 1 secondary identifier"
Usage: #example
Description: """
Example from a mock labTestPromises (1110200002) with a secondary kind of identifier
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[TOid].value = "LR-0703-10/2021-01-20T16:38:59-05:00" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #secondary
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[ChSlice] = http://terminology.hl7.org/CodeSystem/v2-0074#CH
* code.text = "CH"
* subject = Reference(Patient/ex-MHV-patient-942104)
* issued = 2021-01-21T11:32:47-05:00
* extension[note][+].valueString = "Lisa's Test 1/20/2021 - Second lab"
* extension[note][+].valueString = "Added Potassium test"

* contained[+] = ex-MHV-organization-552
* contained[+] = ex-MHV-practitioner-14934-VA552
* contained[+] = ex-MHV-organization-989
* performer[+] = Reference(Organization/ex-MHV-organization-989)

* contained[+] = ex-MHV-chOrder-1a
* basedOn[+] = Reference(ex-MHV-chOrder-1a)
* contained[+] = ex-MHV-chTest-1a
* result[+] = Reference(ex-MHV-chTest-1a)
* category[2].coding.code = #2823-3
* category[=].text = "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chOrder-1b
* basedOn[+] = Reference(ex-MHV-chOrder-1b)
* contained[+] = ex-MHV-chTest-1b
* result[+] = Reference(ex-MHV-chTest-1b)
* category[+].coding.code = #2951-2
* category[=].text = "SODIUM:SCNC:PT:SER/PLAS:QN:"
* category[=].coding.system = LOINC
* category[=].coding.version = "2.68"

* contained[+] = ex-MHV-chSpecimen-1
* specimen[+] = Reference(ex-MHV-chSpecimen-1)
* effectiveDateTime = 2021-01-20T16:38:59-05:00
