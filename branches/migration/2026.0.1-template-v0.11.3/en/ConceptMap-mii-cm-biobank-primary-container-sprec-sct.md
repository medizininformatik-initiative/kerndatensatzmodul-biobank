# MII CM Biobank Primary Container SPREC 4.0 SCT - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Biobank Primary Container SPREC 4.0 SCT**

## ConceptMap: MII CM Biobank Primary Container SPREC 4.0 SCT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-primary-container-sprec-sct | *Version*:2026.0.1 |
| Active as of 2026-08-31 | *Computable Name*: |
| **Copyright/Legal**: This concept map includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. It also includes content from SPREC 4.0, https://doi.org/10.1089/bio.2024.0010 | |

 
Mapping der SPREC 4.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-biobank-primary-container-sprec-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ConceptMap/mii-cm-biobank-primary-container-sprec-sct",
  "version" : "2026.0.1",
  "title" : "SPREC 4.0 Primary Container Mapping",
  "status" : "active",
  "date" : "2026-08-31T13:45:53+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der SPREC 4.0 Primary-Container-Containertypen auf die im Modul verwendeten SNOMED CT Codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This concept map includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. It also includes content from SPREC 4.0, https://doi.org/10.1089/bio.2024.0010",
  "group" : [{
    "source" : "http://www.isber.org/sprec/type-of-primary-container",
    "target" : "http://snomed.info/sct",
    "element" : [{
      "code" : "ACD",
      "display" : "Acid citrate dextrose",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "CAT",
      "display" : "Serum separator tube without clot activator",
      "target" : [{
        "code" : "702256007",
        "display" : "Non-evacuated blood collection tube, no additive (physical objec)",
        "equivalence" : "narrower",
        "comment" : "Use only for non-evacuated blood collection tubes."
      },
      {
        "code" : "702278000",
        "display" : "Evacuated blood collection tube, no additive and metal-free (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for metal-free evacuated blood collection tubes."
      }]
    },
    {
      "code" : "CPD",
      "display" : "Citrate phosphate dextrose",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "CIF",
      "display" : "Citrate fluoride",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "CPT",
      "display" : "Cell Preparation Tube citrate",
      "target" : [{
        "code" : "706052002",
        "display" : "Evacuated blood collection tube (physical object)",
        "equivalence" : "wider",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "59351004"
        }]
      }]
    },
    {
      "code" : "CPH",
      "display" : "Cell Preparation Tube heparin",
      "target" : [{
        "code" : "706052002",
        "display" : "Evacuated blood collection tube (physical object)",
        "equivalence" : "wider",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "372877000"
        }]
      }]
    },
    {
      "code" : "CSV",
      "display" : "Aldehyde-based stabilizer for CTCs",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "EDG",
      "display" : "EDTA and gel",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "GLS",
      "display" : "Glass",
      "target" : [{
        "code" : "76123001",
        "display" : "Glass tube, device (physical object)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HEP",
      "display" : "Lithium heparin",
      "target" : [{
        "code" : "702284002",
        "display" : "Non-evacuated blood collection tube, lithium heparin (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for non-evacuated blood collection tubes.",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "85899009"
        },
        {
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "372877000"
        }]
      }]
    },
    {
      "code" : "HIR",
      "display" : "Hirudin",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "LHB",
      "display" : "Lithium heparin and rubber plug",
      "target" : [{
        "code" : "702284002",
        "display" : "Non-evacuated blood collection tube, lithium heparin (physical object)",
        "equivalence" : "wider",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "85899009"
        },
        {
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "372877000"
        },
        {
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "43230003"
        }]
      }]
    },
    {
      "code" : "LHG",
      "display" : "Lithium heparin and gel",
      "target" : [{
        "code" : "767390000",
        "display" : "Evacuated blood collection tube with heparin lithium and gel separator (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for evacuated blood collection tubes."
      },
      {
        "code" : "702285001",
        "display" : "Sterile lithium heparin non-evacuated blood collection tube with gel separator (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for sterile non-evacuated blood collection tubes."
      },
      {
        "code" : "702300005",
        "display" : "Non-evacuated blood collection tube, lithium heparin/gel separator, non-sterile (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for non-sterile non-evacuated blood collection tubes.",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "85899009"
        },
        {
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "372877000"
        }]
      }]
    },
    {
      "code" : "ORG",
      "display" : "Oragene collection container or equivalent",
      "target" : [{
        "code" : "706058003",
        "display" : "Secretory specimen container (physical object)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OMN",
      "display" : "Stool collection container with DNA stabilizer",
      "target" : [{
        "code" : "706047007",
        "display" : "Fecal specimen container (physical object)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "PAX",
      "display" : "PAXgene blood RNA",
      "target" : [{
        "code" : "702280006",
        "display" : "Evacuated blood collection tube, ribonucleic acid stabilizer (physical object)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "PED",
      "display" : "Potassium EDTA",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PET",
      "display" : "Polyethylene tube sterile",
      "target" : [{
        "code" : "702269006:840560000=71463006",
        "display" : "|General specimen container, no additive, sterile (physical object)|:|Has compositional material| = |Polyethylene (substance)|",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "PI1",
      "display" : "S8820 protease inhibitor tablets or equivalent",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PIX",
      "display" : "Protease inhibitors",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PPS",
      "display" : "Polypropylene tube sterile",
      "target" : [{
        "code" : "702269006:840560000=256633009",
        "display" : "General specimen container, no additive, sterile (physical object)|:|Has compositional material| = |Polypropylene (substance)|",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SCI",
      "display" : "Sodium citrate",
      "target" : [{
        "code" : "702296009",
        "display" : "Non-evacuated blood collection tube, sodium citrate (physical object)",
        "equivalence" : "narrower",
        "comment" : "Use only for non-evacuated blood collection tubes.",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "412546005"
        }]
      }]
    },
    {
      "code" : "SED",
      "display" : "Sodium EDTA",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "SHP",
      "display" : "Sodium heparin",
      "target" : [{
        "code" : "767382000",
        "display" : "Evacuated blood collection tube with heparin sodium (physical object) ",
        "equivalence" : "narrower",
        "comment" : "Use only for evacuated blood collection tubes.",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "50045009"
        }]
      }]
    },
    {
      "code" : "SPO",
      "display" : "Sodium fluoride/potassium oxalate",
      "target" : [{
        "code" : "702287009",
        "display" : "Non-evacuated blood collection tube, potassium oxalate/sodium fluoride (physical object) ",
        "equivalence" : "narrower",
        "comment" : "Use only for non-evacuated blood collection tubes.",
        "product" : [{
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "6910009"
        },
        {
          "property" : "http://hl7.org/fhir/StructureDefinition/Specimen#Specimen.container.additive[x]",
          "value" : "34261003"
        }]
      }]
    },
    {
      "code" : "SST",
      "display" : "Serum separator tube with clot activator",
      "target" : [{
        "code" : "702297000",
        "display" : "Non-evacuated blood collection tube, clot activator (physical object) ",
        "equivalence" : "narrower",
        "comment" : "Use only for non-evacuated blood collection tubes."
      },
      {
        "code" : "767384004",
        "display" : "Evacuated blood collection tube with clot activator (physical object) ",
        "equivalence" : "narrower",
        "comment" : "Use only for evacuated blood collection tubes."
      }]
    },
    {
      "code" : "TEM",
      "display" : "Tempus tube",
      "target" : [{
        "code" : "702280006",
        "display" : "Evacuated blood collection tube, ribonucleic acid stabilizer (physical object)",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
