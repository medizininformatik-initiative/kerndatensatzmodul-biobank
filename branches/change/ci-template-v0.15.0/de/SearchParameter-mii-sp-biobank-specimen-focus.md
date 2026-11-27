# mii-sp-biobank-specimen-focus - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-biobank-specimen-focus**

## SearchParameter: mii-sp-biobank-specimen-focus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-focus | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_SP_Biobank_Specimen_Focus |

 
Suchparameter für die Specimen-Focus-Extension nach der referenzierten Fokus-Ressource 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-biobank-specimen-focus",
  "meta" : {
    "extension" : [{
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.biobank"
      },
      {
        "url" : "version",
        "valueString" : "2027.0.0-ballot"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-pr-meta-searchparameter"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/SearchParameter/mii-sp-biobank-specimen-focus",
  "version" : "2027.0.0-ballot",
  "name" : "MII_SP_Biobank_Specimen_Focus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Suchparameter für die Specimen-Focus-Extension nach der referenzierten Fokus-Ressource",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "focus",
  "base" : ["Specimen"],
  "type" : "reference",
  "expression" : "Specimen.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus').value.as(Reference)"
}

```
