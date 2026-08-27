# MII VS Biobank Proliferation Zellinie - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Biobank Proliferation Zellinie**

## ValueSet: MII VS Biobank Proliferation Zellinie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-cellline-proliferation | *Version*:2026.0.1 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_VS_Biobank_CellLine_Proliferation |
| **Copyright/Rechtliches**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Value Set for Proliferation Status of Cell Lines/Organoids 

 **References** 

* [MII PR Biobank Observation Proliferation](StructureDefinition-mii-pr-biobank-observation-proliferation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-cellline-proliferation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-cellline-proliferation",
  "version" : "2026.0.1",
  "name" : "MII_VS_Biobank_CellLine_Proliferation",
  "title" : "MII VS Biobank Proliferation Zellinie",
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
  "description" : "Value Set for Proliferation Status of Cell Lines/Organoids",
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
      "system" : "http://purl.obolibrary.org/obo/pato.owl",
      "concept" : [{
        "code" : "PATO:0001422",
        "display" : "dead"
      },
      {
        "code" : "PATO:0001991",
        "display" : "immortal"
      },
      {
        "code" : "PATO:0000719",
        "display" : "viable"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "75540009",
        "display" : "High (qualifier value)"
      },
      {
        "code" : "62482003",
        "display" : "Low (qualifier value)"
      }]
    }]
  }
}

```
