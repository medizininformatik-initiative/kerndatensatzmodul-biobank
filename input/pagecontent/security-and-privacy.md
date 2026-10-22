<!-- markdownlint-disable MD041 -->
<!-- English rendering of input/pagecontent/security-and-privacy.md.
     Structured in the TF-KDS-agreed THREE stages: (1) the overarching data
     protection concept, (2) DIMP in the data portal, (3) the
     module-specific aspects. Stages 1 and 2 are static overarching content —
     keep them; stage 3 is where your module writes. Stage 3's CONTENT is
     optional: a module with no aspects of its own adopts the default text in
     the section. (The scaffold's illustrative Person example box was removed
     for the release, per convention check M11.)
     German mirror: input/translations/de/pagecontent/security-and-privacy.md —
     both files must say the same thing. -->


This section addresses security and privacy experts. General requirements are in
the FHIR core specification —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the
[security checklist](https://build.fhir.org/security.html). This page does not
repeat them; it links the overarching data protection framework and states what is
**specific to this module**.

#### 1. The overarching data protection concept

The
[overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept)
governs how patient data may be processed for research across the network of
Data Integration Centers: it
covers the legal basis (the MII Broad Consent), the roles of the Data
Integration Centers and Use & Access Committees, and the cross-site application
scenarios (feasibility queries, distributed analyses, data and biosample
provision). Everything this module specifies operates inside that framework —
this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is
specified by
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in the data portal documentation: direct identifiers are removed,
data elements not needed by the approved project are dropped, and identifying
values are replaced by project-specific pseudonyms (FHIR Pseudonymizer
configuration). The profiles of this module describe data *before* DIMP is
applied; which elements survive a concrete data release is decided per project
by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

Biospecimen data are not clinical data about a person, but they are linked to
one: every `Specimen` references its donor via `Specimen.subject`, and the
diagnosis extension links a specimen to a condition. Under DIMP the donor
reference is pseudonymised like every other patient reference; the specimen
identifiers (`Specimen.identifier`, `Specimen.accessionIdentifier`) are
site-internal business identifiers and are replaced or dropped per project
configuration, because an accession number can identify a person at the
originating site.

The collection and biobank data (`Organization` profile, contact extension)
describe institutions and functional contacts, not patients. Personal contact
data of named persons (`Organization.contact.name`, telecom) SHOULD only be
published where the person acts in an institutional role and has agreed to it;
functional addresses are preferred.

Specimens themselves are physical objects outside the scope of FHIR data
protection; their release follows the use-and-access process of the
overarching data protection concept and the biobank's own governance.
