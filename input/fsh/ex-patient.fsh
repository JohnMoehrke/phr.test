
Instance: ex-MHV-patient-0
InstanceOf: JFMpatient
Title: "Patient of MHV MHVLISAONE"
Description: "Only values from eVault"
Usage: #example
* name[+].family = "MHVLISAONE"
* name[=].given = "ROBERT"
//* name[=].use = #usual
* gender = #male 
* birthDate = "1962-08-09"
* active = true
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "0"
* identifier[PatientId].use = #usual



Instance: ex-VIA-patient-0
InstanceOf: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Title: "Patient MHVLISAONE"
Description: """
This example is derived off of a mock PatientTO. It shows where everything that could be in a VIA PatientTO could go. This is not an example of what MHV will populate the Patient like.
"""
Usage: #example
* extension[http://hl7.org/fhir/StructureDefinition/patient-religion].valueCodeableConcept.text = "PROTESTANT, NO DENOMINATION"
* name[+].use = #usual
* name[=].family = "MHVLISAONE"
* name[=].given[+] = "ROBERT"
* name[=].given[+] = "M"
* identifier[+].use = #secondary
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security number"
* identifier[=].value = "666114838"
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.1"
* gender = #male 
* birthDate = "1962-08-09"
* active = true
* extension[us-core-ethnicity].extension[text].valueString = "WHITE, NOT OF HISPANIC ORIGIN"
// drop age as not useful in persisted data
* maritalStatus.text = "MARRIED"
* address[+].use = #home
* address[=].line[+] = "55 NORTH MCDONALD DRIVE"
* address[=].city = "WINCHESTER"
* address[=].district = "135"
* address[=].state = "INDIANA"
* address[=].postalCode = "47394"
* address[=].country = "USA"
* extension[http://hl7.org/fhir/StructureDefinition/patient-birthPlace].valueAddress.city = "BOONE COUNTY"
* extension[http://hl7.org/fhir/StructureDefinition/patient-birthPlace].valueAddress.state = "KENTUCKY"
* telecom[+].use = #home
* telecom[=].value = "765-555-6688"
* telecom[=].system = #phone
// drop occupation - Would be recorded as an Observation under SDOH
* contact[+].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[=].name.family = "ANTRAS"
* contact[=].name.given[+] = "BETTY"
* contact[=].name.given[+] = "J"
* contact[=].address.line[+] = "55 NORTH MCDONALD DRIVE"
* contact[=].address.city = "WINCHESTER"
* contact[=].address.district = "135"
* contact[=].address.state = "INDIANA"
* contact[=].address.postalCode = "47394"
* contact[=].telecom[+].use = #home
* contact[=].telecom[=].value = "765-555-6688"
* contact[=].telecom[=].system = #phone
* contact[+].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#C "Emergency Contact"
* contact[=].name.family = "ANTRAS"
* contact[=].name.given[+] = "BETTY"
* contact[=].name.given[+] = "J"
* contact[=].address.line[+] = "55 NORTH MCDONALD DRIVE"
* contact[=].address.city = "WINCHESTER"
* contact[=].address.district = "135"
* contact[=].address.state = "INDIANA"
* contact[=].address.postalCode = "47394"
* contact[=].telecom[+].use = #home
* contact[=].telecom[=].value = "765-555-6688"
* contact[=].telecom[=].system = #phone
* identifier[+].use = #official
// Not sure what .type to use
* identifier[=].value = "1013025697"
* identifier[=].system = "http://va.gov/systems/mpiPID"
* identifier[+].use = #secondary
* identifier[=].system = "http://va.gov/systems/localPID"
* identifier[=].value = "49906"
// not sure the meaning of confidentaility flag - could be .meta.security
// not sure the meaning of patientFlags
// dropping activeInsurance - could go into Account resource - could go in extension as text blob
// dropping currentMeansStatus
// dropping elegibilityCode

/*
<patientTO>
    <name>MTPZEROTWO,DAYTSHR</name>
    <patientName>MTPZEROTWO,DAYTSHR</patientName>
    <mpiPid>1013699147</mpiPid>
    <mpiChecksum>368567</mpiChecksum>
    <localPid>552164786</localPid>
    <confidentiality>
        <tag>0</tag>
    </confidentiality>
    <patientFlags>
        <count>0</count>
    </patientFlags>
</patientTO>
*/
Instance: ex-MHV-patient-1
InstanceOf: JFMpatient
Title: "Patient DAYSHR"
Description: """
This example is derived off of a mock PatientTO
"""
Usage: #example
* name[+].family = "DAYTSHR"
* name[=].given = "MTPZEROTWO"
//* name[=].use = #usual
//* name[=].text = "MTPZEROTWO,DAYTSHR"
* gender = #male 
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/mpiPID"
//* identifier[=].value = "1013699147"
//* identifier[+].use = #secondary
//* identifier[=].system = "http://va.gov/systems/localPID"
//* identifier[=].value = "552164786"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "1"
* identifier[PatientId].use = #usual


/*
<patientTO>
    <name>MHVLISAONE,ROBERT M</name>
    <patientName>MHVLISAONE,ROBERT M</patientName>
    <mpiPid>1013025697</mpiPid>
    <mpiChecksum>197920</mpiChecksum>
    <localPid>49906</localPid>
    <confidentiality>
        <tag>0</tag>
    </confidentiality>
    <patientFlags>
        <count>0</count>
    </patientFlags>
</patientTO>
*/
Instance: ex-MHV-patient-2
InstanceOf: JFMpatient
Title: "Patient ROBERT"
Description: """
This example is derived off of a mock PatientTO
"""
Usage: #example
* name[+].family = "MHVLISAONE"
* name[=].given[+] = "ROBERT"
//* name[=].given[+] = "M"
//* name[=].use = #usual
//* name[=].text = "MHVLISAONE,ROBERT M"
* gender = #male 
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/mpiPID"
//* identifier[=].value = "1013025697"
//* identifier[+].use = #secondary
//* identifier[=].system = "http://va.gov/systems/localPID"
//* identifier[=].value = "49906"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "2"
* identifier[PatientId].use = #usual


/* from HDR Lab
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
*/
Instance: ex-MHV-patient-27167
InstanceOf: JFMpatient
Title: "Patient TESTFIVE"
Description: """
This example is derived off of a mock patient
"""
Usage: #example
* name[+].use = #usual
* name[=].family = "MHVSYSTEST"
* name[=].given[+] = "TESTFIVE"
//* name[=].given[+] = "L"
* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/USVHA"
//* identifier[=].value = "27167"
//* identifier[=].assigner.display = "989"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "27167"
* identifier[PatientId].use = #usual


/* from allergies.xml
            <patient>
                <identifier>
                    <identity>89486</identity>
                    <assigningFacility>979</assigningFacility>
                    <assigningAuthority>USVHA</assigningAuthority>
                </identifier>
                <name>
                    <given>MHVPDAADLZ</given>
                    <middle>LUSER</middle>
                    <family>MHVASPXXI</family>
                    <suffix>MHV</suffix>
                </name>
            </patient>
*/
Instance: ex-MHV-patient-89486
InstanceOf: JFMpatient
Title: "Patient MHVASPXXI"
Description: """
This example is derived off of a mock patient
"""
Usage: #example
* name[+].use = #usual
* name[=].family = "MHVASPXXI"
* name[=].given[+] = "MHVPDAADLZ"
//* name[=].given[+] = "LUSERL"
//* name[=].suffix = "MHV"
* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/USVHA"
//* identifier[=].value = "89486"
//* identifier[=].assigner.display = "979"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "89486"
* identifier[PatientId].use = #usual

/*
From hdr_lab_samples.xml

         <patient>
            <identifier>
               <identity>942104</identity>
               <assigningFacility>979</assigningFacility>
               <assigningAuthority>USVHA</assigningAuthority>
            </identifier>
            <name>
               <given>TESTFIVE</given>
               <middle>L</middle>
               <family>MHVSYSTEST</family>
            </name>
         </patient>
*/
Instance: ex-MHV-patient-942104
InstanceOf: JFMpatient
Title: "Patient TESTFIVE L, MHVSYSTEST"
Description: """
This example is derived off of a mock patient
"""
Usage: #example
* name[+].use = #usual
* name[=].family = "MHVSYSTEST"
* name[=].given[+] = "L"
//* name[=].given[+] = "TESTFIVE"
* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/USVHA"
//* identifier[=].value = "942104"
//* identifier[=].assigner.display = "979"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "942104"
* identifier[PatientId].use = #usual

/* Often used in testing */

Instance: 27659
InstanceOf: JFMpatient
Title: "Patient for testing environment"
Description: """
Used in testing environment
"""
Usage: #example
* name.given[+] = "unknown"
* name.family = "test"
* birthDate = "1000-01-01"
* gender = #unknown
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "27659"
* identifier[PatientId].use = #usual

/* used in immunization testing */
Instance: 9204
InstanceOf: JFMpatient
Title: "Patient used for Immunization testing"
Description: "Immunization testng patient"
Usage: #example
* name.given[+] = "unknown"
* name.family = "test"
* birthDate = "1000-01-01"
* gender = #unknown
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "9204"
* identifier[PatientId].use = #usual

/*
used in test data

<patientTO>
    <name>CASEYLAST,CASEYONE</name>
    <patientName>CASEYLAST,CASEYONE</patientName>
    <mpiPid>1013699421</mpiPid>
    <mpiChecksum>762086</mpiChecksum>
    <localPid>552164788</localPid>
    <confidentiality>
        <tag>0</tag>
    </confidentiality>
    <patientFlags>
        <count>0</count>
    </patientFlags>
</patientTO>

*/
Instance: ex-MHV-patient-3
InstanceOf: JFMpatient
Title: "Patient DAYSHR"
Description: """
This example is derived off of a mock PatientTO
"""
Usage: #example
* name[+].family = "CASEYLAST"
* name[=].given = "CASEYONE"

* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/mpiPID"
//* identifier[=].value = "1013699421"
//* identifier[+].use = #secondary
//* identifier[=].system = "http://va.gov/systems/localPID"
//* identifier[=].value = "1013699421"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "3"
* identifier[PatientId].use = #usual

/*
used in test data

<patientTO>
    <name>CASEY,VETERAN</name>
    <patientName>CASEY,VETERAN</patientName>
    <mpiPid>1013704789</mpiPid>
    <mpiChecksum>992505</mpiChecksum>
    <localPid>552164830</localPid>
    <confidentiality>
        <tag>0</tag>
    </confidentiality>
    <patientFlags>
        <count>0</count>
    </patientFlags>
</patientTO>

*/
Instance: ex-MHV-patient-4
InstanceOf: JFMpatient
Title: "Patient VETERAN CASEY"
Description: """
This example is derived off of a mock PatientTO
"""
Usage: #example
* name[+].family = "CASEY"
* name[=].given = "VETERAN"

* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/mpiPID"
//* identifier[=].value = "1013699421"
//* identifier[+].use = #secondary
//* identifier[=].system = "http://va.gov/systems/localPID"
//* identifier[=].value = "1013699421"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "4"
* identifier[PatientId].use = #usual

/*
                <patientTO>
                  <name>MHVZZVISNTWENTY,TEST PATIENTR</name>
                  <patientName>MHVZZVISNTWENTY,TEST PATIENTR</patientName>
                  <mpiPid>1015746490</mpiPid>
                  <mpiChecksum>634341</mpiChecksum>
                  <localPid>3080549</localPid>
                  <confidentiality>
                    <tag>0</tag>
                  </confidentiality>
                  <patientFlags>
                    <count>0</count>
                  </patientFlags>
                </patientTO>
*/
Instance: ex-MHV-patient-1015746490
InstanceOf: JFMpatient
Title: "Patient MHVZZVISNTWENTY,TEST PATIENTR"
Description: """
This example is derived off of a mock PatientTO
"""
Usage: #example
* name[+].family = "MHVZZVISNTWENTY"
* name[=].given[+] = "TEST"
* name[=].given[+] = "PATIENTRRAN"

* gender = #unknown
* birthDate = "1000-01-01"
//* identifier[+].use = #official
//* identifier[=].system = "http://va.gov/systems/mpiPID"
//* identifier[=].value = "1013699421"
//* identifier[+].use = #secondary
//* identifier[=].system = "http://va.gov/systems/localPID"
//* identifier[=].value = "1013699421"
* identifier[PatientId].system = $MHVID
* identifier[PatientId].value = "1015746490"
* identifier[PatientId].use = #usual