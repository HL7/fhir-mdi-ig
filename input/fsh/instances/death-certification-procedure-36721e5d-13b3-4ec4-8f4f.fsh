Instance: death-certification-procedure-36721e5d-13b3-4ec4-8f4f
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* status = #completed
* category = $sct#103693007 "Diagnostic procedure"
* code = $sct#308646001 "Death certification"
* subject = Reference(urn:uuid:decedent-9008a8bc-efa7-4c36-b35d)
* performedDateTime.extension.extension.url = "long"
* performedDateTime.extension.extension.valueString = "202304271530"
* performedDateTime.extension.url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
* performedDateTime = "2023-04-27T15:30:00-04:00"
* performer.function = $id#455381000124109 "Medical Examiner/Coroner"
* performer.function.text = "Medical Examiner"
* performer.actor = Reference(urn:uuid:certifier-70a8036d-911f-4cb8-853f)