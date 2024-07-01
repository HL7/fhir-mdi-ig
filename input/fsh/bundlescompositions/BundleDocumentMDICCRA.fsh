Profile: BundleDocumentMDICCRA
Parent: Bundle
Id: Bundle-document-mdi-ccr-approval
Title: "Bundle - Document MDI CCR Approval"
Description: "This Bundle profile represents a Document Bundle from an EDRS to an MDI CMS for a CCR approval status."
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

// Examiner Contacted
* entry contains Examiner-Contacted 1..1
  * resource 1..1
* entry[Examiner-Contacted] ^short = "Examiner Contacted"
  * ^definition = "Examiner Contacted"
  * resource only ExaminerContacted

// Reviewer
* entry contains CCR-Reviewer 1..1
  * resource 1..1
* entry[CCR-Reviewer] ^short = "CCR Reviewer"
  * ^definition = "CCR Reviewer"
  * resource only Practitioner or Organization

// Conclusion about Cremation Clearance Requests
// Might use ArtifactAssessmentin the future, but it is not part of FHIR 4.1.0
// Might be able to use RegulatedAuthorization
* entry contains CCR-Status 1..1
  * resource 1..1
* entry[CCR-Status] ^short = "CCR Status"
  * ^definition = "CCR Status"
  * resource only Communication or Observation

// Might want to add option for including a digital signature