Instance: vrdr-decedent-dcr-ex1
InstanceOf: Decedent
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #UNK
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Alberia"
* extension[=].valueAddress.district = "Alberia"
//* extension[=].valueAddress.state = "Shahristan"
* extension[=].valueAddress.country = "AF"
* extension[+].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "No, not Spanish/Hispanic/Latino"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[+].extension[0].url = "detailed"
//* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2131-1 "Unknown"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2131-1 "Other Race"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Other (Specify)|Unknown"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* identifier[0].type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier[=].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[=].value = "234567865"
//* identifier[+].type = #MR "Medical Record Number"
//* identifier[=].system = "http://example-edrs.org/mrn"
//* identifier[=].value = "4567843"
* name[0].use = #official
* name[=].family = "Joey"
* name[=].given[0] = "Testing"
* name[=].given[+] = "R"
* name[=].prefix = "Jr"
* name[+].use = #maiden
* name[=].family = "Joey"
* gender = #unknown
//Is this local system extension needed?
//* birthDate.extension.extension[0].url = "unknowndate"
//* birthDate.extension.extension[=].valueBoolean = false
//* birthDate.extension.extension[+].url = "long"
//* birthDate.extension.extension[=].valueString = "999999996666"
//* birthDate.extension.url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* birthDate = "2023-01-01"
// Original instance included extensions for WithinCityLimitsIndicator (Yes). Need to add back with correct format after VRDR publishes in 2024.
// Original instance included extensions for parsing the line. Need to add back with correct format after VRDR publishes in 2024.
* address.line = "23 N Lockfield Street H"
* address.city = "Unknown"
* address.district = "Unknown"
* address.state = "CT"
* address.country = "US"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
* maritalStatus.text = "Never Married"
//* contact.relationship = $v3-RoleCode#FTH "natural father"
* contact.relationship = $v3-RoleCode#FTH "father"
* contact.relationship.text = "Father"
* contact.name.use = #official
* contact.name.family = "Father"
* contact.name.given = "Dad"
* contact.telecom.system = #phone
* contact.telecom.value = "6765432345"
* contact.address.line = "345 Main Street"
* contact.address.city = "Abington"
* contact.address.state = "CT"
* contact.address.postalCode = "06230"
* contact.address.country = "US"