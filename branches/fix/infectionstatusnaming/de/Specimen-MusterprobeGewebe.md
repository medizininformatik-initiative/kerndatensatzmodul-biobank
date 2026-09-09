# Musterprobe Gewebe - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Musterprobe Gewebe**

## Beispiel Specimen: Musterprobe Gewebe

-------

**German**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Verwaltende Organisation**: [Organization Mustersammlung](Organization-Mustersammlung.md)

**MII EX Biobank Diagnose**: [Diagnose/mii-exa-test-data-patient-1-diagnose-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Diagnose/mii-exa-test-data-patient-1-diagnose-1)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOTGRUPPE](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-ALIQUOTGRUPPE) (Aliquotgruppe)

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/6789

**status**: Available

**type**: Specimen from lung obtained by needle biopsy (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**receivedTime**: 2018-06-08 15:43:00+0100

**request**: [ServiceRequest Needle biopsy of lung (procedure)](ServiceRequest-GewebeBiopsie.md)

### Collections

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Collected[x]** | **Method** | **BodySite** | **FastingStatus[x]** |
| * |  | 2018-06-08 15:34:00+0100 | Needle biopsy of lung (procedure) | Structure of apex of left lung (body structure) | No display for Duration (value: 4; system: http://unitsofmeasure.org; code: h) |

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Storage of specimen (procedure)**time**: 2018-06-08 15:34:00+0100 --> 2018-06-08 15:46:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: -85--60 °C**Sample storage temperature**: between -60 and -85 degrees Celsius**procedure**: Storage of specimen (procedure)**time**: 2018-06-08 15:49:00+0100 --> (ongoing)

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 5 g (Details: UCUM codeg = 'g') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "MusterprobeGewebe",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/VerwaltendeOrganisation",
    "valueReference" : {
      "reference" : "Organization/Mustersammlung"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Diagnose",
    "valueReference" : {
      "reference" : "Diagnose/mii-exa-test-data-patient-1-diagnose-1"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
    "valueCoding" : {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
      "code" : "ALIQUOTGRUPPE",
      "display" : "Aliquotgruppe"
    }
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "6789"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "16214371000119104",
      "display" : "Specimen from lung obtained by needle biopsy (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "TissueFreshFrozen",
      "display" : "Tissue (fresh frozen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "receivedTime" : "2018-06-08T15:43:00+01:00",
  "request" : [{
    "reference" : "ServiceRequest/GewebeBiopsie"
  }],
  "collection" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
      "valueDateTime" : "2018-06-08T15:32:00+01:00"
    }],
    "collectedDateTime" : "2018-06-08T15:34:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "274319000",
        "display" : "Needle biopsy of lung (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "14559000",
        "display" : "Structure of apex of left lung (body structure)"
      }]
    },
    "fastingStatusDuration" : {
      "value" : 4,
      "system" : "http://unitsofmeasure.org",
      "code" : "h"
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
      }]
    },
    "timePeriod" : {
      "start" : "2018-06-08T15:34:00+01:00",
      "end" : "2018-06-08T15:46:00+01:00"
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
          "value" : -60,
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
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "27872000",
        "display" : "Specimen freezing (procedure)"
      }]
    },
    "timePeriod" : {
      "start" : "2018-06-08T15:49:00+01:00"
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
      "unit" : "g",
      "system" : "http://unitsofmeasure.org",
      "code" : "g"
    }
  }]
}

```
