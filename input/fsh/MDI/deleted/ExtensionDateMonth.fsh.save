Extension: ExtensionDateMonth
Id: Extension-date-month
Title: "Extension - Date Month"
Description: "The month portion (MM) of the partial date."
* ^meta.versionId = "8"
* ^meta.lastUpdated = "2023-04-14T20:20:39.049+00:00"
* ^meta.source = "#vVIJawjUkGc0q8qV"
* ^version = "1.0.0"
* ^publisher = "HL7 Public Health Working Group"
* ^contact.name = "HL7 Public Health Working Group"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/pher/index.cfm"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "pher@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^context[0].type = #element
* ^context[=].expression = "date"
* ^context[+].type = #element
* ^context[=].expression = "dateTime"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* value[x] 1..
* value[x] only unsignedInt
* valueUnsignedInt 1..1
  * ^minValueInteger = 1
  * ^maxValueInteger = 12
  * extension contains $data-absent-reason named dataabsent 0..1