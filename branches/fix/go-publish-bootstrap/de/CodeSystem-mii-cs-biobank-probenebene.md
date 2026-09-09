# MII CS Biobank Probenebene - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Biobank Probenebene**

## CodeSystem: MII CS Biobank Probenebene 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene | *Version*:2027.0.0-ballot.rc2 |
| Active Stand: 2025-09-02 | *Maschinenlesbarer Name*:MII_CS_Biobank_Probenebene |

 
Codes um die Probenebene anzugeben 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Biobank Probenebene](ValueSet-mii-vs-biobank-probenebene.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-biobank-probenebene",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
  "version" : "2027.0.0-ballot.rc2",
  "name" : "MII_CS_Biobank_Probenebene",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_CS_Biobank_Specimen_Level"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CS Biobank Probenebene",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII CS Biobank Specimen Level"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Codes um die Probenebene anzugeben",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Codes to indicate the level in the Specimen hierarchy"
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "PRIMÄRPROBE",
    "display" : "Primärprobe",
    "definition" : "Die Probe, wie sie gesammelt wurde, vor ihrer Verarbeitung."
  },
  {
    "code" : "ALIQUOTGRUPPE",
    "display" : "Aliquotgruppe",
    "definition" : "Eine Zusammenfassung von Aliquots gleichen Probentyps, die von der gleichen möglicherweise bereits verarbeiteten Primärprobe abstammen."
  },
  {
    "code" : "ALIQUOT",
    "display" : "Aliquot",
    "definition" : "Eine Probe, von der identische Geschwisterproben existieren können, die derselben Aliquotgruppe angehören. "
  }]
}

```
