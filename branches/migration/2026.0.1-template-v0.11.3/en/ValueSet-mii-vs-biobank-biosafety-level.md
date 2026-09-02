# Biosafety-Level Einstufung (ValueSet) - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biosafety-Level Einstufung (ValueSet)**

## ValueSet: MII VS Biobank Biosafety Level 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-biosafety-level | *Version*:2027.0.0-ballot.rc2 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Biobank_Biosafety_Level |

 
ValueSet zur Auswahl der Biosafety-Level-Einstufung einer Probe (SNOMED CT), inklusive eines Codes für 'keine Infektionsgefahr bekannt'. 

 **References** 

* [Infektiositätsstatus](StructureDefinition-mii-ex-biobank-infektiositaetsstatus.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-biosafety-level",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-biosafety-level",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_VS_Biobank_Biosafety_Level",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Biobank_Biosafety_Level"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "Biosafety-Level Einstufung (ValueSet)",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Biobank Biosafety Level"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-02T10:35:14+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ValueSet zur Auswahl der Biosafety-Level-Einstufung einer Probe (SNOMED CT), inklusive eines Codes für 'keine Infektionsgefahr bekannt'.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for selecting the biosafety level classification of a specimen based on SNOMED CT including a code for no known infection risk."
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
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "409600007",
        "display" : "Biosafety level 1 (qualifier value)"
      },
      {
        "code" : "409603009",
        "display" : "Biosafety level 2 (qualifier value)"
      },
      {
        "code" : "409604003",
        "display" : "Biosafety level 3 (qualifier value)"
      },
      {
        "code" : "409605002",
        "display" : "Biosafety level 4 (qualifier value)"
      },
      {
        "code" : "261665006",
        "display" : "Unknown (qualifier value)"
      }]
    }]
  }
}

```
