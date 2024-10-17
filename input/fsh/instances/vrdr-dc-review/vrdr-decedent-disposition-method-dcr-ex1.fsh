Instance: vrdr-decedent-disposition-method-dcr-ex1
InstanceOf: DecedentDispositionMethod
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* status = #final
* code = $loinc#80905-3 "Body disposition method"
* subject = Reference(vrdr-decedent-dcr-ex1)
* effectiveDateTime = "2023-04-29"
* performer = Reference(vrdr-mortician-dcr-ex1)
* valueCodeableConcept = $sct#449961000124104 "Cremation"