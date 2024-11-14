Instance: vrdr-decedent-education-level-dcr-ex1
InstanceOf: DecedentEducationLevel
Title: "VRDR Decedent Education Level"
Description: "Example of VRDR Decedent Education Level (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-education-level"
* status = #final
* code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"
* valueCodeableConcept.text = "Unknown"