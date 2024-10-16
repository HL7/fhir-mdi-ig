Instance: specimen-blood-toxicology-a-freeman
InstanceOf: SpecimenToxicologyLab
Title: "Specimen - Toxicology Lab - Freeman Blood"
Description: "Specimen - Toxicology Lab: Freeman Blood examples"
Usage: #example
* accessionIdentifier
  * system = "http://lab.acme.org/specimens/2021"
  * value = "X352356"
* status = #available
* type = $sct#258580003 "Whole blood sample"
  * text = "Whole blood sample"
* subject.reference = "Patient/us-core-patient-a-freeman"
* receivedTime = "2021-12-03T16:00:00Z"
* collection
  * collectedDateTime = "2021-12-03T11:00:00Z"
  * bodySite = $sct#83419000 "Femoral vein structure (body structure)"
* container
  * description = "10mL GT tube"
  * type = $sct#702287009 "Non-evacuated blood collection tube, potassium oxalate/sodium fluoride (physical object)"
    * text = "GT tube"
  * specimenQuantity
    * value = 20
    * unit = "ml"