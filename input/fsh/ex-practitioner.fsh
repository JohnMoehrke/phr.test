Instance:   ex-MHV-practitioner
InstanceOf: JFMpractitioner
Title: "Practitioner"
Description:      "holding typical values"
Usage: #inline
* name.family = "Practitioner"
* name.given = "Prancy"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.00000"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"
/*
* identifier[NPI].use = #official
* identifier[NPI].type.text = "npiPID"
* identifier[NPI].value = "10130425697"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
*/

/*
<author>
    <id>37569</id>
    <name>KHAN,MUAZZAM</name>
</author>
*/
Instance: ex-MHV-practitioner-37569
InstanceOf: JFMpractitioner
Title: "Practitioner 37569"
Description: "Muazzam Khan"
Usage: #inline
* name.text = "KHAN,MUAZZAM"
* name.family = "KHAN"
* name.given = "MUAZZAM"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.37569"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"

/*
<author>
    <id>36556</id>
    <name>AHMED,MARUF</name>
</author>
*/
Instance: ex-MHV-practitioner-36556
InstanceOf: JFMpractitioner
Title: "Practitioner 36556"
Description: "Maruf Ahmed"
Usage: #inline
* name.text = "AHMED,MARUF"
* name.family = "MARUF"
* name.given = "AHMED"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.37556"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"

/*
<observer>
    <id>110</id>
    <name>MANGAS,PHYLLIS A</name>
    <signature/>
</observer>
*/
Instance: ex-MHV-practitioner-110
InstanceOf: JFMpractitioner
Title: "Practitioner 110"
Description: "Phyllis Mangas"
Usage: #inline
* name.text = "MANGAS,PHYLLIS A"
* name.family = "MANGAS"
* name.given[+] = "PHYLLIS"
* name.given[+] = "A"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.110"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"


Instance: ex-MHV-practitioner-4262
InstanceOf: JFMpractitioner
Title: "Practitioner 4262"
Description: "Mesmerizing Mover"
Usage: #inline
* name.text = "Mover, Mesmerizing"
* name.family = "Mover"
* name.given[+] = "Mesmerizing"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.4262"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"


Instance: ex-MHV-practitioner-6051
InstanceOf: JFMpractitioner
Title: "Practitioner 6051"
Description: "Pokey P Poker"
Usage: #inline
* name.text = "Poker, Pokey"
* name.family = "Poker"
* name.given[+] = "Poker"
* name.given[+] = "P"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.6051"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"


Instance: ex-MHV-practitioner-22572
InstanceOf: JFMpractitioner
Title: "Practitioner 22572"
Description: "Wiggly Wiggler"
Usage: #inline
* name.text = "Wiggler, Wiggly"
* name.family = "Wiggler"
* name.given[+] = "Wiggly"
* name.given[+] = "E"
* identifier[TOid].use = #usual
* identifier[TOid].value = "AuthorTO.22572"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.989"



Instance: ex-MHV-practitioner-14934-VA552
InstanceOf: Practitioner
Title: "Practitioner 14934-VA552"
Description: "Testina A Tester"
Usage: #inline
* name.family = "Tester"
* name.given[+] = "Testina"
* name.given[+] = "A"
* identifier[+].value = "14934-VA552"
* identifier[=].system = "http://va.gov/terminology/vistaDefinedTerms/4"



Instance: ex-MHV-practitioner-59845-VA660
InstanceOf: Practitioner
Title: "Practitioner 59845-VA660"
Description: "Testina B Tester"
Usage: #inline
* name.family = "Tester"
* name.given[+] = "Testina"
* name.given[+] = "B"
* identifier[+].value = "59845-VA660"
* identifier[=].system = "http://va.gov/terminology/vistaDefinedTerms/4"

Instance: ex-MHV-practitioner-37524
InstanceOf: JFM.PHR.practitioner
Title: "Practitioner 37524"
Description: "Breakey Breaker"
Usage: #inline
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "AuthorTO.37524"
* name.text = "Breakey Breaker"
* name.family = "Breaker, Breakey"

Instance: ex-MHV-practitioner-2926
InstanceOf: JFM.PHR.practitioner
Title: "Practitioner 372926524"
Description: "Stressy Stresser"
Usage: #inline
* identifier[TOid].use = #usual
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349.4.984"
* identifier[TOid].value = "AuthorTO.2926"
* name.text = "Stresser, Stressy"
* name.family = "Stresser, Stressy"
