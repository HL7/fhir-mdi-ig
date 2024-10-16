Instance: vrdr-death-certification-a-freeman
InstanceOf: DeathCertification
Title: "VRDR Death Certification Procedure - Freeman"
Description: "Death Certification Procedure: Freeman example (vrdr-death-certification)"
Usage: #example
* identifier.value = "180"
* status = #completed
* category = $sct#307930005 "Death certificate (record artifact)"
* code = $sct#308646001 "Death certification"
* subject.reference = "Patient/us-core-patient-a-freeman"
* performedDateTime = "2022-01-18T16:39:40-05:00"
* performer
  * function = $sct#455381000124109 "Death certification by medical examiner or coroner (procedure)"
  * actor.reference = "Practitioner/vr-practitioner-s-jones"