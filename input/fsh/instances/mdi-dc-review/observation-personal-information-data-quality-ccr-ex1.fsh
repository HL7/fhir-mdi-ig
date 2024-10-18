Instance: observation-personal-information-data-quality-ccr-ex1
InstanceOf: ObservationPersonalInformationDataQuality
Title: "Observation - Personal Information Data Quality - ex1"
Description: "Observation - Personal Information Data Quality: example 1"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mdi/StructureDefinition/Observation-personal-information-data-quality"
* status = #preliminary
// * code = CsDeathCertReviewExample#PersonalInformationDataQuality "Personal Information Data Quality Observation"
* subject = Reference(vrdr-decedent-dcr-ex1)
* focus = Reference(vrdr-death-certificate-dcr-ex1)
* valueCodeableConcept = CsDeathCertReviewExample#PER_INF_DQ_PERSONAL_INVALID "Personal Invalid"
* valueCodeableConcept.text = "Personal Invalid"