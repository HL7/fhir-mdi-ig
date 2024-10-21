Instance: mdi-tracking-number-search
// based on US Core Condition.extension search parameter: http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-asserted-date
InstanceOf: SearchParameter
Usage: #definition
//* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
//* extension.valueCode = #cgp
* url = "http://hl7.org/fhir/us/mdi/SearchParameter/mdi-tracking-number-search"
//* version = "8.0.0-ballot"
* name = "MDITrackingNumberSearch"
* status = #active
//* date = "2023-04-13"
//* publisher = "HL7 International / Cross-Group Projects"
//* contact.name = "HL7 International / Cross-Group Projects"
//* contact.telecom[0].system = #url
//* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
//* contact.telecom[+].system = #email
//* contact.telecom[=].value = "cgp@lists.HL7.org"
//* description = "Returns conditions with an [assertedDate extension](http://hl7.org/fhir/StructureDefinition/condition-assertedDate) matching the specified date (dateTime)."
* description = "TBD"
//* jurisdiction = urn:iso:std:iso:3166#US
//* code = #asserted-date
// code is Recommended name for parameter in search url
* code = #TBD
// base is The resource type(s) this search parameter applies to
* base = #Composition
// type must be number | date | string | token | reference | composite | quantity | uri | special
* type = #token
// expression is the FHIRPath expression that extracts the values
//* expression = "Condition.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/condition-assertedDate').value"
* expression = "Composition.extension.where(url = 'http://hl7.org/fhir/us/mdi/StructureDefinition/Extension-tracking-number').value"
//* xpathUsage = #normal
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleOr = true
//* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* multipleAnd.extension.valueCode = #SHOULD
//* multipleAnd = true
//* comparator[0] = #eq
//* comparator[+] = #ne
//* comparator[+] = #gt
//* comparator[+] = #ge
//* comparator[+] = #lt
//* comparator[+] = #le
//* comparator[+] = #sa
//* comparator[+] = #eb
//* comparator[+] = #ap
//* comparator[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #MAY
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #MAY
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #SHALL
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #SHALL
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #SHALL
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #SHALL
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #MAY
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #MAY
//* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* comparator[=].extension.valueCode = #MAY