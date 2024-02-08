Instance: DecedentDispositionMethod-a-freeman
InstanceOf: DecedentDispositionMethod
Title: "Observation - Disposition Method - Freeman"
Usage: #example
Description: "Observation - Disposition Method: Freeman example"
* status = #final
* subject = Reference(us-core-patient-a-freeman)
* performer = Reference(us-core-practitioner-s-jones)
* valueCodeableConcept = $sct#449971000124106 "Burial"
//* extension[dispositionLocationReference].valueReference  = Reference(DispositionLocation-Example1)