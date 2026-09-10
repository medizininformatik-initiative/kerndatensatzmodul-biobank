<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-biobank-organization-intro.md (de) -->
### Content

An Organization resource represents a collection/biobank. This is a deliberately simple implementation that omits many aspects considered e.g. in MIABIS. When implementing, always check whether the [corresponding MIABIS on FHIR profiles](https://simplifier.net/guide/MIABIS-on-FHIR/Home/FHIR-Resources/Profiles/Core-components?version=current) can be implemented directly. MIABIS distinguishes between a biobank (**Biobank**) and a collection (**Collection**). Besides being represented as an Organization, the collection is also modelled as a *Group* from which the Specimen resources belonging to the collection are linked. In this KDS module the relation is, for simplicity, represented in the opposite direction via the *managing organization* extension. Both approaches can also be used at the same time, so that a FHIR implementation can conform to the KDS and MIABIS simultaneously.

### Examples

* Example biobank: [Biobank Musterstadt](Organization-BiobankMusterstadt.html)
* Example collection: [Mustersammlung](Organization-Mustersammlung.html)
