# Mustersammlung - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mustersammlung**

## Beispiel Organization: Mustersammlung

-------

**German**

-------

Profile: [MII PR Biobank Organization Sammlung Biobank](StructureDefinition-mii-pr-biobank-organization.md)

**Description extension**: Sammlung mit im Rahmen der Versorgung gewonnenen Proben.

**Sample Collection Setting Extension**: Routine health care setting

**Collection Design Extension**: Longitudinal cohort

**name**: Mustersammlung

**partOf**: [Organization Biobank Musterstadt](Organization-BiobankMusterstadt.md)

### Contacts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Purpose** | **Name** | **Telecom** | **Address** |
| * |  | Research | Tina Musterfrau | [musterfrau@biobank.uk-musterstadt.de](mailto:musterfrau@biobank.uk-musterstadt.de) | Musterweg 10 Musterstadt 00000 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Mustersammlung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"]
  },
  "extension" : [{
    "url" : "https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension",
    "valueString" : "Sammlung mit im Rahmen der Versorgung gewonnenen Proben."
  },
  {
    "url" : "https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-sample-collection-setting-cs",
        "code" : "RoutineHealthCare",
        "display" : "Routine health care setting"
      }]
    }
  },
  {
    "url" : "https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-collection-design-cs",
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
