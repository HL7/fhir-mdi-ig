/*
This MDI profile constrains the VRDR profile CauseOfDeathPart1 
*/
Profile: MDICauseOfDeathPart1
Parent: CauseOfDeathPart1
Id: Observation-mdi-cause-of-death-part1
Title: "MDI Cause Of Death Part 1"
Description: "The Observation - MDI Cause of Death Part 1 profile places constraints on the VRDR profile CauseOfDeathPart1"
* performer 1..1
  * ^label = "Cause of death certifier (coroner or medical examiner). If the certifier is not available, explain using data-absent-reason Extension."
  * ^short = "Cause of death certifier (coroner or medical examiner). If the certifier is not available, explain using data-absent-reason Extension."
* performer.extension contains DataAbsentReason named data-absent-reason 0..1 MS
* performer.extension[data-absent-reason] ^short = "data-absent-reason"
* component[interval] 1..1  



