Instance: vrdr-death-certificate-dcr-ex1
InstanceOf: DeathCertificate
Usage: #example
Description: "Death Certificate - CCR example 1"
Title: "Death Certificate for review for cremation clearance request"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension.valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "death certificate"
* subject = Reference(decedent-ccr-ex1)
* date = "2023-04-27"
* author = Reference(certifier-ccr-ex1)
* title = "Death Certificate"
* attester.mode = #legal
* attester.time = "2023-04-27T15:30:00-04:00"
* attester.party = Reference(certifier-ccr-ex1)
* event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(death-certification-procedure-ccr-ex1)
* section[0].code = $vrdr-document-section-cs#DecedentDemographics
* section[=].entry[0] = Reference(Patient/decedent-ccr-ex1)
* section[=].entry[+] = Reference(RelatedPerson/decedent-father-ccr-ex1)
* section[=].entry[+] = Reference(RelatedPerson/decedent-mother-ccr-ex1)
* section[=].entry[+] = Reference(Observation/decedent-age-ccr-ex1)
* section[=].entry[+] = Reference(Observation/decedent-education-level-ccr-ex1)
* section[=].entry[+] = Reference(Observation/decedent-military-service-ccr-ex1)
// Usual work creates error here. Review and add back after VRDR publishes in 2024
// * section[=].entry[+] = Reference(Observation/decedent-usual-work-ccr-ex1)
* section[+].code = $vrdr-document-section-cs#DeathInvestigation
* section[=].entry[0] = Reference(Observation/examiner-contacted-ccr-ex1)
* section[=].entry[+] = Reference(Observation/decedent-pregnancy-ccr-ex1)
* section[=].entry[+] = Reference(Observation/tobacco-use-ccr-ex1)
* section[=].entry[+] = Reference(Location/death-location-ccr-ex1)
* section[=].entry[+] = Reference(Location/injury-location-ccr-ex1)
* section[=].entry[+] = Reference(Observation/injury-incident-ccr-ex1)
* section[=].entry[+] = Reference(Observation/autopsy-performed-ccr-ex1)
* section[=].entry[+] = Reference(Observation/death-date-ccr-ex1)
//* section[=].entry[+] = Reference(Organization/interested-party-ccr-ex1)
* section[+].code = $vrdr-document-section-cs#DeathCertification
* section[=].entry[0] = Reference(Practitioner/certifier-ccr-ex1)
* section[=].entry[+] = Reference(Procedure/death-certification-procedure-ccr-ex1)
* section[=].entry[+] = Reference(Observation/manner-of-death-ccr-ex1)
* section[=].entry[+] = Reference(Observation/cause-of-death-ccr-ex1)
* section[=].entry[+] = Reference(Observation/contributing-to-death-ccr-ex1)
* section[+].code = $vrdr-document-section-cs#DecedentDisposition
* section[=].entry[0] = Reference(Location/disposition-location-ccr-ex1)
* section[=].entry[+] = Reference(Organization/funeral-home-ccr-ex1)
* section[=].entry[+] = Reference(Observation/disposition-method-ccr-ex1)
* section[=].entry[+] = Reference(Practitioner/mortician-ccr-ex1)