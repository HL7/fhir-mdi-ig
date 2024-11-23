### Background for MDI Interoperability Work
In the investigation and certification of deaths, medical examiners, coroners, and other MDI professionals are in a unique position to provide specific and up-to-date mortality information to public health and public safety partners. However, despite the importance of this information to health and safety, the method of exchanging information between MDI organizations and stakeholders is disparate and includes paper-based and fax-based information exchange. Both public health and public safety communities are working to improve dataflows in a coordinated, consistent, and secure way across jurisdictional boundaries. The Centers for Disease Control and Prevention’s (CDC) National Center for Health Statistics (NCHS) funded a series of pilot projects to explore the challenges and to test methods for medical examiner and coroner offices to send information to public health systems such as electronic death registration systems (EDRS) and for partners such as forensic toxicology laboratories to send information to medical examiner and coroner offices. The work involved identifying common data elements, creating data standards for those elements, and promoting interoperability between data systems.

In 2015, changes to the Office of the National Coordinator for Health Information Technology (ONC) criteria in the health information technology (IT) certification process led electronic health record (EHR) system vendors to implement FHIR standards and incorporate FHIR application programming interfaces (APIs) into their products for hospitals and other healthcare providers. In 2019, NCHS developed and implemented the FHIR standard for death reporting. The Vital Records Death Reporting (VRDR) FHIR IG was published in October 2020. That guide focused on the dataflow between vital record jurisdictions EDRS and NCHS.

Recognizing that many deaths of significant public health importance are investigated by medical examiner and coroner offices, NCHS is supporting the development of additional standards and to tools for interoperability within the MDI community and its data exchange partners. The CDC continues to support interoperability and data exchange modernization among medical examiner and coroner offices through the Collaborating Office for Medical Examiners and Coroners (COMEC). MDI community members interested in this work are encouraged to contact the [COMEC](https://www.cdc.gov/comec/) at: MDI@cdc.gov.

This MDI FHIR specification is part of that effort to define elements and dataflows to standardize disparate systems within the MDI community.

### Medicolegal Death Investigation Dataflows
Medical examiner and coroner offices access and exchange information with multiple agencies and organizations when building a death investigation case record (e.g., law enforcement, forensic laboratories, EHR systems, jurisdictional EDRS). Case records are created in the MDI CMS and may contain entries from both internal sources (e.g., scene investigation) and external sources (e.g., laboratory analysis results).

***Figure: Dataflows in the Death Investigation and Reporting System***
<table><tr><td><img src="IG-image-MDI-data-flows-500.png" /></td></tr></table>

According to the U.S. Department of Justice, Office of Justice Programs, Bureau of Justice Statistics report, [*Medical Examiner and Coroner Offices, 2018*](https://bjs.ojp.gov/content/pub/pdf/meco18.pdf), in 2018 2,040 medical examiner and coroner offices accepted 605,000 referrals for investigation to determine the cause and manner of death across federal, state, and local jurisdictions. The information gathered during a death investigation is useful to a variety of local, state, and federal agencies, and many entities rely on MDI-generated data. For example, the CDC monitors trends in unintentional injury, homicides, suicides, and sudden or unexpected infant deaths and develops policy recommendations and prevention strategies for such deaths. The National Highway Traffic Safety Administration (NHTSA) monitors trends in traffic-related fatalities and the U.S. Consumer Product Safety Commission (CPSC) uses mortality data to identify problematic products for investigation and potential recall.

MDI CMS vary by organization and location or jurisdiction, and these systems are often not interoperable with other producers or consumers of MDI-related data, which creates obstacles to timely investigations and forensic science research.

### Current Project
The scope of the current MDI IG is defining FHIR resources and guidance for the following dataflows:
* Creation, search, and update of a case record between an MDI CMS and an EDRS via a document bundle for development of a death certificate
* Transmission of diagnostic findings from a forensic toxicology laboratory to an MDI system via a diagnostic report and message bundle
* Transmission of PDF reports within the MDI community
* Transmission of a completed death certificate for review

For more details, see the [Use Cases](mdi_use_cases.html) page.

### Future Work
The MDI FHIR IG will continue to develop to support additional MDI needs beyond death reporting to EDRS for the death certificate. Future work likely will include:
* **Terminology**: Developing vocabularies and terminologies useful to the MDI domain with focus on those for forensic toxicology results
* **Resources for Additional Dataflows**: Developing FHIR profiles for transactions between MDI CMS and other information sources (EHR, autopsy facilities, etc.) and information recipients (organ and tissue procurement organizations, state health surveillance systems, etc.).

Georgia Tech Research Institute (GTRI) provides tools for exploring and testing MDI FHIR data.
* [**Raven Testing Platform**](https://apps.hdap.gatech.edu/raven/)—A proof of concept for the MDI FHIR IG. It provides a tool for testing conformance to the MDI FHIR IG, including resource validation, record comparison, and data exchange workflows.
* [**Raven Documentation**](https://ravendocs.readthedocs.io/en/latest//)—End-use and technical manuals

CDC Foundation provides administrative and project management support for medical examiner and coroner jurisdictions, data sharing partners, and software vendors participating in FHIR pilot projects. CDC Foundation also provides a forum for a community of support through [MDI Connect](https://www.cdcfoundation.org/MDI-Connect) to advance solutions for simplifying data sharing between MDI offices and their partners.

### IG Development Team
* **CDC, NCHS**: Kate Brett, Cynthia Bush, Margaret Warner, Jenny Couse
* **GTRI**: Myung Choi, Tia Pope, Alexandra Ramirez, Michael Riley 
* **Lantana Consulting Group**: Dave deRoode, Sarah Gaunt, Diana Wright
* **CDC Foundation**: Gina Wiser, Michele Trofatter

### Acknowledgements
This guide was developed and produced through the efforts of Health Level Seven (HL7) under Project Insight reference number [1737](https://www.hl7.org/special/Committees/projman/searchableProjectIndex.cfm?action=edit&ProjectNumber=1737).

The STU2 ballot version was refactored as part of the [harmonization of vital records FHIR Implementation Guides](https://hl7.org/fhir/us/vr-common-library/2024Jan/vr_ig_harmonization.html) by the MITRE corporation, under contract to NCHS.  As part of this effort, the IG artifacts were transitioned to FHIR shorthand.   The capability statement rendering is provided by the [CapStmt](https://github.com/caspears/CapStatement) liquid template developed by Corey Spears based on original code by Eric Haas.

The editors appreciate the support and sponsorship of the HL7 Public Health Work Group and all volunteers and staff associated with the creation of this resource. The editors appreciate the wisdom and insights provided by the MDI community, including forensic toxicology laboratories, medical examiners and coroners, and jurisdictional vital records departments.

**The MDI Community:**
* Alabama: Jefferson County Coroner / Medical Examiner Office
* Alaska: State Medical Examiner's Office; AK Health Analytics and Vital Records
* Connecticut: Office of the Chief Medical Examiner; CT Department of Public Health, State Vital Records
* Florida: Division Forensic Medicine, University of Florida
* Georgia: DeKalb County Medical Examiner's Office; GA Department of Public Health, State Office of Vital Records
* Illinois: Cook County Medical Examiner's Office
* NMS Labs
* Michigan: Sparrow Foundation; MI Department of Health and Human Services; MI Health Information Network Shared Services (MiHIN); MiCelerity
* Minnesota: Midwest Medical Examiner's Office; MN IT Services (MNIT) 
* New Hampshire: Office of the Chief Medical Examiner; Secretary of State, Division of Vital Records Administration
* South Carolina: Charleston County Coroner's Office; SC Law Enforcement Division
* Washington: King County Medical Examiner's Office; WA State Department of Health Vital Records Office

**The IT vendor community:**
* CNSI (NH EDRS vendor)
* Genesis (GA EDRS vendor)
* LabLynx (IL MDI CMS vendor)
* MDILog (GA, MI, NH, and SC MDI CMS vendor)
* NetSmart (AK EDRS vendor)
* Porter Lee Corporation, Crime Fighter BEAST (SC forensic lab vendor) 
* QuincyTech (CT MDI system vendor)
* VertiQ (AK, WA and MN MDI CMS vendor)
* VitalChek (CT EDRS vendor)

### References
* National Institute of Standards and Technology (NIST), [“Medicolegal death investigation data commonly collected and exchanged,”](https://www.nist.gov/system/files/documents/2021/07/14/MDI%20data%20commonly%20collected%20and%20exchanged_REFERENCE_07092021_0.pdf) (7/9/2021)
* ANSI/ASB Standard 053, First Edition (2020), “Standard for Report Content in Forensic Toxicology”, [webpage](https://www.aafs.org/asb-standard/standard-report-content-forensic-toxicology) & [PDF](https://www.aafs.org/sites/default/files/media/documents/053_Std_e1.pdf)
* Ropero-Miller, Jeri, Nichole Bynum, Kelly Keyes, Erica Fornaro, and Micaela Ascolese. [Data Exchange Practices of Medicolegal Death Investigation.](https://forensiccoe.org/private/63da9032991eb) U.S. Department of Justice, National Institute of Justice, Office of Investigative and Forensic Sciences, December 2022.