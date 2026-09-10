<!-- markdownlint-disable MD041 -->
<!-- DERIVED:bridge gate=B -->

### Context within the overall project / relations to other modules

Biospecimens are collected, processed and stored in clinical as well as population-based biobanks in order to make high-quality specimens available for scientific projects.

Both the different collections within a biobank and the individual specimens need to be described in a structured way so that specimens can be found more easily and used meaningfully. Relevant characteristics of a specimen collection include, among others, the covered diseases, specimen types, and access routes to the specimens and associated data.

Specimen-specific data should include specimen type, specimen material, quantity, collection, pre-analytical processing and storage. Clinical data about the specimen are explicitly not covered by this module; they should be provided via the modules intended for the respective data type.

This module is linked to the modules [Pathologie-Befund](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Pathologie_Befund_V2025/MIIIGModulPathologieBefund.html), [Molekulargenetischer Befundbericht](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulargenetischer_Befundbericht_V2025/implementation-guides-ImplementationGuide-2025.x-DE-MIIIGModulMolGenDE-IGMIIKDSModulMolekulargenetischerBefundbericht.html), [Onkologie](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie_V2025/MIIIGModulOnkologie.html) and [Laborbefund](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Laborbefund_V2025/MIIIGModulLaborbefund.html) when specimens are kept in the biobank for further examinations.

Furthermore, the module [Person](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Person/IGMIIKDSModulPerson.html) is used to record patient data, and the module [Diagnose](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Diagnose/IGMIIKDSModulDiagnose.html) to represent the indication of a collection or diagnostic information about a specimen.

A good starting point for gaining an overview of the technical specifications is the [Profiles page](profiles.html).

### Glossary

This section explains how certain terms are used in the context of this implementation guide. The definitions reflect the consensus of the module team, but may be used differently by individual sites or other groups.

#### Primary specimen

Also called stem specimen or master specimen. Refers to the specimen as collected from the donor – before its processing.

Note: In some contexts the aliquot group is also called a master specimen. In the context of the Medical Informatics Initiative, however, a master specimen refers to a primary specimen.

#### Aliquot group

A grouping of all aliquots of the same specimen type that derive from the same, possibly already processed, primary specimen.

Specimens that differ in specimen type or primary specimen are counted as different aliquot groups.

For feasibility queries it is recommended to count aliquot groups, not all individual aliquots. An aliquot group counts as available as long as at least one aliquot is available. If primary specimens are frozen directly (e.g. PAX), they shall additionally be marked as an aliquot group so that they can also be counted in feasibility queries.

#### Aliquot

A specimen for which identical sibling specimens exist that belong to the same group. If an aliquot is split again, both aliquots remain part of the existing aliquot group. A new group is only created when the process is repeated.

An example of this structuring of specimens is shown here:

![Specimen levels: primary specimen, aliquot group, aliquot](Probenebenen.png)

------

#### Control specimen

* a) A specimen explicitly collected as a "healthy" specimen together with a "diseased" specimen (matching samples), e.g. healthy tissue next to diseased tissue.
* b) A specimen that can be used within a specific research question to be compared with other specimens explicitly defined as "diseased". The control specimen may originate e.g. from a population cohort or from a collection for another, unrelated disease.

------

#### Derivative

Usually represented as an aliquot group with one to x aliquots.



### References

#### SPREC

The [SPREC 4.0](https://www.researchgate.net/publication/383061419_Standard_PREanalytical_Code_Version_40) (Standard PREanalytical Code) was developed to provide a comprehensive and easy-to-implement tool for documenting the pre-analytical collection, processing and storage of biospecimens. SPREC distinguishes between tissue and fluid specimens and has seven positions. The information behind these positions is reflected in the module. The SPREC values are not used directly; instead a mapping to SNOMED CT is intended. Further information can be found in the section [Terminologies](code-systems.html).

#### MIABIS

The [MIABIS (Minimum Information About BIobank data Sharing) 3.0 Core](https://pubmed.ncbi.nlm.nih.gov/38497765/) [and the Sample, Donor and Event extension](https://pmc.ncbi.nlm.nih.gov/articles/PMC7310316/) were consulted for this module, particularly when designing the collection/biobank, and several attributes were implemented directly from them. For the collection type, the MIABIS values are used directly, see [Terminologies](code-systems.html). Note that MIABIS 3.0 explicitly distinguishes between biobanks, collections and research resources, all of which fall under the category collection/biobank in this module.

#### BBMRI-ERIC

[BBMRI-ERIC](https://www.bbmri-eric.eu/) is a European research infrastructure for biobanking. It brings together all the main players from the biobanking field – researchers, biobankers, industry and patients – to boost biomedical research. To that end it offers, among other things, a number of online tools and software solutions for biobankers and researchers, with the aim of enabling new treatments. Among others, the [BBMRI Directory](https://directory.bbmri-eric.eu) and the underlying [MIABIS standard](https://www.bbmri-eric.eu/howtomiabis/) are coordinated by BBMRI-ERIC.

#### GBN

The [German Biobank Network (GBN)](https://www.bbmri.de) offers the German biobanking community a central cooperation platform and represents German interests in the European biobanking network BBMRI-ERIC. Since July 2025 it has also been anchored as the central infrastructure for biobanking in university medicine within the Network of University Medicine (NUM). With its commitment to biobanking, GBN contributes to scientific progress on the way to precision medicine. One development of GBN is the Sample Locator, which enables FHIR-based specimen searches. The preparatory work from this project fed into the creation of this module.
