<style>
    table.style1 { 
        border-collapse: collapse; 
        width: 100%; 
        table-layout: fixed;
    }  
    table.style1 tbody tr {
        border-bottom: 1px solid #dddddd;
    } 
    table.style1 tbody tr:nth-of-type(even) { 
        background-color: #f3f3f3; 
    } 
    table.style1 tbody tr:last-of-type {
        border-bottom: 2px solid #98c1d9;
    }
    table.style1 td:first-of-type {
        text-align: left;
    }
    table.style1 td:nth-of-type(2) {
        text-align: center;
    }
    table.style1 td:nth-of-type(3) {
        text-align: left;
    }
</style>
{% include transitions_documentation.md %}
<br/><br/>

### STU2 Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-Bundle-document-mdi-and-edrs.html'>BundleDocumentMDIAndEDRS</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Bundle-document-mdi-and-edrs.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-Bundle-message-tox-to-mdi.html'>BundleMessageToxToMDI</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Bundle-message-tox-to-mdi.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-Observation-mdi-cause-of-death-part1.html'>MDICauseOfDeathPart1</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-cause-of-death-part1.html'>MDI</a> </td><td>Profile of <a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-cause-of-death-part1.html'>VRDR</a> version</td></tr>
<tr><td> <a href='StructureDefinition-Composition-mdi-and-edrs.html'>CompositionMDIAndEDRS</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Composition-mdi-and-edrs.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-DiagnosticReport-toxicology-to-mdi.html'>DiagnosticReportToxicologyToMDI</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-DiagnosticReport-toxicology-to-mdi.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-MessageHeader-toxicology-to-mdi.html'>MessageHeaderToxicologyToMDI</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-MessageHeader-toxicology-to-mdi.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-Observation-toxicology-lab-result.html'>ObservationToxicologyLabResult</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-toxicology-lab-result.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-Specimen-toxicology-lab.html'>SpecimenToxicologyLab</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Specimen-toxicology-lab.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='MessageDefinition-MessageDefinition-toxicology-system.html'>MessageDefinitionToxicologySystem</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/MessageDefinition-MessageDefinition-toxicology-system.html'>MDI</a> </td><td>-</td></tr>
<tr><td> <a href='StructureDefinition-DocumentReference-mdi-report.html'>DocumentReferenceMDIReport</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-DocumentReference-mdi-report.html'>MDI</a> </td><td>-</td></tr>
</tbody>
</table>


### STU2 Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='StructureDefinition-Extension-tracking-number.html'>ExtensionTrackingNumber</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Extension-tracking-number.html'>MDI</a> </td><td>-</td></tr>
</tbody>
</table>


### STU2 Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='ValueSet-vs-tracking-number-type.html'>VSTrackingNumberType</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-tracking-number-type.html'>MDI</a> </td><td>-</td></tr>
</tbody>
</table>


### STU2 Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Previous Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='CodeSystem-cs-mdi-codes.html'>MDIcodes</a> </td><td><a href='https://hl7.org/fhir/us/mdi/STU1.1/CodeSystem-CodeSystem-mdi-codes.html'>MDI</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Profiles

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>

<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-contributing-cause-of-death-part2.html'>ObservationContributingCauseOfDeathPart2</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-cause-of-death-part2.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-death-date.html'>ObservationDeathDate</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-death-date.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-how-death-injury-occurred.html'>ObservationHowDeathInjuryOccurred</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-injury-incident.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-manner-of-death.html'>ObservationMannerOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-manner-of-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-decedent-pregnancy.html'>ObservationDecedentPregnancy</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent-pregnancy-status.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-tobacco-use-contributed-to-death.html'>ObservationTobaccoUseContributedToDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-tobacco-use-contributed-to-death.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Observation-autopsy-performed-indicator.html'>ObservationAutopsyPerformedIndicator</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-autopsy-performed-indicator.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Procedure-death-certification.html'>ProcedureDeathCertification</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-death-certification.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Location-death.html'>LocationDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-death-location.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/StructureDefinition-Location-injury.html'>LocationInjury</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-injury-location.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Extensions

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> n/a</td><td>n/a</td><td> n/a </td></tr>
</tbody>
</table>


### Removed Valuesets

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-certifier-types.html'>ValueSetCertifierTypes</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-certifier-types-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-contributory-tobacco-use.html'>ValueSetContributoryTobaccoUse</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-contributory-tobacco-use-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-date-establishment-approach.html'>ValueSetDateEstablishmentApproach</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-date-of-death-determination-methods-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-death-pregnancy-status.html'>ValueSetDeathPregnancyStatus</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-death-pregnancy-status-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-manner-of-death.html'>ValueSetMannerOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-manner-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-place-of-death.html'>ValueSetPlaceOfDeath</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-place-of-death-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-transportation-incident-role.html'>ValueSetTransportationIncidentRole</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/ValueSet-vrdr-transportation-incident-role-vs.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-yes-no-unknown.html'>ValueSetYesNoUnknown</a> </td><td><a href='https://hl7.org/fhir/us/vr-common-library/STU2/ValueSet-ValueSet-yes-no-unknown-vr.html'>VRCL</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/ValueSet-ValueSet-yes-no-unknown-not-applicable.html'>ValueSetYesNoUnknownNotApplicable</a> </td><td><a href='https://hl7.org/fhir/us/vr-common-library/STU2/ValueSet-ValueSet-yes-no-unknown-not-applicable-vr.html'>VRCL</a> </td><td>-</td></tr>
</tbody>
</table>


### Removed Codesystems

<table align='left' border='1' class='style1' cellpadding='1' cellspacing='1'>
<tbody>
<tr>
<td style='background-color:#98c1d9; text-align: center; width: 37%;'><b>Name</b></td>
<td style='background-color:#98c1d9; text-align: center; width: 20%;'><b>Current Version/Location</b></td>
<td style='background-color:#98c1d9; text-align: center;'><b>Comments/Updates</b></td>
</tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/CodeSystem-CodeSystem-death-pregnancy-status.html'>CodeSystemDeathPregnancyStatus</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/CodeSystem-CodeSystem-death-pregnancy-status.html'>VRDR</a> </td><td>-</td></tr>
<tr><td> <a href='https://hl7.org/fhir/us/mdi/STU1.1/CodeSystem-CodeSystem-local-component-codes.html'>CodeSystemLocalComponentCodes</a> </td><td><a href='https://hl7.org/fhir/us/vrdr/STU3/CodeSystem-vrdr-component-cs.html'>VRDR</a> </td><td>-</td></tr>
</tbody>
</table>

