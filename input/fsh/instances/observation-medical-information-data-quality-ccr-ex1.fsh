Instance: observation-medical-information-data-quality-ccr-ex1
InstanceOf: ObservationMedicalInformationDataQuality
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-medical-information-data-quality"
* status = #preliminary
* code = CsCremationClearanceExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* subject = Reference(decedent-ccr-ex1)
* focus = Reference(death-certificate-ccr-ex1)
* valueCodeableConcept = CsCremationClearanceExample#MED_INF_DQ_MEDICAL_VALID_WITH_EXCEPTIONS "Medical Data Valid With Exceptions"
* valueCodeableConcept.text = "Medical Data Valid With Exceptions"