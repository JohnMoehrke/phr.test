

Instance:   ex-MHV-vitals-1
InstanceOf: JFM.PHR.vitalsBP
Usage: #example
Title: "Vitals 1"
Description: """
Example from a mock VitalSignTO
"""
/*
<vitalSignTO>
    <type>
        <id>6003810</id>
        <category/>
        <name>BLOOD PRESSURE</name>
    </type>
    <value1>126/70</value1>
    <low>100/60</low>
    <high>210/110</high>
    <timestamp>3040924.111754</timestamp>
    <location>
        <id>2938</id>
        <name>PCT_O PATIL (F/U)</name>
    </location>
    <units>mm[Hg]</units>
</vitalSignTO>

*/
* status = #final
* identifier[TOid].value = "VitalSignTO.6003810" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "BLOOD PRESSURE"
* code.coding[+] = LOINC#85354-9 "Blood pressure panel with all children optional"
* code.coding[+] = VUID#4500634 "BLOOD PRESSURE"
* subject = Reference(Patient/ex-MHV-patient-2)
* effectiveDateTime = 2004-09-24T11:17:54Z
* component[systolic].code = LOINC#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity = 126 'mm[Hg]'
* component[systolic].valueQuantity.unit = "mmHg"
* component[diastolic].code = LOINC#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity = 70 'mm[Hg]'
* component[diastolic].valueQuantity.unit = "mmHg"
* contained[+] = ex-MHV-location-2938
* performer[+].extension[site].valueReference = Reference(ex-MHV-location-2938)
* performer[=].display = "Location 2938"


Instance:   ex-MHV-vitals-deleted-1
InstanceOf: JFM.PHR.vitalsBP
Usage: #example
Title: "Vitals 1 of an MHV vital-sign, but with a different identifier, and marked as entered-in-error"
Description: """
Example from a mock VitalSignTO
"""
/*
<vitalSignTO>
    <type>
        <id>6003810</id>
        <category/>
        <name>BLOOD PRESSURE</name>
    </type>
    <value1>126/70</value1>
    <low>100/60</low>
    <high>210/110</high>
    <timestamp>3040924.111754</timestamp>
    <location>
        <id>2938</id>
        <name>PCT_O PATIL (F/U)</name>
    </location>
    <units>mm[Hg]</units>
</vitalSignTO>

*/
* status = #entered-in-error
* identifier[TOid].value = "VitalSignTO.6" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "BLOOD PRESSURE"
* code.coding[+] = LOINC#85354-9 "Blood pressure panel with all children optional"
* code.coding[+] = VUID#4500634 "BLOOD PRESSURE"
* subject = Reference(Patient/ex-MHV-patient-2)
* effectiveDateTime = 2004-09-24T11:17:54Z
* component[systolic].code = LOINC#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity = 126 'mm[Hg]'
* component[systolic].valueQuantity.unit = "mmHg"
* component[diastolic].code = LOINC#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity = 70 'mm[Hg]'
* component[diastolic].valueQuantity.unit = "mmHg"
* contained[+] = ex-MHV-location-2938
* performer[+].extension[site].valueReference = Reference(ex-MHV-location-2938)
* performer[=].display = "Location 2938"



Instance:   ex-MHV-pain-1
InstanceOf: JFM.PHR.vitalsPain
Title: "Vitals of a MHV pain R4 observation of 10"
Description:      "holding typical values"
/*
<vitalSignTO>
    <type>
        <id>6003505</id>
        <category/>
        <name>PAIN</name>
    </type>
    <value1>5</value1>
    <low/>
    <high/>
    <timestamp>3040924.1032</timestamp>
    <location>
        <id>2938</id>
        <name>PCT_O PATIL (F/U)</name>
    </location>
    <units/>
</vitalSignTO>
*/
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* identifier[TOid].value = "VitalSignTO.6003505" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[pain] = LOINC#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* code.coding[1] = VUID#4500635 "PAIN"
* code.text = "PAIN"
* subject = Reference(Patient/ex-MHV-patient-2)
* effectiveDateTime = 2004-09-24T10:32:00-05:00
* valueInteger = 5
* contained[+] = ex-MHV-location-2938
* performer[+].extension[site].valueReference = Reference(ex-MHV-location-2938)
* performer[=].display = "Location 2938"

Instance:   ex-MHV-heartRate-1
InstanceOf: JFM.PHR.vitals
Title: "Vitals of an MHV heartRate R4 observation"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
/*
<vitalSignTO>
    <type>
        <id>6003502</id>
        <category/>
        <name>PULSE</name>
    </type>
    <value1>83</value1>
    <low>60</low>
    <high>120</high>
    <timestamp>3040924.1032</timestamp>
    <location>
        <id>2938</id>
        <name>PCT_O PATIL (F/U)</name>
    </location>
    <units>/min</units>
</vitalSignTO>
*/
* status = #final
* identifier[TOid].value = "VitalSignTO.6003502" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#8867-4 "Heart rate"
* code.coding[+] = VUID#4500636
* code.text = "PULSE"
* subject = Reference(Patient/ex-MHV-patient-2)
* effectiveDateTime = 2004-09-24T10:32:00-05:00
* valueQuantity = 83 '/min' "per min"
* contained[+] = ex-MHV-location-2938
* performer[+].extension[site].valueReference = Reference(ex-MHV-location-2938)
* performer[=].display = "Location 2938"


Instance:   ex-MHV-oximetry-1
InstanceOf: JFM.PHR.vitalsOx
Title: "Vitals of an MHV heartRate R4 observation"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
/*

<vitalSignTO>
    <type>
        <id>6544753</id>
        <category>4500637</category>
        <name>PULSE OXIMETRY</name>
    </type>
    <value1>95</value1>
    <low>0</low>
    <high>100</high>
    <timestamp>3231026.113331</timestamp>
    <location>
        <id>3713</id>
        <name>000-EYE NON TREATMENT (LOC)</name>
    </location>
    <units>%</units>
    <qualifierItems>
        <qualifier>
            <id>4688666</id>
            <name>NASAL CANNULA</name>
        </qualifier>
    </qualifierItems>
</vitalSignTO>
*/
* status = #final
* identifier[TOid].value = "VitalSignTO.6544753" 
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
* identifier[TOid].use = #usual
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "PULSE OXIMETRY"
* code = LOINC#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(Patient/ex-MHV-patient-2)
* effectiveDateTime = 2023-10-26T11:33:31-05:00
* valueQuantity = 95 '%' "percent"
* contained[+] = location-3713
* performer[+].extension[site].valueReference = Reference(location-3713)
* performer[=].display = "Location 3713"
* extension[observation-deviceCode].valueCodeableConcept = SCT#336623009 "Oxygen nasal cannula"
* component[+].code = urn:oid:2.16.840.1.113883.6.233#4688666 "NASAL CANNULA"
* component[=].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable
