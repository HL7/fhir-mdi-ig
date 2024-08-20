Instance: observation-personal-information-data-quality-ccr-ex1
InstanceOf: ObservationPersonalInformationDataQuality
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-personal-information-data-quality"
* status = #preliminary
* code = CsCremationClearanceExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"
* subject = Reference(decedent-ccr-ex1)
* focus = Reference(death-certificate-ccr-ex1)
* valueCodeableConcept = CsCremationClearanceExample#PER_INF_DQ_PERSONAL_INVALID "Personal Invalid"
* valueCodeableConcept.text = "Personal Invalid"