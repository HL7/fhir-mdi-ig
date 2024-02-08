Profile: ObservationAutopsyPerformedIndicator
Parent: Observation
Id: Observation-autopsy-performed-indicator
Title: "Observation - Autopsy Performed Indicator"
Description: """This Observation records if an autopsy was performed, if autopsy findings are available, and the autopsy Performer (US Core Practioner).
The MDI Observation - Autopsy Performed Indicator artifact overlaps with the VRDR Autopsy Performed Indicator artifact."""
* status MS
* code = $loinc#85699-7
* code MS
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
* performer ..1
  * ^short = "Autopsy Performer using USCorePractioner"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from ValueSetYesNoUnknownVitalRecords (required)
* valueCodeableConcept 1..1
  * ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
  * code = $loinc#69436-4
  * value[x] 1..
  * value[x] only CodeableConcept
  * value[x] from ValueSetYesNoUnknownNotApplicableVitalRecords (required)