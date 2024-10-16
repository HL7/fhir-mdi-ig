Instance: vrdr-autopsy-performed-indicator-a-freeman
InstanceOf: AutopsyPerformedIndicator
Title: "VRDR Autopsy Performed Indicator - Freeman"
Description: "Autopsy Performed Indicator: Freeman example (vrdr-autopsy-performed-indicator)"
Usage: #example
* status = #final
* code = $loinc#85699-7
* subject = Reference(us-core-patient-a-freeman)
* effectiveDateTime = "2022-02-19"
* performer = Reference(us-core-practitioner-jm-lehz)
  * display = "J.M. Lehz"
* valueCodeableConcept = $v2-0136#Y "Yes"
* component
  * code = $loinc#69436-4
  * valueCodeableConcept = $v2-0136#Y "Yes"