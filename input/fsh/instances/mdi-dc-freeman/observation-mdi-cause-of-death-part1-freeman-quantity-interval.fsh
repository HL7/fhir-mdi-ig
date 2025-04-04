Instance: observation-mdi-cause-of-death-part1-freeman-quantity-interval
InstanceOf: MDICauseOfDeathPart1
Title: "MDI Cause of Death Part 1 - Freeman, quantity interval"
Description: "MDI Cause of Death Part 1 (Observation): Freeman example, specifying interval quantity"
Usage: #example
* status = #final
* code = $loinc#69453-9 "Cause of death [US Standard Certificate of Death]"
* subject = Reference(us-core-patient-a-freeman)
* effectiveDateTime = "2022-02-20"
* performer = Reference(vr-practitioner-s-jones)
* valueCodeableConcept.text = "Fentanyl toxicity"
* component[lineNumber]
  * valueInteger = 1
* component[interval]
  * valueQuantity
    * value = 3.5
    * unit = "hours"