Instance: vrdr-decedent-father-dcr-ex1
InstanceOf: DecedentFather
Title: "VRDR Decedent Father"
Description: "Example of VRDR Decedent Father (RelatedPerson) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* patient = Reference(vrdr-decedent-dcr-ex1)
* relationship = $v3-RoleCode#FTH "father"
* name.family = "Father"
* name.given = "Dad"