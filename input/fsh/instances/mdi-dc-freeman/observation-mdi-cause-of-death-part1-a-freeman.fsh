Instance: observation-mdi-cause-of-death-part1-a-freeman
InstanceOf: MDICauseOfDeathPart1
Title: "MDI Cause of Death Part 1 - Freeman"
Description: "MDI Cause of Death Part 1 (Observation): Freeman example, specifying interval string"
Usage: #example
* status = #final
* subject = Reference(us-core-patient-a-freeman)
* effectiveDateTime = "2022-01-08"
* performer = Reference(vr-practitioner-s-jones)
* valueCodeableConcept.text = "Fentanyl toxicity"
* component[lineNumber]
  * valueInteger = 1
* component[interval]
  * valueString = "minutes to hours"