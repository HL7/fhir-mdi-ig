Instance: diagnosticreport-mdi-toxicology-lab-a-freeman
InstanceOf: DiagnosticReportToxicologyToMDI
Title: "DiagnosticReport - Toxicology Lab Result to MDI - Freeman"
Description: "DiagnosticReport - Toxicology Lab Result to MDI: Freeman example"
Usage: #example
* extension[Extension-tracking-number]
  * valueIdentifier
    * system = "http://florida-investigation-agncy.org/fhir/agency-case-numbers"
    * value = "ME21-111"
* identifier
  * type = CodeSystemMDI#tox-lab-case-number
  * system = "http://uf-path-labs.org/fhir/lab-cases"
  * value = "R21-01578"
  * assigner = Reference(us-core-organization-tox-lab)
* status = #final
// * category = $v2-0074#LAB "Laboratory"
* code = $loinc#81273-5 "fentaNYL and Norfentanyl panel - Specimen"
* subject = Reference(us-core-patient-a-freeman) 
  * display = "Alice J. Freeman"
* effectiveDateTime = "2021-12-03T11:00:00Z"
* issued = "2022-01-05T11:00:00Z"
* performer = Reference(us-core-practitioner-b-goldberger)
* specimen[0] = Reference(specimen-blood-toxicology-a-freeman)
* specimen[+] = Reference(specimen-urine-toxicology-a-freeman)
* specimen[+] = Reference(specimen-vitreous-humor-toxicology-a-freeman)
* specimen[+] = Reference(specimen-bile-toxicology-a-freeman)
* specimen[+] = Reference(specimen-liver-toxicology-a-freeman)
* specimen[+] = Reference(specimen-stomach-contents-toxicology-a-freeman)
* result[0] = Reference(us-core-lab-result-etoh-gas-chromatography-blood-a-freeman)
  * display = "ETOH BLOOD: 0.145 g/dL"
* result[+] = Reference(us-core-lab-result-4-anpp-blood-a-freeman)
  * display = "4-ANPP: POSITIVE"
* result[+] = Reference(us-core-lab-result-acetylfentanyl-blood-a-freeman)
  * display = "ACETYLFENTANYL: 2 ng/mL"
* result[+] = Reference(us-core-lab-result-fentanyl-blood-a-freeman)
  * display = "FENTANYL: 23 ng/mL"
* result[+] = Reference(us-core-lab-result-etoh-gas-chromatography-urine-a-freeman)
  * display = "ETOH URINE: 0.160 g/dL"
* result[+] = Reference(us-core-lab-result-4-anpp-urine-a-freeman)
  * display = "4-ANPP: POSITIVE"
* result[+] = Reference(us-core-lab-result-acetylfentanyl-urine-a-freeman)
  * display = "ACETYLFENTANYL: POSITIVE"
* result[+] = Reference(us-core-lab-result-fentanyl-urine-a-freeman)
  * display = "FENTANYL: POSITIVE"
* result[+] = Reference(us-core-lab-result-norfentanyl-urine-a-freeman)
  * display = "NORFENTANYL: POSITIVE"
* result[+] = Reference(us-core-lab-result-xylazine-urine-a-freeman)
  * display = "XYLAZINE: POSITIVE"
* result[+] = Reference(us-core-lab-result-etoh-gas-chromatography-vit-humor-a-freeman)
  * display = "ETOH VITREOUS HUMOR: 0.133 g/dL"
* conclusion = "Samples of bile, liver, and stomach contents were contaminated and not analyzed."