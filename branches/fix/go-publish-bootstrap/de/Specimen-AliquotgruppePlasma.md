# Plasma Aliquotgruppe - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Plasma Aliquotgruppe**

## Beispiel Specimen: Plasma Aliquotgruppe

-------

**German**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOTGRUPPE](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-ALIQUOTGRUPPE) (Aliquotgruppe)

**MII EX Biobank Anzahl Aliquots**: 4

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/12345-PL

**status**: Available

**type**: Plasma specimen (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**parent**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),->Organization Mustersammlung; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345; status = available; type = Venous blood specimen (specimen); receivedTime = 2018-06-07 15:50:00+0100](Specimen-MusterprobeFluessig.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2018-06-07 15:54:00+0100 |

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 16:37:00+0100 --> 2018-06-07 17:17:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: -85--75 °C**Sample storage temperature**: between -60 and -85 degrees Celsius**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 17:17:00+0100 --> (ongoing)

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 5 ml (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "AliquotgruppePlasma",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "ALIQUOTGRUPPE",
      "display" : "Aliquotgruppe"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-anzahl-aliquots",
    "valueInteger" : 4
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "12345-PL"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119361006",
      "display" : "Plasma specimen (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "Plasma",
      "display" : "Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "parent" : [{
    "reference" : "Specimen/MusterprobeFluessig"
  }],
  "collection" : {
    "collectedDateTime" : "2018-06-07T15:54:00+01:00"
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
      }]
    },
    "timePeriod" : {
      "start" : "2018-06-07T16:37:00+01:00",
      "end" : "2018-06-07T17:17:00+01:00"
    }
  },
  {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : -85,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : -75,
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
          "code" : "-60to-85",
          "display" : "between -60 and -85 degrees Celsius"
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
      "start" : "2018-06-07T17:17:00+01:00"
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
      "value" : 5,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }]
}

```
