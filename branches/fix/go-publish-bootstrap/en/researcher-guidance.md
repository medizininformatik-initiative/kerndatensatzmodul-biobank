# Guidance for Researchers - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Researchers**

## Guidance for Researchers

### Guidance for Researchers

The **Biobank** module represents the information about biospecimens that is relevant for biomedical research: their type and origin, their pre-analytical processing, their storage, and the managing organizational unit. It thereby supports two central use cases for researchers: **feasibility assessment** ("Are there suitable specimens for my project, and how many?") and **assessing specimen quality** for the planned analysis.

#### Key data elements

Depending on the research question, the following information from the module may be of particular interest:

* **Specimen type and material** (`Specimen.type`) – e.g. whole blood, serum, plasma, tissue (FFPE), DNA/RNA, urine. Coding is standardized using SNOMED CT, so that specimen types are comparable across sites and machine-searchable.
* **Collection site** (`Specimen.bodySite`) – coded using SNOMED CT or, particularly for oncological questions, ICD-O-3.
* **Specimen hierarchy**: The module distinguishes between **primary specimen**, **aliquot group**, and **aliquot**. For feasibility queries, the aliquot group level is usually the relevant one, as it allows conclusions about actually available quantities.
* **Quantity/volume** of the aliquot.
* **Pre-analytical processing** (`Specimen.processing`) (e.g. centrifugation, type of processing, freezing). This information can help assess whether a specimen is suitable for a particular analysis method (e.g. multiomics, proteomics).
* **Diagnosis established from the specimen**: The specimen can be linked to a diagnosis that was established based on this specimen – e.g. in the case of tumor diseases, the histopathological diagnosis that is only obtained through examination of the tissue.
* **Storage conditions and storage history** (`Specimen.container`, storage processes with temperature, start/end) – can help assess specimen quality in cases of prolonged storage or repeated freeze-thaw cycles.
* **Infectious status/biosafety status** – relevant for planning transport and handling at the receiving site.

#### What the module deliberately does not cover

Clinical data about the specimen (e.g. diagnosis, prior treatment, donor lab values) are **not** part of the Biobank module; instead, they are provided via the corresponding subject-specific modules (including Diagnosis, Procedure, Laboratory, Oncology, Pathology, Molecular Genetics) and linked to the specimen via the Patient or Encounter reference. For a complete feasibility query – e.g. "serum specimens from patients with diagnosis X, collected before start of therapy" – data from the Biobank module therefore needs to be combined with data from the clinical modules.

#### Technical implementation of feasibility queries

For cross-site feasibility queries regarding biospecimens and associated data, the [**German Portal for Medical Research Data (FDPG)**](https://forschen-fuer-gesundheit.de/) serves as the central point of contact, developed as part of the Medical Informatics Initiative. The Biobank module provides the technical foundation so that this information can be consistently and semantically interoperably provided from local systems.

#### Further information

* Structure of the resources: see [UML diagrams](uml-diagrams.md)
* Definitions of terms (e.g. SPREC, aliquot): see [Glossary](glossary.md)
* Technical details on profiles and extensions: see [Guidance for Implementers](implementer-guidance.md)

