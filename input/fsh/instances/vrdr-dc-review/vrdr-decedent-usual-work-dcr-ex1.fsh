Instance: vrdr-decedent-usual-work-dcr-ex1
InstanceOf: DecedentUsualWork
Title: "VRDR Decedent Usual Work"
Description: "Example of VRDR Decedent Usual Work (Observation) for death certificate review examples."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept.text = "Unknown"
//* component.code = $loinc#21844-6 "History of Usual industry"
//* component.valueCodeableConcept.text = "Unknown"
* component[odh-UsualIndustry].valueCodeableConcept.text = "Unknown"