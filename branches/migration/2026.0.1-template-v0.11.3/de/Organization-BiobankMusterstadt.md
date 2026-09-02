# Biobank Musterstadt - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Biobank Musterstadt**

## Beispiel Organization: Biobank Musterstadt

-------

**German**

-------

Profile: [MII PR Biobank Organization Sammlung Biobank](StructureDefinition-mii-pr-biobank-organization.md)

**Description extension**: Biobank des Krankenhauses Musterstadt.

**identifier**: `http://www.bbmri-eric.eu/`/de-12345

**name**: Biobank Musterstadt

### Contacts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Purpose** | **Name** | **Telecom** | **Address** |
| * |  | Research | Max Mustermann | [mustermann@biobank.uk-musterstadt.de](mailto:mustermann@biobank.uk-musterstadt.de) | Musterstrasse 3 Musterstadt 00000 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "BiobankMusterstadt",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"]
  },
  "extension" : [{
    "url" : "https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension",
    "valueString" : "Biobank des Krankenhauses Musterstadt."
  }],
  "identifier" : [{
    "system" : "http://www.bbmri-eric.eu/",
    "value" : "de-12345"
  }],
  "name" : "Biobank Musterstadt",
  "contact" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle",
      "valueString" : "Direktor"
    }],
    "purpose" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
        "code" : "RESEARCH"
      }]
    },
    "name" : {
      "family" : "Mustermann",
      "given" : ["Max"],
      "prefix" : ["Prof."]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "mustermann@biobank.uk-musterstadt.de"
    }],
    "address" : {
      "line" : ["Musterstrasse 3"],
      "city" : "Musterstadt",
      "postalCode" : "00000"
    }
  }]
}

```
