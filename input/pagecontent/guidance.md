<!-- markdownlint-disable MD041 -->

<!-- DERIVED:stand-in source=MIIIGModulBiobank/AnwendungsfaelleInformationsmodell/Index.page.md gate=B -->

This page describes the module's application scenarios; the subpages cover individual aspects in more depth:

* [Guidance for Researchers](researcher-guidance.html) – feasibility and specimen quality from the researcher's perspective
* [Guidance for Implementers](implementer-guidance.html) – context within the overall project and references (SPREC, MIABIS, BBMRI-ERIC, GBN)
* [Datasets and Descriptions](logical-models.html) – the module's dataset as a logical model with FHIR mapping
* [UML Diagrams](uml-diagrams.html) – the information model as a UML class diagram
* [Glossary](glossary.html) – term definitions (primary specimen, aliquot group, aliquot, …)

### Application scenarios of the module

#### Specimen search

In a federated network of heterogeneous biobanks at different university sites throughout Germany, this module enables data harmonisation with as little loss of local information as possible and enrichment of the specimens by adding further clinical parameters. Established applications of this harmonisation that allow researchers to search for comparable biospecimens across Germany are the [Sample Locator](https://samplelocator.bbmri.de/) and the [German Portal for Medical Research Data](https://forschen-fuer-gesundheit.de/). They allow researchers to formulate queries centrally and receive answers from all participating sites.

#### Considering specimen quality in analyses

To obtain reproducible results it is necessary to use biospecimens with comparable quality parameters, such as delay times (ischemia), storage cycles, processing steps, etc. The module supports biomedical research by making such parameters representable.
