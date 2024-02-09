Extension: ExtensionPartialDateTime
Id: Extension-partial-date-time
Title: "Extension - Partial DateTime"
Description: "Provides values of a partial dateTime"
* ^meta.versionId = "13"
* ^meta.lastUpdated = "2023-04-14T20:25:08.047+00:00"
* ^meta.source = "#5HoKqAbosGBMzY3t"
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
* . ^short = "Partial Date Time"
  * ^definition = "Provides a partial date time."
* extension contains
    ExtensionDateYear named year 1..1 and
    ExtensionDateMonth named month 1..1 and
    ExtensionDateDay named day 1..1 and
    ExtensionDateTime named time 1..1
* extension[year] ^short = "Date Year"
  * ^definition = "The year portion (YYYY) of the partial date."
* extension[month] ^short = "Date Month"
  * ^definition = "The day portion (MM) of the partial date."
* extension[day] ^short = "Date Day"
  * ^definition = "The day portion (DD) of the partial date."
* extension[time] ^short = "Date Time"
  * ^definition = "The time portion  of the partial datetime."