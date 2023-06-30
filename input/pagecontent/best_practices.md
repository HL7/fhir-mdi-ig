This MDI specification is designed to be flexible to accommodate a variety of systems, recognizing that information management systems used for assembling MDI data vary widely by state, jurisdiction, and agency. This means that many data concepts have few requirements but many “must support” designations. This section provides best practice recommendations on how to address select concepts.

### Bi-Directional Exchange: MDI CMS & EDRS
The **Bundle - Document MDI to EDRS** profile represents a document exchanged between an MDI CMS and EDRS. It can be used for bi-directional exchange during the process of case record creation and updating. The Bundle contains a **Composition - MDI to EDRS**.
The **Composition - MDI to EDRS** profile represents data exchanged between an MDI CMS and an EDRS, which can be in “draft” (non-finalized) by:
* Setting status=preliminary
* Using [Extension: Data Absent Reason](http://hl7.org/fhir/StructureDefinition/data-absent-reason) for author and attester, when the death certifier is not yet established

### Decedent
This MDI IG uses the US Core Patient for the decedent subject of:
* **Composition - MDI to EDRS** and the profiles referenced in its section entries
* **DiagnosticReport - Toxicology Lab Result to MDI** and the profiles referenced for its specimens and results

The US Core Patient provides structure for capturing basic demographic information (race, ethnicity, birth sex, gender identity, birth date, telecom, address, and marital status). The Composition - MDI to EDRS also provides a section, additional-demographics for text on demographic information about the decedent that is not represented in the decedent Patient profile.

The [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) profile requires 
* 1..* patient identifier, each identifier specifying a system and value
* 1..* patient name
* 1..1 gender code (AdministrativeGender). Note modeling gender and sex information is ongoing in HL7. Refer to [US Core Patient profile, “Mandatory and Must Support Data Elements.”](http://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html#mandatory-and-must-support-data-elements)

These three data elements may not be known during early stages of medicolegal data collection. US Core provide guidance on such cases of [missing data](http://hl7.org/fhir/us/core/general-requirements.html#missing-data).

In addition to the Patient.gender required data element described above, implementers have the option to describe the decedent’s sex at birth via the [US Core Birth Sex Extension](http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex), which provides codes for classifying the person’s sex assigned at birth.

The US Core Patient Profile contains the optional data element Patient.deceased. It  may be used to indicate if the individual is deceased or not. An implementer has a choice of using Boolean (true/false) values or dateTime. If dateTime is used, it should match the Observation - Death Date value[x].

The [Participant & Supporting Examples](artifacts.html#participant-administrative-examples) section of the Artifacts Index page provides an example of a US Core Patient for which no information known about the decedent's name. 

### Identifiers and Tracking Numbers
This MDI IG provides opportunities for both identifiers and tracking numbers. 

* **Identifiers**: Identifiers are unique to each individual instance (use) of a FHIR resource being exchanged. They are assigned from the data source and often generated automatically by its system. 
* **Tracking numbers**: Tracking numbers identify a case or record over time and across many systems for interoperable communication. Tracking numbers in this MDI IG may be assigned by the originating organization, such as medical examiner and coroner offices or an EDRS, and should persist throughout updates to the death investigation data. They are optional and multiple tracking numbers may be recorded. A system receiving a record with a tracking number may append its own tracking number and return/send the record with both tracking numbers. The extensible ValueSet - Tracking Number Type contains codes to identify the type of tracking number and may be augmented by local implementations of this specification.

### Certification
Agencies and jurisdictions have a range of requirements for certification of information during the process of collecting and exchanging MDI data. Typically, a forensic toxicology diagnostic report will be considered certified when the final version is sent. A document bundle sent from an MDI CMS to an EDRS can use the status data element to indicate preliminary or final and certified.

This MDI specification provides opportunities on most profiles for naming the responsible party. The legal nature of certification is a business requirement to be assigned by each agency or jurisdiction implementing this specification.

The Composition - MDI to EDRS author and attester are required and are the individual who will be listed as the certifier on the death certificate. 

**Unknown author/attester**: Use the [Extension: Data Absent Reason](http://hl7.org/fhir/StructureDefinition/data-absent-reason) for instances when the author and/or attester is not yet known, for example in initial drafts of the MDI Composition.

### Death Date
The Observation – Death Date profile represents the actual or presumed date of death. It should be used to record information about both the date and time of death and the certainty of those data. Note that the US Core Patient profile used for the decedent has an optional Patient.deceased[x] data modifier that may be used in addition to, but not instead of, the Observation – Death Date profile. If the Patient.deceased[x] is used, it must either be Boolean=true or the dateTime must match Observation  – Death Date.

The Observation – Death Date profile provides several opportunities to explain the date listed as Death Date:
* Observation.value[x]: Actual or presumed date of death
* Observation.component: Date and time pronounced dead

**Specific date or range of dates:** If the actual date of death is known (date, date-time, or partial date such as year or year + month), set value resource type to dateTime. If the date of death is not known, and a range is known, set value resource type to Period, defined by a start and end dateTime.

**Options for qualifying the accuracy of the date of death:**
* Use the Observation.status data element for modifiers contained in the value set [ObservationStatus](http://hl7.org/fhir/valueset-observation-status.html) (registered, preliminary, final, etc.). This value set contains eight concepts and is not extensible (cannot be added to by local implementations).
* Use the Observation.note data element to record additional information about the death date.
* Use the Observation.method data element for method codes from the extensible ValueSet - Date Establishment Approach (exact, approximate, court-appointed)

### Causes of Death
The Observation.value[x].text is limited for both Observation - Cause of Death Condition and Observation - Condition Contributing to Death because the receiving EDRS sends the data to NCHS (ultimate receiving system). That NCHS system restricts the text string length for these data elements. Because the originating MDI CMS certifies the content of the data elements, the data must not risk being truncated or lost by the receiving systems along the entire dataflow. Therefore, the originating system must abide by the character limit of the ultimate receiving system at the time of data capture, potentially including direct entry by the user if that is the mechanism of capturing the data.

### Forensic Toxicology Laboratory Specimens & Results
**One-to-many specimen to results relationship:** Each analyzed specimen, represented by a Specimen - Toxicology Lab resource, must be referenced by at least one Observation - Toxicology Lab Result and may be referenced by more than one Observation - Toxicology Lab Result. For example, a single blood specimen may be analyzed for several different analytes or by several different methods. Each of those specimen/analyte or specimen/method combinations will be represented by an Observation - Toxicology Lab Result.

**Specimens received but not analyzed:** Medical examiners and coroners may need to know if a forensic toxicology laboratory received a specimen but did not analyze it. In such cases, the laboratory should provide a reason for no analysis in the DiagnosticReport.conclusion and/or each unanalyzed specimen's Specimen - Toxicology Lab Specimen.note. Additionally, the Specimen - Toxicology Lab may use the Specimen.condition to describe the state of the specimen via codes from the extensible value set [hl7VS-specimenCondition](https://terminology.hl7.org/ValueSet-v2-0493.html) and/or use the Specimen.note to describe details or issues about the specimen.

**Reporting results:** The result of a specimen analysis is required to be reported as text and may also be represented by a code. This choice of text or code allows exchange of results  among systems that do not share code systems or do not use standardized code systems. The value of the result may be reported in several text formats:
* Word or phrase indicating presence or absences with no quantity (e.g., “Detected”, “Not detected”)
* Mathematical expression of quantity with units (e.g., “= 0.160 g/dL”)
* Mathematical expression of quantity range with units (e.g., “< 2.5 ng/mL”)

### API Specifications & Search Operations
This MDI specification is designed for RESTful API implementations supporting data exchange interactions between systems via FHIR extended operations. (See [RESTful API](https://hl7.org/FHIR/http.html) for an overview.) This MDI IG uses extended operations with MDI-specific search parameters and a subset of the many [RESTful API operations](https://hl7.org/FHIR/operationslist.html#1.5) defined by FHIR. All API implementations of this MDI specification must conform to common design rules:
* MIME-type for FHIR resources is application/fhir+xml or application/fhir+json. This must be specified for Content-Type in the HTTP header.
* application/x-www-form-urlencoded can be used for POST search requests if HTTP Form is used.

An MDI-based Search API enables MDI CMS to search EDRS for decedent cases. This is an idempotent operation (i.e., it has no additional effect if it is called more than once with the same input parameters). Both POST and GET can be used with the following endpoint URL pattern:
* POST [base]/Composition/$mdi-documents
* GET [base]/Composition/$mdi-documents?name=value&…

***Table: Summary of MDI Search Parameter Definitions***

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;
  overflow:hidden;padding:2px 2px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;
  font-weight:normal;overflow:hidden;padding:2px 2px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <td class="tg-0lax"><b>Name</b> </td>
    <td class="tg-0lax"><b>Cardinality</b> </td>
    <td class="tg-0lax"><b>Type</b> </td>
    <td class="tg-0lax"><b>Documentation</b> </td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax" colspan="4"><b><i>In Parameters</i></b></td>
  </tr>
  <tr>
    <td class="tg-0lax">id </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">uri </td>
    <td class="tg-0lax">Resource ID of Composition - MDI to EDRS</td>
  </tr>
	  <tr>
    <td class="tg-0lax">patient</td>
    <td class="tg-0lax">0.. </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax">One or more decedent related search parameters </td>
  </tr>
  <tr>
    <td class="tg-0lax">patient.birthdate </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">date </td>
    <td class="tg-0lax">Decedent’s date of birth </td>
  </tr>
  <tr>
    <td class="tg-0lax">patient.family </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">string </td>
    <td class="tg-0lax">Decedent’s last name </td>
  </tr>
  <tr>
    <td class="tg-0lax">patient.given </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">string </td>
    <td class="tg-0lax">Decedent’s first name </td>
  </tr>
  <tr>
    <td class="tg-0lax">patient.gender </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">token </td>
    <td class="tg-0lax">Decedent’s gender </td>
  </tr>
  <tr>
    <td class="tg-0lax">tracking-number</td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">token </td>
    <td class="tg-0lax">Search by identifier in Composition - MDI to EDRS</td>
  </tr>
  <tr>
    <td class="tg-0lax">death-location</td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">string </td>
    <td class="tg-0lax">District of Death Location </td>
  </tr>
  <tr>
    <td class="tg-0lax">death-date.[actual | pronounced | all]</td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">date </td>
    <td class="tg-0lax">Date of Death. “all” applies to both actual/presumed and pronounced</td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="4"><b><i>Out Parameters</i></b></td>
  </tr>
  <tr>
    <td class="tg-0lax">return </td>
    <td class="tg-0lax">0..1 </td>
    <td class="tg-0lax">resource (Bundle - Searchset or Document MDI to EDRS) </td>
    <td class="tg-0lax">Searchset Bundle that includes MDI document bundles. If [id] is supplied, then this should be Bundle - Document MDI to EDRS</td>
  </tr>
</tbody>
</table>

Search parameters related to Patient are formatted with “.”. In FHIR, this means that the search parameters after “.” are part of a patient parameter. See the example below.

Code example:

```
{ 
  "resourceType": "Parameters", 
  "parameter": [ 
    { 
      "name": "patient", 
      "part": [ 
        {  
          "name": "family", 
          "valueString": "Hans" 
        }, 
        {  
          "name": "given", 
          "valueString": "Kennoby" 
        } 
      ] 
    } 
  ] 
} 
```

If [id] is provided within URL path (e.g., /Composition/[id]/$mdi-documents), then the output response should be an MDI document bundle as there will be only one or zero result.