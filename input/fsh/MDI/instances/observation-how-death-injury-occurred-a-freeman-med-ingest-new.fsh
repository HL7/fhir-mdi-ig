Instance: observation-how-death-injury-occurred-a-freeman-med-ingest
InstanceOf: InjuryIncident
Title: "Observation - How Death Injury Occurred - Freeman - Medication ingestion"
Description: "Observation - How Death Injury Occurred: Freeman - Medication ingestion (fentanyl) example"
Usage: #example
* status = #final
* subject.reference = "Patient/us-core-patient-a-freeman"
* effectiveDateTime.extension[partialDateTime].extension[day].valueUnsignedInt = 8
* effectiveDateTime.extension[partialDateTime].extension[month].valueUnsignedInt = 1
* effectiveDateTime.extension[partialDateTime].extension[year].valueUnsignedInt = 2022
* effectiveDateTime.extension[partialDateTime].extension[time].valueTime.extension[dataabsent].valueCode = $dataabsentreason401#unknown
* performer.reference = "Practitioner/us-core-practitioner-s-jones"
* valueCodeableConcept.text = "drug toxicity"
* component[workInjuryIndicator]
  * valueCodeableConcept = $v2-0136#N "No"
* component[placeOfInjury]
  * valueCodeableConcept.text = "Private house"
* component[transportationRole]
  * valueCodeableConcept = $v3-NullFlavor#NA "not applicable"
    * text = "not applicable"