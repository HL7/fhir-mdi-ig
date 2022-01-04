This profile builds upon the FHIR List resource. There can be up to 5 List.entry each containing one Condition - Cause of Death profile. The source of the Cause of Death Pathway (List.source) is a US Core Practioner.

Record the chain of events--diseases, injuries, or complications--that directly caused the death. DO NOT enter terminal events such as cardiac arrest, respiratory arrest, or ventricular fibrillation without showing the etiology. DO NOT ABBREVIATE. Enter only one cause in each List.entry.item (Condition - Cause of Death).

* the FIRST List.entry.item (Condition - Cause of Death) is the IMMEDIATE CAUSE (Final disease or condition resulting in death) 
* for each subsequent List.entry.item (Condition - Cause of Death), sequentially list conditions, if any, leading to the cause recorded in the first List.entry.item
* the LAST List.entry.item (Condition - Cause of Death) is the UNDERLYING CAUSE (disease or injury that initiated the events resulting in death)