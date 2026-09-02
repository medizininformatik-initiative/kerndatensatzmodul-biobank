# DNA Aliquotgruppe - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNA Aliquotgruppe**

## Example Specimen: DNA Aliquotgruppe

-------

**English**

-------

Profile: [MII PR Biobank Specimen Bioprobe](StructureDefinition-mii-pr-biobank-specimen.md)

**MII EX Biobank Ebene**: [MII CS Biobank Probenebene: ALIQUOTGRUPPE](CodeSystem-mii-cs-biobank-probenebene.md#mii-cs-biobank-probenebene-ALIQUOTGRUPPE) (Aliquotgruppe)

**MII EX Biobank Anzahl Aliquots**: 2

**identifier**: `https://biobank.uk-musterstadt.de/fhir/sid/proben`/12345-DNA-1

**status**: Available

**type**: Deoxyribonucleic acid specimen (specimen)

**subject**: [Patient/mii-exa-test-data-patient-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/mii-exa-test-data-patient-1)

**parent**: [Specimen: extension = Aliquot (MII CS Biobank Probenebene#ALIQUOT); identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345-BC-2; status = unavailable; type = Buffy coat (specimen)](Specimen-AliquotBuffyCoat2.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2018-06-07 15:54:00+0100 |

> **processing****MII EX Biobank Temperaturbedingungen**: -80--70 °C**Sample storage temperature**: between -60 and -85 degrees Celsius**procedure**: Storage of specimen (procedure)**time**: 2018-09-07 13:55:00+0100 --> (ongoing)

### Containers

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Capacity** | **SpecimenQuantity** |
| * | Tube, device (physical object) | 0.5 ml (Details: UCUM codeml = 'ml') | 0.05 ml (Details: UCUM codeml = 'ml') |

**note**: 

> 

DNA Aliquots gewonnen aus Buffy-Coat




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "AliquotgruppeDNA",
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
    "valueInteger" : 2
  }],
  "identifier" : [{
    "system" : "https://biobank.uk-musterstadt.de/fhir/sid/proben",
    "value" : "12345-DNA-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258566005",
      "display" : "Deoxyribonucleic acid specimen (specimen)"
    },
    {
      "system" : "https://fhir.bbmri-eric.eu/fhir/CodeSystem/miabis-detailed-samply-type-cs",
      "code" : "DNA",
      "display" : "DNA"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-1"
  },
  "parent" : [{
    "reference" : "Specimen/AliquotBuffyCoat2"
  }],
  "collection" : {
    "collectedDateTime" : "2018-06-07T15:54:00+01:00"
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : -80,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : -70,
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
      "start" : "2018-09-07T13:55:00+01:00"
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
  }],
  "note" : [{
    "text" : "DNA Aliquots gewonnen aus Buffy-Coat"
  }]
}

```
