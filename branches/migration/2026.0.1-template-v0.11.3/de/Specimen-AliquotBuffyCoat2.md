# Buffy-Coat Einzelaliquot 50 µl - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Buffy-Coat Einzelaliquot 50 µl**

## Beispiel Specimen: Buffy-Coat Einzelaliquot 50 µl

-------

**German**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOT](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-ALIQUOT) (Aliquot)

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/12345-BC-2

**status**: Unavailable

**type**: Buffy coat (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**parent**: [Specimen: extension = Aliquotgruppe (MII CS Biobank Probenebene#ALIQUOTGRUPPE),1; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345-BC; status = available; type = Buffy coat (specimen); note = Buffy-Coat Aliquots für Genomik-Analysen](Specimen-AliquotgruppeBuffyCoat.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2018-06-07 15:54:00+0100 |

> **processing****MII EX Biobank Temperaturbedingungen**: -196--150 °C**Sample storage temperature**: liquid nitrogen, -150 to -196 degrees Celsius**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 17:07:00+0100 --> 2018-09-07 13:02:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Storage of specimen (procedure)**time**: 2018-09-07 13:02:00+0100 --> 2018-09-07 13:07:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Deoxyribonucleic acid extraction technique (qualifier value)**time**: 2018-09-07 13:07:00+0100 --> 2018-09-07 13:37:00+0100

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 0.5 ml (Details: UCUM codeml = 'ml') | 0.05 ml (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "AliquotBuffyCoat2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "ALIQUOT",
      "display" : "Aliquot"
    }
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "12345-BC-2"
  }],
  "status" : "unavailable",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258587000",
      "display" : "Buffy coat (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "BuffyCoat",
      "display" : "Buffy coat"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "parent" : [{
    "reference" : "Specimen/AliquotgruppeBuffyCoat"
  }],
  "collection" : {
    "collectedDateTime" : "2018-06-07T15:54:00+01:00"
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : -196,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : -150,
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
          "code" : "LN"
        }]
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
      "start" : "2018-06-07T17:07:00+01:00",
      "end" : "2018-09-07T13:02:00+01:00"
    }
  },
  {
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
          "code" : "RT"
        }]
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
      "start" : "2018-09-07T13:02:00+01:00",
      "end" : "2018-09-07T13:07:00+01:00"
    }
  },
  {
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
          "code" : "RT"
        }]
      }
    }],
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "702943006",
        "display" : "Deoxyribonucleic acid extraction technique (qualifier value)"
      }]
    },
    "timePeriod" : {
      "start" : "2018-09-07T13:07:00+01:00",
      "end" : "2018-09-07T13:37:00+01:00"
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
      "value" : 0.5,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 0.05,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }]
}

```
