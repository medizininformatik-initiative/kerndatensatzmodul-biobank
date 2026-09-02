<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page changes.md (de) -->

### Version 2027.0.0-ballot.rc2

Fix (package repair, content as rc1):

* Package rc1 shipped empty snapshots (Specimen/SpecimenCore) and no THO pin — rebuilt with correct resolution
* `caseSensitive = true` for both code systems
* Corrected CLO:0037375 display ("derives from cell with knockout gene")

### Version 2027.0.0-ballot.rc1

Feat:

* Added an extension for Specimen to state the infectiosity status
* Added the Specimen.focus extension from the EU Lab IG

### Version 2026.0.1

Fix:

* Fixed a problem with the cardinality of the extensions in `Specimen.processing`

### Version 2026.0.0

Implementation of the ballot comments:

* `collection.method` MS
* `container 1..`
* MS and 1..1 now consistent and, for all codings/quantities, applied to `system` and `code`
* Several slicing fixes

Search parameters now live in the meta package.

### Version 2026.0.0-ballot

The new version of the KDS module Biobank / biospecimen data adds several elements to the Specimen. In particular, aspects of the MIABIS on FHIR modelling were adopted (initially optional) to create compatibility. Also influenced by MIABIS on FHIR, the collection/biobank profile changed: among other things, extensions previously defined within the KDS module were replaced by MIABIS extensions.
At the specimen level, a new profile for modelling cell lines/organoids with the corresponding observations was created. In addition, various changes were made to the terminology resources, mainly to ensure compatibility with the latest SPREC version (4.0). Furthermore, an extension was introduced to mark the specimen level, and definitions for the terms used there were developed.
