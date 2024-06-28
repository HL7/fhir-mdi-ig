Profile: BundleDocumentMDICCRR
Parent: Bundle
Id: Bundle-document-mdi-ccr-request
Title: "Bundle - Document MDI CCR Request"
Description: "This Bundle profile represents a Document Bundle from an EDRS to an MDI CMS for a CCR."
* identifier 1..
* identifier.extension contains
    CertificateNumberVitalRecords named certificateNumber 0..1 and
    ExtensionTrackingNumber named trackingNumber 0..*
* type = #document (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing based on the profile"

// VRDR defined Death Certificate Composition from EDRS
* entry contains Death-Certificate 1..1
  * resource 1..1
* entry[Death-Certificate] ^short = "Death Certificate"
  * ^definition = "Death Certificate"
  * resource only DeathCertificate

// Who Requests Cremation Clearance
* entry contains Person-Organization-Authorizing-Cremation 1..1
  * resource 1..1
* entry[Person-Organization-Authorizing-Cremation] ^short = "Person or Organization Authorizing Cremation"
  * ^definition = "Person or Organization Authorizing Cremation"
  * resource only RelatedPerson or Practitioner or Organization