Instance: vrdr-decedent-pregnancy-status-dcr-ex1
InstanceOf: DecedentPregnancyStatus
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* status = #final
//* code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* subject = Reference(vrdr-decedent-dcr-ex1)
* valueCodeableConcept = DeathPregnancyStatusCS#1 "Not pregnant within past year"
//* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1260 "Not pregnant within the past year"
//* valueCodeableConcept.text = "Not pregnant within past year"