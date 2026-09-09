# Capability Statements - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

To enable decentralised data analysis via the German Portal for Medical Research Data of the Medical Informatics Initiative, the [capabilities interaction](https://hl7.org/fhir/R4/capabilitystatement.html) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE-URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles (including version) and which search parameters are supported.

The following lists the content that MUST be stated in the CapabilityStatement. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance via [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CapabilityStatement/metadata`

Artifact page: [MII CPS Biobank CapabilityStatement](CapabilityStatement-mii-cps-biobank-capabilitystatement.md)

