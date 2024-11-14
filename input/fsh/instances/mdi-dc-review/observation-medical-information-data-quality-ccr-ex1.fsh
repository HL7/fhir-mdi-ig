Instance: observation-medical-information-data-quality-ccr-ex1
InstanceOf: ObservationMedicalInformationDataQuality
Title: "Observation - Medical Information Data Quality - ex1"
Description: "Observation - Medical Information Data Quality: example 1"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-medical-information-data-quality"
* status = #preliminary
// * code = CsDeathCertReviewExample#MedicalInformationDataQuality "Medical Information Data Quality Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* focus = Reference(vrdr-death-certificate-dcr-ex1)
* effectiveDateTime = "2023-05-02"
* performer = Reference(us-core-organization-dcr-ex1)
* valueCodeableConcept = CsDeathCertReviewExample#MED_INF_DQ_MEDICAL_VALID_WITH_EXCEPTIONS "Medical Data Valid With Exceptions"
* valueCodeableConcept.text = "Medical Data Valid With Exceptions"