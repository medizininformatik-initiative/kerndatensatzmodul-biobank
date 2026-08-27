# Qualitätsprüfung Plasma Aliquotgruppe - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Qualitätsprüfung Plasma Aliquotgruppe**

## Example Observation: Qualitätsprüfung Plasma Aliquotgruppe

-------

**English**

-------

Profile: [MII PR Biobank Observation Qualitätsprüfung](StructureDefinition-mii-pr-biobank-observation-qualitaetspruefung.md)

**status**: Final

**code**: Quality monitoring (procedure)

**focus**: [Specimen: extension = Aliquotgruppe (MII CS Biobank Probenebene#ALIQUOTGRUPPE),4; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345-PL; status = available; type = Plasma specimen (specimen)](Specimen-AliquotgruppePlasma.md)

**effective**: 2018-06-08 09:04:00+0100

> **component****code**: Test protocol used (attribute)**value**: Lipemic interference index of Serum or Plasma

> **component****code**: Resulting in (attribute)**value**: 3 [arb'U]/mL (Details: UCUM code[arb'U]/mL = '[arb'U]/mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "QualitaetspruefungPlasma",
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
    "reference" : "Specimen/AliquotgruppePlasma"
  }],
  "effectiveDateTime" : "2018-06-08T09:04:00+01:00",
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
        "system" : "http://loinc.org",
        "code" : "46425-5",
        "display" : "Lipemic interference index of Serum or Plasma"
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
    "valueQuantity" : {
      "value" : 3,
      "unit" : "[arb'U]/mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "[arb'U]/mL"
    }
  }]
}

```
