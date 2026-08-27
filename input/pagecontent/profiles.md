<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page profiles.md (de) -->

The core data set specifications build, wherever possible, on international standards and terminologies. The [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) deserves particular mention here. Adaptation to the general conditions of the German healthcare system is achieved by using the [German base profiles](https://simplifier.net/basisprofil-de-r4) of HL7 Germany.

All elements of the core data set, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described as FHIR StructureDefinitions. The domain explanation of each adaptation appears as an introduction directly on the profile page; the complete, automatically generated list of all profiles of this module can be found in the [artifact overview](artifacts.html).

> For mandatory or must-support elements, please refer to the corresponding [IPS rules](https://build.fhir.org/ig/HL7/fhir-ips/Must-Support-and-Obligations.html), which also apply to this implementation guide.
{: .ig-highlight .ig-highlight-grey}

### Specimen (biospecimen)

A Specimen resource represents a biospecimen: [MII PR Biobank Specimen](StructureDefinition-mii-pr-biobank-specimen.html) (building on [MII PR Biobank Specimen Core](StructureDefinition-mii-pr-biobank-specimen-core.html)).

Note: In many contexts the terms specimen and sample have distinct meanings. Both FHIR and SNOMED CT generally speak of specimen and do not make this distinction; it therefore plays no role within the stipulations of this module.

The invariants (constraints) to be observed during implementation are shown on the profile pages under "Constraints". The mapping of the dataset elements to FHIR can be found on the [Logical Models](logical-models.html) page.

Examples:

* Tissue specimen: [MusterprobeGewebe](Specimen-MusterprobeGewebe.html)
* Fluid specimen: [MusterprobeFluessig](Specimen-MusterprobeFluessig.html)
* Aliquot group: [AliquotgruppeBuffyCoat](Specimen-AliquotgruppeBuffyCoat.html)
* Aliquot: [AliquotBuffyCoat2](Specimen-AliquotBuffyCoat2.html)
* Processed new aliquot group: [AliquotgruppeDNA](Specimen-AliquotgruppeDNA.html)

### Specimen (cell line/organoid)

Besides the biospecimen, the Specimen resource can also represent cell lines and organoids: [MII PR Biobank Zelllinie/Organoid](StructureDefinition-mii-pr-biobank-zellinie-organoid.html). In terms of the model, this is an extension of the biospecimen profile with specific fields via extensions and via observations referencing the specimen. Which extensions and/or observations are appropriate depends on the respective use case.

Example organoid: [OrganoidLunge](Specimen-OrganoidLunge.html)

Associated observation profiles: [Karyotype](StructureDefinition-mii-pr-biobank-observation-karyotyp.html), [Morphology](StructureDefinition-mii-pr-biobank-observation-morphologie.html), [Proliferation](StructureDefinition-mii-pr-biobank-observation-proliferation.html), [Growth type](StructureDefinition-mii-pr-biobank-observation-wachstumstyp.html), [Quality check](StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung.html), [DNA concentration](StructureDefinition-mii-pr-biobank-observation-dna-konzentration.html)

#### Mutations

For representing mutations found in a cell line/organoid, no dedicated profile was created. Instead, the corresponding profiles from the [module Molekulargenetischer Befundbericht](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Molekulargenetischer_Befundbericht_V2025/implementation-guides-ImplementationGuide-2025.x-DE-MIIIGModulMolGenDE-IGMIIKDSModulMolekulargenetischerBefundbericht.html) shall be used. Further important implementation notes can be found there. The *focus* field of the observations MUST link to the Specimen resource representing the cell line / organoid.

* Variant: `https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante`
* Genotype: `https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genotyp`
* Haplotype: `http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype`

#### Culture conditions

As the term culture conditions covers a great many different aspects, it was decided not to create a dedicated profile. However, the KDS team recommends modelling such information as an *Observation*, with the *Specimen* resource belonging to the cell line / organoid referenced in the *focus* attribute. Using the *code* and *value* entries, the desired information can then be stated e.g. via SNOMED CT or CLO. The KDS team welcomes feedback and implementations at the sites in order to be able to make more detailed proposals in the future.

#### Phenotype

For a cell line or organoid, a diagnosis / phenotype can be recorded with the [Diagnose extension](StructureDefinition-mii-ex-biobank-diagnose.html), as for a "normal" specimen. If a TNM is to be recorded, the [profile from the oncology module](https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie_V2025/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Klassifikation-Observation.html) shall be used; a [data-absent-reason extension](https://hl7.org/fhir/R4/extension-data-absent-reason.html) can be used on subject if any patient reference is missing.

<!-- DERIVED:bridge source=MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Index.page.md gate=B -->
> The following link list was newly written during the migration (bridging text to the profile pages).
{: .ig-highlight .ig-highlight-grey}

### Further profiles

* [Organization (collection/biobank)](StructureDefinition-mii-pr-biobank-organization.html) – representation of collection and biobank; domain explanation on the profile page
* [Substance (additive)](StructureDefinition-mii-pr-biobank-substance-additiv.html) – representation of additives
