Profile: CompositionMDIDCR
Parent: Composition
Id: Composition-mdi-dcr
Title: "Composition - Death Certificate Review"
Description: "The body of a document exchanged between an EDRS and an MDI CMS for a death certificate review. This Composition can contain EDRS death certificate structured data. A death certificate review may be requested by an EDRS for death data quality improvement (such as resolving questions about missing, inconsistent, or out-of-range data), cremation clearance, or other workflow. A review might also be required by law or policy for deaths within a given jurisdiction and meeting specific criteria."
* . ^short = "Body of document exchanged for a death certificate review"
* . ^definition = "Def: Composition - Death Certificate Review"
//
* extension contains ExtensionTrackingNumber named extension-tracking-numbers 0..*
* extension[extension-tracking-numbers] 
  * ^short = "A tracking number (e.g., case number or file number) assigned by an EDRS or other organization to facilitate recognition of common case records across disparate systems"
  * ^definition = "A tracking number (e.g., case number or file number) assigned by an EDRS or other organization to facilitate recognition of common case records across disparate systems"
//
* extension contains ExtensionDeathCertificateStatus named extension-death-certificate-status 0..*
* extension[extension-death-certificate-status] 
  * ^short = "Death Certificate workflow status"
  * ^definition = "Death Certificate workflow status"
//
* extension contains ExtensionCremationClearanceStatus named extension-cremation-clearance-status 0..1
* extension[extension-cremation-clearance-status] ^short = "Status of the Cremation Clearance (e.g., requested, pending, rejected, approved). Expected to be Requested in Cremation Clearance Request."
  * ^definition = "Status of the Cremation Clearance (e.g., requested, pending, rejected, approved)"
//
* extension contains ExtensionMECertificationAffirmation named extension-me-certification-affirmation 0..1
* extension[extension-me-certification-affirmation] ^short = "Indicates whether the Medical Examiner certification has been affirmed or not"
  * ^definition = "Indicates whether the Medical Examiner certification has been affirmed or not"
//
* extension contains ExtensionCremationClearanceCoroner named extension-cremation-clearance-coroner 0..1
* extension[extension-cremation-clearance-coroner] ^short = "Indicates whether the Cremation Clearance is a Coroner workflow or not"
  * ^definition = "Indicates whether the Cremation Clearance is a Cononer workflow or not"
//
* extension contains ExtensionCremationClearanceSignature named extension-cremation-clearance-signature 0..1
* extension[extension-cremation-clearance-signature] ^short = "Indicates whether the Cremation Clearance has been signed or not. Expected to be unsigned in Cremation Clearance Request."
  * ^definition = "Indicates whether the Cremation Clearance has been signed or not"
//
* status MS
* type = MDIcodes#death-certificate-data-review-doc
* type MS
  * ^short = "Death Certificate Data Review Document"
  * ^definition = "Death Certificate Data Review Document"
* subject 1..1
* subject only Reference(Decedent)
//
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section.code 1..1
//
* section contains DecedentDemographics 0..1
* section[DecedentDemographics] 
  * ^label = "DecedentDemographics section from VRDR Death Certificate Composition for review"
  * ^short = "DecedentDemographics section from VRDR Death Certificate Composition for review"
  * ^definition = "DecedentDemographics section from vrdr-death-certificate"
  * code  = DocumentSectionCS#DecedentDemographics
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(DecedentDemographics, Decedent, 1, 1, Decedent, Decedent, Decedent)
* insert CompositionSectionSlice(DecedentDemographics, Father,  0, 1, DecedentFather, DecedentFather, DecedentFather)
* insert CompositionSectionSlice(DecedentDemographics, Mother,  0, 1, DecedentMother, DecedentMother, DecedentMother)
* insert CompositionSectionSlice(DecedentDemographics, Spouse,  0, 1, DecedentSpouse, DecedentSpouse, DecedentSpouse)
* insert CompositionSectionSlice(DecedentDemographics, Age,  0, 1, DecedentAge, DecedentAge, DecedentAge)
* insert CompositionSectionSlice(DecedentDemographics, BirthRecordID,  0, 1, BirthRecordIdentifier, BirthRecordIdentifier, BirthRecordIdentifier)
* insert CompositionSectionSlice(DecedentDemographics, FetalDeathRecordID,  0, 1, FetalDeathRecordIdentifier, FetalDeathRecordIdentifier, FetalDeathRecordIdentifier)
* insert CompositionSectionSlice(DecedentDemographics, BirthRecordIDChild,  0, 1, BirthRecordIdentifierChild, BirthRecordIdentifierChild, BirthRecordIdentifierChild)
* insert CompositionSectionSlice(DecedentDemographics, EducationLevel,  0, 1, DecedentEducationLevel, DecedentEducationLevel, DecedentEducationLevel)
* insert CompositionSectionSlice(DecedentDemographics, MilitaryService,  0, 1, DecedentMilitaryService, DecedentMilitaryService, DecedentMilitaryService)
* insert CompositionSectionSlice(DecedentDemographics, UsualWork,  0, 1, DecedentUsualWork, DecedentUsualWork, DecedentUsualWork)
* insert CompositionSectionSlice(DecedentDemographics, EmergingIssues,  0, 1, EmergingIssues, EmergingIssues, ObservationEmergingIssuesVitalRecords)
* insert CompositionSectionSlice(DecedentDemographics, InputRaceAndEthnicity,  0, 1, InputRaceAndEthnicity, InputRaceAndEthnicity, ObservationInputRaceAndEthnicityVitalRecords)
//
* section contains DeathInvestigation 0..1
* section[DeathInvestigation] 
  * ^label = "DeathInvestigation section from VRDR Death Certificate Composition for review"
  * ^short = "DeathInvestigation section from VRDR Death Certificate Composition for review"
  * ^definition = "DeathInvestigation section from vrdr-death-certificate"
  * code  = DocumentSectionCS#DeathInvestigation
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(DeathInvestigation, ExaminerContacted, 0, 1, ExaminerContacted, ExaminerContacted, ExaminerContacted)
* insert CompositionSectionSlice(DeathInvestigation, PregnancyStatus, 0, 1, DecedentPregnancyStatus, DecedentPregnancyStatus, DecedentPregnancyStatus)
* insert CompositionSectionSlice(DeathInvestigation, TobaccoUse,  0, 1, TobaccoUse, TobaccoUse, TobaccoUseContributedToDeath)
* insert CompositionSectionSlice(DeathInvestigation, DeathLocation,  0, 1, Death Location, Death Location, DeathLocation)
* insert CompositionSectionSlice(DeathInvestigation, InjuryLocation,  0, 1, Injury  Location, Injury Location, InjuryLocation)
* insert CompositionSectionSlice(DeathInvestigation, InjuryIncident,  0, 1, InjuryIncident, InjuryIncident, InjuryIncident)
* insert CompositionSectionSlice(DeathInvestigation, Autopsy,  0, 1, AutopsyPerformedIndicator, AutopsyPerformedIndicator, AutopsyPerformedIndicator)
* insert CompositionSectionSlice(DeathInvestigation, DeathDate,  0, 1, DeathDate, DeathDate, DeathDate)
* insert CompositionSectionSlice(DeathInvestigation, SurgeryDate,  0, 1, SurgeryDate, SurgeryDate, SurgeryDate)
//
* section contains DeathCertification 0..1
* section[DeathCertification] 
  * ^label = "DeathCertification section from VRDR Death Certificate Composition for review"
  * ^short = "DeathCertification section from VRDR Death Certificate Composition for review"
  * ^definition = "DeathCertification section from vrdr-death-certificate"
  * code  = DocumentSectionCS#DeathCertification
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(DeathCertification, Certifier,  0, 1, Certifier, Certifier, PractitionerVitalRecords)
* insert CompositionSectionSlice(DeathCertification, DeathCertification,  0, 1, DeathCertification, DeathCertification, DeathCertification)
* insert CompositionSectionSlice(DeathCertification, MannerOfDeath,  0, 1, MannerOfDeath, MannerOfDeath, MannerOfDeath)
* insert CompositionSectionSlice(DeathCertification, CauseOfDeathPart1,  0, 4, CauseOfDeathPart1, CauseOfDeathPart1, CauseOfDeathPart1)
* insert CompositionSectionSlice(DeathCertification, CauseOfDeathPart2,  0, 1, CauseOfDeathPart2, CauseOfDeathPart2, CauseOfDeathPart2)
//
* section contains DecedentDisposition 0..1
* section[DecedentDisposition] 
  * ^label = "DecedentDisposition section from VRDR Death Certificate Composition for review"
  * ^short = "DecedentDisposition section from VRDR Death Certificate Composition for review"
  * ^definition = "DecedentDisposition section from vrdr-death-certificate"
  * code  = DocumentSectionCS#DecedentDisposition
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(DecedentDisposition, DispositionLocation,  0, 1, DispositionLocation, DispositionLocation, DispositionLocation)
* insert CompositionSectionSlice(DecedentDisposition, FuneralHome,  0, 1, FuneralHome, FuneralHome, FuneralHome)
* insert CompositionSectionSlice(DecedentDisposition, DispositionMethod,  0, 1, DispositionMethod, DispositionMethod, DecedentDispositionMethod)
* insert CompositionSectionSlice(DecedentDisposition, Mortician,  0, 1, Mortician, Mortician, Mortician)
//
* section contains death-certificate-data-review 0..1
* section[death-certificate-data-review] 
  * ^label = "Death Certificate Data Review Results Section"
  * ^short = "Death Certificate Data Review Results Section"
  * ^definition = "Death Certificate Data Review Results Section"
  * code  = MDIcodes#death-certificate-data-review
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(death-certificate-data-review, med-info-quality-review, 0, 1,  [[Medical information data quality review status]],  [[Medical information data quality review status]], ObservationMedicalInformationDataQuality )
* insert CompositionSectionSlice(death-certificate-data-review, personal-info-quality-review, 0, 1,  [[Personal information data quality review status]],  [[Personal information data quality review status]], ObservationPersonalInformationDataQuality )
//
// Removed option for authorizing agent to be or USCorePractitionerProfile or USCoreOrganizationProfile
* section contains cremation-clearance-info 0..1
* section[cremation-clearance-info] 
  * ^label = "Cremation Clearance information"
  * ^short = "Cremation Clearance information"
  * ^definition = "cremation-clearance-info"
  * code  = MDIcodes#cremation-clearance-info
  * code 1..
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(cremation-clearance-info, authorizing-agent, 0, 1,  [[Individual authorizing cremation, often next-of-kin]],  [[Individual authorizing cremation, often next-of-kin]], USCoreRelatedPersonProfile)
* insert CompositionSectionSlice(cremation-clearance-info, embalmed, 0, 1,  [[Was body embalmed?]],  [[Was body embalmed?]], ObservationEmbalmed )
* insert CompositionSectionSlice(cremation-clearance-info, communicable-disease, 0, 1,  [[Did Decedent have a communicable disease?]],  [[Did Decedent have a communicable disease?]], ObservationCommunicableDisease )
* insert CompositionSectionSlice(cremation-clearance-info, cause-of-death-certifier, 0, 1,  [[Death Certificate certifier, often attending physician]],  [[Death Certificate certifier, often attending physician]], Certifier )
* insert CompositionSectionSlice(cremation-clearance-info, funeral-home, 0, 1,  [[Funeral home]],  [[Funeral home]], FuneralHome )
* insert CompositionSectionSlice(cremation-clearance-info, mortician, 0, 1,  [[Mortician]],  [[Mortician]], Mortician )
* insert CompositionSectionSlice(cremation-clearance-info, crematorium, 0, 1,  [[Crematorium]],  [[Crematorium]], OrganizationCrematorium )