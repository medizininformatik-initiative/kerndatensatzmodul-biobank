<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page extensions.md (de) -->

The extensions of this module, grouped by the profile in which they are used. The technical structure of each extension can be found on its artifact page.

### Extensions on the Specimen (biospecimen)

#### Specimen level

This extension expresses which specimen level this Specimen belongs to: [MII EX Biobank Probenebene](StructureDefinition-mii-ex-biobank-ebene.html)

#### Temperature conditions

This extension shall be used to state the temperature conditions (in °C) prevailing during processing or storage. Whenever possible, a value range including upper and lower bounds shall be given: [MII EX Biobank Temperaturbedingungen](StructureDefinition-mii-ex-biobank-temperaturbedingungen.html)

#### Cessation of blood supply

Time of cessation of the blood supply during collection. Needed e.g. for calculating cold and warm ischemia times: [MII EX Biobank Einstellung Blutversorgung](StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.html)

#### Managing organisation

The organisation managing the specimen shall be referenced with this extension. Enquiries about the specimens shall be possible via this link and the contact information stored in the Organization: [MII EX Biobank Verwaltende Organisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.html)

#### Diagnosis

This extension references a diagnosis belonging to the specimen. It is mainly intended for cases where an assignment via pathology report or laboratory report is not possible: [MII EX Biobank Diagnose](StructureDefinition-mii-ex-biobank-diagnose.html)

#### Number of aliquots

Number of aliquots when these are not modelled as separate FHIR resources: [MII EX Biobank Anzahl Aliquots](StructureDefinition-mii-ex-biobank-anzahl-aliquots.html)

### Extensions on the Organization (collection/biobank)

#### Contact role

This extension states the role of the contact person in the organisation managing the specimens, e.g. principal investigator, director, etc.: [MII EX Biobank KontaktRolle](StructureDefinition-mii-ex-biobank-kontaktrolle.html)

#### Collection description

This extension provides a free-text description of the collection/biobank that can be shown e.g. in a search. The extension comes from MIABIS on FHIR: [MIABIS Organization Description Extension](https://simplifier.net/resolve?canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension)

### Extensions on the cell line / organoid

#### Culture protocol

Reference to the document of the culture protocol applied when creating a cell line or organoid: [MII EX Biobank Kulturprotokoll](StructureDefinition-mii-ex-biobank-kulturprotokoll.html)

#### Modifications

Modifications performed: [MII EX Biobank Modifikationen](StructureDefinition-mii-ex-biobank-modifikationen.html)

#### Number of passages

Number of passages performed to create a cell line or organoid: [MII EX Biobank Anzahl Passagen](StructureDefinition-mii-ex-biobank-anzahl-passagen.html)

<!-- DERIVED:bridge source=MIIIGModulBiobank/TechnischeImplementierung/FHIR-Profile/Specimen/Extensions.page.md gate=B -->
> The introductory sentence and this section were newly written during the migration (bridging text; the R5 extension had no source page of its own).
{: .ig-highlight .ig-highlight-grey}

### Further extensions

* [MII EX Biobank Feature R5](StructureDefinition-mii-ex-biobank-feature-r5.html) – allows using the `feature` element from FHIR R5 in the Specimen
