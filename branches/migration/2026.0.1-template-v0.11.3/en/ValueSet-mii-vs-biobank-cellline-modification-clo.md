# MII VS Biobank Cellline Modification CLO - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Biobank Cellline Modification CLO**

## ValueSet: MII VS Biobank Cellline Modification CLO 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-cellline-modification-clo | *Version*:2026.0.1 |
| Active as of 2025-09-02 | *Computable Name*:MII_VS_Biobank_Cellline_Modification_CLO |

 
Value Set for Types of Cell Line Modifications (CLO) 

 **References** 

* [MII EX Biobank Zelllinien-Modifikation](StructureDefinition-mii-ex-biobank-modifikationen.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-cellline-modification-clo",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-cellline-modification-clo",
  "version" : "2026.0.1",
  "name" : "MII_VS_Biobank_Cellline_Modification_CLO",
  "title" : "MII VS Biobank Cellline Modification CLO",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-02",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set for Types of Cell Line Modifications (CLO)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://purl.obolibrary.org/obo/clo.owl",
      "concept" : [{
        "code" : "CLO:0037376",
        "display" : "derived from cell with isogenic modification of gene"
      },
      {
        "code" : "CLO:0037377",
        "display" : "derived from cell with knockin gene"
      },
      {
        "code" : "CLO:0037375",
        "display" : "derived from cell with knockout gene"
      },
      {
        "code" : "CLO:0037378",
        "display" : "derived from cell with transgenic modification"
      }]
    }]
  }
}

```
