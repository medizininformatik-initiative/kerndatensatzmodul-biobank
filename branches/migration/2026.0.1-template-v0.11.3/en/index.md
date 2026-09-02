# Home - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ImplementationGuide/mii-ig-biobank-de-v2026 | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-02-11 | *Computable Name*:MII_IG_Biobank_DE |

This specification describes the FHIR representation of the **biospecimen data** module of the core data set of the Medical Informatics Initiative (MII). The module's use cases as well as the corresponding FHIR profiles and terminology resources are described below in their binding form.

### Description of the "biospecimen data" module

Biospecimens are collected prospectively in disease-specific as well as population-based biobanks. The parent biobank in its organisation, its various collections in their focus and composition, and the individual specimens all need to be described in a structured way for meaningful use. Relevant characteristics of a specimen collection include, among others, the covered diseases, specimen types and access routes (this is metadata). Specimen-specific data should include specimen type, specimen material, quantity, collection, pre-analytical processing (incl. aliquoting, pooling) and storage. Clinical data about the specimen are explicitly not covered by this module; they should be provided via the modules intended for the respective data type.

A biospecimen can be assigned to a donor via a collection event (module Person). At the same time the collection entity allows linking a diagnosis (module Diagnose) as the indication. For the description of the biospecimen itself it was decided to rely on SNOMED CT codes for the specimen type. A mapping of other standards for coding the specimen type, in particular SPREC 4.0 and MIABIS Sample Type, is provided as part of this implementation guide. In the present information model, additives are recorded separately from the actual specimen material: the primary container linked to the biospecimen allows stating an additive in addition to the container type, again using SNOMED CT codes. Further additives can be recorded as part of processing steps. Processing steps can also model the derivation of one or more specimens from another specimen; if data about the processing step are missing, this can also be expressed by directly linking the respective specimens.

The biospecimen can furthermore be linked to pathology reports (module Pathologie), laboratory reports (module Labor) and diagnoses (module Diagnose) to connect it with further clinical information.

The storage of a biospecimen can be traced through a series of storage processes, each comprising start, end and storage conditions. Storage processes, like every biospecimen, are assigned to a specimen collection/biobank that acts as the contact point for enquiries about the specimen. Sub-collections can be assigned to a biobank via a reference. In addition, further attributes taken from the BBMRI-ERIC Directory data model (which builds on MIABIS), such as name or collection type, can be recorded. To be able to contact the organisation managing a specimen, a contact can be stated as well.

Even though the SPREC 4.0 code is not directly part of the data model, all data elements contained in it are reflected in the present data model.

### Imprint

This guide was created within the Medical Informatics Initiative and is, per governance process, subject to the consultation procedure of the Interoperability Forum and the Technical Committees of HL7 Germany e. V.

### Contact

* Buckow, Karoline – MII coordination office
* Deppenwiese, Noemi – MIRACUM

Questions about this publication can be asked at any time on [chat.fhir.org](https://chat.fhir.org) in the stream "german/mi-initiative".

Comments and criticism are always welcome as issues in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-biobank/issues).

### Authors (in alphabetical order)

* Buckow, Karoline – MII coordination office
* Deppenwiese, Noemi – MIRACUM
* Engels, Cecilia – German Biobank Network (GBN), German Cancer Consortium (DKTK)
* Geiger, Jörg – Interdisciplinary Bank of Biomaterials and Data Würzburg (ibdw)
* Kirsten, Romy – Integrated Biobank Mannheim (IBM)
* Kirsten, Toralf – SMITH
* Klar, Rhena – MIRACUM
* Köhler, Stefanie – Central Biobank Erlangen (CeBE)
* Menche, Constantin – German Cancer Consortium (DKTK)
* Otto, Christoph – Experimental Visceral Surgery, Department of Surgery I, University Hospital Würzburg
* Rech, Anne – Experimental Visceral Surgery, Department of Surgery I, University Hospital Würzburg
* Rinaldi, Eugenia – HiGHmed
* Roßmann, Kerstin – Experimental Visceral Surgery, Department of Surgery I, University Hospital Würzburg
* Rößner, Miriam – MIRACUM
* Saati, Mahasen – Experimental Visceral Surgery, Department of Surgery I, University Hospital Würzburg
* Schönfeld, Ida – BioBank Dresden (BBD)
* Siddiqui, Roman – MII coordination office
* Skowronek, Patrick – UMM, DKFZ, DKTK, DZIF

### Copyright and usage notes

Copyright © 2021: TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public. Claims regarding reuse and publication are not restricted.

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some code systems used are published and maintained by other organisations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

