Profile: CompositionMDIAndEDRS
Parent: Composition
Id: Composition-mdi-and-edrs
Title: "Composition - MDI and EDRS"
Description: "The body of the document exchanged between an MDI CMS and an EDRS for development of a death certificate."
* extension contains ExtensionTrackingNumber named extension-tracking-numbers 0..* MS
* extension[extension-tracking-numbers] ^short = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"
  * ^definition = "A tracking number (e.g., case number or file number) assigned by an MDI or other organization to facilitate recognition of common case records across disparate systems"
* status MS
* type = $loinc#86807-5
* type MS
  * ^short = "MDI and EDRS (Death administrative information Document)"
  * ^definition = "MDI and EDRS"
* subject 1.. MS
* subject only Reference(PatientVitalRecords)
  * ^short = "The subject of the composition is the decedent."
  * ^definition = "The subject of the composition is the decedent."
* author ..1 MS
* author only Reference(PractitionerVitalRecords)
  * ^short = "Death certifier. If the author is not available, explain using data-absent-reason Extension"
  * ^definition = "Death certifier. If the author is not available, explain using data-absent-reason Extension"
* attester 1..1 MS
  * ^short = "Death certifier. If the attester is not available, explain using data-absent-reason Extension"
  * ^definition = "The certifying Medical Examiner/Coroner (Certifier)"
  * party only Reference(PractitionerVitalRecords)
  * party MS
* section 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^short = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'. If no information for a required section, use emptyReason."
  * ^definition = "The Composition is broken into sections that, where possible, align with the sections in the 'Common data elements working document'."
  * code 1..1

* section contains additional-demographics 0..1
* section[additional-demographics].entry ^slicing.discriminator.type = #profile
* section[additional-demographics].entry ^slicing.discriminator.path = "$this.resolve()"
* section[additional-demographics].entry ^slicing.rules = #open
* section[additional-demographics] ^label = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^short = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^definition = "This section contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * code  = MDIcodes#demographics
  * code 1.. MS
    * ^definition = "Demographic information section"
    * text MS
  * text MS
* insert CompositionSectionEntrySlicingMDI(circumstances)
* insert CompositionSectionEntrySlicingMDI(jurisdiction)
* insert CompositionSectionEntrySlicingMDI(cause-manner)
* insert CompositionSectionEntrySlicingMDI(medical-history)
* insert CompositionSectionEntrySlicingMDI(exam-autopsy)
* insert CompositionSectionEntryNoSlicingMDI(narratives)

* section[circumstances] ^label = "This slice contains circumstances of the death."
  * ^short = "This slice contains circumstances of the death."
  * ^definition = "This section contains circumstances of the death."
  * code  = MDIcodes#circumstances
  * code 1.. MS
    * ^definition = "Circumstances of the death section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Circumstances section"
    * ^definition = "Entries that are contained in the Circumstances section"
  * emptyReason MS
* insert CompositionSectionSlice(circumstances, death-location, 0, 1,  [[Apparent address where death actually occurred.]],  [[Apparent address where death actually occurred.]], DeathLocation )
* insert CompositionSectionSlice(circumstances, tobacco-use-contributed-to-death, 0, 1,  [[Whether or not tobacco use contributed to death.]],  [[Whether or not tobacco use contributed to death.]], TobaccoUseContributedToDeath )
* insert CompositionSectionSlice(circumstances, decedent-pregnancy, 0, 1,  [[Pregnancy status of the decedent.]],  [[Pregnancy status of the decedent.]], DecedentPregnancyStatus )
* insert CompositionSectionSlice(circumstances, injury-location, 0, 1,  [[Apparent address where injury occurred.]],  [[Apparent address where injury occurred.]], InjuryLocation )

* section[jurisdiction] ^label = "This slice contains jurisdictional information about the death."
  * ^short = "This slice contains jurisdictional information about the death."
  * ^definition = "This section contains jurisdictional information about the death."
  * code = MDIcodes#jurisdiction
  * code 1..1
    * ^definition = "Jurisdiction section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Jurisdiction section"
    * ^definition = "Entries that are contained in the Jurisdiction section"
  * emptyReason MS
* insert CompositionSectionSlice(jurisdiction, death-date, 0, 1,  [[The estimated and pronounced date of death, also contains the death pronouncer practitioner.]],  [[The estimated and pronounced date of death, also contains the death pronouncer practitioner.]], DeathDate )
* insert CompositionSectionSlice(jurisdiction, death-certification, 0, 1,  [[The procedure where the certification of death was performed by the certifier.]],  [[The procedure where the certification of death was performed by the certifier.]], DeathCertification )

* section[cause-manner] ^label = "This slice contains information about the cause and manner of death."
  * ^short = "This slice contains information about the cause and manner of death."
  * ^definition = "This section contains information about the cause and manner of death."
  * code 1.. MS
  * code = MDIcodes#cause-manner
    * ^definition = "Cause and manner of death section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Cause-Manner section"
    * ^definition = "Entries that are contained in the Cause-Manner section"
  * emptyReason MS
* insert CompositionSectionSlice(cause-manner, cause, 0, 4,  [[Up to 4 lines of cause of death.]],  [[Up to 5 lines of cause of death providing the ordered chain of events with a causal relationship to the decedent’s death.]], MDICauseOfDeathPart1 )
* insert CompositionSectionSlice(cause-manner, other-condition, 0, 1,  [[Other significant conditions contributing to death but not resulting in the underlying cause.]],  [[Other significant conditions contributing to death but not resulting in the underlying cause.]], CauseOfDeathPart2 )
* insert CompositionSectionSlice(cause-manner, manner, 0, 1,  [[Manner of death]],  [[The conclusion arrived at upon completion of death investigation regarding the manner of death.]], MannerOfDeath )
* insert CompositionSectionSlice(cause-manner, how-injury, 0, 1,  [[Certified explanation of how injury occurred.]],  [[Certified explanation of how injury occurred.]], InjuryIncident )

* section[medical-history] ^label = "This slice contains relevant medical history about the decedent."
  * ^short = "This slice contains relevant medical history about the decedent."
  * ^definition = "This section contains relevant medical history about the decedent."
  * code = MDIcodes#medical-history
  * code 1.. MS
    * ^definition = "Medical history section"
  * text MS
    * ^label = "Narrative medical condition"
    * ^short = "Narrative medical condition"
    * ^definition = "Narrative medical condition"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
  * emptyReason MS
* insert CompositionSectionSlice(medical-history, history-condition, 0, *,  [[Coded medical conditions.]],  [[Coded medical conditions.]], USCoreConditionEncounterDiagnosisProfile or USCoreConditionProblemsHealthConcernsProfile )

* section[exam-autopsy] ^label = "This slice contains exam and autopsy information."
  * ^short = "This slice contains exam and autopsy information."
  * ^definition = "This section contains exam and autopsy information."
  * code = MDIcodes#exam-autopsy
  * code 1.. MS
    * ^definition = "Exam/Autopsy section"
  * text ..1 MS
    * ^label = "Description of autopsy findings"
    * ^short = "Description of autopsy findings"
    * ^definition = "Description of autopsy findings"
  * entry ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
* insert CompositionSectionSlice(exam-autopsy, autopsy-performed, 0, 1,  [[If autopsy was performed, if autopsy findings are available, and the autopsy Performer.]],  [[If autopsy was performed, if autopsy findings are available, and the autopsy Performer.]], AutopsyPerformedIndicator )
* insert CompositionSectionSlice(exam-autopsy, autopsy-location, 0, 1,  [[If autopsy was performed, location.]],  [[If autopsy was performed, location.]], USCoreOrganizationProfile or USCoreLocation )

* section[narratives] ^label = "This slice contains additional death investigation narrative descriptions."
  * ^short = "This slice contains additional death investigation narrative descriptions."
  * ^definition = "This slice contains additional death investigation narrative descriptions."
  * code = MDIcodes#narratives
  * code 1..1 MS
  * text MS
    * ^label = "Additional death investigation narrative descriptions."
    * ^short = "Additional death investigation narrative descriptions."
    * ^definition = "Additional death investigation narrative descriptions."
