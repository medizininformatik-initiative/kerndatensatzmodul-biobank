# MII EX Biobank Einstellung Blutversorgung - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Biobank Einstellung Blutversorgung**

## Extension: MII EX Biobank Blood Supply Stop 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2026-09-02 | *Computable Name*:MII_EX_Biobank_Einstellung_Blutversorgung |

Time of blood supply cessation during collection. Used for calculating cold and warm ischemia times.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)
* Examples for this Extension: [Specimen/MusterprobeGewebe](Specimen-MusterprobeGewebe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.csv), [Excel](../StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-einstellung-blutversorgung",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_EX_Biobank_Einstellung_Blutversorgung",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Biobank_Blood_Supply_Stop"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Biobank Einstellung Blutversorgung",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Biobank Blood Supply Stop"
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
  "description" : "Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warem Ischämiezeiten benötigt.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Time of blood supply cessation during collection. Used for calculating cold and warm ischemia times."
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
    "expression" : "Specimen.collection"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Biobank Einstellung Blutversorgung",
      "definition" : "Zeitpunkt der Einstellung der Bluversorgung während der Entnahme. Wird z.B. für die Berechnung der kalten bzw. warem Ischämiezeiten benötigt."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
