Instance: vrdr-decedent-age-dcr-ex1
InstanceOf: DecedentAge
Title: "VRDR Decedent Age"
Description: "Example of VRDR Decedent Age (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* status = #final
* code = $loinc#39016-1 "Age at death"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueQuantity = 39 'a' "a"