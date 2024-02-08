Extension: ExtensionDateDay
Id: Extension-date-day
Title: "Extension - Date Day"
Description: "The day portion (DD) of the partial date."
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2023-04-14T20:19:39.112+00:00"
* ^meta.source = "#FlYbxKuSpq4aRYF7"
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
  * ^definition = "Specifies the day portion of a partial date."
* valueUnsignedInt 1..1
  * ^minValueInteger = 1
  * ^maxValueInteger = 31
  * extension contains $data-absent-reason named dataabsent 0..1