# DNA Konzentration Aliquot - MII IG Kerndatensatz-Modul Biobank v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNA Konzentration Aliquot**

## Example Observation: DNA Konzentration Aliquot

-------

**English**

-------

Profile: [MII PR Biobank Observation DNA Konzentration](StructureDefinition-mii-pr-biobank-observation-dna-konzentration.md)

**status**: Final

**code**: DNA double strand [Mass/volume] in Specimen

**focus**: [Specimen: extension = Aliquotgruppe (MII CS Biobank Probenebene#ALIQUOTGRUPPE),2; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#12345-DNA-1; status = available; type = Deoxyribonucleic acid specimen (specimen); note = DNA Aliquots gewonnen aus Buffy-Coat](Specimen-AliquotgruppeDNA.md)

**effective**: 2018-09-07 13:40:00+0100

**value**: 40 ng/µL (Details: UCUM codeng/uL = 'ng/uL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "DNAConcentrationObs1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72496-3",
      "display" : "DNA double strand [Mass/volume] in Specimen"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/AliquotgruppeDNA"
  }],
  "effectiveDateTime" : "2018-09-07T13:40:00+01:00",
  "valueQuantity" : {
    "value" : 40,
    "unit" : "ng/µL",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/uL"
  }
}

```
