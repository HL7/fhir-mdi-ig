<!--- These are MDI harmonization notes, centralized for when IG's are developed separately --->

## Comments on MDI IG Harmonization

### Use Case: MDI to EDRS

#### Decedent
- [USCorePatient]
- Not creating a new common profile

#### Medical Examiner/Coroner (Certifier)
- [USCorePractitioner] 
- Not creating a new common profile

#### Death Location
- [LocationDeath] &rarr; [LocationDeathVitalRecordsNew]
- Removal of MS flags
- Inclusion of consolidated code system
- Inclusion of city and county extensions to accomodate VRDR
- Replacement of address text with state code

#### Tobacco Use Contributed to Death
- [ObservationTobaccoUseContributedToDeath] &rarr; [ObservationTobaccoUseContributedToDeathVitalRecordsNew]
- Removal of MS flags
- Inclusion of common value set

#### Decedent Pregnancy
- [ObservationDecedentPregnancy]  &rarr; [ObservationDecedentPregnancyVitalRecordsNew]
-  Removal of MS flags
- Inclusion of consolidated value set to include missing value
- Inclusion of bypass edit flag extensions

#### Injury Location
- [LocationInjury] &rarr; [LocationInjuryVitalRecordsNew]
- Removal of MS flags
- Inclusion of consolidated code system
- Inclusion of city and county extensions to accomodate VRDR
- Replacement of address text with state code

#### Death Date
- [ObservationDeathDate] &rarr; [ObservationDeathDateVitalRecordsNew] 
-  Removal of MS flags
- Inclusion of consolidated partial date time extension
- Inclusion of consolidated value sets for place of death and date establishment approach
- Components for place and time of death are limited to one value

#### Death Certification
- [ProcedureDeathCertification] &rarr; [ProcedureDeathCertificationVitalRecordsNew]
- Removal of MS flags
- Inclusion of consolidated value set for certifier types

#### Cause of Death Part 1
- [ObservationCauseOfDeathPart1] &rarr; [ObservationCauseOfDeathPart1VitalRecordsNew]
- Removal of MS flags
- Removal of performer cardinality
- Cause of Death Part 1 
- Line a,b,c,d text is no longer part of a slice definition (just codeable concept)

#### Cause of Death Part 2
- [ObservationContributingCauseOfDeathPart2] &rarr; [ObservationCauseOfDeathPart2VitalRecordsNew]
- Removal of MS flags

#### Manner of Death 
- [ObservationMannerOfDeath] &rarr; [ObservationMannerOfDeathVitalRecordsNew]
- Removal of MS flags
- Performer cardinality relaxed to 0..1 (observation default)

#### How Death Injury Occurred
- [ObservationHowDeathInjuryOccurred] &rarr; [ObservationInjuryIncidentVitalRecordsNew] 
- Removal of MS flags
- Performer cardinality relaxed to 0..1 (observation default)
- Inclusion of common partial date time extension
- Inclusion of common yes, no, unknown, not applicable value set for work injury indicator
- Inclusion of common transportation incident value set

#### Coded medical conditions 
- [USCoreConditionEncounterDiagnosis] or [USCoreConditionProblemsandHealthConcerns]
- Not creating a new common profile

#### Autopsy Performed Indicator
- [ObservationAutopsyPerformedIndicator]
-  profile with same/similar name is dissimilar across other profiles (no harmonization)

#### Autopsy Location
- [USCoreOrganization] or [USCoreLocation] 
- Not creating a new common profile

### Use Case: Toxicology to MDI

#### Responsible Diagnostic Service
- [USCorePractitioner] or [USCorePractitionerRole]
- Not creating a new common profile(s)

### Other Unchanged Profiles
- Toxicology to MDI MessageHeader
- Toxicology Lab Result to MDI
- Document Reference: MDI Report
- Capability Statements
<!--- probably not worth mentioning: http://hl7.org/fhir/R4/substance.html (additive Substance resource - referenced by specimen) --->


{% include markdown-link-references.md %}