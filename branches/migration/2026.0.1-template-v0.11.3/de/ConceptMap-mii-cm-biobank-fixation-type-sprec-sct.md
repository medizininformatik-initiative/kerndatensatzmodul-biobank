# MII CM Biobank Fixation Type SPREC 4.0 SCT - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Biobank Fixation Type SPREC 4.0 SCT**

## ConceptMap: MII CM Biobank Fixation Type SPREC 4.0 SCT 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-fixation-type-sprec-sct | *Version*:2026.0.1 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*: |
| **Copyright/Rechtliches**: This concept map includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. It also includes content from SPREC 4.0, https://doi.org/10.1089/bio.2024.0010 | |

 
Mapping der SPREC 4.0 Fixation Types auf die im Modul verwendeten SNOMED CT Codes für Zusatzstoffe. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-biobank-fixation-type-sprec-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-fixation-type-sprec-sct",
  "version" : "2026.0.1",
  "title" : "MII CM Biobank Fixation Type SPREC 4.0 SCT",
  "status" : "active",
  "date" : "2026-08-28T07:06:33+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der SPREC 4.0 Fixation Types auf die im Modul verwendeten SNOMED CT Codes für Zusatzstoffe.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This concept map includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. It also includes content from SPREC 4.0, https://doi.org/10.1089/bio.2024.0010",
  "group" : [{
    "source" : "http://www.isber.org/sprec/fixation-stabilization-type",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "ACA",
      "display" : "Nonaldehyde with acetic acid",
      "target" : [{
        "code" : "2869004",
        "display" : "Acetic acid (substance)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "ALD",
      "display" : "Aldehyde based",
      "target" : [{
        "code" : "768750002",
        "display" : "Product containing aldehyde (product)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "ETH",
      "display" : "Alcohol based",
      "target" : [{
        "code" : "333164008",
        "display" : "Product containing alcohol (product)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "FOR",
      "display" : "Nonbuffered formalin",
      "target" : [{
        "code" : "431510009",
        "display" : "Formalin (substance)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "NBF",
      "display" : "Neutral buffered formalin",
      "target" : [{
        "code" : "434162003",
        "display" : "Neutral buffered formalin (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OCT",
      "display" : "Optimum cutting temperature medium",
      "target" : [{
        "code" : "433469005",
        "display" : "Frozen section embedding medium (substance)",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
