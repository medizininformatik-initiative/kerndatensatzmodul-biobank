# MII PR Biobank Substance Additiv - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Biobank Substance Additiv**

## Resource Profile: MII PR Biobank Substance Additiv 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance | *Version*:2026.0.1 |
| Active as of 2025-09-02 | *Computable Name*:MII_PR_Biobank_Substance_Additiv |

 
Representation of an additive that can be added to a specimen 

### Content

A Substance resource represents an additive.

### Examples

* Example: [Heparin](Substance-Heparin.md)

**Usages:**

* Refer to this Profile: [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)
* Examples for this Profile: [Substance/Heparin](Substance-Heparin.md)
* CapabilityStatements using this Profile: [MII CPS Biobank CapabilityStatement](CapabilityStatement-mii-cps-biobank-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-pr-biobank-substance-additiv.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-biobank-substance-additiv.csv), [Excel](../StructureDefinition-mii-pr-biobank-substance-additiv.xlsx), [Schematron](../StructureDefinition-mii-pr-biobank-substance-additiv.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-biobank-substance-additiv",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance",
  "version" : "2026.0.1",
  "name" : "MII_PR_Biobank_Substance_Additiv",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Biobank_Substance_Additive"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Biobank Substance Additiv",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Substance Additiv"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Substance Additive"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2025-09-02",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Abbildung eines Additives, das zu einer Probe hinzugefügt werden kann"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Representation of an additive that can be added to a specimen"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Substance",
      "path" : "Substance"
    },
    {
      "id" : "Substance.id",
      "path" : "Substance.id",
      "mustSupport" : true
    },
    {
      "id" : "Substance.meta",
      "path" : "Substance.meta",
      "mustSupport" : true
    },
    {
      "id" : "Substance.meta.source",
      "path" : "Substance.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Substance.meta.profile",
      "path" : "Substance.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Substance.category",
      "path" : "Substance.category",
      "mustSupport" : true
    },
    {
      "id" : "Substance.code",
      "path" : "Substance.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-substance-additive-sct"
      }
    },
    {
      "id" : "Substance.ingredient",
      "path" : "Substance.ingredient",
      "mustSupport" : true
    }]
  }
}

```
