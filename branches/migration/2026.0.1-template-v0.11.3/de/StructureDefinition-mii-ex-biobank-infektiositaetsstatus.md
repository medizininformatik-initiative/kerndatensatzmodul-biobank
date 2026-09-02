# Infektiositätsstatus - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Infektiositätsstatus**

## Extension: Infektiositätsstatus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_EX_Biobank_Infektiositaetsstatus |

Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-infektiositaetsstatus.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-biobank-infektiositaetsstatus.csv), [Excel](../StructureDefinition-mii-ex-biobank-infektiositaetsstatus.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-infektiositaetsstatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-infektiositaetsstatus",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_EX_Biobank_Infektiositaetsstatus",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Biobank_Infektiositaetsstatus"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "Infektiositätsstatus",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Biobank Infectiosity Status"
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
  "description" : "Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The extension specifies the infectiosity status of a specimen based on the biosafety level classification ranging from BSL-1 to BSL-4 or an indication that no infection risk is known."
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
      "short" : "Infektiositätsstatus",
      "definition" : "Extension zur Angabe des Infektiositätsstatus einer Probe anhand der Biosafety-Level-Einstufung (BSL-1 bis BSL-4, SNOMED CT) bzw. der Angabe, dass keine Infektionsgefahr bekannt ist."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Biosafety-Level (SNOMED CT) bzw. 'keine Infektionsgefahr bekannt'",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Biosafety level SNOMED CT or no known infection risk"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-biosafety-level"
      }
    }]
  }
}

```
