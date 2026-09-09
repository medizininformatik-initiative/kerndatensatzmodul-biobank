# MII PR Biobank Specimen Bioprobe Core - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Biobank Specimen Bioprobe Core**

## Ressourcenprofil: MII PR Biobank Specimen Bioprobe Core 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_PR_Biobank_Specimen_Bioprobe_Core |

 
Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab. 

**Usages:**

* Derived from this Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-pr-biobank-specimen-core.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Specimen](http://hl7.org/fhir/R4/specimen.html) 

** Summary **

Mandatory: 9 elements(31 nested mandatory elements)
 Must-Support: 63 elements

**Structures**

This structure refers to these other structures:

* [MII PR Biobank Substance Additiv (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)](StructureDefinition-mii-pr-biobank-substance-additiv.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature](StructureDefinition-mii-ex-biobank-feature-r5.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene](StructureDefinition-mii-ex-biobank-ebene.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus](StructureDefinition-mii-ex-biobank-infektiositaetsstatus.md)
* [http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus](http://hl7.eu/fhir/laboratory/2.0.0/StructureDefinition-specimen-focus.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung](StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.md)
* [http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-iso21090-PQ-translation.html)
* [http://hl7.org/fhir/StructureDefinition/quantity-precision](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-quantity-precision.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen](StructureDefinition-mii-ex-biobank-temperaturbedingungen.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Specimen.type.coding
* The element 1 is sliced based on the value of Specimen.collection.bodySite.coding
* The element 1 is sliced based on the value of Specimen.collection.fastingStatus[x]
* The element 1 is sliced based on the value of Specimen.processing
* The element 1 is sliced based on the value of Specimen.processing.procedure.coding
* The element 1 is sliced based on the value of Specimen.processing.time[x]
* The element 1 is sliced based on the value of Specimen.container.additive[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Specimen](http://hl7.org/fhir/R4/specimen.html) 

** Summary **

Mandatory: 9 elements(31 nested mandatory elements)
 Must-Support: 63 elements

**Structures**

This structure refers to these other structures:

* [MII PR Biobank Substance Additiv (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)](StructureDefinition-mii-pr-biobank-substance-additiv.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature](StructureDefinition-mii-ex-biobank-feature-r5.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene](StructureDefinition-mii-ex-biobank-ebene.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus](StructureDefinition-mii-ex-biobank-infektiositaetsstatus.md)
* [http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus](http://hl7.eu/fhir/laboratory/2.0.0/StructureDefinition-specimen-focus.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung](StructureDefinition-mii-ex-biobank-einstellung-blutversorgung.md)
* [http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-iso21090-PQ-translation.html)
* [http://hl7.org/fhir/StructureDefinition/quantity-precision](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-quantity-precision.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen](StructureDefinition-mii-ex-biobank-temperaturbedingungen.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Specimen.type.coding
* The element 1 is sliced based on the value of Specimen.collection.bodySite.coding
* The element 1 is sliced based on the value of Specimen.collection.fastingStatus[x]
* The element 1 is sliced based on the value of Specimen.processing
* The element 1 is sliced based on the value of Specimen.processing.procedure.coding
* The element 1 is sliced based on the value of Specimen.processing.time[x]
* The element 1 is sliced based on the value of Specimen.container.additive[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-biobank-specimen-core.csv), [Excel](../StructureDefinition-mii-pr-biobank-specimen-core.xlsx), [Schematron](../StructureDefinition-mii-pr-biobank-specimen-core.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-biobank-specimen-core",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_PR_Biobank_Specimen_Bioprobe_Core",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Biobank_Specimen_Bioprobe_Core"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Biobank Specimen Bioprobe Core",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Specimen Bioprobe Core"
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
        "valueString" : "Specimen Bioprobe Core"
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
  "description" : "Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Basisiprofil zur Abbildung einer MII Bioprobe. Nicht zur direkten Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem Profil ab."
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
        "valueString" : "Base profile for representing a MII bioprobe. Not intended for direct implementation, modules derive their own profiles from this profile as needed."
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.id",
      "path" : "Specimen.id",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.meta",
      "path" : "Specimen.meta",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.meta.source",
      "path" : "Specimen.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.meta.profile",
      "path" : "Specimen.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.extension",
      "path" : "Specimen.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Specimen.extension:feature",
      "path" : "Specimen.extension",
      "sliceName" : "feature",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"]
      }]
    },
    {
      "id" : "Specimen.extension:probenebene",
      "path" : "Specimen.extension",
      "sliceName" : "probenebene",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.extension:infektiositaetsstatus",
      "path" : "Specimen.extension",
      "sliceName" : "infektiositaetsstatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.extension:focus",
      "path" : "Specimen.extension",
      "sliceName" : "focus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Proben-ID"
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
            "valueString" : "Specimen ID"
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
            "valueString" : "Einrichtungsinterner Identifier der Probe."
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
            "valueString" : "Internal identifier of the specimen at the institution."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.status",
      "path" : "Specimen.status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verfügbarkeitsstatus"
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
            "valueString" : "Availability status"
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
            "valueString" : "Der Status der Probe in Bezug auf die Verfügbarkeit für Forschung."
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
            "valueString" : "The status of the specimen in terms of its availability for research."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenart"
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
            "valueString" : "Specimen type"
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
            "valueString" : "Die Art der Probe, codiert in SNOMED CT."
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
            "valueString" : "The type of the specimen, encoded as SNOMED CT code."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type.coding",
      "path" : "Specimen.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Specimen.type.coding.system",
      "path" : "Specimen.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type.coding.code",
      "path" : "Specimen.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type.coding:sct",
      "path" : "Specimen.type.coding",
      "sliceName" : "sct",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-probenart-sct"
      }
    },
    {
      "id" : "Specimen.type.coding:sct.system",
      "path" : "Specimen.type.coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Patient:in"
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
            "valueString" : "Patient"
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
            "valueString" : "Verweis auf die Person, von der die Probe stammt."
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
            "valueString" : "Reference to the person from whom the specimen was collected."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.receivedTime",
      "path" : "Specimen.receivedTime",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ist gewonnen aus"
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
            "valueString" : "Derived from"
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
            "valueString" : "Referenz auf eine übergeordnete Probe, aus der diese Probe gewonnen wurde."
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
            "valueString" : "Reference to a parent specimen from which this specimen was derived."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Entnahme-ID"
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
            "valueString" : "Collection ID"
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
            "valueString" : "Der Identifier der Probenentnahme."
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
            "valueString" : "The identifier for the specimen collection."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenentnahme"
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
            "valueString" : "Specimen sampling"
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
            "valueString" : "Informationen über den Prozess der Probenentnahme, einschließlich Entnahmezeitpunkt und -stelle."
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
            "valueString" : "Information about the specimen collection process, including collection time and site."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.extension",
      "path" : "Specimen.collection.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Specimen.collection.extension:einstellungBlutversorgung",
      "path" : "Specimen.collection.extension",
      "sliceName" : "einstellungBlutversorgung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Entnahmezeitpunkt"
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
            "valueString" : "Sampling time"
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
            "valueString" : "Der Zeitpunkt, zu dem die Probe entnommen oder gesammelt wurde."
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
            "valueString" : "The time when the specimen was collected or obtained."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity",
      "path" : "Specimen.collection.quantity",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenmenge"
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
            "valueString" : "Specimen quantity"
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
            "valueString" : "Die Menge des gesammelten Materials."
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
            "valueString" : "The amount of material collected."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity.extension:pqTranslation",
      "path" : "Specimen.collection.quantity.extension",
      "sliceName" : "pqTranslation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation"]
      }]
    },
    {
      "id" : "Specimen.collection.quantity.extension:quantityPrecision",
      "path" : "Specimen.collection.quantity.extension",
      "sliceName" : "quantityPrecision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/quantity-precision"]
      }]
    },
    {
      "id" : "Specimen.collection.quantity.value",
      "path" : "Specimen.collection.quantity.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity.unit",
      "path" : "Specimen.collection.quantity.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity.system",
      "path" : "Specimen.collection.quantity.system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity.code",
      "path" : "Specimen.collection.quantity.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anatomische Lokalisation"
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
            "valueString" : "anatomical localisation"
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
            "valueString" : "Die Körperstelle, von der die Probe entnommen wurde."
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
            "valueString" : "The body site from which the specimen was collected."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "constraint" : [{
        "key" : "mii-bb-1",
        "severity" : "error",
        "human" : "Bei der Angabe der Entnahmestelle muss ein ICD-O-3 Topographiecode oder ein SNOMED CT Code angegeben werden.",
        "expression" : "coding.where(system = 'http://snomed.info/sct' or system = 'http://terminology.hl7.org/CodeSystem/icd-o-3').exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite.coding",
      "path" : "Specimen.collection.bodySite.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Specimen.collection.bodySite.coding.system",
      "path" : "Specimen.collection.bodySite.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite.coding.code",
      "path" : "Specimen.collection.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite.coding:sct",
      "path" : "Specimen.collection.bodySite.coding",
      "sliceName" : "sct",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-body-structures-sct"
      }
    },
    {
      "id" : "Specimen.collection.bodySite.coding:sct.system",
      "path" : "Specimen.collection.bodySite.coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Specimen.collection.bodySite.coding:icd-o-3",
      "path" : "Specimen.collection.bodySite.coding",
      "sliceName" : "icd-o-3",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      }
    },
    {
      "id" : "Specimen.collection.bodySite.coding:icd-o-3.system",
      "path" : "Specimen.collection.bodySite.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]",
      "path" : "Specimen.collection.fastingStatus[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Nüchternstatus"
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
            "valueString" : "Fasting status"
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
            "valueString" : "Der Nüchternstatus der Person zum Zeitpunkt der Probenentnahme."
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
            "valueString" : "The fasting status of the person at the time the specimen was collected."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept",
      "path" : "Specimen.collection.fastingStatus[x]",
      "sliceName" : "fastingStatusCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0916"
      }
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.system",
      "path" : "Specimen.collection.fastingStatus[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code",
      "path" : "Specimen.collection.fastingStatus[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.procedure"
        }],
        "rules" : "open"
      },
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenverarbeitung"
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
            "valueString" : "Specimen processing"
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
            "valueString" : "Details zur Verarbeitung der Probe, einschließlich Prozeduren und Verarbeitungszeitraum."
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
            "valueString" : "Details about the processing of the specimen, including procedures and processing period."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.extension",
      "path" : "Specimen.processing.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Specimen.processing.extension:temperaturbedingungen",
      "path" : "Specimen.processing.extension",
      "sliceName" : "temperaturbedingungen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.procedure",
      "path" : "Specimen.processing.procedure",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verarbeitungstyp"
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
            "valueString" : "Processing procedure"
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
            "valueString" : "Die angewendete Prozedur zur Verarbeitung der Probe, z.B. Zentrifugation."
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
            "valueString" : "The procedure applied to process the specimen, e.g. centrifugation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.procedure.coding",
      "path" : "Specimen.processing.procedure.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Specimen.processing.procedure.coding.system",
      "path" : "Specimen.processing.procedure.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.procedure.coding.code",
      "path" : "Specimen.processing.procedure.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.procedure.coding:sct",
      "path" : "Specimen.processing.procedure.coding",
      "sliceName" : "sct",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-laboratory-procedure-sct"
      }
    },
    {
      "id" : "Specimen.processing.procedure.coding:sct.system",
      "path" : "Specimen.processing.procedure.coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Specimen.processing.additive",
      "path" : "Specimen.processing.additive",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Additive bei Verarbeitung"
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
            "valueString" : "Processing additives"
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
            "valueString" : "Zusatzstoffe, die während der Probenverarbeitung verwendet wurden, z.B. Fixierungsmittel."
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
            "valueString" : "Additives used during the specimen processing, e.g. fixatives."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.time[x]",
      "path" : "Specimen.processing.time[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.time[x]:timePeriod",
      "path" : "Specimen.processing.time[x]",
      "sliceName" : "timePeriod",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verarbeitungszeitraum"
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
            "valueString" : "Processing period"
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
            "valueString" : "Der Zeitraum, in dem die Probe verarbeitet wurde."
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
            "valueString" : "The time period during which the specimen was processed."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.time[x]:timePeriod.start",
      "path" : "Specimen.processing.time[x].start",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing.time[x]:timePeriod.end",
      "path" : "Specimen.processing.time[x].end",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing:lagerprozess",
      "path" : "Specimen.processing",
      "sliceName" : "lagerprozess",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing:lagerprozess.extension",
      "path" : "Specimen.processing.extension",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing:lagerprozess.extension:temperaturbedingungen",
      "path" : "Specimen.processing.extension",
      "sliceName" : "temperaturbedingungen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing:lagerprozess.procedure",
      "path" : "Specimen.processing.procedure",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1186936003"
        }]
      }
    },
    {
      "id" : "Specimen.processing:lagerprozess.time[x]",
      "path" : "Specimen.processing.time[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Specimen.processing:lagerprozess.time[x]:timePeriod",
      "path" : "Specimen.processing.time[x]",
      "sliceName" : "timePeriod",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Specimen.processing:lagerprozess.time[x]:timePeriod.start",
      "path" : "Specimen.processing.time[x].start",
      "min" : 1
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenbehältnis"
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
            "valueString" : "Specimen container"
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
            "valueString" : "Informationen über den Behälter, in dem die Probe aufbewahrt wird."
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
            "valueString" : "Information about the container in which the specimen is stored."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.type",
      "path" : "Specimen.container.type",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Containertyp"
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
            "valueString" : "Container type"
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
            "valueString" : "Der Typ des Probencontainers, der für diese Probe verwendet wurde."
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
            "valueString" : "The type of container used for this specimen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-containertyp-sct"
      }
    },
    {
      "id" : "Specimen.container.type.coding.system",
      "path" : "Specimen.container.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.type.coding.code",
      "path" : "Specimen.container.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.capacity",
      "path" : "Specimen.container.capacity",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Containerkapazität"
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
            "valueString" : "Capacity"
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
            "valueString" : "Die maximale Kapazität des Containers, der für die Probe verwendet wurde."
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
            "valueString" : "The maximum capacity of the container used for the specimen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.capacity.value",
      "path" : "Specimen.container.capacity.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.capacity.unit",
      "path" : "Specimen.container.capacity.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.capacity.system",
      "path" : "Specimen.container.capacity.system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.capacity.code",
      "path" : "Specimen.container.capacity.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity",
      "path" : "Specimen.container.specimenQuantity",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenmenge"
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
            "valueString" : "Specimen quantity"
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
            "valueString" : "Die Menge des vorhandenen Materials."
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
            "valueString" : "The amount of material available."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity.value",
      "path" : "Specimen.container.specimenQuantity.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity.unit",
      "path" : "Specimen.container.specimenQuantity.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity.system",
      "path" : "Specimen.container.specimenQuantity.system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.specimenQuantity.code",
      "path" : "Specimen.container.specimenQuantity.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.additive[x]",
      "path" : "Specimen.container.additive[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Additiv"
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
            "valueString" : "Additives"
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
            "valueString" : "Zusatzstoffe, die im Probenbehälter enthalten sind z.B. wie Konservierungsmittel."
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
            "valueString" : "Additives contained in the specimen container e.g. preservatives."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container.additive[x]:additiveReference",
      "path" : "Specimen.container.additive[x]",
      "sliceName" : "additiveReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Specimen.note",
      "path" : "Specimen.note",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Projektnutzung"
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
            "valueString" : "Project usage"
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
            "valueString" : "Freitextangabe zur Verwendung der Probe in spezifischen Projekten."
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
            "valueString" : "Free-text information about the use of the specimen in specific projects."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    }]
  }
}

```
