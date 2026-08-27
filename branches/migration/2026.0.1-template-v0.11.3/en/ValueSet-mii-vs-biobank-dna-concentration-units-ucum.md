# MII VS Biobank DNA Concentration Units UCUM - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Biobank DNA Concentration Units UCUM**

## ValueSet: MII VS Biobank DNA Concentration Units UCUM 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-dna-concentration-units-ucum | *Version*:2026.0.1 |
| Active as of 2025-09-02 | *Computable Name*:MII_VS_Biobank_DNA_Concentration_Units_UCUM |
| **Copyright/Legal**: This value set includes content from UCUM, which is vopyright 1999-2024 Regenstrief Institute, Inc. All rights reserved. Licensed under the UCUM License, Version 1.1 (the “License”); you may not use this file except in compliance with the License. You may obtain a copy of the License at https://unitsofmeasure.org/license | |

 
Value Set for DNA Concentration Units (UCUM) 

 **References** 

* [MII PR Biobank Observation DNA Konzentration](StructureDefinition-mii-pr-biobank-observation-dna-konzentration.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-dna-concentration-units-ucum",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-dna-concentration-units-ucum",
  "version" : "2026.0.1",
  "name" : "MII_VS_Biobank_DNA_Concentration_Units_UCUM",
  "title" : "MII VS Biobank DNA Concentration Units UCUM",
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
  "description" : "Value Set for DNA Concentration Units (UCUM)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This value set includes content from UCUM, which is vopyright 1999-2024 Regenstrief Institute, Inc. All rights reserved. Licensed under the UCUM License, Version 1.1 (the “License”); you may not use this file except in compliance with the License. You may obtain a copy of the License at https://unitsofmeasure.org/license",
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "ng/uL",
        "display" : "nanogram per microliter"
      },
      {
        "code" : "pg/uL",
        "display" : "picogram per microliter"
      }]
    }]
  }
}

```
