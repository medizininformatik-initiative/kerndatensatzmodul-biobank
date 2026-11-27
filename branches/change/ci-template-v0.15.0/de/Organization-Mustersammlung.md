# Mustersammlung - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mustersammlung**

## Beispiel Organization: Mustersammlung

-------

**German**

-------

Profil: [MII PR Biobank Organization Sammlung Biobank](StructureDefinition-mii-pr-biobank-organization.md)

Mustersammlung

-------

| | |
| :--- | :--- |
| Part Of: | [Biobank Musterstadt (http://www.bbmri-eric.eu/#de-12345)](Organization-BiobankMusterstadt.md) |
| Research: | * Tina Musterfrau 
* [musterfrau@biobank.uk-musterstadt.de](mailto:musterfrau@biobank.uk-musterstadt.de)
* Musterweg 10 Musterstadt 00000 
 |
| [Description extension](https://simplifier.net/resolve?scope=eu.miabis.r4@1.3.0&canonical=https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension) | Sammlung mit im Rahmen der Versorgung gewonnenen Proben. |
| [Collection Design Extension](https://simplifier.net/resolve?scope=eu.miabis.r4@1.3.0&canonical=https://fhir.bbmri-eric.eu/StructureDefinition/miabis-collection-design-extension) | Longitudinal cohort |
| [Sample Collection Setting Extension](https://simplifier.net/resolve?scope=eu.miabis.r4@1.3.0&canonical=https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-collection-setting-extension) | Routine health care setting |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Mustersammlung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"]
  },
  "extension" : [{
    "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension",
    "valueString" : "Sammlung mit im Rahmen der Versorgung gewonnenen Proben."
  },
  {
    "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-sample-collection-setting-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-sample-collection-setting-cs",
        "code" : "RoutineHealthCare",
        "display" : "Routine health care setting"
      }]
    }
  },
  {
    "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-collection-design-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.bbmri-eric.eu/CodeSystem/miabis-collection-design-cs",
        "code" : "LongitudinalCohort",
        "display" : "Longitudinal cohort"
      }]
    }
  }],
  "name" : "Mustersammlung",
  "partOf" : {
    "reference" : "Organization/BiobankMusterstadt"
  },
  "contact" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle",
      "valueString" : "Forschungskoordinatorin"
    }],
    "purpose" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
        "code" : "RESEARCH"
      }]
    },
    "name" : {
      "family" : "Musterfrau",
      "given" : ["Tina"],
      "prefix" : ["Dr."]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "musterfrau@biobank.uk-musterstadt.de"
    }],
    "address" : {
      "line" : ["Musterweg 10"],
      "city" : "Musterstadt",
      "postalCode" : "00000"
    }
  }]
}

```
