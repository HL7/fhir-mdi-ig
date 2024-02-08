Instance: observation-death-date-partialdate
InstanceOf: DeathDate
Title: "Observation - Death Date - partial date"
Description: "Observation - Death Date: partial date/time example"
Usage: #example
* status = #preliminary
* code = $loinc#81956-5 "Date+time of death"
* subject = Reference(us-core-patient-unknown-name)
* effectiveDateTime = "2022-01-08T15:30:00-05:00"
* performer = Reference(us-core-practitioner-s-jones)
* valueDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2021
* valueDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 12
* valueDateTime.extension[partialDateTime].extension[day].valueUnsignedInt.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* valueDateTime.extension[partialDateTime].extension[time].valueTime = "12:00:00"
* note.text = "Death occured at the noon church bell."
* method = CodeSystemMDI#approximate "Approximate"
* component[datetimePronouncedDead].valueDateTime = "2022-01-08T15:30:00-05:00"
* component[placeOfDeath].valueCodeableConcept = $v3-NullFlavor#OTH "Other"
  * text = "Lake"