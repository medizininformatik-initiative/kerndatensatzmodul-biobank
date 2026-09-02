# Code Systems - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

Wherever possible, terminologies and unique codes conforming to international standards shall be used.

For the unique identification of additives, container types, specimen type and processing type, the use of [SNOMED CT](https://www.snomed.org/) is recommended. The value sets are referenced in the Specimen profile.

For [body site](ValueSet-mii-vs-biobank-body-structures-sct.md), the International Classification of Diseases for Oncology, v.3, Topography [(ICD-O-3)](https://terminology.hl7.org/2.1.0/CodeSystem-icd-o-3.html) can be used in addition to SNOMED CT.

The corresponding value sets have been created; the complete, automatically generated list of all value sets and code systems of this module can be found in the [artifact overview](artifacts.md).

#### Standard PREanalytical Code (SPREC)

The [SPREC 4.0](https://www.researchgate.net/publication/383061419_Standard_PREanalytical_Code_Version_40) (Standard PREanalytical Code) was developed to provide a comprehensive and easy-to-implement tool for documenting the pre-analytical collection, processing and storage of biospecimens. Many SPREC elements, such as specimen types, are already contained in SNOMED CT INTERNATIONAL — but many are not. In particular, the centrifugation mode cannot be represented with the current SNOMED International codes.

The SNOMED CT codes for SPREC terms were published by the [SNOMED CT Spanish Extension](https://webs.somsns.es/cnr/Visor_EE.htm) as a result of the work of the Spanish Network of Biobanks on defining the biobank refset in SNOMED CT.

The same codes will be submitted for the SNOMED International Edition. The Spanish Network of Biobanks and the Spanish National Release Center have kindly agreed to share the SNOMED CT codes for SPREC with the Medical Informatics Initiative before their publication in the SNOMED International Edition. In particular, the codes for the centrifugation mode can be used in `Specimen.processing.procedure` in addition to **73373003 |Specimen centrifugation (procedure)|**.

| | |
| :--- | :--- |
| 1001000257109 | Centrifugation at less than 1000g (relative centrifugal force) for 30 minutes without braking ramp at room temperature between 18 and 28 degrees Celsius |
| 911000257109 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 931000257100 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 901000257107 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes without braking ramp at room temperature between 18 and 28 degrees Celsius |
| 921000257102 | Centrifugation at less than 3000g (relative centrifugal force) between 10 and 15 minutes without braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094511000122105 | Centrifugation at less than 3000g (relative centrifugal force) more than 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094501000122107 | Centrifugation at less than 3000g (relative centrifugal force) more than 15 minutes without braking ramp at temperature between 2 and 10 degrees Celsius |
| 981000257101 | Centrifugation at more than 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 991000257104 | Centrifugation at more than 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094521000122104 | Centrifugation between 10000 y 80000g (relative centrifugal force) between 30 and 120 minutes with braking ramp at temperature between 2 and 10 degrees Celsius |
| 2094491000122101 | Centrifugation between 3000 - 6000 g (relative centrifugal force) in less than 10 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 941000257105 | Centrifugation between 3000 and 6000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 951000257108 | Centrifugation between 3000 and 6000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 2 and 10 degrees Celsius |
| 2094541000122109 | Centrifugation between 3000 and 6000g (relative centrifugal force) 15 to 30 minutes with brake ramp at room temperature between 18 and 28 degrees Celsius |
| 2094551000122106 | Centrifugation between 3000 and 6000g (relative centrifugal force) 15 to 30 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 2094561000122108 | Centrifugation between 3000 and 6000g (relative centrifugal force) 30 to 60 minutes without brake ramp at room temperature between 18 and 28 degrees Celsius |
| 961000257106 | Centrifugation between 6000 and 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 18 and 28 degrees Celsius |
| 971000257103 | Centrifugation between 6000 and 10000g (relative centrifugal force) between 10 and 15 minutes with braking ramp at room temperature between 2 and 10 degrees Celsius |
| 2094531000122101 | Ultracentrifugation at more than 80000g (relative centrifugal force) at temperature between 2 and 10 degrees Celsius |

For those SPREC axes that can already be mapped to existing SNOMED codes, ConceptMaps have been developed. They do not always cover all possible values, because the SPREC values do not always allow an unambiguous mapping. The mapping should then be based on the data available in the source system; alternatively, the Spanish codes described above can be used.

### Mappings

The mappings listed below are available machine-readable as ConceptMaps as part of the package belonging to this IG and can be used e.g. as part of an ETL process or with a terminology server.

#### Specimen types

The codes are typically used in `Specimen.type`: [ConceptMap SPREC Sample Type → SNOMED CT](ConceptMap-mii-cm-biobank-sample-type-sprec-sct.md)

#### Fixation type

The codes are typically used in a Substance that is referenced as an additive: [ConceptMap SPREC Fixation Type → SNOMED CT](ConceptMap-mii-cm-biobank-fixation-type-sprec-sct.md)

#### Primary container

The information derived from the SPREC code concerns, on the one hand, the `Specimen.container.type` and, on the other hand, the code of the Substance linked in `Specimen.container.additive`. The container information is contained in the target itself, the substance information in target.product. The capacity of the container, which is partly coded within SPREC, shall be represented separately via `Specimen.container.capacity` (as a Quantity). The storage temperature conditions shall likewise be recorded separately via the [temperature conditions extension](extensions.md).

[ConceptMap SPREC Primary Container → SNOMED CT](ConceptMap-mii-cm-biobank-primary-container-sprec-sct.md)

#### Long-term storage

Analogous to the primary container, the derived information concerns the container and the linked Substance; capacity and temperature conditions are represented separately (see above).

[ConceptMap SPREC Long Term Storage → SNOMED CT](ConceptMap-mii-cm-biobank-long-term-storage-sprec-sct.md)

#### Cell Line Ontology

For statements related to cell lines and organoids, codes from the Cell Line Ontology shall be used. The representation with the prefix "CLO:" was chosen. As there is no stipulation by HL7 International yet, errors may occur with terminology servers that chose the representation "CLO_". Should this cause problems with technical infrastructure, please report it in the [MII Zulip chat](https://mii.zulipchat.com) so that the topic can be worked on together with SU-TermServ.

