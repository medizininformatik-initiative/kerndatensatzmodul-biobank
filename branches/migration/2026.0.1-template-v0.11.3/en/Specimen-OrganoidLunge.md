# Organoid Lungenbiopsie - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organoid Lungenbiopsie**

## Example Specimen: Organoid Lungenbiopsie

-------

**English**

-------

Profile: [MII PR Biobank Specimen Zellinie Organoid](StructureDefinition-mii-pr-biobank-zellinie-organoid.md)

**MII EX Biobank Kulturprotokoll**: [DocumentReference: status = current; date = 2018-06-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Lungentumor-Organoiden](DocumentReference-Kulturprotokoll.md)

> **MII EX Biobank Zelllinien-Modifikation**
* artDerModifikation: derives from cell with knockout gene
* zielGen: www.genenames.org: TP53 (tumor protein p53)
* protokoll: [DocumentReference: status = current; date = 2018-06-19 09:00:00+0100; description = CRISPR Knockout-Protokoll für TP53 in Lungentumor-Organoiden](DocumentReference-ProtocolCRISPRTP53.md)

**MII EX Biobank Anzahl Passagen**: 3

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/6789-ORG-1

**status**: Available

**type**: Specimen (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**parent**: 

**Exception Generating Narrative: Cannot invoke "org.hl7.fhir.r5.renderers.utils.ResourceWrapper.fhirType()" because "resource" is null **



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "OrganoidLunge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-zellinie-organoid"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-kulturprotokoll",
    "valueReference" : {
      "reference" : "DocumentReference/Kulturprotokoll"
    }
  },
  {
    "extension" : [{
      "url" : "artDerModifikation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://purl.obolibrary.org/obo/clo.owl",
          "code" : "CLO:0037375",
          "display" : "derives from cell with knockout gene"
        }]
      }
    },
    {
      "url" : "zielGen",
      "valueCoding" : {
        "system" : "http://www.genenames.org",
        "code" : "TP53",
        "display" : "tumor protein p53"
      }
    },
    {
      "url" : "protokoll",
      "valueReference" : {
        "reference" : "DocumentReference/ProtocolCRISPRTP53"
      }
    }],
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-modifikationen"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-passagen",
    "valueInteger" : 3
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "6789-ORG-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "123038009",
      "display" : "Specimen (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "Organoid",
      "display" : "Organoids"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "parent" : [{
    "reference" : "Specimen/MusterprobeGewebe"
  }],
  "collection" : {
    "collectedDateTime" : "2018-06-08T15:34:00+01:00"
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 37,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 37,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1186936003",
        "display" : "Storage of specimen (procedure)"
      }]
    },
    "timePeriod" : {
      "start" : "2018-06-20T10:00:00+01:00",
      "end" : "2018-06-27T10:00:00+01:00"
    }
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "83059008",
        "display" : "Tube, device (physical object)"
      }]
    },
    "specimenQuantity" : {
      "value" : 1,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }]
}

```
