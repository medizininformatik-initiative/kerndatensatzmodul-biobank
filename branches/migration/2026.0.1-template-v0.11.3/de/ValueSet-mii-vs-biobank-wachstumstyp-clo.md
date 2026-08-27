# MII VS Biobank Wachstumpstyp CLO - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Biobank Wachstumpstyp CLO**

## ValueSet: MII VS Biobank Wachstumpstyp CLO 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-wachstumstyp-clo | *Version*:2026.0.1 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_VS_Biobank_Wachstumpstyp_CLO |
| **Copyright/Rechtliches**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Value Set for Cell Culture Growth Types (CLO) 

 **References** 

* [MII PR Biobank Observation Wachstumstyp](StructureDefinition-mii-pr-biobank-observation-wachstumstyp.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-biobank-wachstumstyp-clo",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/mii-vs-biobank-wachstumstyp-clo",
  "version" : "2026.0.1",
  "name" : "MII_VS_Biobank_Wachstumpstyp_CLO",
  "title" : "MII VS Biobank Wachstumpstyp CLO",
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
  "description" : "Value Set for Cell Culture Growth Types (CLO)",
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
      "system" : "http://purl.obolibrary.org/obo/clo.owl",
      "concept" : [{
        "code" : "CLO:0000028",
        "display" : "adherent cell culture growth mode"
      },
      {
        "code" : "CLO:0000029",
        "display" : "suspension cell culture growth mode"
      }]
    }]
  }
}

```
