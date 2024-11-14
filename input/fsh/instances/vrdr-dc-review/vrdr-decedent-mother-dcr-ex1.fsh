Instance: vrdr-decedent-mother-dcr-ex1
InstanceOf: DecedentMother
Title: "VRDR Decedent Mother"
Description: "Example of VRDR Decedent Mother (RelatedPerson) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-mother"
* patient = Reference(vrdr-decedent-dcr-ex1)
* relationship = $v3-RoleCode#MTH "mother"
* name.family = "Mother"
* name.given = "Mom"