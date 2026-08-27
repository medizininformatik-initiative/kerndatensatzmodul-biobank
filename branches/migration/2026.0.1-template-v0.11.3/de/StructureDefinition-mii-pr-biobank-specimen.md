# MII PR Biobank Specimen Bioprobe - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Biobank Specimen Bioprobe**

## Ressourcenprofil: MII PR Biobank Specimen Bioprobe 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen | *Version*:2026.0.1 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_PR_Biobank_Specimen_Bioprobe |

 
Abbildung einer MII Bioprobe 

**Usages:**

* Derived from this Profile: [MII PR Biobank Specimen Zellinie Organoid](StructureDefinition-mii-pr-biobank-zellinie-organoid.md)
* Examples for this Profile: [Specimen/AliquotBuffyCoat1](Specimen-AliquotBuffyCoat1.md), [Specimen/AliquotBuffyCoat2](Specimen-AliquotBuffyCoat2.md), [Specimen/AliquotgruppeBuffyCoat](Specimen-AliquotgruppeBuffyCoat.md), [Specimen/AliquotgruppeDNA](Specimen-AliquotgruppeDNA.md)... Show 3 more, [Specimen/AliquotgruppePlasma](Specimen-AliquotgruppePlasma.md), [Specimen/MusterprobeFluessig](Specimen-MusterprobeFluessig.md) and [Specimen/MusterprobeGewebe](Specimen-MusterprobeGewebe.md)
* CapabilityStatements using this Profile: [MII CPS Biobank CapabilityStatement](CapabilityStatement-mii-cps-biobank-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-pr-biobank-specimen.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](StructureDefinition-mii-pr-biobank-specimen-core.md) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](StructureDefinition-mii-pr-biobank-specimen-core.md) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 10 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose](StructureDefinition-mii-ex-biobank-diagnose.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots](StructureDefinition-mii-ex-biobank-anzahl-aliquots.md)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](StructureDefinition-mii-pr-biobank-specimen-core.md) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](StructureDefinition-mii-pr-biobank-specimen-core.md) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 10 elements

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose](StructureDefinition-mii-ex-biobank-diagnose.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots](StructureDefinition-mii-ex-biobank-anzahl-aliquots.md)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-biobank-specimen.csv), [Excel](../StructureDefinition-mii-pr-biobank-specimen.xlsx), [Schematron](../StructureDefinition-mii-pr-biobank-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-biobank-specimen",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen",
  "version" : "2026.0.1",
  "name" : "MII_PR_Biobank_Specimen_Bioprobe",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Biobank_Specimen_Bioprobe"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Biobank Specimen Bioprobe",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Specimen Bioprobe"
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
        "valueString" : "Specimen Bioprobe"
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
  "description" : "Abbildung einer MII Bioprobe",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Abbildung einer MII Bioprobe"
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
        "valueString" : "Representation of a MII bioprobe"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.extension:festgestellteDiagnose",
      "path" : "Specimen.extension",
      "sliceName" : "festgestellteDiagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Festgestellte Diagnose"
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
            "valueString" : "Diagnosed condition"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf eine Diagnose, für die Material in der Probe enthalten ist."
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
            "valueString" : "Reference to a diagnosis for which material is present in the specimen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.extension:gehoertZu",
      "path" : "Specimen.extension",
      "sliceName" : "gehoertZu",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verwaltende Organisation"
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
            "valueString" : "Managing organization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zuordnung der Probe zu einer Sammlung oder Biobank, die für die Verwaltung verantwortlich ist."
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
            "valueString" : "Assignment of the specimen to a collection or biobank responsible for its management."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.extension:anzahlAliquots",
      "path" : "Specimen.extension",
      "sliceName" : "anzahlAliquots",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type.coding:miabis-type",
      "path" : "Specimen.type.coding",
      "sliceName" : "miabis-type",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.bbmri-eric.eu/fhir/ValueSet/miabis-detailed-sample-type-vs"
      }
    },
    {
      "id" : "Specimen.type.coding:miabis-type.system",
      "path" : "Specimen.type.coding.system",
      "patternUri" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs"
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method.coding",
      "path" : "Specimen.collection.method.coding",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method.coding.system",
      "path" : "Specimen.collection.method.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method.coding.code",
      "path" : "Specimen.collection.method.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing"
    },
    {
      "id" : "Specimen.processing.extension:temperature-miabis",
      "path" : "Specimen.processing.extension",
      "sliceName" : "temperature-miabis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "min" : 1
    },
    {
      "id" : "Specimen.container.type.coding",
      "path" : "Specimen.container.type.coding",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
