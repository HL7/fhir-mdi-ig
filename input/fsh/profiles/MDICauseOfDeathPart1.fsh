/*
This MDI profile constrains the VRDR profile CauseOfDeathPart1 
*/
Profile: MDICauseOfDeathPart1
Parent: CauseOfDeathPart1
Id: Observation-mdi-cause-of-death-part1
Title: "MDI Cause Of Death Part 1"
Description: "The MDI Cause of Death Part 1 (Observation) profile places constraints on the VRDR Cause of Death Part 1 (Observation) profile, which reflects the ordered causes of death asserted by the death certifier. The cause of death is initially specified with text. Line number can be 1-4. For the MDI use case, a cause of death certifier (coroner or medical examiner) is required in the performer data element, with the option of using a data-absent-reason."
* performer 1..1
  * ^label = "Cause of death certifier (coroner or medical examiner). If the certifier is not available, explain using data-absent-reason Extension."
  * ^short = "Cause of death certifier (coroner or medical examiner). If the certifier is not available, explain using data-absent-reason Extension."
* performer.extension contains DataAbsentReason named data-absent-reason 0..1 MS
* performer.extension[data-absent-reason] ^short = "data-absent-reason"
* component[interval] 1..1  



