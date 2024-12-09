Instance: vrdr-death-certificate-dcr-ex1
InstanceOf: DeathCertificate
Usage: #example
Description: "VRDR Death Certificate - CCR example 1"
Title: "Death Certificate for review for cremation clearance request"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* extension.valueString = "State Specific Content"
* status = #final
* type = $loinc#64297-5 "death certificate"
* subject = Reference(vrdr-decedent-dcr-ex1)
* date = "2023-04-27"
* author = Reference(vrdr-certifier-dcr-ex1)
* title = "Death Certificate"
* attester.mode = #legal
* attester.time = "2023-04-27T15:30:00-04:00"
* attester.party = Reference(vrdr-certifier-dcr-ex1)
* event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* event.code = $sct#307930005 "Death certificate (record artifact)"
* event.detail = Reference(vrdr-death-certification-dcr-ex1)
* section[0].code = $vrdr-document-section-cs#DecedentDemographics
* section[=].entry[0] = Reference(Patient/vrdr-decedent-dcr-ex1)
* section[=].entry[+] = Reference(RelatedPerson/vrdr-decedent-father-dcr-ex1)
* section[=].entry[+] = Reference(RelatedPerson/vrdr-decedent-mother-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-decedent-age-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-decedent-education-level-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-decedent-military-service-dcr-ex1)
// Usual work creates error here. Review and add back after VRDR publishes in 2024
// * section[=].entry[+] = Reference(Observation/decedent-usual-work-ccr-ex1)
* section[+].code = $vrdr-document-section-cs#DeathInvestigation
* section[=].entry[0] = Reference(Observation/vrdr-examiner-contacted-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-decedent-pregnancy-status-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-tobacco-use-dcr-ex1)
* section[=].entry[+] = Reference(Location/vrdr-death-location-dcr-ex1)
* section[=].entry[+] = Reference(Location/vrdr-injury-location-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-injury-incident-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-autopsy-performed-indicator-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-death-date-dcr-ex1)
//* section[=].entry[+] = Reference(Organization/interested-party-ccr-ex1)
* section[+].code = $vrdr-document-section-cs#DeathCertification
//* section[=].entry[0] = Reference(Practitioner/vrdr-certifier-dcr-ex1)
* section[=].entry[0] = Reference(Practitioner/vr-practitioner-ex1)
* section[=].entry[+] = Reference(Procedure/vrdr-death-certification-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-manner-of-death-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-cause-of-death-part1-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-cause-of-death-part2-dcr-ex1)
* section[+].code = $vrdr-document-section-cs#DecedentDisposition
* section[=].entry[0] = Reference(Location/vrdr-disposition-location-dcr-ex1)
* section[=].entry[+] = Reference(Organization/vrdr-funeral-home-dcr-ex1)
* section[=].entry[+] = Reference(Observation/vrdr-decedent-disposition-method-dcr-ex1)
* section[=].entry[+] = Reference(Practitioner/vrdr-mortician-dcr-ex1)