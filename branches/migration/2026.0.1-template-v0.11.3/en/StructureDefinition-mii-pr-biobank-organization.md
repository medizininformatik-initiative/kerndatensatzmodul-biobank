# MII PR Biobank Organization Sammlung Biobank - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Biobank Organization Sammlung Biobank**

## Resource Profile: MII PR Biobank Organization Sammlung Biobank 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization | *Version*:2026.0.1 |
| Active as of 2025-09-02 | *Computable Name*:MII_PR_Biobank_Organization_Sammlung_Biobank |

 
Representation of the organizational data of a sample collection or biobank. 

### Content

An Organization resource represents a collection/biobank. This is a deliberately simple implementation that omits many aspects considered e.g. in MIABIS. When implementing, always check whether the [corresponding MIABIS on FHIR profiles](https://simplifier.net/guide/MIABIS-on-FHIR/Home/FHIR-Resources/Profiles/Core-components?version=current) can be implemented directly. MIABIS distinguishes between a biobank (**Biobank**) and a collection (**Collection**). Besides being represented as an Organization, the collection is also modelled as a **Group** from which the Specimen resources belonging to the collection are linked. In this KDS module the relation is, for simplicity, represented in the opposite direction via the **managing organization** extension. Both approaches can also be used at the same time, so that a FHIR implementation can conform to the KDS and MIABIS simultaneously.

### Examples

* Example biobank: [Biobank Musterstadt](Organization-BiobankMusterstadt.md)
* Example collection: [Mustersammlung](Organization-Mustersammlung.md)

**Usages:**

* Refer to this Profile: [MII EX Biobank Verwaltende Organisation](StructureDefinition-mii-ex-biobank-verwaltende-organisation.md)
* Examples for this Profile: [Biobank Musterstadt](Organization-BiobankMusterstadt.md) and [Mustersammlung](Organization-Mustersammlung.md)
* CapabilityStatements using this Profile: [MII CPS Biobank CapabilityStatement](CapabilityStatement-mii-cps-biobank-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-pr-biobank-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-biobank-organization.csv), [Excel](../StructureDefinition-mii-pr-biobank-organization.xlsx), [Schematron](../StructureDefinition-mii-pr-biobank-organization.sch) 



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
  "version" : "2026.0.1",
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
