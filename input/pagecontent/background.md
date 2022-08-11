### Background for MDI Interoperability Work
In the investigation and certification of deaths, medical examiners and coroners (ME/Cs) are in a unique position to provide specific and up-to-date mortality information to public health and public safety partners. However, despite the importance to health and safety, the method of exchanging information between information systems in ME/C offices and stakeholders is disparate and includes paper-based and FAX-based information exchange. Both public health and public safety communities are working to improve data flows in a coordinated, consistent, and secure way across jurisdictional boundaries. The CDC’s National Center for Health Statistics (NCHS) funded a series of pilot projects to explore the challenges and to test methods for ME/Cs to send information from ME/C offices to public health systems such as Electronic Death Registration Systems (EDRS) and for partners such as forensic toxicology laboratories to send information to ME/C offices. The work involved identifying common data elements, creating data standards for those elements, and promoting interoperability between data systems.

In 2015, changes to the Office of the National Coordinator (ONC) criteria in the health information technology (IT) certification process led electronic health record (EHR) system vendors to implement FHIR standards and incorporate FHIR application programming interfaces (APIs) into their products for hospitals and other health care providers. In 2019, NCHS developed and implemented the FHIR standard for death reporting. The Vital Records Death Reporting (VRDR) FHIR implementation guide was published in October 2020. That guide focused on the data flow between vital record jurisdictions EDRS and NCHS.

Recognizing that many deaths of significant public health importance are investigated by ME/C offices, NCHS is supporting the development of additional standards and tools for interoperability among ME/C information management systems, forensic toxicology LIMS, and vital records EDRS. This MDI FHIR specification is part of that effort to capture elements and workflows not currently captured in the death reporting implementation guide, and to help standardize disparate systems within the ME/C ecosystem. 

### Medicolegal Death Investigation Dataflows
Medical examiners and coroners (ME/C) access and exchange information with multiple agencies and organizations when building a death investigation case record (e.g., law enforcement, forensic laboratories, EHR systems, jurisdictional death registration systems). Case records are initiated by an ME/C office and may contain entries from both internal (e.g., scene investigation) and external (e.g., laboratory) sources.

***Figure: Data Flows in the Death Investigation and Reporting System***
<table><tr><td><img src="IG-image-MDI-data-flows-8-22.png" /></td></tr></table>


According to the U.S. Department of Justice, Office of Justice Programs, Bureau of Justice Statistics report, [*Medical Examiner and Coroner Offices, 2018*](https://bjs.ojp.gov/content/pub/pdf/meco18.pdf), in 2018 2,040 ME/C offices accepted 605,000 referrals for investigation to determine the cause and manner of death across federal, state, and local jurisdictions. The information gathered from an MDI is useful to a variety of local, state, and federal agencies, and many entities rely on MDI-generated data. For example, the CDC monitors trends in unintentional injury, homicides, suicides, and sudden or unexpected infant deaths and develops policy recommendations and prevention strategies for such deaths. The National Highway Traffic Safety Administration (NHTSA) monitors trends in traffic-related fatalities and the U.S. Consumer Product Safety Commission (CPSC) uses mortality data to identify problematic products for investigation and potential recall.

MDI information management systems vary by organization and location or jurisdiction, and these systems are often not interoperable with either producers or consumers of MDI-related data, which creates obstacles to timely investigations and forensic science research.

### Current Project
The scope of the current MDI implementation guide is defining FHIR resources and guidance for the following data flows:
* Creation, search, and update of a case record between an MDI system and an EDRS via a document bundle
* Transmission of diagnostic findings from a forensic toxicology laboratory to an MDI system via a diagnostic report and message bundle
***The current project has place holders for sections that are expected to have more detail in later versions, such as exam-autopsy and narratives for death scene description and other use. (See Further Work below.)***

### Relation to Other Standards
The MDI specification supports exchange of data among organizations and agencies that contribute information to death investigations conducted by ME/Cs as well as transmission of death investigation findings from ME/Cs to the EDRS of state registrars. The Vital Records Death Reporting (VRDR) FHIR implementation guide supports reporting deaths by state registrars to the NCHS. Therefore, the data flows supported by the MDI specification are upstream of the data flows supported by the VRDR specification. While the two implementation guides serve an overlapping set of actors (e.g., EDRS) and data concepts (e.g., death date, manner of death), they do not share profiles because VRDR data elements are constrained to IJE (Inter-Jurisdictional Exchange) data elements definitions.

### Further Work
The MDI FHIR implementation guide will continue to develop. Future work likely will include:
* **Terminology**: Developing vocabularies and terminologies useful to the MDI domain with focus on those for forensic toxicology results 
* **Vital Records Common Profiles Library**: Evaluating future MDI profiles and extensions for overlap with data concepts in the [Vital Records Common Profiles Library](http://hl7.org/fhir/us/vr-common-library/) and for possible inclusion in the library to better integrate mortality reporting
* **Resources for Additional Data Flows**: Developing FHIR profiles for transactions between MDI systems and other information sources (EHR, ***autopsy facilities***, etc.) and information recipients (organ procurement organizations, etc.)

### Project Team
* **US Centers for Disease Control and Prevention (CDC), National Center for Health Statistics (NCHS)**: Kate Brett, Cynthia Bush, Alaina Gregory, Margaret Warner
* **Georgia Tech Research Institute (GTRI)**:Myung Choi, Tia Pope, Alexandra Ramirez, Michael Riley 
* **Lantana Consulting Group**: Kit Cooper, Dave deRoode, Sarah Gaunt, Lani Johnson, Wendy Wise, Diana Wright

### Acknowledgements
This guide was developed and produced through the efforts of Health Level Seven (HL7) and created using the Trifolia-on-FHIR tool, provided by Lantana Consulting Group, Inc. The HL7 Project Insight reference number for this project is 1737.

The editors appreciate the support and sponsorship of the HL7 Public Health Work Group and all volunteers and staff associated with the creation of this resource. The editors appreciate the wisdom and insights provided by the medicolegal death investigation community, including forensic toxicology laboratories, medical examiners and coroners, and jurisdictional vital records departments.

**The forensic toxicology laboratory community:**
* Florida: Div. Forensic Medicine, Univ. of Florida

**The ME/C community:**
* Connecticut: Office of the Chief Medical Examiner
* Georgia: DeKalb County Medical Examiner Office
* New Hampshire: Office of the Chief Medical Examiner

**Jurisdictional vital records departments:**
* Connecticut: Dept. Of Public Health, State Vital Records 
* Georgia: Dept. of Public Health, State Office of Vital Records
* New Hampshire: Secretary of State, Division of Vital Records Administration

**The IT vendor community:**
* MDILog (GA and NH MDI system vendor)
* Genesis (GA EDRS vendor)
* CNSI (NH EDRS vendor)
* QuincyTech (CT MDI system vendor)
* VitalChek (CT EDRS vendor)

Health Level Seven, HL7, CDA, CCD, FHIR and the [FLAME DESIGN] are registered trademarks of Health Level Seven International, registered in the US Trademark Office.
This material contains content from [SNOMED CT](http://www.ihtsdo.org/snomed-ct/). SNOMED CT is a registered trademark of the International Health Terminology Standard Development Organization (IHTSDO).

This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at [https://loinc.org/kb/license/](https://loinc.org/kb/license/). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

This guide links terminology directly to the FHIR® Terminology Service for VSAC Resources [(Value Set Authority Center (VSAC) - NIH)](https://vsac.nlm.nih.gov/) where applicable using a RESTful API service for accessing the VSAC value sets and supported code systems. It is a requirement of VSAC to log in using your own UMLS API Key to view the value sets. [VSAC UMLS Licensing information.](https://www.nlm.nih.gov/vsac/support/usingvsac/requestumlslicense.html)

### References
* National Institute of Standards and Technology (NIST), [“Medicolegal death investigation data commonly collected and exchanged,”](https://www.nist.gov/system/files/documents/2021/07/14/MDI%20data%20commonly%20collected%20and%20exchanged_REFERENCE_07092021_0.pdf) (7/9/2021)
* ANSI/ASB Standard 053, First Edition (2020), “Standard for Report Content in Forensic Toxicology”, [webpage](https://www.aafs.org/asb-standard/standard-report-content-forensic-toxicology) & [PDF](https://www.aafs.org/sites/default/files/media/documents/053_Std_e1.pdf)