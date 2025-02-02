
/* 
 <labSiteId>989</labSiteId>
*/
Instance: ex-MHV-organization-989
InstanceOf: JFM.PHR.organization
Title: "Organization lab site 989"
Description: "This example derived off of a mock diagnostic report"
Usage: #inline
* active = true
* name = "Lab Site 989"
* identifier[TOid].use = #usual
* identifier[TOid].value = "LabSiteTO.989"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1234"


/* HDR Lab Sample
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
*/
Instance: ex-MHV-organization-552
InstanceOf: JFM.PHR.organization
Title: "Organization HDR Lab 552"
Description: "This example derived off of a mock HDR Lab report"
Usage: #inline
* active = true
* name = "DAYTON, OH VAMC"
* identifier[TOid].use = #usual
* identifier[TOid].value = "552"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[TOid].type.text = "L"
* address.line = "4100 W. THIRD STREET"
* address.city = "DAYTON"
* address.postalCode = "45428"
* address.country = "USA"
* address.state = "OH"

/* HDR Lab Sample
            <orderingFacilityIdentifier>
               <identity>660</identity>
               <name>VA SALT LAKE CITY HEALTH CARE SYSTEM (660)</name>
               <assigningAuthority>USVHA</assigningAuthority>
               <nameTypeCode>L</nameTypeCode>
               <identityTypeCode>FI</identityTypeCode>
               <nameRepresentation>A</nameRepresentation>
               <stationNumber>660</stationNumber>
            </orderingFacilityIdentifier>
	...
	            <performingOrganization>
                  <identifier>
                     <identity>660</identity>
                     <name>VA SALT LAKE CITY HEALTH CARE SYSTEM (660)</name>
                     <assigningAuthority>USVHA</assigningAuthority>
                     <nameTypeCode>L</nameTypeCode>
                     <identityTypeCode>FI</identityTypeCode>
                     <nameRepresentation>A</nameRepresentation>
                     <stationNumber>660</stationNumber>
                  </identifier>
                  <address>
                     <line1>500 FOOTHILL BLVD.</line1>
                     <city>SALT LAKE CITY</city>
                     <postalCode>84148</postalCode>
                     <country>USA</country>
                     <state>UT</state>
                  </address>
               </performingOrganization>
*/
Instance: ex-MHV-organization-660
InstanceOf: JFM.PHR.organization
Title: "Organization HDR Lab 660"
Description: "This example derived off of a mock HDR Lab report"
Usage: #inline
* active = true
* name = "VA SALT LAKE CITY HEALTH CARE SYSTEM (660)"
* identifier[TOid].use = #usual
* identifier[TOid].value = "660"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[TOid].type.text = "FI"
* address.line = "500 FOOTHILL BLVD."
* address.city = "SALT LAKE CITY"
* address.postalCode = "84148"
* address.country = "USA"
* address.state = "UT"



/*
from HDR example
         <recordSource>
            <namespaceId>979</namespaceId>
            <universalId>SLC10.FO-BAYPINES.MED.VA.GOV</universalId>
            <universalIdType>DNS</universalIdType>
         </recordSource>
*/
Instance: ex-MHV-organization-979
InstanceOf: JFM.PHR.organization
Title: "Organization HDR Lab 979"
Description: "This example derived off of a mock HDR Lab report. The name is simulated to be populated from MHV table."
Usage: #inline
* active = true
* identifier[TOid].use = #usual
* identifier[TOid].value = "979"
* identifier[TOid].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[TOid].type.text = "FI"
* name = "Organization 979"
