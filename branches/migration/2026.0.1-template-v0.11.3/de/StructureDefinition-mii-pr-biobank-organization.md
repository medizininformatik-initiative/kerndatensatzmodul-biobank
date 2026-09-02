# MII PR Biobank Organization Sammlung Biobank - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Biobank Organization Sammlung Biobank**

## Ressourcenprofil: MII PR Biobank Organization Sammlung Biobank 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_PR_Biobank_Organization_Sammlung_Biobank |

 
Darstellung der organisatorischen Daten einer Probensammlung oder Biobank. 

### Inhalt

Mittels einer Organization wird eine Sammlung/Biobank abgebildet. Dies ist eine sehr einfache Umsetzung, die viele Aspekte, die z.B. in MIABIS berücksichtigt werden, unterschlägt. Bei einer Umsetzung sollte immer geprüft werden, ob direkt eine Implementierung der [entsprechenden MIABIS on FHIR Profile](https://simplifier.net/guide/MIABIS-on-FHIR/Home/FHIR-Resources/Profiles/Core-components?version=current) erfolgen kann. Dort wird zwischen Biobank (**Biobank**) und Sammlung (**Collection**) unterschieden. Die Collection wird neben der Umsetzung als Organization auch als **Group** modelliert, von der aus die zur Sammlung gehörenden Specimen-Ressourcen verlinkt werden. In diesem KDS-Modul wird die Relation der Einfachheit halber umgekehrt über die **gehört zu**-Extension abgebildet. Diese beiden Ansätze können aber auch gleichzeitig verwendet werden, sodass eine FHIR-Implementierung gleichzeitig KDS- und MIABIS-konform sein kann.

### Beispiele

* Beispiel Biobank: [Biobank Musterstadt](Organization-BiobankMusterstadt.md)
* Beispiel Sammlung: [Mustersammlung](Organization-Mustersammlung.md)

**Usages:**

* Refer to this Profile: [MII EX Biobank Verwaltende Organisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md)
* Examples for this Profile: [Biobank Musterstadt](Organization-BiobankMusterstadt.md) and [Mustersammlung](Organization-Mustersammlung.md)
* CapabilityStatements using this Profile: [MII CPS Biobank CapabilityStatement](CapabilityStatement-mii-cps-biobank-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-pr-biobank-organization.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

** Summary **

Mandatory: 8 elements(2 nested mandatory elements)
 Must-Support: 18 elements

**Structures**

This structure refers to these other structures:

* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Extensions**

This structure refers to these extensions:

* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle](StructureDefinition-mii-ex-biobank-kontaktrolle.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.contact

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Organization](http://hl7.org/fhir/R4/organization.html) 

** Summary **

Mandatory: 8 elements(2 nested mandatory elements)
 Must-Support: 18 elements

**Structures**

This structure refers to these other structures:

* [Adresse, deutsches Basisprofil (http://fhir.de/StructureDefinition/address-de-basis)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/address-de-basis)

**Extensions**

This structure refers to these extensions:

* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension)
* [https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension](https://simplifier.net/resolve?scope=eu.miabis.r4@0.2.0&canonical=https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle](StructureDefinition-mii-ex-biobank-kontaktrolle.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier
* The element 1 is sliced based on the value of Organization.contact

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-biobank-organization.csv), [Excel](../StructureDefinition-mii-pr-biobank-organization.xlsx), [Schematron](../StructureDefinition-mii-pr-biobank-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-biobank-organization",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_PR_Biobank_Organization_Sammlung_Biobank",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Biobank_Organization_Sammlung_Biobank"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Biobank Organization Sammlung Biobank",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Organization Sammlung Biobank"
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
        "valueString" : "Organization Sample Collection Biobank"
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
  "description" : "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Darstellung der organisatorischen Daten einer Probensammlung oder Biobank."
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
        "valueString" : "Representation of the organizational data of a sample collection or biobank."
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.id",
      "path" : "Organization.id",
      "mustSupport" : true
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "mustSupport" : true
    },
    {
      "id" : "Organization.meta.source",
      "path" : "Organization.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Organization.meta.profile",
      "path" : "Organization.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:beschreibung",
      "path" : "Organization.extension",
      "sliceName" : "beschreibung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beschreibung der Sammlung/Biobank"
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
            "valueString" : "Description of the collection/biobank"
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
            "valueString" : "Eine Freitextbeschreibung der Sammlung/Biobank, die z.B. in einer Suche angezeigt werden kann."
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
            "valueString" : "A free-text description of the collection/biobank, which can be displayed in a search, for example."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-organization-description-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:collectionSetting",
      "path" : "Organization.extension",
      "sliceName" : "collectionSetting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-collection-setting-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:collectionDesign",
      "path" : "Organization.extension",
      "sliceName" : "collectionDesign",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-collection-design-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:bbmri-eric-id",
      "path" : "Organization.identifier",
      "sliceName" : "bbmri-eric-id",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "BBMRI-ERIC ID"
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
            "valueString" : "BBMRI-ERIC ID"
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
            "valueString" : "Eindeutige Kennung im BBMRI-ERIC-Netzwerk."
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
            "valueString" : "Unique identifier in the BBMRI-ERIC network."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:bbmri-eric-id.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://www.bbmri-eric.eu/"
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Name"
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
            "valueString" : "Name"
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
            "valueString" : "Der vollständige Name der Sammlung oder Biobank."
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
            "valueString" : "The full name of the collection or biobank."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Akronym"
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
            "valueString" : "Acronym"
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
            "valueString" : "Das Akronym oder der Kurztitel der Sammlung oder Biobank."
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
            "valueString" : "The acronym or short title of the collection or biobank."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Teil von"
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
            "valueString" : "Part of"
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
            "valueString" : "Verweist auf eine übergeordnete Sammlung oder Biobank, zu der diese gehört."
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
            "valueString" : "Refers to a parent collection or biobank to which this belongs."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "purpose"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:forschungskontakt",
      "path" : "Organization.contact",
      "sliceName" : "forschungskontakt",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:forschungskontakt.extension",
      "path" : "Organization.contact.extension",
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
      "id" : "Organization.contact:forschungskontakt.extension:rolle",
      "path" : "Organization.contact.extension",
      "sliceName" : "rolle",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:forschungskontakt.purpose",
      "path" : "Organization.contact.purpose",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
          "code" : "RESEARCH"
        }]
      }
    },
    {
      "id" : "Organization.contact:forschungskontakt.name.family",
      "path" : "Organization.contact.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:forschungskontakt.name.given",
      "path" : "Organization.contact.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:forschungskontakt.telecom",
      "path" : "Organization.contact.telecom",
      "min" : 1
    },
    {
      "id" : "Organization.contact:forschungskontakt.address",
      "path" : "Organization.contact.address",
      "min" : 1,
      "type" : [{
        "code" : "Address",
        "profile" : ["http://fhir.de/StructureDefinition/address-de-basis"]
      }],
      "mustSupport" : true
    }]
  }
}

```
