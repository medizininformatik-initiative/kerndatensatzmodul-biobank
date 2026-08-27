# Musterprobe flüssig - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterprobe flüssig**

## Beispiel Specimen: Musterprobe flüssig

-------

**German**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: PRIMÄRPROBE](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-PRIM.196RPROBE) (Primärprobe)

**MII EX Biobank Verwaltende Organisation**: [Organization Mustersammlung](Organization-Mustersammlung.md)

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/12345

**status**: Available

**type**: Venous blood specimen (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**receivedTime**: 2018-06-07 15:50:00+0100

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collected[x]** | **Method** | **BodySite** | **FastingStatus[x]** |
| * | 2018-06-07 15:54:00+0100 | Venipuncture (procedure) | Structure of antecubital vein (body structure) | Not Given - Patient was not asked at the time of the procedure. |

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 16:27:00+0100 --> 2018-06-07 16:37:00+0100

### Containers

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** | **Additive[x]** |
| * | Tube, device (physical object) | 10 ml (Details: UCUM codeml = 'ml') | 10 ml (Details: UCUM codeml = 'ml') | [Substance Heparin (substance)](Substance-Heparin.md) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "MusterprobeFluessig",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "PRIMÄRPROBE",
      "display" : "Primärprobe"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation",
    "valueReference" : {
      "reference" : "Organization/Mustersammlung"
    }
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "12345"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122555007",
      "display" : "Venous blood specimen (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "WholeBlood",
      "display" : "Whole blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "receivedTime" : "2018-06-07T15:50:00+01:00",
  "collection" : {
    "collectedDateTime" : "2018-06-07T15:54:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "22778000",
        "display" : "Venipuncture (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "128553008",
        "display" : "Structure of antecubital vein (body structure)"
      }]
    },
    "fastingStatusCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
        "code" : "NG",
        "display" : "Not Given - Patient was not asked at the time of the procedure."
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 15,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 25,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    },
    {
      "url" : "https://fhir.bbmri-eric.eu/fhir/StructureDefinition/miabis-sample-storage-temperature-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-storage-temperature-cs",
          "code" : "RT",
          "display" : "Room temperature"
        }]
      }
    }],
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1186936003",
        "display" : "Storage of specimen (procedure)"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "73373003",
        "display" : "Specimen centrifugation (procedure)"
      }]
    },
    "timePeriod" : {
      "start" : "2018-06-07T16:27:00+01:00",
      "end" : "2018-06-07T16:37:00+01:00"
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
    "capacity" : {
      "value" : 10,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 10,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "additiveReference" : {
      "reference" : "Substance/Heparin"
    }
  }]
}

```
