# MII VS Biobank BodyStructures SCT - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Biobank BodyStructures SCT**

## ValueSet: MII VS Biobank BodyStructures SCT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-body-structures-sct | *Version*:2026.0.1 |
| Active as of 2025-09-02 | *Computable Name*:MII_VS_Biobank_BodyStructures_SCT |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Value Set for Specimen Collection Body Structures (SNOMED CT) 

 **References** 

* [MII PR Biobank Specimen Bioprobe Core](StructureDefinition-mii-pr-biobank-specimen-core.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-body-structures-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-body-structures-sct",
  "version" : "2026.0.1",
  "name" : "MII_VS_Biobank_BodyStructures_SCT",
  "title" : "MII VS Biobank BodyStructures SCT",
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
  "description" : "Value Set for Specimen Collection Body Structures (SNOMED CT)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "123037004"
      }]
    }]
  }
}

```
