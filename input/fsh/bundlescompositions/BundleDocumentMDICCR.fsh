Profile: BundleDocumentMDICCR
Parent: Bundle
Id: Bundle-document-mdi-ccr
Title: "Bundle - Document MDI Cremation Clearance Request"
Description: "This Bundle profile represents a Document Bundle from an EDRS to an MDI CMS for a Cremation Clearance Request."
* identifier 1..
* identifier.extension contains
    CertificateNumberVitalRecords named certificateNumber 0..1 and
    ExtensionTrackingNumber named trackingNumber 0..*
* type = #document (exactly)
* type MS
* entry 
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile"

// VRDR defined Death Certificate Composition from EDRS
* entry contains Death-Certificate 1..1
* entry[Death-Certificate].resource 1..1
* entry[Death-Certificate] 
  * ^short = "Death Certificate"
  * ^definition = "Death Certificate"
* entry[Death-Certificate].resource only DeathCertificate

// Who Requests Cremation Clearance
* entry contains Person-Organization-Requesting-Cremation 1..1
* entry[Person-Organization-Requesting-Cremation].resource 1..1
* entry[Person-Organization-Requesting-Cremation] 
  * ^short = "Person or Organization Requesting Cremation"
  * ^definition = "Person or Organization Requesting Cremation"
* entry[Person-Organization-Requesting-Cremation].resource only RelatedPerson or Practitioner or Organization