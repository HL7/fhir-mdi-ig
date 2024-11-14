Instance: vrdr-decedent-disposition-method-a-freeman
InstanceOf: DecedentDispositionMethod
Title: "VRDR Disposition Method - Freeman"
Usage: #example
Description: "Disposition Method: Freeman example (vrdr-decedent-disposition-method)"
* status = #final
* subject = Reference(us-core-patient-a-freeman)
* effectiveDateTime = "2022-01-10"
* performer = Reference(vr-practitioner-s-jones)
* valueCodeableConcept = $sct#449971000124106 "Burial"
//* extension[dispositionLocationReference].valueReference  = Reference(DispositionLocation-Example1)