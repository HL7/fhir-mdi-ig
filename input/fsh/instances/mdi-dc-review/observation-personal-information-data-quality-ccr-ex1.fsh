Instance: observation-personal-information-data-quality-ccr-ex1
InstanceOf: ObservationPersonalInformationDataQuality
Title: "Observation - Personal Information Data Quality example"
Description: "Observation - Personal Information Data Quality example"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-personal-information-data-quality"
* status = #preliminary
// * code = DeathCertReviewExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* focus = Reference(vrdr-death-certificate-dcr-ex1)
* effectiveDateTime = "2023-05-02"
* performer = Reference(us-core-organization-dcr-ex1)
* valueCodeableConcept = DeathCertReviewExample#PER_INF_DQ_PERSONAL_INVALID "Personal Invalid"
* valueCodeableConcept.text = "Personal Invalid"