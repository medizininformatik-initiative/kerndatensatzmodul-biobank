# MII EX Biobank Zelllinien-Modifikation - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Biobank Zelllinien-Modifikation**

## Extension: MII EX Biobank Cell Line Modification 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2026-09-02 | *Computable Name*:MII_EX_Biobank_Modifikationen |

Extension for describing modifications to cell lines, including type of modification, target gene, and reference to the protocol.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Zellinie Organoid](StructureDefinition-mii-pr-biobank-zellinie-organoid.md)
* Examples for this Extension: [Specimen/OrganoidLunge](Specimen-OrganoidLunge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-modifikationen.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-biobank-modifikationen.csv), [Excel](../StructureDefinition-mii-ex-biobank-modifikationen.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-modifikationen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-modifikationen",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_EX_Biobank_Modifikationen",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Biobank_Cell_Line_Modification"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Biobank Zelllinien-Modifikation",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Biobank Cell Line Modification"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-02T09:37:04+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Erweiterung zur Beschreibung von Modifikationen an Zelllinien, einschließlich Art der Modifikation, Zielgen und Referenz zum Protokoll.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Extension for describing modifications to cell lines, including type of modification, target gene, and reference to the protocol."
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
    "expression" : "Specimen"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Biobank Zelllinien-Modifikation",
      "definition" : "Erweiterung zur Beschreibung von Modifikationen an Zelllinien, einschließlich Art der Modifikation, Zielgen und Referenz zum Protokoll."
    },
    {
      "id" : "Extension.extension:artDerModifikation",
      "path" : "Extension.extension",
      "sliceName" : "artDerModifikation",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:artDerModifikation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:artDerModifikation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "artDerModifikation"
    },
    {
      "id" : "Extension.extension:artDerModifikation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-cellline-modification-clo"
      }
    },
    {
      "id" : "Extension.extension:zielGen",
      "path" : "Extension.extension",
      "sliceName" : "zielGen",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:zielGen.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:zielGen.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "zielGen"
    },
    {
      "id" : "Extension.extension:zielGen.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "Extension.extension:zielGen.value[x].system",
      "path" : "Extension.extension.value[x].system",
      "patternUri" : "http://www.genenames.org"
    },
    {
      "id" : "Extension.extension:protokoll",
      "path" : "Extension.extension",
      "sliceName" : "protokoll",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:protokoll.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:protokoll.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "protokoll"
    },
    {
      "id" : "Extension.extension:protokoll.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
