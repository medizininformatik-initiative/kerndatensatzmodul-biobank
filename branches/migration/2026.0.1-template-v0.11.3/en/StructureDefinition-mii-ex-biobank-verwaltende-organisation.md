# MII EX Biobank Verwaltende Organisation - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Biobank Verwaltende Organisation**

## Extension: MII EX Biobank Managing Organization 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation | *Version*:2026.0.1 |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Biobank_Verwaltende_Organisation |

The organization managing the specimen should be referenced using this extension. Requests regarding the specimens should be possible via this link and the contact information stored in the organization.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)
* Examples for this Extension: [Specimen/MusterprobeFluessig](Specimen-MusterprobeFluessig.md) and [Specimen/MusterprobeGewebe](Specimen-MusterprobeGewebe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.biobank|current/StructureDefinition/StructureDefinition-mii-ex-biobank-verwaltende-organisation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-biobank-verwaltende-organisation.csv), [Excel](../StructureDefinition-mii-ex-biobank-verwaltende-organisation.xlsx), [Schematron](../StructureDefinition-mii-ex-biobank-verwaltende-organisation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-biobank-verwaltende-organisation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation",
  "version" : "2026.0.1",
  "name" : "MII_EX_Biobank_Verwaltende_Organisation",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_EX_Biobank_Managing_Organization"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII EX Biobank Verwaltende Organisation",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII EX Biobank Managing Organization"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-08-28T06:20:20+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und der in der Organization hinterlegten Kontaktinformationen möglich sein.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The organization managing the specimen should be referenced using this extension. Requests regarding the specimens should be possible via this link and the contact information stored in the organization."
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
      "short" : "MII EX Biobank Verwaltende Organisation",
      "definition" : "Die Organisation, die die Probe verwaltet, soll mithilfe dieser Extension referenziert werden. Anfragen zu den Proben sollen mittels dieser Verlinkung und der in der Organization hinterlegten Kontaktinformationen möglich sein."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"]
      }]
    }]
  }
}

```
