RuleSet: CompositionSectionEntrySlicingMDI(section)
* section contains {section} 0..1
* section[{section}].code = CodeSystemMDI#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"
* section[{section}].entry ^slicing.discriminator.type = #profile
* section[{section}].entry ^slicing.discriminator.path = "$this.resolve()"
* section[{section}].entry ^slicing.rules = #open

RuleSet: CompositionSectionEntryNoSlicingMDI(section)
* section contains {section} 0..1
* section[{section}].code = CodeSystemMDI#{section}
* section[{section}] ^label = "{section}"
* section[{section}] ^short = "{section}"


Profile: CompositionMDIAndEDRS
Parent: Composition
Id: Composition-mdi-and-edrs
Title: "Composition - MDI and EDRS"
Description: "This Composition profile represents data exchanged between an MDI CMS and an EDRS."
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

//* insert CompositionSectionEntrySlicingMDI(additional-demographics)
* section contains additional-demographics 0..1
* section[additional-demographics].entry ^slicing.discriminator.type = #profile
* section[additional-demographics].entry ^slicing.discriminator.path = "$this.resolve()"
* section[additional-demographics].entry ^slicing.rules = #open
* section[additional-demographics] ^label = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^short = "This slice contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * ^definition = "This section contains demographic information about the decedent that is not represented in the decedent Patient profile."
  * code  = CodeSystemMDI#demographics
  * code 1.. MS
    * ^definition = "Demographic information section"
    * text MS
  * text MS
* insert CompositionSectionEntrySlicingMDI(circumstances)
* insert CompositionSectionEntrySlicingMDI(jurisdiction)
* insert CompositionSectionEntrySlicingMDI(cause-manner)
* insert CompositionSectionEntrySlicingMDI(medical-history)
* insert CompositionSectionEntrySlicingMDI(exam-autopsy)
* insert CompositionSectionEntryNoSlicingMDI(narratives )
* section[circumstances] ^label = "This slice contains circumstances of the death."
  * ^short = "This slice contains circumstances of the death."
  * ^definition = "This section contains circumstances of the death."
  * code  = CodeSystemMDI#circumstances
  * code 1.. MS
    * ^definition = "Circumstances of the death section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Circumstances section"
    * ^definition = "Entries that are contained in the Circumstances section"
  * emptyReason MS
* insert BundleSectionSlice(circumstances, death-location, 0, 1,  [[Apparent address where death actually occurred.]],  [[Apparent address where death actually occurred.]], DeathLocation )
* insert BundleSectionSlice(circumstances, tobacco-use-contributed-to-death, 0, 1,  [[Whether or not tobacco use contributed to death.]],  [[Whether or not tobacco use contributed to death.]], TobaccoUseContributedToDeath )
* insert BundleSectionSlice(circumstances, decedent-pregnancy, 1, 1,  [[Pregnancy status of the decedent.]],  [[Pregnancy status of the decedent.]], DecedentPregnancyStatus )
* insert BundleSectionSlice(circumstances, injury-location, 1, 1,  [[Apparent address where injury occurred.]],  [[Apparent address where injury occurred.]], InjuryLocation )

  //  * entry[death-location] only Reference(DeathLocation)
  //   * ^sliceName = "death-location"
  //   * ^label = "Apparent address where death actually occurred."
  //   * ^short = "Apparent address where death actually occurred."
  //   * ^definition = "Apparent address where death actually occurred."
  //   * ^mustSupport = true
  // * entry[tobacco-use-contributed-to-death] only Reference(TobaccoUseContributedToDeathNew)
  //   * ^sliceName = "tobacco-use-contributed-to-death"
  //   * ^label = "Whether or not tobacco use contributed to death."
  //   * ^short = "Whether or not tobacco use contributed to death."
  //   * ^definition = "Whether or not tobacco use contributed to death."
  //   * ^mustSupport = true
  // * entry[decedent-pregnancy] only Reference(DecedentPregnancyStatusNew)
  //   * ^sliceName = "decedent-pregnancy"
  //   * ^label = "Pregnancy status of the decedent."
  //   * ^short = "Pregnancy status of the decedent."
  //   * ^definition = "Pregnancy status of the decedent."
  //   * ^mustSupport = true
  // * entry[injury-location] only Reference(InjuryLocation)
  //   * ^sliceName = "injury-location"
  //   * ^label = "Apparent address where injury occurred."
  //   * ^short = "Apparent address where injury occurred."
  //   * ^definition = "Apparent address where injury occurred."

* section[jurisdiction] ^label = "This slice contains jurisdictional information about the death."
  * ^short = "This slice contains jurisdictional information about the death."
  * ^definition = "This section contains jurisdictional information about the death."
  * code = CodeSystemMDI#jurisdiction
  * code 1..1
    * ^definition = "Jurisdiction section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Jurisdiction section"
    * ^definition = "Entries that are contained in the Jurisdiction section"
  * emptyReason MS
* insert BundleSectionSlice(jurisdiction, death-date, 0, 1,  [[The estimated and pronounced date of death, also contains the death pronouncer practitioner.]],  [[The estimated and pronounced date of death, also contains the death pronouncer practitioner.]], DeathDate )
* insert BundleSectionSlice(jurisdiction, death-certification, 0, 1,  [[The procedure where the certification of death was performed by the certifier.]],  [[The procedure where the certification of death was performed by the certifier.]], DeathCertification )
// * entry contains
//      death-certification 0..1 MS and 
//      death-date 0..1 MS 
//   * entry[death-date] only Reference(DeathDateNew)
//     * ^sliceName = "death-date"
//     * ^label = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
//     * ^short = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
//     * ^definition = "The estimated and pronounced date of death, also contains the death pronouncer practitioner"
//     * ^mustSupport = true
//   * entry[death-certification] only Reference(DeathCertificationNew)
//     * ^label = "The procedure where the certification of death was performed by the certifier."
//     * ^short = "The procedure where the certification of death was performed by the certifier."
//     * ^definition = "The procedure where the certification of death was performed by the certifier."
  
* section[cause-manner] ^label = "This slice contains information about the cause and manner of death."
  * ^short = "This slice contains information about the cause and manner of death."
  * ^definition = "This section contains information about the cause and manner of death."
  * code 1.. MS
  * code = CodeSystemMDI#cause-manner
    * ^definition = "Cause and manner of death section"
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
    * ^short = "Entries that are contained in the Cause-Manner section"
    * ^definition = "Entries that are contained in the Cause-Manner section"
  * emptyReason MS
* insert BundleSectionSlice(cause-manner, cause, 0, 4,  [[Up to 4 lines of cause of death.]],  [[Up to 5 lines of cause of death providing the ordered chain of events with a causal relationship to the decedent’s death.]], MDICauseOfDeathPart1 )
* insert BundleSectionSlice(cause-manner, other-condition, 0, 1,  [[Other significant conditions contributing to death but not resulting in the underlying cause.]],  [[Other significant conditions contributing to death but not resulting in the underlying cause.]], CauseOfDeathPart2 )
* insert BundleSectionSlice(cause-manner, manner, 0, 1,  [[Manner of death]],  [[The conclusion arrived at upon completion of death investigation regarding the manner of death.]], MannerOfDeath )
* insert BundleSectionSlice(cause-manner, how-injury, 0, 1,  [[Certified explanation of how injury occurred.]],  [[Certified explanation of how injury occurred.]], InjuryIncident )

  // * entry contains
  //     cause 0..4 MS and
  //     other-condition 0..1 MS and
  //     manner 0..1 MS and
  //     how-injury 0..1 MS
  // * entry[cause] only Reference(CauseOfDeathPart1New)
  //   * ^label = "Up to 4 lines of cause of death."
  //   * ^short = "Up to 4 lines of cause of death."
  //   * ^definition = "Up to 5 lines of cause of death providing the ordered chain of events with a causal relationship to the decedent’s death."
  // * entry[other-condition] only Reference(CauseOfDeathPart2New)
  //   * ^short = "Other significant conditions contributing to death but not resulting in the underlying cause."
  //   * ^definition = "Other significant conditions contributing to death but not resulting in the underlying cause."
  // * entry[manner] only Reference(MannerOfDeathNew)
  //   * ^short = "Manner of death."
  //   * ^definition = "The conclusion arrived at upon completion of death investigation regarding the manner of death."
  // * entry[how-injury] only Reference(InjuryIncidentNew)
  //   * ^short = "Certified explanation of how injury occurred."
  //   * ^definition = "Certified explanation of how injury occurred."

* section[medical-history] ^label = "This slice contains relevant medical history about the decedent."
  * ^short = "This slice contains relevant medical history about the decedent."
  * ^definition = "This section contains relevant medical history about the decedent."
  * code = CodeSystemMDI#medical-history
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
* insert BundleSectionSlice(medical-history, history-condition, 0, 1,  [[Coded medical conditions.]],  [[Coded medical conditions.]], USCoreConditionEncounterDiagnosisProfile or USCoreConditionProblemsHealthConcernsProfile )
  // * entry contains history-condition 0..1 MS
  // * entry[history-condition] only Reference(USCoreConditionEncounterDiagnosisProfile or USCoreConditionProblemsHealthConcernsProfile)
  //   * ^sliceName = "history-condition"
  //   * ^label = "Coded medical conditions"
  //   * ^short = "Coded medical conditions"
  //   * ^definition = "Coded medical conditions"
  //   * ^mustSupport = true

* section[exam-autopsy] ^label = "This slice contains exam and autopsy information."
  * ^short = "This slice contains exam and autopsy information."
  * ^definition = "This section contains exam and autopsy information."
  * code = CodeSystemMDI#exam-autopsy
  * code 1.. MS
    * ^definition = "Exam/Autopsy section"
  * text ..1 MS
    * ^label = "Description of autopsy findings"
    * ^short = "Description of autopsy findings"
    * ^definition = "Description of autopsy findings"
  * entry ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #open
//   * entry contains autopsy-performed 0..* MS
//   * entry[autopsy-performed] only Reference(ObservationAutopsyPerformedIndicator)
//     * ^label = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
//     * ^short = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
//     * ^definition = "If autopsy was performed, if autopsy findings are available, and the autopsy Performer"
// * section[narratives] ^label = "This slice contains additional death investigation narrative descriptions."
* insert BundleSectionSlice(exam-autopsy, autopsy-performed, 0, *,  [[If autopsy was performed, if autopsy findings are available, and the autopsy Performer.]],  [[If autopsy was performed, if autopsy findings are available, and the autopsy Performer.]], ObservationAutopsyPerformedIndicatorVitalRecords )
* insert BundleSectionSlice(exam-autopsy, autopsy-location, 0, *,  [[If autopsy was performed, location.]],  [[If autopsy was performed, location.]], USCoreOrganizationProfile or USCoreLocation )


* section[narratives] ^label = "This slice contains additional death investigation narrative descriptions."
  * ^short = "This slice contains additional death investigation narrative descriptions."
  * ^definition = "This slice contains additional death investigation narrative descriptions."
  * code = CodeSystemMDI#narratives
  * code 1..1 MS
  * text MS
    * ^label = "Additional death investigation narrative descriptions."
    * ^short = "Additional death investigation narrative descriptions."
    * ^definition = "Additional death investigation narrative descriptions."
