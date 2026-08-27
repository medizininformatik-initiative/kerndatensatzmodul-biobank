# Wachstumstyp Organoid Lungenbiopsie - MII IG Kerndatensatz-Modul Biobank v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Wachstumstyp Organoid Lungenbiopsie**

## Example Observation: Wachstumstyp Organoid Lungenbiopsie

-------

**English**

-------

Profile: [MII PR Biobank Observation Wachstumstyp](StructureDefinition-mii-pr-biobank-observation-wachstumstyp.md)

**status**: Final

**code**: cell culture growth mode

**focus**: [Specimen: extension = ->DocumentReference: status = current; date = 2018-06-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Lungentumor-Organoiden,,3; identifier = https://biobank.uk-musterstadt.de/fhir/sid/proben#6789-ORG-1; status = available; type = Specimen (specimen)](Specimen-OrganoidLunge.md)

**effective**: 2018-07-05 10:00:00+0100

**value**: adherent cell culture growth mode



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "WachstumstypOrganoidLunge",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-wachstumstyp"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/clo.owl",
      "code" : "CLO:0000030",
      "display" : "cell culture growth mode"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/OrganoidLunge"
  }],
  "effectiveDateTime" : "2018-07-05T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/clo.owl",
      "code" : "CLO:0000028",
      "display" : "adherent cell culture growth mode"
    }]
  }
}

```
