Instance: vrdr-death-date-dcr-ex1
InstanceOf: DeathDate
Title: "VRDR Death Date"
Description: "Example of VRDR Death Date (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject = Reference(vrdr-decedent-dcr-ex1)
//Is this local system extension needed?
//* effectiveDateTime.extension[0].extension.url = "long"
//* effectiveDateTime.extension[=].extension.valueString = "202304240100"
//* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
//* effectiveDateTime.extension[+].extension.url = "time"
//* effectiveDateTime.extension[=].extension.valueString = "AM"
//* effectiveDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* effectiveDateTime = "2023-04-24T01:00:00-04:00"
* performer = Reference(us-core-practitioner-dcr-ex1)
//Is this local system extension needed?
//* valueDateTime.extension[0].extension.url = "long"
//* valueDateTime.extension[=].extension.valueString = "202304240100"
//* valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
//* valueDateTime.extension[+].extension.url = "time"
//* valueDateTime.extension[=].extension.valueString = "AM"
//* valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* valueDateTime = "2023-04-24T01:00:00-04:00"
* component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
//Is this local system extension needed?
//* component.valueDateTime.extension[0].extension.url = "long"
//* component.valueDateTime.extension[=].extension.valueString = "202304241400"
//* component.valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
//* component.valueDateTime.extension[+].extension.url = "time"
//* component.valueDateTime.extension[=].extension.valueString = "PM"
//* component.valueDateTime.extension[=].url = "http://example-edrs.org/fhir/StructureDefinition/datetime-modifier"
* component.valueDateTime = "2023-04-24T14:00:00-04:00"
* component[placeOfDeath].valueCodeableConcept = $sct#16983000 "Death in hospital"