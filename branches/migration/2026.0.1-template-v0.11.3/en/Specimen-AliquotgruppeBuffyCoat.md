# Buffy-Coat Aliquotgruppe - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Buffy-Coat Aliquotgruppe**

## Example Specimen: Buffy-Coat Aliquotgruppe

-------

**English**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOTGRUPPE](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-ALIQUOTGRUPPE) (Aliquotgruppe)

**MII EX Biobank Anzahl Aliquots**: 1

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/12345-BC

**status**: Available

**type**: Buffy coat (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**parent**: [Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),->Organization Mustersammlung; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345; status = available; type = Venous blood specimen (specimen); receivedTime = 2018-06-07 15:50:00+0100](Specimen-MusterprobeFluessig.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2018-06-07 15:54:00+0100 |

> **processing****MII EX Biobank Temperaturbedingungen**: 15-25 °C**Sample storage temperature**: Room temperature**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 16:37:00+0100 --> 2018-06-07 17:07:00+0100

> **processing****MII EX Biobank Temperaturbedingungen**: -196--150 °C**Sample storage temperature**: liquid nitrogen, -150 to -196 degrees Celsius**procedure**: Storage of specimen (procedure)**time**: 2018-06-07 17:07:00+0100 --> (ongoing)

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 2 ml (Details: UCUM codeml = 'ml') | 0.2 ml (Details: UCUM codeml = 'ml') |

**note**: 

> 

Buffy-Coat Aliquots für Genomik-Analysen




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "AliquotgruppeBuffyCoat",
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
    "valueInteger" : 1
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "12345-BC"
  }],
  "status" : "available",
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
      "end" : "2018-06-07T17:07:00+01:00"
    }
  },
  {
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
      "start" : "2018-06-07T17:07:00+01:00"
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
      "value" : 2,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    },
    "specimenQuantity" : {
      "value" : 0.2,
      "unit" : "ml",
      "system" : "http://unitsofmeasure.org",
      "code" : "ml"
    }
  }],
  "note" : [{
    "text" : "Buffy-Coat Aliquots für Genomik-Analysen"
  }]
}

```
