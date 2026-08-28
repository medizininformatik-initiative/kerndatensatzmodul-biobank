# MII EX Biobank Temperaturbedingungen - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Biobank Temperaturbedingungen**

## Extension: MII EX Biobank Temperature Conditions 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen | *Version*:2026.0.1 |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Biobank_Temperaturbedingungen |

This extension should be used to specify the prevailing temperature conditions in °C during processing or storage. Where possible, a range including upper and lower limits should always be provided.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)
* Examples for this Extension: [Specimen/AliquotBuffyCoat1](Specimen-AliquotBuffyCoat1.md), [Specimen/AliquotBuffyCoat2](Specimen-AliquotBuffyCoat2.md), [Specimen/AliquotgruppeBuffyCoat](Specimen-AliquotgruppeBuffyCoat.md), [Specimen/AliquotgruppeDNA](Specimen-AliquotgruppeDNA.md)... Show 4 more, [Specimen/AliquotgruppePlasma](Specimen-AliquotgruppePlasma.md), [Specimen/MusterprobeFluessig](Specimen-MusterprobeFluessig.md), [Specimen/MusterprobeGewebe](Specimen-MusterprobeGewebe.md) and [Specimen/OrganoidLunge](Specimen-OrganoidLunge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-temperaturbedingungen.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-biobank-temperaturbedingungen.csv), [Excel](../StructureDefinition-mii-ex-biobank-temperaturbedingungen.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-temperaturbedingungen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-temperaturbedingungen",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
  "version" : "2026.0.1",
  "name" : "MII_EX_Biobank_Temperaturbedingungen",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Biobank_Temperature_Conditions"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Biobank Temperaturbedingungen",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Biobank Temperature Conditions"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-08-28T07:06:33+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "This extension should be used to specify the prevailing temperature conditions in °C during processing or storage. Where possible, a range including upper and lower limits should always be provided."
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
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Specimen.processing"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Biobank Temperaturbedingungen",
      "definition" : "Um zu einer Verabeitung oder Lagerung die jeweils herrschenden Temperaturbedingungen (in °C) anzugeben soll diese Extension verwendet werden. Dabei soll nach Möglichkeit immer ein Wertebereich inkl. oberer und unterer Grenze angegeben werden."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Extension.value[x].low",
      "path" : "Extension.value[x].low",
      "patternQuantity" : {
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "id" : "Extension.value[x].high",
      "path" : "Extension.value[x].high",
      "patternQuantity" : {
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    }]
  }
}

```
