Instance: vrdr-death-certification-dcr-ex1
InstanceOf: DeathCertification
Title: "VRDR Death Certification Procedure"
Description: "Example of VRDR Death Certification Procedure for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* status = #completed
//* category = $sct#103693007 "Diagnostic procedure"
// The code '103693007' is valid but is not active (from http://tx.fhir.org/r4)
* code = $sct#308646001 "Death certification"
* subject = Reference(vrdr-decedent-dcr-ex1)
//* performedDateTime.extension.extension.url = "long"
//* performedDateTime.extension.extension.valueString = "202304271530"
//* performedDateTime.extension.url = "http://example-edrs.org/fhir/StructureDefinition/datelong"
// Error: The extension http://example-edrs.org/fhir/StructureDefinition/datelong could not be found so is not allowed here
* performedDateTime = "2023-04-27T15:30:00-04:00"
* performer.function = $sct#455381000124109 "Death certification by medical examiner or coroner (procedure)"
* performer.actor = Reference(vrdr-certifier-dcr-ex1)

