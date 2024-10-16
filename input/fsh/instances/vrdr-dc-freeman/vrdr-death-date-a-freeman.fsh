Instance: vrdr-death-date-a-freeman
InstanceOf: DeathDate
Title: "VRDR Death Date - Freeman"
Description: "Death Date: Freeman death date, location, death pronouncer example (vrdr-death-date)"
Usage: #example
* status = #final
* code = $loinc#81956-5 "Date+time of death"
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime = "2022-01-08T15:30:00-05:00"
* performer.reference = "Practitioner/vr-practitioner-s-jones"
* valueDateTime = "2022-01-08"
// PartialDateTime should not be used when the datetime can be represented using the FHIR dateTime.
// * valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 8
// * valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 1
// * valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2022
// * valueDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* method = DateOfDeathDeterminationMethodsCS#approximate "Approximate"
* component[0]
  * code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
  * valueDateTime = "2022-01-08T15:30:00-05:00"
* component[+]
  * code = $loinc#58332-8
  * valueCodeableConcept = $sct#63238001 "Dead on arrival at hospital"