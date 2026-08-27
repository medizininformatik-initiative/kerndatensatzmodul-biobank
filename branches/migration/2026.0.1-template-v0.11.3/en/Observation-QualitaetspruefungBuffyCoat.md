# Qualitätsprüfung Buffy-Coat Aliquotgruppe - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Qualitätsprüfung Buffy-Coat Aliquotgruppe**

## Example Observation: Qualitätsprüfung Buffy-Coat Aliquotgruppe

-------

**English**

-------

Profile: [MII PR Biobank Observation Qualitätsprüfung](StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung.md)

**status**: Final

**code**: Quality monitoring (procedure)

**focus**: [Specimen: extension = Aliquotgruppe (MII CS Biobank Probenebene#ALIQUOTGRUPPE),1; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345-BC; status = available; type = Buffy coat (specimen); note = Buffy-Coat Aliquots für Genomik-Analysen](Specimen-AliquotgruppeBuffyCoat.md)

**effective**: 2018-06-08 09:00:00+0100

> **component****code**: Test protocol used (attribute)**value**: Hemolysis screening test (procedure)

> **component****code**: Resulting in (attribute)**value**: Pass



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "QualitaetspruefungBuffyCoat",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-qualitaetspruefung"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "386404008",
      "display" : "Quality monitoring (procedure)"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/AliquotgruppeBuffyCoat"
  }],
  "effectiveDateTime" : "2018-06-08T09:00:00+01:00",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "246423001",
        "display" : "Test protocol used (attribute)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "401297005",
        "display" : "Hemolysis screening test (procedure)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "79409006",
        "display" : "Resulting in (attribute)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA10392-1",
        "display" : "Pass"
      }]
    }
  }]
}

```
