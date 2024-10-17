Instance: vrdr-injury-incident-dcr-ex1
InstanceOf: InjuryIncident
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* status = #final
* code = $loinc#11374-6 "Injury incident description"
* subject = Reference(decedent-ccr-ex1)
* effectiveDateTime = "2000-01-01"
* valueCodeableConcept.text  = "shot by other"
* component[0].code = $loinc#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = $v2-0136#N "No"
* component[=].valueCodeableConcept.text = "No"
// Place of injury is now a separate Observation: http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-place-of-injury for loinc#69450-5 "Place of injury Facility" and valueCodeableConcept.text = "Other building"